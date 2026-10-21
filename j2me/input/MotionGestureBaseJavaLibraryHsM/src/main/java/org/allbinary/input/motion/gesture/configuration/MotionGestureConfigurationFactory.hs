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
-- package org.allbinary.input.motion.gesture.configuration
module MotionGestureConfigurationFactory where

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
import qualified MotionGestureConfiguration -- same package or java.lang

data MotionGestureConfigurationFactory = MotionGestureConfigurationFactory
    { header_ :: JavaHeader
    }

instance JavaNull MotionGestureConfigurationFactory where
    javaNull = javaNullRecord "MotionGestureConfigurationFactory"

instance JavaEquals MotionGestureConfigurationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionGestureConfigurationFactory where
    (==) = jrecordEquals

instance JavaObjectClass MotionGestureConfigurationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE config #-}
config = unsafePerformIO ((MotionGestureConfiguration.new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionGestureConfigurationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = MotionGestureConfigurationFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: MotionGestureConfigurationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MotionGestureConfigurationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionGestureConfigurationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (MotionGestureConfiguration.MotionGestureConfiguration)
getInstance = do
        pure ((jget MotionGestureConfigurationFactory.config))


