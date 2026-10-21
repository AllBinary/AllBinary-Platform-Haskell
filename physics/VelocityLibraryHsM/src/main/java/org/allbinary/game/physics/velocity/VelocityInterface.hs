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
-- package org.allbinary.game.physics.velocity
module VelocityInterface (module VelocityInterface, module BasicVelocityInterface) where

import BasicVelocityInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getMaxForwardVelocity, getMaxForwardVelocity_super, getMaxForwardVelocity_impl, getMaxReverseVelocity, getMaxReverseVelocity_super, getMaxReverseVelocity_impl, limitMaxXYForwardVelocity, limitMaxXYForwardVelocity_super, limitMaxXYForwardVelocity_impl, limitMaxXYReverseVelocity, limitMaxXYReverseVelocity_super, limitMaxXYReverseVelocity_impl, limitXYToForwardAndReverseMaxVelocity, limitXYToForwardAndReverseMaxVelocity_super, limitXYToForwardAndReverseMaxVelocity_impl, limitMaxXYVelocity, limitMaxXYVelocity_super, limitMaxXYVelocity_impl, setMaxForwardVelocity, setMaxForwardVelocity_super, setMaxForwardVelocity_impl, setMaxReverseVelocity, setMaxReverseVelocity_super, setMaxReverseVelocity_impl, toString)
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
import qualified BasicVelocityInterface

-- Java interface: the classes that implement it have these functions
data VelocityInterface = VelocityInterface
    { header_ :: JavaHeader
    }

instance JavaNull VelocityInterface where
    javaNull = javaNullRecord "VelocityInterface"

instance JavaEquals VelocityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VelocityInterface where
    (==) = jrecordEquals

instance JavaObjectClass VelocityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> VelocityInterface
fromHeader_ header = VelocityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (VelocityInterface header)
    BasicVelocityInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getMaxForwardVelocity :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxForwardVelocity object_ = jmethod object_ "getMaxForwardVelocity" (\() -> (getMaxForwardVelocity_impl (javaCast object_ :: VelocityInterface))) ()

getMaxForwardVelocity_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxForwardVelocity_super object_ = (getMaxForwardVelocity_impl (javaCast object_ :: VelocityInterface))

getMaxForwardVelocity_impl :: VelocityInterface -> IO (Int)
getMaxForwardVelocity_impl this = javaAbstractMethod "getMaxForwardVelocity"


getMaxReverseVelocity :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxReverseVelocity object_ = jmethod object_ "getMaxReverseVelocity" (\() -> (getMaxReverseVelocity_impl (javaCast object_ :: VelocityInterface))) ()

getMaxReverseVelocity_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxReverseVelocity_super object_ = (getMaxReverseVelocity_impl (javaCast object_ :: VelocityInterface))

getMaxReverseVelocity_impl :: VelocityInterface -> IO (Int)
getMaxReverseVelocity_impl this = javaAbstractMethod "getMaxReverseVelocity"


limitMaxXYForwardVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXYForwardVelocity object_ = jmethod object_ "limitMaxXYForwardVelocity" (\() -> (limitMaxXYForwardVelocity_impl (javaCast object_ :: VelocityInterface))) ()

limitMaxXYForwardVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXYForwardVelocity_super object_ = (limitMaxXYForwardVelocity_impl (javaCast object_ :: VelocityInterface))

limitMaxXYForwardVelocity_impl :: VelocityInterface -> IO (())
limitMaxXYForwardVelocity_impl this = javaAbstractMethod "limitMaxXYForwardVelocity"


limitMaxXYReverseVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXYReverseVelocity object_ = jmethod object_ "limitMaxXYReverseVelocity" (\() -> (limitMaxXYReverseVelocity_impl (javaCast object_ :: VelocityInterface))) ()

limitMaxXYReverseVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXYReverseVelocity_super object_ = (limitMaxXYReverseVelocity_impl (javaCast object_ :: VelocityInterface))

limitMaxXYReverseVelocity_impl :: VelocityInterface -> IO (())
limitMaxXYReverseVelocity_impl this = javaAbstractMethod "limitMaxXYReverseVelocity"


limitXYToForwardAndReverseMaxVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitXYToForwardAndReverseMaxVelocity object_ = jmethod object_ "limitXYToForwardAndReverseMaxVelocity" (\() -> (limitXYToForwardAndReverseMaxVelocity_impl (javaCast object_ :: VelocityInterface))) ()

limitXYToForwardAndReverseMaxVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitXYToForwardAndReverseMaxVelocity_super object_ = (limitXYToForwardAndReverseMaxVelocity_impl (javaCast object_ :: VelocityInterface))

limitXYToForwardAndReverseMaxVelocity_impl :: VelocityInterface -> IO (())
limitXYToForwardAndReverseMaxVelocity_impl this = javaAbstractMethod "limitXYToForwardAndReverseMaxVelocity"


limitMaxXYVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxXYVelocity object_ a1 = jmethod object_ "limitMaxXYVelocity" (\() -> (limitMaxXYVelocity_impl (javaCast object_ :: VelocityInterface))) () a1

limitMaxXYVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxXYVelocity_super object_ a1 = (limitMaxXYVelocity_impl (javaCast object_ :: VelocityInterface)) a1

limitMaxXYVelocity_impl :: VelocityInterface -> Int -> IO (())
limitMaxXYVelocity_impl this maxVelocity = javaAbstractMethod "limitMaxXYVelocity"


setMaxForwardVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxForwardVelocity object_ a1 = jmethod object_ "setMaxForwardVelocity" (\() -> (setMaxForwardVelocity_impl (javaCast object_ :: VelocityInterface))) () a1

setMaxForwardVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxForwardVelocity_super object_ a1 = (setMaxForwardVelocity_impl (javaCast object_ :: VelocityInterface)) a1

setMaxForwardVelocity_impl :: VelocityInterface -> Int -> IO (())
setMaxForwardVelocity_impl this maxForwardVelocity = javaAbstractMethod "setMaxForwardVelocity"


setMaxReverseVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxReverseVelocity object_ a1 = jmethod object_ "setMaxReverseVelocity" (\() -> (setMaxReverseVelocity_impl (javaCast object_ :: VelocityInterface))) () a1

setMaxReverseVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxReverseVelocity_super object_ a1 = (setMaxReverseVelocity_impl (javaCast object_ :: VelocityInterface)) a1

setMaxReverseVelocity_impl :: VelocityInterface -> Int -> IO (())
setMaxReverseVelocity_impl this maxReverseVelocity = javaAbstractMethod "setMaxReverseVelocity"


