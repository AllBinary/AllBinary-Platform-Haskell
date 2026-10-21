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
-- package org.allbinary.animation.special
module SpecialAnimationInterface (module SpecialAnimationInterface, module IndexedAnimationInterface) where

import IndexedAnimationInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setLastFrame, setLastFrame_super, setLastFrame_impl, isComplete, isComplete_super, isComplete_impl, toString)
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
import qualified IndexedAnimationInterface -- org.allbinary.animation.IndexedAnimationInterface

-- Java interface: the classes that implement it have these functions
data SpecialAnimationInterface = SpecialAnimationInterface
    { header_ :: JavaHeader
    }

instance JavaNull SpecialAnimationInterface where
    javaNull = javaNullRecord "SpecialAnimationInterface"

instance JavaEquals SpecialAnimationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialAnimationInterface where
    (==) = jrecordEquals

instance JavaObjectClass SpecialAnimationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SpecialAnimationInterface
fromHeader_ header = SpecialAnimationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SpecialAnimationInterface header)
    IndexedAnimationInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setLastFrame :: (JavaObjectClass this_) => this_ -> IO (())
setLastFrame object_ = jmethod object_ "setLastFrame" (\() -> (setLastFrame_impl (javaCast object_ :: SpecialAnimationInterface))) ()

setLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
setLastFrame_super object_ = (setLastFrame_impl (javaCast object_ :: SpecialAnimationInterface))

setLastFrame_impl :: SpecialAnimationInterface -> IO (())
setLastFrame_impl this = javaAbstractMethod "setLastFrame"


isComplete :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete object_ = jmethod object_ "isComplete" (\() -> (isComplete_impl (javaCast object_ :: SpecialAnimationInterface))) ()

isComplete_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete_super object_ = (isComplete_impl (javaCast object_ :: SpecialAnimationInterface))

isComplete_impl :: SpecialAnimationInterface -> IO (Bool)
isComplete_impl this = javaAbstractMethod "isComplete"


