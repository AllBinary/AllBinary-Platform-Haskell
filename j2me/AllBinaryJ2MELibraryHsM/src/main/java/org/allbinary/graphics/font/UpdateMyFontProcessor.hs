{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.graphics.font
module UpdateMyFontProcessor (module UpdateMyFontProcessor, module MyFontProcessor) where

import MyFontProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, updateMeasurementProcessor)
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
import qualified UpdateMyFontInterface -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified MyFontProcessor

data UpdateMyFontProcessor = UpdateMyFontProcessor
    { header_ :: JavaHeader
    , base :: MyFontProcessor.MyFontProcessor
    , updateMeasurementProcessor :: IORef (UpdateMyFontInterface.UpdateMyFontInterface)
    }

instance JavaNull UpdateMyFontProcessor where
    javaNull = javaNullRecord "UpdateMyFontProcessor"

instance JavaEquals UpdateMyFontProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpdateMyFontProcessor where
    (==) = jrecordEquals

instance JavaObjectClass UpdateMyFontProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UpdateMyFontProcessor
newRecord_ = do
    base <- MyFontProcessor.newRecord_
    let header_ = base.header_
    updateMeasurementProcessor <- newIORef javaNull
    let this = UpdateMyFontProcessor header_ base updateMeasurementProcessor
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: UpdateMyFontProcessor -> IO ()
initFields_ this = do
    jset this.updateMeasurementProcessor (javaNull)
    pure ()

new_1 :: UpdateMyFontInterface.UpdateMyFontInterface -> IO UpdateMyFontProcessor
new_1 keyValueDrawCharArray = do
    this <- newRecord_
    init_1 this keyValueDrawCharArray
    pure this

init_1 :: UpdateMyFontProcessor -> UpdateMyFontInterface.UpdateMyFontInterface -> IO ()
init_1 this keyValueDrawCharArray = do
        MyFontProcessor.init_ this.base
        initFields_ this
        jset (this).updateMeasurementProcessor (keyValueDrawCharArray)
        pure ()


process :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: UpdateMyFontProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: UpdateMyFontProcessor)) a1

process_impl :: UpdateMyFontProcessor -> Graphics.Graphics -> IO (())
process_impl this graphics = do
        Control.Monad.void (UpdateMyFontInterface.updateMeasurement ((jget (this).updateMeasurementProcessor)) graphics)
        pure ()


