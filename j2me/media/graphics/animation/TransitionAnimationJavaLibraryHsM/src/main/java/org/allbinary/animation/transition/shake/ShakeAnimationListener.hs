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
-- package org.allbinary.animation.transition.shake
module ShakeAnimationListener where

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
import qualified ShakeEvent -- same package or java.lang

data ShakeAnimationListener = ShakeAnimationListener
    { header_ :: JavaHeader
    }

instance JavaNull ShakeAnimationListener where
    javaNull = javaNullRecord "ShakeAnimationListener"

instance JavaEquals ShakeAnimationListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShakeAnimationListener where
    (==) = jrecordEquals

instance JavaObjectClass ShakeAnimationListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShakeAnimationListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = ShakeAnimationListener header_
    jregisterLevel header_ this
    jregisterMethod header_ "onSmallShakeEvent" (\() -> onSmallShakeEvent_impl this)
    jregisterMethod header_ "onMediumShakeEvent" (\() -> onMediumShakeEvent_impl this)
    jregisterMethod header_ "onLargeShakeEvent" (\() -> onLargeShakeEvent_impl this)
    jregisterMethod header_ "onShakeEvent" (\() -> onShakeEvent_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: ShakeAnimationListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ShakeAnimationListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShakeAnimationListener -> IO ()
init_ this = do
    initFields_ this


onSmallShakeEvent :: (JavaObjectClass this_) => this_ -> IO (())
onSmallShakeEvent object_ = jmethod object_ "onSmallShakeEvent" (\() -> (onSmallShakeEvent_impl (javaCast object_ :: ShakeAnimationListener))) ()

onSmallShakeEvent_super :: (JavaObjectClass this_) => this_ -> IO (())
onSmallShakeEvent_super object_ = (onSmallShakeEvent_impl (javaCast object_ :: ShakeAnimationListener))

onSmallShakeEvent_impl :: ShakeAnimationListener -> IO (())
onSmallShakeEvent_impl this = do
        pure ()


onMediumShakeEvent :: (JavaObjectClass this_) => this_ -> IO (())
onMediumShakeEvent object_ = jmethod object_ "onMediumShakeEvent" (\() -> (onMediumShakeEvent_impl (javaCast object_ :: ShakeAnimationListener))) ()

onMediumShakeEvent_super :: (JavaObjectClass this_) => this_ -> IO (())
onMediumShakeEvent_super object_ = (onMediumShakeEvent_impl (javaCast object_ :: ShakeAnimationListener))

onMediumShakeEvent_impl :: ShakeAnimationListener -> IO (())
onMediumShakeEvent_impl this = do
        pure ()


onLargeShakeEvent :: (JavaObjectClass this_) => this_ -> IO (())
onLargeShakeEvent object_ = jmethod object_ "onLargeShakeEvent" (\() -> (onLargeShakeEvent_impl (javaCast object_ :: ShakeAnimationListener))) ()

onLargeShakeEvent_super :: (JavaObjectClass this_) => this_ -> IO (())
onLargeShakeEvent_super object_ = (onLargeShakeEvent_impl (javaCast object_ :: ShakeAnimationListener))

onLargeShakeEvent_impl :: ShakeAnimationListener -> IO (())
onLargeShakeEvent_impl this = do
        pure ()


onShakeEvent :: (JavaObjectClass this_) => this_ -> ShakeEvent.ShakeEvent -> IO (())
onShakeEvent object_ a1 = jmethod object_ "onShakeEvent" (\() -> (onShakeEvent_impl (javaCast object_ :: ShakeAnimationListener))) () a1

onShakeEvent_super :: (JavaObjectClass this_) => this_ -> ShakeEvent.ShakeEvent -> IO (())
onShakeEvent_super object_ a1 = (onShakeEvent_impl (javaCast object_ :: ShakeAnimationListener)) a1

onShakeEvent_impl :: ShakeAnimationListener -> ShakeEvent.ShakeEvent -> IO (())
onShakeEvent_impl this shakeEvent = do
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: ShakeAnimationListener))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: ShakeAnimationListener))

getType_impl :: ShakeAnimationListener -> IO (Int)
getType_impl this = do
        pure (0)


