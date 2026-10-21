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
module RotationAnimationInterfaceCompositeInterface (module RotationAnimationInterfaceCompositeInterface, module IndexedAnimationInterfaceCompositeInterface) where

import IndexedAnimationInterfaceCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRotationAnimationInterface, getRotationAnimationInterface_super, getRotationAnimationInterface_impl, setFrame, setFrame_super, setFrame_impl, toString)
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
import qualified RotationAnimation -- same package or java.lang
import qualified IndexedAnimationInterfaceCompositeInterface

-- Java interface: the classes that implement it have these functions
data RotationAnimationInterfaceCompositeInterface = RotationAnimationInterfaceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull RotationAnimationInterfaceCompositeInterface where
    javaNull = javaNullRecord "RotationAnimationInterfaceCompositeInterface"

instance JavaEquals RotationAnimationInterfaceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RotationAnimationInterfaceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass RotationAnimationInterfaceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RotationAnimationInterfaceCompositeInterface
fromHeader_ header = RotationAnimationInterfaceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RotationAnimationInterfaceCompositeInterface header)
    IndexedAnimationInterfaceCompositeInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getRotationAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface object_ = jmethod object_ "getRotationAnimationInterface" (\() -> (getRotationAnimationInterface_impl (javaCast object_ :: RotationAnimationInterfaceCompositeInterface))) ()

getRotationAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface_super object_ = (getRotationAnimationInterface_impl (javaCast object_ :: RotationAnimationInterfaceCompositeInterface))

getRotationAnimationInterface_impl :: RotationAnimationInterfaceCompositeInterface -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface_impl this = javaAbstractMethod "getRotationAnimationInterface"


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: RotationAnimationInterfaceCompositeInterface))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: RotationAnimationInterfaceCompositeInterface)) a1

setFrame_impl :: RotationAnimationInterfaceCompositeInterface -> Int -> IO (())
setFrame_impl this index = javaAbstractMethod "setFrame"


