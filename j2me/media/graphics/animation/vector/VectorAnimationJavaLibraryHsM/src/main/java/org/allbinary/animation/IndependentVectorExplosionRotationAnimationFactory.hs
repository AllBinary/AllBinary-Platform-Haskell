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
module IndependentVectorExplosionRotationAnimationFactory where

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
import qualified VectorAnimationFactoryInterface -- same package or java.lang
import qualified VectorRotationGenerator -- same package or java.lang
import qualified VectorExplosionGenerator -- same package or java.lang
import qualified IndexedAnimation -- same package or java.lang
import qualified Animation -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified VectorInfo -- org.allbinary.vector.VectorInfo
import qualified ProceduralAnimationInterfaceFactoryInterface

-- implements ProceduralAnimationInterfaceFactoryInterface
data IndependentVectorExplosionRotationAnimationFactory = IndependentVectorExplosionRotationAnimationFactory
    { header_ :: JavaHeader
    , framePoints :: IORef (JavaArray (JavaArray (JavaArray (Int))))
    , vectorInfo :: IORef (VectorInfo.VectorInfo)
    , basicColor :: IORef (BasicColor.BasicColor)
    , vectorAnimationFactoryInterface :: IORef (VectorAnimationFactoryInterface.VectorAnimationFactoryInterface)
    , vectorExplosionGenerator :: IORef (VectorExplosionGenerator.VectorExplosionGenerator)
    }

instance JavaNull IndependentVectorExplosionRotationAnimationFactory where
    javaNull = javaNullRecord "IndependentVectorExplosionRotationAnimationFactory"

instance JavaEquals IndependentVectorExplosionRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IndependentVectorExplosionRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass IndependentVectorExplosionRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO IndependentVectorExplosionRotationAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    framePoints <- newIORef javaNull
    vectorInfo <- newIORef javaNull
    basicColor <- newIORef javaNull
    vectorAnimationFactoryInterface <- newIORef javaNull
    vectorExplosionGenerator <- newIORef javaNull
    let this = IndependentVectorExplosionRotationAnimationFactory header_ framePoints vectorInfo basicColor vectorAnimationFactoryInterface vectorExplosionGenerator
    jregisterLevel header_ this
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    pure this

initFields_ :: IndependentVectorExplosionRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.framePoints ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY_ARRAY))
    jset this.vectorInfo (javaNull)
    jset this.basicColor (javaNull)
    jset this.vectorAnimationFactoryInterface (javaNull)
    jset this.vectorExplosionGenerator =<< (VectorExplosionGenerator.getInstance)
    pure ()

new_3 :: VectorInfo.VectorInfo -> BasicColor.BasicColor -> VectorAnimationFactoryInterface.VectorAnimationFactoryInterface -> IO IndependentVectorExplosionRotationAnimationFactory
new_3 vectorInfo basicColor vectorAnimationFactoryInterface = do
    this <- newRecord_
    init_3 this vectorInfo basicColor vectorAnimationFactoryInterface
    pure this

init_3 :: IndependentVectorExplosionRotationAnimationFactory -> VectorInfo.VectorInfo -> BasicColor.BasicColor -> VectorAnimationFactoryInterface.VectorAnimationFactoryInterface -> IO ()
init_3 this vectorInfo basicColor vectorAnimationFactoryInterface = do
        initFields_ this
        jset (this).vectorInfo (vectorInfo)
        jset (this).basicColor (basicColor)
        jset (this).vectorAnimationFactoryInterface (vectorAnimationFactoryInterface)
        Control.Monad.void (IndependentVectorExplosionRotationAnimationFactory.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: IndependentVectorExplosionRotationAnimationFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: IndependentVectorExplosionRotationAnimationFactory))

init_impl :: IndependentVectorExplosionRotationAnimationFactory -> IO (())
init_impl this = do
        assignedValue <- (VectorRotationGenerator.getInstance_1 ((jio (VectorRotationGenerator.getInstance))) (jget (this).vectorInfo))
        jset (this).framePoints (assignedValue)
        pure ()


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: IndependentVectorExplosionRotationAnimationFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: IndependentVectorExplosionRotationAnimationFactory)) a1

getInstanceAnimation_impl :: IndependentVectorExplosionRotationAnimationFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        frame <- newIORef (0)
        when (animationInterface /= javaNull) $ do
            let rotationAnimationInterface = (javaCast animationInterface :: IndexedAnimation.IndexedAnimation)
            assignedValue <- (IndexedAnimation.getFrame rotationAnimationInterface)
            jset frame (assignedValue)
        points <- (VectorExplosionGenerator.getInstance_3 ((jget (this).vectorExplosionGenerator)) (jindex ((jget (this).framePoints)) ((jget frame))) 6 (jget ((jget (this).vectorExplosionGenerator)).rOTATION))
        (VectorAnimationFactoryInterface.getInstance ((jget (this).vectorAnimationFactoryInterface)) points (jget (this).basicColor))


