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
-- package org.allbinary.game.input.event
module GameKeyEventFactory where

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
import qualified GameKeyEvent -- same package or java.lang
import qualified GameKeyEventSourceInterface -- org.allbinary.game.input.GameKeyEventSourceInterface
import qualified Input -- org.allbinary.game.input.Input
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data GameKeyEventFactory = GameKeyEventFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , tOUCH_BUTTON_SOURCE_ID :: IORef (Int)
    , mOTION_GESTURE_SOURCE_ID :: IORef (Int)
    , mAX_SOURCES :: IORef (Int)
    , aRRAY :: IORef (JavaArray (JavaArray (GameKeyEvent.GameKeyEvent)))
    }

instance JavaNull GameKeyEventFactory where
    javaNull = javaNullRecord "GameKeyEventFactory"

instance JavaEquals GameKeyEventFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyEventFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyEventFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameKeyEventFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    tOUCH_BUTTON_SOURCE_ID <- newIORef 0
    mOTION_GESTURE_SOURCE_ID <- newIORef 0
    mAX_SOURCES <- newIORef 0
    aRRAY <- newIORef javaNull
    let this = GameKeyEventFactory header_ logUtil tOUCH_BUTTON_SOURCE_ID mOTION_GESTURE_SOURCE_ID mAX_SOURCES aRRAY
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstanceForKey" (\() -> getInstanceForKey_impl this)
    jregisterMethod header_ "getInstanceForInput" (\() -> getInstanceForInput_impl this)
    pure this

initFields_ :: GameKeyEventFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tOUCH_BUTTON_SOURCE_ID (2)
    jset this.mOTION_GESTURE_SOURCE_ID (3)
    jset this.mAX_SOURCES (4)
    jset this.aRRAY ((jnewArray2 ((jget (this).mAX_SOURCES)) ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    pure ()


getInstance :: IO (GameKeyEventFactory)
getInstance = do
        when ((jget GameKeyEventFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameKeyEventFactory.instance_ (assignedValue)
        pure ((javaCast (jget GameKeyEventFactory.instance_) :: GameKeyEventFactory))

new_ :: IO GameKeyEventFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameKeyEventFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GameKeyEventFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: GameKeyEventFactory))

init_impl :: GameKeyEventFactory -> IO (())
init_impl this = do
        nullUtil <- (NullUtil.getInstance)
        let size = (jget ((jio (InputFactory.getInstance))).mAX)
        index <- newIORef ((jget (this).mAX_SOURCES))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            index2 <- newIORef (size)
            fix $ \loop -> when ((jpreIncrement index2 (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                assignedValue <- (GameKeyEvent.createEvent (jget (nullUtil).nULL_OBJECT) (jget index) (jget index2))
                jsetIndex ((jindex ((jget (this).aRRAY)) ((jget index)))) ((jget index2)) (assignedValue)
        pure ()


-- throws Exception
getInstanceForKey :: (JavaObjectClass this_) => this_ -> GameKeyEventSourceInterface.GameKeyEventSourceInterface -> Int -> IO (GameKeyEvent.GameKeyEvent)
getInstanceForKey object_ a1 a2 = jmethod object_ "getInstanceForKey" (\() -> (getInstanceForKey_impl (javaCast object_ :: GameKeyEventFactory))) () a1 a2

getInstanceForKey_super :: (JavaObjectClass this_) => this_ -> GameKeyEventSourceInterface.GameKeyEventSourceInterface -> Int -> IO (GameKeyEvent.GameKeyEvent)
getInstanceForKey_super object_ a1 a2 = (getInstanceForKey_impl (javaCast object_ :: GameKeyEventFactory)) a1 a2

getInstanceForKey_impl :: GameKeyEventFactory -> GameKeyEventSourceInterface.GameKeyEventSourceInterface -> Int -> IO (GameKeyEvent.GameKeyEvent)
getInstanceForKey_impl this anyType key = do
        let gameKeyEvent = (jindex ((jindex ((jget (this).aRRAY)) ((jio (GameKeyEventSourceInterface.getSourceId anyType))))) (key))
        pure (gameKeyEvent)


-- throws Exception
getInstanceForInput :: (JavaObjectClass this_) => this_ -> GameKeyEventSourceInterface.GameKeyEventSourceInterface -> Input.Input -> IO (GameKeyEvent.GameKeyEvent)
getInstanceForInput object_ a1 a2 = jmethod object_ "getInstanceForInput" (\() -> (getInstanceForInput_impl (javaCast object_ :: GameKeyEventFactory))) () a1 a2

getInstanceForInput_super :: (JavaObjectClass this_) => this_ -> GameKeyEventSourceInterface.GameKeyEventSourceInterface -> Input.Input -> IO (GameKeyEvent.GameKeyEvent)
getInstanceForInput_super object_ a1 a2 = (getInstanceForInput_impl (javaCast object_ :: GameKeyEventFactory)) a1 a2

getInstanceForInput_impl :: GameKeyEventFactory -> GameKeyEventSourceInterface.GameKeyEventSourceInterface -> Input.Input -> IO (GameKeyEvent.GameKeyEvent)
getInstanceForInput_impl this anyType input = do
        let gameKeyEvent = (jindex ((jindex ((jget (this).aRRAY)) ((jio (GameKeyEventSourceInterface.getSourceId anyType))))) ((jio (Input.getId input))))
        pure (gameKeyEvent)


