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
module VectorExplosionAnimationFactory where

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
import qualified VectorExplosionGenerator -- same package or java.lang
import qualified AnimationBehaviorFactory -- same package or java.lang
import qualified VectorAnimationInterface -- same package or java.lang
import qualified VectorRotationAnimation -- same package or java.lang
import qualified Animation -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ProceduralAnimationInterfaceFactoryInterface

-- implements ProceduralAnimationInterfaceFactoryInterface
data VectorExplosionAnimationFactory = VectorExplosionAnimationFactory
    { header_ :: JavaHeader
    , vectorExplosionGenerator :: IORef (VectorExplosionGenerator.VectorExplosionGenerator)
    , basicColor :: IORef (BasicColor.BasicColor)
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull VectorExplosionAnimationFactory where
    javaNull = javaNullRecord "VectorExplosionAnimationFactory"

instance JavaEquals VectorExplosionAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorExplosionAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass VectorExplosionAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorExplosionAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    vectorExplosionGenerator <- newIORef javaNull
    basicColor <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    let this = VectorExplosionAnimationFactory header_ vectorExplosionGenerator basicColor animationBehaviorFactory
    jregisterLevel header_ this
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    pure this

initFields_ :: VectorExplosionAnimationFactory -> IO ()
initFields_ this = do
    jset this.vectorExplosionGenerator =<< (VectorExplosionGenerator.getInstance)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.animationBehaviorFactory (javaNull)
    pure ()

new_2 :: BasicColor.BasicColor -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO VectorExplosionAnimationFactory
new_2 basicColor animationBehaviorFactory = do
    this <- newRecord_
    init_2 this basicColor animationBehaviorFactory
    pure this

init_2 :: VectorExplosionAnimationFactory -> BasicColor.BasicColor -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_2 this basicColor animationBehaviorFactory = do
        initFields_ this
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        Control.Monad.void (VectorExplosionAnimationFactory.setBasicColorP this basicColor)
        pure ()


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: VectorExplosionAnimationFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: VectorExplosionAnimationFactory)) a1

getInstanceAnimation_impl :: VectorExplosionAnimationFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        let vectorRotationAnimationInterface = (javaCast animationInterface :: VectorAnimationInterface.VectorAnimationInterface)
        frame <- (VectorAnimationInterface.getFrame vectorRotationAnimationInterface)
        framePoints <- (VectorAnimationInterface.getPoints vectorRotationAnimationInterface frame)
        points <- (VectorExplosionGenerator.getInstance ((jget (this).vectorExplosionGenerator)) framePoints 6 (jget ((jget (this).vectorExplosionGenerator)).rOTATION))
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (VectorRotationAnimation.new_3 points (jio (VectorExplosionAnimationFactory.getBasicColorP this)) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: VectorExplosionAnimationFactory))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: VectorExplosionAnimationFactory)) a1

setBasicColorP_impl :: VectorExplosionAnimationFactory -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: VectorExplosionAnimationFactory))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: VectorExplosionAnimationFactory))

getBasicColorP_impl :: VectorExplosionAnimationFactory -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


