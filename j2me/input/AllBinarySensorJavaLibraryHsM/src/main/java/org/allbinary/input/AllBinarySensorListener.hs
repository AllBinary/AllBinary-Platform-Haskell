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
-- package org.allbinary.input
module AllBinarySensorListener where

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

-- Java interface: the classes that implement it have these functions
data AllBinarySensorListener = AllBinarySensorListener
    { header_ :: JavaHeader
    }

instance JavaNull AllBinarySensorListener where
    javaNull = javaNullRecord "AllBinarySensorListener"

instance JavaEquals AllBinarySensorListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinarySensorListener where
    (==) = jrecordEquals

instance JavaObjectClass AllBinarySensorListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AllBinarySensorListener
fromHeader_ header = AllBinarySensorListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AllBinarySensorListener header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onSensorChange :: (JavaObjectClass this_) => this_ -> IO (())
onSensorChange object_ = jmethod object_ "onSensorChange" (\() -> (onSensorChange_impl (javaCast object_ :: AllBinarySensorListener))) ()

onSensorChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onSensorChange_super object_ = (onSensorChange_impl (javaCast object_ :: AllBinarySensorListener))

onSensorChange_impl :: AllBinarySensorListener -> IO (())
onSensorChange_impl this = javaAbstractMethod "onSensorChange"


