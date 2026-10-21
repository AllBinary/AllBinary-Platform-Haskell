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
module VectorRotationAnimationInterfaceFactory where

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
import qualified VectorRotationAnimation -- same package or java.lang
import qualified Animation -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified AnimationInterfaceFactoryInterface

-- implements AnimationInterfaceFactoryInterface
data VectorRotationAnimationInterfaceFactory = VectorRotationAnimationInterfaceFactory
    { header_ :: JavaHeader
    , currentPoints :: IORef (JavaArray (JavaArray (JavaArray (Int))))
    , basicColor :: IORef (BasicColor.BasicColor)
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull VectorRotationAnimationInterfaceFactory where
    javaNull = javaNullRecord "VectorRotationAnimationInterfaceFactory"

instance JavaEquals VectorRotationAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorRotationAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass VectorRotationAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorRotationAnimationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    currentPoints <- newIORef javaNull
    basicColor <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    let this = VectorRotationAnimationInterfaceFactory header_ currentPoints basicColor animationBehaviorFactory
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: VectorRotationAnimationInterfaceFactory -> IO ()
initFields_ this = do
    jset this.currentPoints ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY_ARRAY))
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.animationBehaviorFactory (javaNull)
    pure ()

new_3 :: JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO VectorRotationAnimationInterfaceFactory
new_3 currentPoints basicColor animationBehaviorFactory = do
    this <- newRecord_
    init_3 this currentPoints basicColor animationBehaviorFactory
    pure this

init_3 :: VectorRotationAnimationInterfaceFactory -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_3 this currentPoints basicColor animationBehaviorFactory = do
        initFields_ this
        jset (this).currentPoints (currentPoints)
        Control.Monad.void (VectorRotationAnimationInterfaceFactory.setBasicColorP this basicColor)
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: VectorRotationAnimationInterfaceFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: VectorRotationAnimationInterfaceFactory)) a1

getInstance_impl :: VectorRotationAnimationInterfaceFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (VectorRotationAnimation.new_3 (jget (this).currentPoints) (jio (VectorRotationAnimationInterfaceFactory.getBasicColorP this)) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: VectorRotationAnimationInterfaceFactory))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: VectorRotationAnimationInterfaceFactory)) a1

setBasicColorP_impl :: VectorRotationAnimationInterfaceFactory -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: VectorRotationAnimationInterfaceFactory))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: VectorRotationAnimationInterfaceFactory))

getBasicColorP_impl :: VectorRotationAnimationInterfaceFactory -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: VectorRotationAnimationInterfaceFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: VectorRotationAnimationInterfaceFactory)) a1

setInitialScale_impl :: VectorRotationAnimationInterfaceFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


