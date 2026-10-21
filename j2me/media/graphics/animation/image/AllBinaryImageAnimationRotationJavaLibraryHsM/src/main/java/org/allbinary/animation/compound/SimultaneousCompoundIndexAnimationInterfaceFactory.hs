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
module SimultaneousCompoundIndexAnimationInterfaceFactory where

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
import qualified SimultaneousCompoundIndexAnimation -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties

-- implements AnimationInterfaceFactoryInterface
data SimultaneousCompoundIndexAnimationInterfaceFactory = SimultaneousCompoundIndexAnimationInterfaceFactory
    { header_ :: JavaHeader
    , basicAnimationInterfaceFactoryInterfaceArray :: IORef (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    }

instance JavaNull SimultaneousCompoundIndexAnimationInterfaceFactory where
    javaNull = javaNullRecord "SimultaneousCompoundIndexAnimationInterfaceFactory"

instance JavaEquals SimultaneousCompoundIndexAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimultaneousCompoundIndexAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass SimultaneousCompoundIndexAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SimultaneousCompoundIndexAnimationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    basicAnimationInterfaceFactoryInterfaceArray <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    let this = SimultaneousCompoundIndexAnimationInterfaceFactory header_ basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getOrCreate" (\() -> getOrCreate_impl this)
    jregisterMethod header_ "getBasicAnimationInterfaceFactoryInterfaceArray" (\() -> getBasicAnimationInterfaceFactoryInterfaceArray_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: SimultaneousCompoundIndexAnimationInterfaceFactory -> IO ()
initFields_ this = do
    jset this.basicAnimationInterfaceFactoryInterfaceArray (javaNull)
    jset this.animationBehaviorFactory (javaNull)
    pure ()

new_2 :: JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO SimultaneousCompoundIndexAnimationInterfaceFactory
new_2 basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory = do
    this <- newRecord_
    init_2 this basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory
    pure this

init_2 :: SimultaneousCompoundIndexAnimationInterfaceFactory -> JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_2 this basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory = do
        initFields_ this
        jset (this).basicAnimationInterfaceFactoryInterfaceArray (basicAnimationInterfaceFactoryInterfaceArray)
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: SimultaneousCompoundIndexAnimationInterfaceFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: SimultaneousCompoundIndexAnimationInterfaceFactory)) a1

getInstance_impl :: SimultaneousCompoundIndexAnimationInterfaceFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        let size = (jlength (jget (this).basicAnimationInterfaceFactoryInterfaceArray))
        let animationInterfaceArray = (jnewArray (size) javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex animationInterfaceArray (index) ((javaCast (jio (getInstance ((jindex ((jget (this).basicAnimationInterfaceFactoryInterfaceArray)) (index))) instanceId)) :: IndexedAnimation.IndexedAnimation))
        (SimultaneousCompoundIndexAnimationInterfaceFactory.getOrCreate this animationInterfaceArray)


getOrCreate :: (JavaObjectClass this_) => this_ -> JavaArray (IndexedAnimation.IndexedAnimation) -> IO (Animation.Animation)
getOrCreate object_ a1 = jmethod object_ "getOrCreate" (\() -> (getOrCreate_impl (javaCast object_ :: SimultaneousCompoundIndexAnimationInterfaceFactory))) () a1

getOrCreate_super :: (JavaObjectClass this_) => this_ -> JavaArray (IndexedAnimation.IndexedAnimation) -> IO (Animation.Animation)
getOrCreate_super object_ a1 = (getOrCreate_impl (javaCast object_ :: SimultaneousCompoundIndexAnimationInterfaceFactory)) a1

getOrCreate_impl :: SimultaneousCompoundIndexAnimationInterfaceFactory -> JavaArray (IndexedAnimation.IndexedAnimation) -> IO (Animation.Animation)
getOrCreate_impl this animationInterfaceArray = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (SimultaneousCompoundIndexAnimation.new_2 animationInterfaceArray (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))


getBasicAnimationInterfaceFactoryInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray object_ = jmethod object_ "getBasicAnimationInterfaceFactoryInterfaceArray" (\() -> (getBasicAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexAnimationInterfaceFactory))) ()

getBasicAnimationInterfaceFactoryInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray_super object_ = (getBasicAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexAnimationInterfaceFactory))

getBasicAnimationInterfaceFactoryInterfaceArray_impl :: SimultaneousCompoundIndexAnimationInterfaceFactory -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray_impl this = do
        pure ((jget (this).basicAnimationInterfaceFactoryInterfaceArray))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: SimultaneousCompoundIndexAnimationInterfaceFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: SimultaneousCompoundIndexAnimationInterfaceFactory)) a1

setInitialScale_impl :: SimultaneousCompoundIndexAnimationInterfaceFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


