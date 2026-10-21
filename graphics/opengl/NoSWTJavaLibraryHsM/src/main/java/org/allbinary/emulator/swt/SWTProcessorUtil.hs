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
module SWTProcessorUtil where

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
import qualified SWTProcessor -- same package or java.lang

data SWTProcessorUtil = SWTProcessorUtil
    { header_ :: JavaHeader
    , swtProcessor :: IORef (SWTProcessor.SWTProcessor)
    }

instance JavaNull SWTProcessorUtil where
    javaNull = javaNullRecord "SWTProcessorUtil"

instance JavaEquals SWTProcessorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SWTProcessorUtil where
    (==) = jrecordEquals

instance JavaObjectClass SWTProcessorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SWTProcessorUtil
newRecord_ = do
    header_ <- newJavaHeader
    swtProcessor <- newIORef javaNull
    let this = SWTProcessorUtil header_ swtProcessor
    jregisterLevel header_ this
    pure this

initFields_ :: SWTProcessorUtil -> IO ()
initFields_ this = do
    jset this.swtProcessor =<< (SWTProcessor.getInstance)
    pure ()

new_ :: IO SWTProcessorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SWTProcessorUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SWTProcessorUtil)
getInstance = do
        pure (SWTProcessorUtil.instance_)


