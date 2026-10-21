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
-- package org.allbinary.animation.image
module LeftToRightImageAnimationFactory (module LeftToRightImageAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl)
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
import qualified LeftToRightImageAnimation -- same package or java.lang
import qualified AdjustedLeftToRightImageAnimation -- same package or java.lang
import qualified AnimationFactoryImageScaleUtil -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified ScaleProperties -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified BaseImageAnimationFactory

data LeftToRightImageAnimationFactory = LeftToRightImageAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    }

instance JavaNull LeftToRightImageAnimationFactory where
    javaNull = javaNullRecord "LeftToRightImageAnimationFactory"

instance JavaEquals LeftToRightImageAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LeftToRightImageAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass LeftToRightImageAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LeftToRightImageAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    let this = LeftToRightImageAnimationFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: LeftToRightImageAnimationFactory -> IO ()
initFields_ this = do
    pure ()

new_5 :: Image.Image -> JavaArray (Int) -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO LeftToRightImageAnimationFactory
new_5 image sequenceArray dx dy animationBehaviorFactory = do
    this <- newRecord_
    init_5 this image sequenceArray dx dy animationBehaviorFactory
    pure this

init_5 :: LeftToRightImageAnimationFactory -> Image.Image -> JavaArray (Int) -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_5 this image sequenceArray dx dy animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (sequenceArray) (jio (Image.getWidth image)) (jio (Image.getHeight image)) (dx) (dy) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: LeftToRightImageAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: LeftToRightImageAnimationFactory)) a1

getInstance_impl :: LeftToRightImageAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        scaledImage <- (AnimationFactoryImageScaleUtil.createImage ((jget (this).base.animationFactoryImageScaleUtil)) (jio (BaseImageAnimationFactory.getImage this)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).width) (jget ((jget (this).base.animationFactoryInitializationVisitor)).height) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            Control.Monad.void (AnimationFactoryImageScaleUtil.processAdjust ((jget (this).base.animationFactoryImageScaleUtil)) this)
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedLeftToRightImageAnimation.new_5 scaledImage (jio (BaseImageAnimationFactory.getSequenceArray this)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (LeftToRightImageAnimation.new_3 scaledImage (jio (BaseImageAnimationFactory.getSequenceArray this)) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


