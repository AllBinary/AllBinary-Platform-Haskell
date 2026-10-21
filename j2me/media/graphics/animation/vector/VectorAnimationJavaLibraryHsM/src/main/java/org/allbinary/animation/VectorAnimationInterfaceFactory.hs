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
module VectorAnimationInterfaceFactory where

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
import qualified AnimationBehaviorFactory -- same package or java.lang
import qualified VectorAnimation -- same package or java.lang
import qualified Animation -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified AnimationInterfaceFactoryInterface

-- implements AnimationInterfaceFactoryInterface
data VectorAnimationInterfaceFactory = VectorAnimationInterfaceFactory
    { header_ :: JavaHeader
    , currentPoints :: IORef (JavaArray (JavaArray (JavaArray (Int))))
    , basicColor :: IORef (BasicColor.BasicColor)
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull VectorAnimationInterfaceFactory where
    javaNull = javaNullRecord "VectorAnimationInterfaceFactory"

instance JavaEquals VectorAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass VectorAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorAnimationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    currentPoints <- newIORef javaNull
    basicColor <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    let this = VectorAnimationInterfaceFactory header_ currentPoints basicColor animationBehaviorFactory
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: VectorAnimationInterfaceFactory -> IO ()
initFields_ this = do
    jset this.currentPoints (javaNull)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.animationBehaviorFactory (javaNull)
    pure ()

new_3 :: JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO VectorAnimationInterfaceFactory
new_3 currentPoints basicColor animationBehaviorFactory = do
    this <- newRecord_
    init_3 this currentPoints basicColor animationBehaviorFactory
    pure this

init_3 :: VectorAnimationInterfaceFactory -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_3 this currentPoints basicColor animationBehaviorFactory = do
        initFields_ this
        jset (this).currentPoints (currentPoints)
        Control.Monad.void (VectorAnimationInterfaceFactory.setBasicColorP this basicColor)
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: VectorAnimationInterfaceFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: VectorAnimationInterfaceFactory)) a1

getInstance_impl :: VectorAnimationInterfaceFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (VectorAnimation.new_3 (jget (this).currentPoints) (jio (VectorAnimationInterfaceFactory.getBasicColorP this)) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: VectorAnimationInterfaceFactory))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: VectorAnimationInterfaceFactory)) a1

setBasicColorP_impl :: VectorAnimationInterfaceFactory -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: VectorAnimationInterfaceFactory))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: VectorAnimationInterfaceFactory))

getBasicColorP_impl :: VectorAnimationInterfaceFactory -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: VectorAnimationInterfaceFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: VectorAnimationInterfaceFactory)) a1

setInitialScale_impl :: VectorAnimationInterfaceFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


