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
-- package org.allbinary.android.input.motion
module AnalogLocationInputProcessor where

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
import qualified AnalogLocationInput -- org.allbinary.game.input.analog.AnalogLocationInput
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

data AnalogLocationInputProcessor = AnalogLocationInputProcessor
    { header_ :: JavaHeader
    }

instance JavaNull AnalogLocationInputProcessor where
    javaNull = javaNullRecord "AnalogLocationInputProcessor"

instance JavaEquals AnalogLocationInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnalogLocationInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass AnalogLocationInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnalogLocationInputProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = AnalogLocationInputProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: AnalogLocationInputProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AnalogLocationInputProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnalogLocationInputProcessor -> IO ()
init_ this = do
    initFields_ this


process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInput.AnalogLocationInput -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AnalogLocationInputProcessor))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInput.AnalogLocationInput -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: AnalogLocationInputProcessor)) a1 a2

process_impl :: AnalogLocationInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInput.AnalogLocationInput -> IO (())
process_impl this allbinaryLayerManager analogLocationInput = do
        pure ()


