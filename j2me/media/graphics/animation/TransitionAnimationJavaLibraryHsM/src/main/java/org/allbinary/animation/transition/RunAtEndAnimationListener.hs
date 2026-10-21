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
module RunAtEndAnimationListener where

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
import qualified Runnable -- same package or java.lang
import qualified AnimationListenerInterface

-- implements AnimationListenerInterface
data RunAtEndAnimationListener = RunAtEndAnimationListener
    { header_ :: JavaHeader
    , runnable :: IORef (Runnable.Runnable)
    }

instance JavaNull RunAtEndAnimationListener where
    javaNull = javaNullRecord "RunAtEndAnimationListener"

instance JavaEquals RunAtEndAnimationListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RunAtEndAnimationListener where
    (==) = jrecordEquals

instance JavaObjectClass RunAtEndAnimationListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RunAtEndAnimationListener
newRecord_ = do
    header_ <- newJavaHeader
    runnable <- newIORef javaNull
    let this = RunAtEndAnimationListener header_ runnable
    jregisterLevel header_ this
    AnimationListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onPlatformAnimationStart" (\() -> onPlatformAnimationStart_impl this)
    jregisterMethod header_ "onPlatformAnimationEnd" (\() -> onPlatformAnimationEnd_impl this)
    jregisterMethod header_ "onPlatformAnimationRepeat" (\() -> onPlatformAnimationRepeat_impl this)
    pure this

initFields_ :: RunAtEndAnimationListener -> IO ()
initFields_ this = do
    jset this.runnable (javaNull)
    pure ()

new_1 :: Runnable.Runnable -> IO RunAtEndAnimationListener
new_1 runnable = do
    this <- newRecord_
    init_1 this runnable
    pure this

init_1 :: RunAtEndAnimationListener -> Runnable.Runnable -> IO ()
init_1 this runnable = do
        initFields_ this
        jset (this).runnable (runnable)
        pure ()


onPlatformAnimationStart :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationStart object_ = jmethod object_ "onPlatformAnimationStart" (\() -> (onPlatformAnimationStart_impl (javaCast object_ :: RunAtEndAnimationListener))) ()

onPlatformAnimationStart_super :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationStart_super object_ = (onPlatformAnimationStart_impl (javaCast object_ :: RunAtEndAnimationListener))

onPlatformAnimationStart_impl :: RunAtEndAnimationListener -> IO (())
onPlatformAnimationStart_impl this = do
        pure ()


onPlatformAnimationEnd :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationEnd object_ = jmethod object_ "onPlatformAnimationEnd" (\() -> (onPlatformAnimationEnd_impl (javaCast object_ :: RunAtEndAnimationListener))) ()

onPlatformAnimationEnd_super :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationEnd_super object_ = (onPlatformAnimationEnd_impl (javaCast object_ :: RunAtEndAnimationListener))

onPlatformAnimationEnd_impl :: RunAtEndAnimationListener -> IO (())
onPlatformAnimationEnd_impl this = do
        pure ()


onPlatformAnimationRepeat :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationRepeat object_ = jmethod object_ "onPlatformAnimationRepeat" (\() -> (onPlatformAnimationRepeat_impl (javaCast object_ :: RunAtEndAnimationListener))) ()

onPlatformAnimationRepeat_super :: (JavaObjectClass this_) => this_ -> IO (())
onPlatformAnimationRepeat_super object_ = (onPlatformAnimationRepeat_impl (javaCast object_ :: RunAtEndAnimationListener))

onPlatformAnimationRepeat_impl :: RunAtEndAnimationListener -> IO (())
onPlatformAnimationRepeat_impl this = do
        pure ()


