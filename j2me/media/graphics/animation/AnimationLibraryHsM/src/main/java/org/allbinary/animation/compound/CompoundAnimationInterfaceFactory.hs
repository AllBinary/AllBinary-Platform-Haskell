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
-- package org.allbinary.animation.compound
module CompoundAnimationInterfaceFactory where

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
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties

-- implements AnimationInterfaceFactoryInterface
data CompoundAnimationInterfaceFactory = CompoundAnimationInterfaceFactory
    { header_ :: JavaHeader
    , basicAnimationInterfaceFactoryInterfaceArrayP :: IORef (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull CompoundAnimationInterfaceFactory where
    javaNull = javaNullRecord "CompoundAnimationInterfaceFactory"

instance JavaEquals CompoundAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompoundAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass CompoundAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CompoundAnimationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    basicAnimationInterfaceFactoryInterfaceArrayP <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    let this = CompoundAnimationInterfaceFactory header_ basicAnimationInterfaceFactoryInterfaceArrayP animationBehaviorFactory
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "createArray" (\() -> createArray_impl this)
    jregisterMethod header_ "createAnimation" (\() -> createAnimation_impl this)
    jregisterMethod header_ "getBasicAnimationInterfaceFactoryInterfaceArray" (\() -> getBasicAnimationInterfaceFactoryInterfaceArray_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: CompoundAnimationInterfaceFactory -> IO ()
initFields_ this = do
    jset this.basicAnimationInterfaceFactoryInterfaceArrayP (javaNull)
    jset this.animationBehaviorFactory (javaNull)
    pure ()

new_2 :: JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO CompoundAnimationInterfaceFactory
new_2 basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory = do
    this <- newRecord_
    init_2 this basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory
    pure this

init_2 :: CompoundAnimationInterfaceFactory -> JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_2 this basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory = do
        initFields_ this
        jset (this).basicAnimationInterfaceFactoryInterfaceArrayP (basicAnimationInterfaceFactoryInterfaceArray)
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CompoundAnimationInterfaceFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: CompoundAnimationInterfaceFactory)) a1

getInstance_impl :: CompoundAnimationInterfaceFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        let size = (jlength (jget (this).basicAnimationInterfaceFactoryInterfaceArrayP))
        animationInterfaceArray <- (CompoundAnimationInterfaceFactory.createArray this size)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (getInstance ((jindex ((jget (this).basicAnimationInterfaceFactoryInterfaceArrayP)) (index))) instanceId)
            jsetIndex animationInterfaceArray (index) (assignedValue)
        (CompoundAnimationInterfaceFactory.createAnimation this animationInterfaceArray)


createArray :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (Animation.Animation))
createArray object_ a1 = jmethod object_ "createArray" (\() -> (createArray_impl (javaCast object_ :: CompoundAnimationInterfaceFactory))) () a1

createArray_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (Animation.Animation))
createArray_super object_ a1 = (createArray_impl (javaCast object_ :: CompoundAnimationInterfaceFactory)) a1

createArray_impl :: CompoundAnimationInterfaceFactory -> Int -> IO (JavaArray (Animation.Animation))
createArray_impl this size = do
        pure ((jget ((jio (NullAnimationFactory.getFactoryInstance))).eMPTY_ARRAY))


createAnimation :: (JavaObjectClass this_) => this_ -> JavaArray (Animation.Animation) -> IO (Animation.Animation)
createAnimation object_ a1 = jmethod object_ "createAnimation" (\() -> (createAnimation_impl (javaCast object_ :: CompoundAnimationInterfaceFactory))) () a1

createAnimation_super :: (JavaObjectClass this_) => this_ -> JavaArray (Animation.Animation) -> IO (Animation.Animation)
createAnimation_super object_ a1 = (createAnimation_impl (javaCast object_ :: CompoundAnimationInterfaceFactory)) a1

createAnimation_impl :: CompoundAnimationInterfaceFactory -> JavaArray (Animation.Animation) -> IO (Animation.Animation)
createAnimation_impl this animationInterfaceArray = do
        (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)


getBasicAnimationInterfaceFactoryInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray object_ = jmethod object_ "getBasicAnimationInterfaceFactoryInterfaceArray" (\() -> (getBasicAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: CompoundAnimationInterfaceFactory))) ()

getBasicAnimationInterfaceFactoryInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray_super object_ = (getBasicAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: CompoundAnimationInterfaceFactory))

getBasicAnimationInterfaceFactoryInterfaceArray_impl :: CompoundAnimationInterfaceFactory -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray_impl this = do
        pure ((jget (this).basicAnimationInterfaceFactoryInterfaceArrayP))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: CompoundAnimationInterfaceFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: CompoundAnimationInterfaceFactory)) a1

setInitialScale_impl :: CompoundAnimationInterfaceFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        let size = (jlength (jget (this).basicAnimationInterfaceFactoryInterfaceArrayP))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (setInitialScale ((jindex ((jget (this).basicAnimationInterfaceFactoryInterfaceArrayP)) (index))) scaleProperties)
        pure ()


