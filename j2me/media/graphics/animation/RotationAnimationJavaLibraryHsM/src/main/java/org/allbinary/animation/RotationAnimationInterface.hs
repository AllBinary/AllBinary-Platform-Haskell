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
-- package org.allbinary.animation
module RotationAnimationInterface (module RotationAnimationInterface, module IndexedAnimationInterface, module DirectionalInterface) where

import IndexedAnimationInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAngleInfoP, getAngleInfoP_super, getAngleInfoP_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, toString)
import DirectionalInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAngleInfoP, getAngleInfoP_super, getAngleInfoP_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, toString)
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
import qualified DirectionalInterface -- org.allbinary.direction.DirectionalInterface
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified IndexedAnimationInterface

-- Java interface: the classes that implement it have these functions
data RotationAnimationInterface = RotationAnimationInterface
    { header_ :: JavaHeader
    }

instance JavaNull RotationAnimationInterface where
    javaNull = javaNullRecord "RotationAnimationInterface"

instance JavaEquals RotationAnimationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RotationAnimationInterface where
    (==) = jrecordEquals

instance JavaObjectClass RotationAnimationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RotationAnimationInterface
fromHeader_ header = RotationAnimationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RotationAnimationInterface header)
    IndexedAnimationInterface.registerInterface_ header
    DirectionalInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getAngleInfoP :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP object_ = jmethod object_ "getAngleInfoP" (\() -> (getAngleInfoP_impl (javaCast object_ :: RotationAnimationInterface))) ()

getAngleInfoP_super :: (JavaObjectClass this_) => this_ -> IO (AngleInfo.AngleInfo)
getAngleInfoP_super object_ = (getAngleInfoP_impl (javaCast object_ :: RotationAnimationInterface))

getAngleInfoP_impl :: RotationAnimationInterface -> IO (AngleInfo.AngleInfo)
getAngleInfoP_impl this = javaAbstractMethod "getAngleInfoP"


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: RotationAnimationInterface))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: RotationAnimationInterface))

nextRotation_impl :: RotationAnimationInterface -> IO (())
nextRotation_impl this = javaAbstractMethod "nextRotation"


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: RotationAnimationInterface))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: RotationAnimationInterface))

previousRotation_impl :: RotationAnimationInterface -> IO (())
previousRotation_impl this = javaAbstractMethod "previousRotation"


