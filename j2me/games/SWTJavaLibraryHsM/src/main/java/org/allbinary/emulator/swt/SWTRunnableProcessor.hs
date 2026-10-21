{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.emulator.swt
module SWTRunnableProcessor (module SWTRunnableProcessor, module SWTProcessor) where

import SWTProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, instanceR)
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
import qualified Runnable -- same package or java.lang
import qualified Display -- org.eclipse.swt.widgets.Display
import qualified SWTProcessor

data SWTRunnableProcessor = SWTRunnableProcessor
    { header_ :: JavaHeader
    , base :: SWTProcessor.SWTProcessor
    }

instance JavaNull SWTRunnableProcessor where
    javaNull = javaNullRecord "SWTRunnableProcessor"

instance JavaEquals SWTRunnableProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SWTRunnableProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SWTRunnableProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceR #-}
instanceR = unsafePerformIO ((new_))

newRecord_ :: IO SWTRunnableProcessor
newRecord_ = do
    base <- SWTProcessor.newRecord_
    let header_ = base.header_
    let this = SWTRunnableProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: SWTRunnableProcessor -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (SWTRunnableProcessor)
getInstance = do
        pure (SWTRunnableProcessor.instanceR)

new_ :: IO SWTRunnableProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SWTRunnableProcessor -> IO ()
init_ this = do
        SWTProcessor.init_ this.base
        initFields_ this
        pure ()
        pure ()


process :: (JavaObjectClass this_) => this_ -> Display.Display -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SWTRunnableProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Display.Display -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: SWTRunnableProcessor)) a1

process_impl :: SWTRunnableProcessor -> Display.Display -> IO (())
process_impl this display = do
        Control.Monad.void (Runnable.run ((jget (this).base.runnable)))
        pure ()


