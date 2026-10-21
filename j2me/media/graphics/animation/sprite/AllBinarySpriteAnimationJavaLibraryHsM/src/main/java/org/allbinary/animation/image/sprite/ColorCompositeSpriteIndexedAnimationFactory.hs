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
-- package org.allbinary.animation.image.sprite
module ColorCompositeSpriteIndexedAnimationFactory (module ColorCompositeSpriteIndexedAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstanceAnimation, getInstanceAnimation_super, getInstanceAnimation_impl, animationFactorySpriteScaleUtil, basicColorArray)
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
import qualified SpriteIndexedAnimation -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified ScaleProperties -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified BaseImageAnimationFactory -- org.allbinary.animation.image.BaseImageAnimationFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified AnimationFactorySpriteScaleUtil -- org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil

-- implements ProceduralAnimationInterfaceFactoryInterface
data ColorCompositeSpriteIndexedAnimationFactory = ColorCompositeSpriteIndexedAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , animationFactorySpriteScaleUtil :: IORef (AnimationFactorySpriteScaleUtil.AnimationFactorySpriteScaleUtil)
    , basicColorArray :: IORef (JavaArray (BasicColor.BasicColor))
    }

instance JavaNull ColorCompositeSpriteIndexedAnimationFactory where
    javaNull = javaNullRecord "ColorCompositeSpriteIndexedAnimationFactory"

instance JavaEquals ColorCompositeSpriteIndexedAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorCompositeSpriteIndexedAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass ColorCompositeSpriteIndexedAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorCompositeSpriteIndexedAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    animationFactorySpriteScaleUtil <- newIORef javaNull
    basicColorArray <- newIORef javaNull
    let this = ColorCompositeSpriteIndexedAnimationFactory header_ base animationFactorySpriteScaleUtil basicColorArray
    jregisterLevel header_ this
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    pure this

initFields_ :: ColorCompositeSpriteIndexedAnimationFactory -> IO ()
initFields_ this = do
    jset this.animationFactorySpriteScaleUtil =<< (AnimationFactorySpriteScaleUtil.getInstance)
    jset this.basicColorArray (javaNull)
    pure ()

new_5 :: Image.Image -> JavaArray (BasicColor.BasicColor) -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ColorCompositeSpriteIndexedAnimationFactory
new_5 image basicColorArray width height animationBehaviorFactory = do
    this <- newRecord_
    init_5 this image basicColorArray width height animationBehaviorFactory
    pure this

init_5 :: ColorCompositeSpriteIndexedAnimationFactory -> Image.Image -> JavaArray (BasicColor.BasicColor) -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_5 this image basicColorArray width height animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (jio (PrimitiveIntUtil.getArrayInstance)) (width) (height) (0) (0) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).basicColorArray (basicColorArray)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: ColorCompositeSpriteIndexedAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: ColorCompositeSpriteIndexedAnimationFactory)) a1

getInstance_impl :: ColorCompositeSpriteIndexedAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        sprite <- (AnimationFactorySpriteScaleUtil.createImage ((jget (this).animationFactorySpriteScaleUtil)) (jio (BaseImageAnimationFactory.getImage this)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).width) (jget ((jget (this).base.animationFactoryInitializationVisitor)).height) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (SpriteIndexedAnimation.new_4 sprite (jio (BaseImageAnimationFactory.getImage this)) (jget (this).basicColorArray) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: ColorCompositeSpriteIndexedAnimationFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: ColorCompositeSpriteIndexedAnimationFactory)) a1

getInstanceAnimation_impl :: ColorCompositeSpriteIndexedAnimationFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        (ColorCompositeSpriteIndexedAnimationFactory.getInstance this 0)


