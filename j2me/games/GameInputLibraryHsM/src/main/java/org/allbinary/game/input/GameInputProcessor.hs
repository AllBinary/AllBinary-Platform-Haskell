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
module GameInputProcessor where

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
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

data GameInputProcessor = GameInputProcessor
    { header_ :: JavaHeader
    }

instance JavaNull GameInputProcessor where
    javaNull = javaNullRecord "GameInputProcessor"

instance JavaEquals GameInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass GameInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInputProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameInputProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "processEvent" (\() -> processEvent_impl this)
    jregisterMethod header_ "processReleasedEvent" (\() -> processReleasedEvent_impl this)
    jregisterMethod header_ "processAnalog" (\() -> processAnalog_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "processReleased" (\() -> processReleased_impl this)
    pure this

initFields_ :: GameInputProcessor -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (GameInputProcessor)
getInstance = do
        pure (GameInputProcessor.instance_)

new_ :: IO GameInputProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInputProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
processEvent :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processEvent object_ a1 a2 = jmethod object_ "processEvent" (\() -> (processEvent_impl (javaCast object_ :: GameInputProcessor))) () a1 a2

processEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processEvent_super object_ a1 a2 = (processEvent_impl (javaCast object_ :: GameInputProcessor)) a1 a2

processEvent_impl :: GameInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processEvent_impl this allbinaryLayerManager gameKeyEvent = do
        pure ()


-- throws Exception
processReleasedEvent :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processReleasedEvent object_ a1 a2 = jmethod object_ "processReleasedEvent" (\() -> (processReleasedEvent_impl (javaCast object_ :: GameInputProcessor))) () a1 a2

processReleasedEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processReleasedEvent_super object_ a1 a2 = (processReleasedEvent_impl (javaCast object_ :: GameInputProcessor)) a1 a2

processReleasedEvent_impl :: GameInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processReleasedEvent_impl this allbinaryLayerManager gameKeyEvent = do
        pure ()


-- throws Exception
processAnalog :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
processAnalog object_ a1 a2 a3 = jmethod object_ "processAnalog" (\() -> (processAnalog_impl (javaCast object_ :: GameInputProcessor))) () a1 a2 a3

processAnalog_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
processAnalog_super object_ a1 a2 a3 = (processAnalog_impl (javaCast object_ :: GameInputProcessor)) a1 a2 a3

processAnalog_impl :: GameInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
processAnalog_impl this allbinaryLayerManager gameKeyEvent analogValue = do
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: GameInputProcessor))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: GameInputProcessor)) a1 a2

process_impl :: GameInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
process_impl this allbinaryLayerManager keyAsInteger = do
        pure ()


-- throws Exception
processReleased :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
processReleased object_ a1 a2 = jmethod object_ "processReleased" (\() -> (processReleased_impl (javaCast object_ :: GameInputProcessor))) () a1 a2

processReleased_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
processReleased_super object_ a1 a2 = (processReleased_impl (javaCast object_ :: GameInputProcessor)) a1 a2

processReleased_impl :: GameInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
processReleased_impl this allbinaryLayerManager keyAsInteger = do
        pure ()


