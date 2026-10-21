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
-- package org.allbinary.game.health
module HealthBarAnimationInterfaceFactory where

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
import qualified HealthBarThreedAnimation -- same package or java.lang
import qualified HealthBarAnimation -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties

-- implements AnimationInterfaceFactoryInterface
-- implements ProceduralAnimationInterfaceFactoryInterface
data HealthBarAnimationInterfaceFactory = HealthBarAnimationInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull HealthBarAnimationInterfaceFactory where
    javaNull = javaNullRecord "HealthBarAnimationInterfaceFactory"

instance JavaEquals HealthBarAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthBarAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass HealthBarAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HealthBarAnimationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = HealthBarAnimationInterfaceFactory header_
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstanceByLocation" (\() -> getInstanceByLocation_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: HealthBarAnimationInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO HealthBarAnimationInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HealthBarAnimationInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstanceByLocation :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (HealthBarAnimation.HealthBarAnimation)
getInstanceByLocation object_ a1 a2 = jmethod object_ "getInstanceByLocation" (\() -> (getInstanceByLocation_impl (javaCast object_ :: HealthBarAnimationInterfaceFactory))) () a1 a2

getInstanceByLocation_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (HealthBarAnimation.HealthBarAnimation)
getInstanceByLocation_super object_ a1 a2 = (getInstanceByLocation_impl (javaCast object_ :: HealthBarAnimationInterfaceFactory)) a1 a2

getInstanceByLocation_impl :: HealthBarAnimationInterfaceFactory -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (HealthBarAnimation.HealthBarAnimation)
getInstanceByLocation_impl this layerInterface location = do
        (fmap (\value_ -> javaCast value_ :: HealthBarAnimation.HealthBarAnimation) (HealthBarThreedAnimation.new_2 layerInterface location))


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: HealthBarAnimationInterfaceFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: HealthBarAnimationInterfaceFactory)) a1

getInstance_impl :: HealthBarAnimationInterfaceFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        pure (javaNull)


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: HealthBarAnimationInterfaceFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: HealthBarAnimationInterfaceFactory)) a1

getInstanceAnimation_impl :: HealthBarAnimationInterfaceFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        pure (javaNull)


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: HealthBarAnimationInterfaceFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: HealthBarAnimationInterfaceFactory)) a1

setInitialScale_impl :: HealthBarAnimationInterfaceFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


