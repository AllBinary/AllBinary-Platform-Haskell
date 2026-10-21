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
module NullSpecialAnimationFactory where

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
import qualified Animation -- same package or java.lang
import qualified SpecialAnimation -- org.allbinary.animation.special.SpecialAnimation
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified AnimationInterfaceFactoryInterface
import qualified ProceduralAnimationInterfaceFactoryInterface

-- implements AnimationInterfaceFactoryInterface
-- implements ProceduralAnimationInterfaceFactoryInterface
data NullSpecialAnimationFactory = NullSpecialAnimationFactory
    { header_ :: JavaHeader
    }

instance JavaNull NullSpecialAnimationFactory where
    javaNull = javaNullRecord "NullSpecialAnimationFactory"

instance JavaEquals NullSpecialAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullSpecialAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass NullSpecialAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_SPECIAL_ANIMATION_FACTORY #-}
nULL_SPECIAL_ANIMATION_FACTORY = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullSpecialAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullSpecialAnimationFactory header_
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: NullSpecialAnimationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullSpecialAnimationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullSpecialAnimationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getFactoryInstance :: IO (NullSpecialAnimationFactory)
getFactoryInstance = do
        pure ((jget NullSpecialAnimationFactory.nULL_SPECIAL_ANIMATION_FACTORY))


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: NullSpecialAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: NullSpecialAnimationFactory)) a1

getInstance_impl :: NullSpecialAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (SpecialAnimation.getInstance))


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: NullSpecialAnimationFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: NullSpecialAnimationFactory)) a1

getInstanceAnimation_impl :: NullSpecialAnimationFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (SpecialAnimation.getInstance))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: NullSpecialAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: NullSpecialAnimationFactory)) a1

setInitialScale_impl :: NullSpecialAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


