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
module AnimationInterfaceCompositeInterface where

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
import qualified Animation -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data AnimationInterfaceCompositeInterface = AnimationInterfaceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull AnimationInterfaceCompositeInterface where
    javaNull = javaNullRecord "AnimationInterfaceCompositeInterface"

instance JavaEquals AnimationInterfaceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationInterfaceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass AnimationInterfaceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AnimationInterfaceCompositeInterface
fromHeader_ header = AnimationInterfaceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AnimationInterfaceCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: AnimationInterfaceCompositeInterface))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: AnimationInterfaceCompositeInterface))

getAnimationInterface_impl :: AnimationInterfaceCompositeInterface -> IO (Animation.Animation)
getAnimationInterface_impl this = javaAbstractMethod "getAnimationInterface"


