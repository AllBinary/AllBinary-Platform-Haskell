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
-- package org.allbinary.animation.transition
module AnimationListenerInterface where

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
data AnimationListenerInterface = AnimationListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull AnimationListenerInterface where
    javaNull = javaNullRecord "AnimationListenerInterface"

instance JavaEquals AnimationListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass AnimationListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AnimationListenerInterface
fromHeader_ header = AnimationListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AnimationListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onPlatformAnimationStart :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationStart object_ = jmethod object_ "onPlatformAnimationStart" (\() -> (onPlatformAnimationStart_impl (javaCast object_ :: AnimationListenerInterface))) ()

onPlatformAnimationStart_super :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationStart_super object_ = (onPlatformAnimationStart_impl (javaCast object_ :: AnimationListenerInterface))

onPlatformAnimationStart_impl :: AnimationListenerInterface -> IO (())
onPlatformAnimationStart_impl this = javaAbstractMethod "onPlatformAnimationStart"


onPlatformAnimationEnd :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationEnd object_ = jmethod object_ "onPlatformAnimationEnd" (\() -> (onPlatformAnimationEnd_impl (javaCast object_ :: AnimationListenerInterface))) ()

onPlatformAnimationEnd_super :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationEnd_super object_ = (onPlatformAnimationEnd_impl (javaCast object_ :: AnimationListenerInterface))

onPlatformAnimationEnd_impl :: AnimationListenerInterface -> IO (())
onPlatformAnimationEnd_impl this = javaAbstractMethod "onPlatformAnimationEnd"


onPlatformAnimationRepeat :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationRepeat object_ = jmethod object_ "onPlatformAnimationRepeat" (\() -> (onPlatformAnimationRepeat_impl (javaCast object_ :: AnimationListenerInterface))) ()

onPlatformAnimationRepeat_super :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationRepeat_super object_ = (onPlatformAnimationRepeat_impl (javaCast object_ :: AnimationListenerInterface))

onPlatformAnimationRepeat_impl :: AnimationListenerInterface -> IO (())
onPlatformAnimationRepeat_impl this = javaAbstractMethod "onPlatformAnimationRepeat"


