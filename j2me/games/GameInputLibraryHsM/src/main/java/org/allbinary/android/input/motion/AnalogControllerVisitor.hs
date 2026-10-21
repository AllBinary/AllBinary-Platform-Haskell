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
module AnalogControllerVisitor where

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
import qualified AnalogLocationInputProcessor -- same package or java.lang
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

data AnalogControllerVisitor = AnalogControllerVisitor
    { header_ :: JavaHeader
    }

instance JavaNull AnalogControllerVisitor where
    javaNull = javaNullRecord "AnalogControllerVisitor"

instance JavaEquals AnalogControllerVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnalogControllerVisitor where
    (==) = jrecordEquals

instance JavaObjectClass AnalogControllerVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnalogControllerVisitor
newRecord_ = do
    header_ <- newJavaHeader
    let this = AnalogControllerVisitor header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: AnalogControllerVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AnalogControllerVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnalogControllerVisitor -> IO ()
init_ this = do
    initFields_ this


process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AnalogControllerVisitor))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: AnalogControllerVisitor)) a1 a2

process_impl :: AnalogControllerVisitor -> AllBinaryLayerManager.AllBinaryLayerManager -> AnalogLocationInputProcessor.AnalogLocationInputProcessor -> IO (())
process_impl this allbinaryLayerManager analogLocationInputProcessor = do
        pure ()


