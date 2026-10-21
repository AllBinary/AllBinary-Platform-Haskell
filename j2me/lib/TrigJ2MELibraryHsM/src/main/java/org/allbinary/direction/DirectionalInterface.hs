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
-- package org.allbinary.direction
module DirectionalInterface where

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
import qualified Direction -- same package or java.lang
import qualified Angle -- org.allbinary.math.Angle

-- Java interface: the classes that implement it have these functions
data DirectionalInterface = DirectionalInterface
    { header_ :: JavaHeader
    }

instance JavaNull DirectionalInterface where
    javaNull = javaNullRecord "DirectionalInterface"

instance JavaEquals DirectionalInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DirectionalInterface where
    (==) = jrecordEquals

instance JavaObjectClass DirectionalInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DirectionalInterface
fromHeader_ header = DirectionalInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DirectionalInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setFrameByDirection :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection object_ a1 = jmethod object_ "setFrameByDirection" (\() -> (setFrameByDirection_impl (javaCast object_ :: DirectionalInterface))) () a1

setFrameByDirection_super :: (JavaObjectClass this_) => this_ -> Direction.Direction -> IO (())
setFrameByDirection_super object_ a1 = (setFrameByDirection_impl (javaCast object_ :: DirectionalInterface)) a1

setFrameByDirection_impl :: DirectionalInterface -> Direction.Direction -> IO (())
setFrameByDirection_impl this direction = javaAbstractMethod "setFrameByDirection"


setFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle object_ a1 = jmethod object_ "setFrameToAngle" (\() -> (setFrameToAngle_impl (javaCast object_ :: DirectionalInterface))) () a1

setFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
setFrameToAngle_super object_ a1 = (setFrameToAngle_impl (javaCast object_ :: DirectionalInterface)) a1

setFrameToAngle_impl :: DirectionalInterface -> Angle.Angle -> IO (())
setFrameToAngle_impl this angle = javaAbstractMethod "setFrameToAngle"


adjustFrameToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle object_ a1 = jmethod object_ "adjustFrameToAngle" (\() -> (adjustFrameToAngle_impl (javaCast object_ :: DirectionalInterface))) () a1

adjustFrameToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
adjustFrameToAngle_super object_ a1 = (adjustFrameToAngle_impl (javaCast object_ :: DirectionalInterface)) a1

adjustFrameToAngle_impl :: DirectionalInterface -> Angle.Angle -> IO (())
adjustFrameToAngle_impl this newAngle = javaAbstractMethod "adjustFrameToAngle"


adjustFrame :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame object_ a1 = jmethod object_ "adjustFrame" (\() -> (adjustFrame_impl (javaCast object_ :: DirectionalInterface))) () a1

adjustFrame_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
adjustFrame_super object_ a1 = (adjustFrame_impl (javaCast object_ :: DirectionalInterface)) a1

adjustFrame_impl :: DirectionalInterface -> Int16 -> IO (())
adjustFrame_impl this angle = javaAbstractMethod "adjustFrame"


