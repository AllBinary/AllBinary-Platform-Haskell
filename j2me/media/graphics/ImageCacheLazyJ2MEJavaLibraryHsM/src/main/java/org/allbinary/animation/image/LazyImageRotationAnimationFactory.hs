{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.animation.image
module LazyImageRotationAnimationFactory where

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
import qualified BaseImageAnimationFactory -- same package or java.lang
import qualified LazyImageRotationAnimation -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified ImageCacheFactory -- org.allbinary.image.ImageCacheFactory
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties

-- implements AnimationInterfaceFactoryInterface
data LazyImageRotationAnimationFactory = LazyImageRotationAnimationFactory
    { header_ :: JavaHeader
    , layoutIndex :: IORef (Int)
    , animationInterfaceFactoryInterface :: IORef (BaseImageAnimationFactory.BaseImageAnimationFactory)
    , scaleProperties :: IORef (ScaleProperties.ScaleProperties)
    }

instance JavaNull LazyImageRotationAnimationFactory where
    javaNull = javaNullRecord "LazyImageRotationAnimationFactory"

instance JavaEquals LazyImageRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LazyImageRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass LazyImageRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LazyImageRotationAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    layoutIndex <- newIORef 0
    animationInterfaceFactoryInterface <- newIORef javaNull
    scaleProperties <- newIORef javaNull
    let this = LazyImageRotationAnimationFactory header_ layoutIndex animationInterfaceFactoryInterface scaleProperties
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: LazyImageRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.layoutIndex (0)
    jset this.animationInterfaceFactoryInterface (javaNull)
    jset this.scaleProperties (ScaleProperties.instance_)
    pure ()

new_3 :: Int -> Int -> BaseImageAnimationFactory.BaseImageAnimationFactory -> IO LazyImageRotationAnimationFactory
new_3 layoutIndex associatedLazyAnimationId animationInterfaceFactoryInterface = do
    this <- newRecord_
    init_3 this layoutIndex associatedLazyAnimationId animationInterfaceFactoryInterface
    pure this

init_3 :: LazyImageRotationAnimationFactory -> Int -> Int -> BaseImageAnimationFactory.BaseImageAnimationFactory -> IO ()
init_3 this layoutIndex associatedLazyAnimationId animationInterfaceFactoryInterface = do
        initFields_ this
        jset (this).layoutIndex (layoutIndex)
        jset (this).animationInterfaceFactoryInterface (animationInterfaceFactoryInterface)
        jset ((jio (ImageCacheFactory.getInstance))).hasAnyLazyAnimationFactories (True)
        when ((jget ((jget (this).animationInterfaceFactoryInterface)).animationBehaviorFactory) == (jio (AnimationBehaviorFactory.getInstance))) $ do
            Control.Monad.void (ForcedLogUtil.log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: LazyImageRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: LazyImageRotationAnimationFactory)) a1

getInstance_impl :: LazyImageRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        if (jio (Image.isReady ((jio (BaseImageAnimationFactory.getImage ((jget (this).animationInterfaceFactoryInterface))))))) then do
            Control.Monad.void (BaseImageAnimationFactory.setInitialScale ((jget (this).animationInterfaceFactoryInterface)) (jget (this).scaleProperties))
            javaReturn =<< (BaseImageAnimationFactory.getInstance ((jget (this).animationInterfaceFactoryInterface)) instanceId)
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (LazyImageRotationAnimation.new_5 (jget (this).layoutIndex) instanceId (jget (this).scaleProperties) (jget (this).animationInterfaceFactoryInterface) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget ((jget (this).animationInterfaceFactoryInterface)).animationBehaviorFactory))))))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: LazyImageRotationAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: LazyImageRotationAnimationFactory)) a1

setInitialScale_impl :: LazyImageRotationAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        jset (this).scaleProperties (scaleProperties)
        pure ()


