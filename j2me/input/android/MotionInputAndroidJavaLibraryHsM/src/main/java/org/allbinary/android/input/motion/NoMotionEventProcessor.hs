{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
module NoMotionEventProcessor (module NoMotionEventProcessor, module MotionEventProcessor) where

import MotionEventProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, sINGLETON)
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
import qualified MotionEventProcessor

data NoMotionEventProcessor = NoMotionEventProcessor
    { header_ :: JavaHeader
    , base :: MotionEventProcessor.MotionEventProcessor
    }

instance JavaNull NoMotionEventProcessor where
    javaNull = javaNullRecord "NoMotionEventProcessor"

instance JavaEquals NoMotionEventProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoMotionEventProcessor where
    (==) = jrecordEquals

instance JavaObjectClass NoMotionEventProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((MotionEventProcessor.new_))

newRecord_ :: IO NoMotionEventProcessor
newRecord_ = do
    base <- MotionEventProcessor.newRecord_
    let header_ = base.header_
    let this = NoMotionEventProcessor header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: NoMotionEventProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoMotionEventProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoMotionEventProcessor -> IO ()
init_ this = do
    MotionEventProcessor.init_ this.base
    initFields_ this


getInstance :: IO (MotionEventProcessor.MotionEventProcessor)
getInstance = do
        pure (NoMotionEventProcessor.sINGLETON)


