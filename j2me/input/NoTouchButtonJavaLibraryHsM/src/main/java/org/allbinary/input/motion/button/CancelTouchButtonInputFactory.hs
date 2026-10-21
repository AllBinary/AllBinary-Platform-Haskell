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
-- package org.allbinary.input.motion.button
module CancelTouchButtonInputFactory where

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
import qualified TouchButtonInput -- same package or java.lang
import qualified BasicTouchInputFactory -- same package or java.lang
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil

data CancelTouchButtonInputFactory = CancelTouchButtonInputFactory
    { header_ :: JavaHeader
    , cancelInputArray :: IORef (JavaArray (TouchButtonInput.TouchButtonInput))
    }

instance JavaNull CancelTouchButtonInputFactory where
    javaNull = javaNullRecord "CancelTouchButtonInputFactory"

instance JavaEquals CancelTouchButtonInputFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CancelTouchButtonInputFactory where
    (==) = jrecordEquals

instance JavaObjectClass CancelTouchButtonInputFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CancelTouchButtonInputFactory
newRecord_ = do
    header_ <- newJavaHeader
    cancelInputArray <- newIORef javaNull
    let this = CancelTouchButtonInputFactory header_ cancelInputArray
    jregisterLevel header_ this
    jregisterMethod header_ "getCancel" (\() -> getCancel_impl this)
    pure this

initFields_ :: CancelTouchButtonInputFactory -> IO ()
initFields_ this = do
    jset this.cancelInputArray ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    pure ()


getInstance :: IO (CancelTouchButtonInputFactory)
getInstance = do
        when ((jget CancelTouchButtonInputFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset CancelTouchButtonInputFactory.instance_ (assignedValue)
        pure ((javaCast (jget CancelTouchButtonInputFactory.instance_) :: CancelTouchButtonInputFactory))

new_ :: IO CancelTouchButtonInputFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CancelTouchButtonInputFactory -> IO ()
init_ this = do
        initFields_ this
        basicTouchInputFactory <- (BasicTouchInputFactory.getInstance)
        forM_ [((jlength (jget (this).cancelInputArray)) - 1), ((jlength (jget (this).cancelInputArray)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).cancelInputArray)) (index) ((jget (basicTouchInputFactory).nONE))
        jsetIndex ((jget (this).cancelInputArray)) ((jio (TouchButtonInput.getId ((jget (basicTouchInputFactory).uP))))) ((jget (basicTouchInputFactory).dOWN))
        jsetIndex ((jget (this).cancelInputArray)) ((jio (TouchButtonInput.getId ((jget (basicTouchInputFactory).dOWN))))) ((jget (basicTouchInputFactory).uP))
        jsetIndex ((jget (this).cancelInputArray)) ((jio (TouchButtonInput.getId ((jget (basicTouchInputFactory).lEFT))))) ((jget (basicTouchInputFactory).rIGHT))
        jsetIndex ((jget (this).cancelInputArray)) ((jio (TouchButtonInput.getId ((jget (basicTouchInputFactory).rIGHT))))) ((jget (basicTouchInputFactory).lEFT))
        pure ()


getCancel :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (TouchButtonInput.TouchButtonInput)
getCancel object_ a1 = jmethod object_ "getCancel" (\() -> (getCancel_impl (javaCast object_ :: CancelTouchButtonInputFactory))) () a1

getCancel_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (TouchButtonInput.TouchButtonInput)
getCancel_super object_ a1 = (getCancel_impl (javaCast object_ :: CancelTouchButtonInputFactory)) a1

getCancel_impl :: CancelTouchButtonInputFactory -> TouchButtonInput.TouchButtonInput -> IO (TouchButtonInput.TouchButtonInput)
getCancel_impl this touchButtonInput = do
        pure ((jindex ((jget (this).cancelInputArray)) ((jio (TouchButtonInput.getId touchButtonInput)))))


