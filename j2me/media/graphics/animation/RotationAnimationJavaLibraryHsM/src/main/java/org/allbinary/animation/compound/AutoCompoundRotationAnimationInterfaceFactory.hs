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
module AutoCompoundRotationAnimationInterfaceFactory (module AutoCompoundRotationAnimationInterfaceFactory, module CompoundAnimationInterfaceFactory) where

import CompoundAnimationInterfaceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createArray, createArray_super, createArray_impl, createAnimation, createAnimation_super, createAnimation_impl)
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
import qualified AutoCompoundRotationAnimation -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified CompoundAnimationInterfaceFactory

data AutoCompoundRotationAnimationInterfaceFactory = AutoCompoundRotationAnimationInterfaceFactory
    { header_ :: JavaHeader
    , base :: CompoundAnimationInterfaceFactory.CompoundAnimationInterfaceFactory
    }

instance JavaNull AutoCompoundRotationAnimationInterfaceFactory where
    javaNull = javaNullRecord "AutoCompoundRotationAnimationInterfaceFactory"

instance JavaEquals AutoCompoundRotationAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AutoCompoundRotationAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass AutoCompoundRotationAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AutoCompoundRotationAnimationInterfaceFactory
newRecord_ = do
    base <- CompoundAnimationInterfaceFactory.newRecord_
    let header_ = base.header_
    let this = AutoCompoundRotationAnimationInterfaceFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "createArray" (\() -> createArray_impl this)
    jregisterMethod header_ "createAnimation" (\() -> createAnimation_impl this)
    pure this

initFields_ :: AutoCompoundRotationAnimationInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_2 :: JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO AutoCompoundRotationAnimationInterfaceFactory
new_2 basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory = do
    this <- newRecord_
    init_2 this basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory
    pure this

init_2 :: AutoCompoundRotationAnimationInterfaceFactory -> JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_2 this basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory = do
        CompoundAnimationInterfaceFactory.init_2 this.base (basicAnimationInterfaceFactoryInterfaceArray) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


createArray :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (Animation.Animation))
createArray object_ a1 = jmethod object_ "createArray" (\() -> (createArray_impl (javaCast object_ :: AutoCompoundRotationAnimationInterfaceFactory))) () a1

createArray_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (Animation.Animation))
createArray_super object_ a1 = (createArray_impl (javaCast object_ :: AutoCompoundRotationAnimationInterfaceFactory)) a1

createArray_impl :: AutoCompoundRotationAnimationInterfaceFactory -> Int -> IO (JavaArray (Animation.Animation))
createArray_impl this size = do
        pure ((jnewArray (size) javaNull))


createAnimation :: (JavaObjectClass this_) => this_ -> JavaArray (Animation.Animation) -> IO (Animation.Animation)
createAnimation object_ a1 = jmethod object_ "createAnimation" (\() -> (createAnimation_impl (javaCast object_ :: AutoCompoundRotationAnimationInterfaceFactory))) () a1

createAnimation_super :: (JavaObjectClass this_) => this_ -> JavaArray (Animation.Animation) -> IO (Animation.Animation)
createAnimation_super object_ a1 = (createAnimation_impl (javaCast object_ :: AutoCompoundRotationAnimationInterfaceFactory)) a1

createAnimation_impl :: AutoCompoundRotationAnimationInterfaceFactory -> JavaArray (Animation.Animation) -> IO (Animation.Animation)
createAnimation_impl this animationInterfaceArray = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AutoCompoundRotationAnimation.new_2 (javaCast animationInterfaceArray :: JavaArray (RotationAnimation.RotationAnimation)) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


