{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module InputFactory where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified Any -- same package or java.lang
import qualified Input -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InputFactory = InputFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , kEY_CODE_LABEL :: IORef (String)
    , dEVICE_ID_LABEL :: IORef (String)
    , mAX :: IORef (Int)
    , inputIntegerArray :: IORef (JavaArray (Input.Input))
    , nO_INPUT :: IORef (Input.Input)
    }

instance JavaNull InputFactory where
    javaNull = javaNullRecord "InputFactory"

instance JavaEquals InputFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    kEY_CODE_LABEL <- newIORef ""
    dEVICE_ID_LABEL <- newIORef ""
    mAX <- newIORef 0
    inputIntegerArray <- newIORef javaNull
    nO_INPUT <- newIORef javaNull
    let this = InputFactory header_ logUtil commonStrings kEY_CODE_LABEL dEVICE_ID_LABEL mAX inputIntegerArray nO_INPUT
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getInstanceById" (\() -> getInstanceById_impl this)
    pure this

initFields_ :: InputFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.kEY_CODE_LABEL ("KeyCode: ")
    jset this.dEVICE_ID_LABEL ("DeviceId: ")
    jset this.mAX =<< (SmallIntegerSingletonFactory.getMin ((jio (SmallIntegerSingletonFactory.getInstance))))
    jset this.inputIntegerArray ((jnewArray ((jget (this).mAX)) javaNull))
    jset this.nO_INPUT =<< (Input.new_2 0 (jget ((jget (this).commonStrings)).uNKNOWN))
    pure ()


getInstance :: IO (InputFactory)
getInstance = do
        when ((jget InputFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset InputFactory.instance_ (assignedValue)
        pure ((javaCast (jget InputFactory.instance_) :: InputFactory))

new_ :: IO InputFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputFactory -> IO ()
init_ this = do
        initFields_ this
        let size = (jlength (jget (this).inputIntegerArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).inputIntegerArray)) (index) ((jget (this).nO_INPUT))
        pure ()


add :: (JavaObjectClass this_) => this_ -> Int -> Input.Input -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: InputFactory))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> Int -> Input.Input -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: InputFactory)) a1 a2

add_impl :: InputFactory -> Int -> Input.Input -> IO (())
add_impl this id input = do
        jsetIndex ((jget (this).inputIntegerArray)) (id) (input)
        pure ()


getInstanceById :: (JavaObjectClass this_) => this_ -> Int -> IO (Input.Input)
getInstanceById object_ a1 = jmethod object_ "getInstanceById" (\() -> (getInstanceById_impl (javaCast object_ :: InputFactory))) () a1

getInstanceById_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Input.Input)
getInstanceById_super object_ a1 = (getInstanceById_impl (javaCast object_ :: InputFactory)) a1

getInstanceById_impl :: InputFactory -> Int -> IO (Input.Input)
getInstanceById_impl this id = do
    id <- newIORef id
    javaCatchReturn $ do
        when ((jget id) < 0) $ do
            jset id ((Prelude.negate (jget id)))
        when ((jget id) > (jlength (jget (this).inputIntegerArray))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Warning id: "))) (jget id)))))) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
            javaReturn ((jget (this).nO_INPUT))
        pure ((jindex ((jget (this).inputIntegerArray)) ((jget id))))


