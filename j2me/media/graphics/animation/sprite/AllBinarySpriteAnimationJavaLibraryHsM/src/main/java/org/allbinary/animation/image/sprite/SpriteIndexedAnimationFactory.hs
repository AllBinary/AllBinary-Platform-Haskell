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
module SpriteIndexedAnimationFactory (module SpriteIndexedAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createCWHDXY, createCWHDXY_super, createCWHDXY_impl, createCWH, createCWH_super, createCWH_impl, createWH, createWH_super, createWH_impl, initHWH, initHWH_super, initHWH_impl, getInstance, getInstance_super, getInstance_impl, getInstanceAnimation, getInstanceAnimation_super, getInstanceAnimation_impl, animationFactorySpriteScaleUtil, basicColorArray)
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
import qualified AdjustedSpriteIndexedAnimation -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified ScaleProperties -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified BaseImageAnimationFactory -- org.allbinary.animation.image.BaseImageAnimationFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorUtil -- org.allbinary.graphics.color.BasicColorUtil
import qualified AnimationFactorySpriteScaleUtil -- org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil

-- implements ProceduralAnimationInterfaceFactoryInterface
data SpriteIndexedAnimationFactory = SpriteIndexedAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , animationFactorySpriteScaleUtil :: IORef (AnimationFactorySpriteScaleUtil.AnimationFactorySpriteScaleUtil)
    , basicColorArray :: IORef (JavaArray (BasicColor.BasicColor))
    }

instance JavaNull SpriteIndexedAnimationFactory where
    javaNull = javaNullRecord "SpriteIndexedAnimationFactory"

instance JavaEquals SpriteIndexedAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpriteIndexedAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass SpriteIndexedAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SpriteIndexedAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    animationFactorySpriteScaleUtil <- newIORef javaNull
    basicColorArray <- newIORef javaNull
    let this = SpriteIndexedAnimationFactory header_ base animationFactorySpriteScaleUtil basicColorArray
    jregisterLevel header_ this
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "initHWH" (\() -> initHWH_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    pure this

initFields_ :: SpriteIndexedAnimationFactory -> IO ()
initFields_ this = do
    jset this.animationFactorySpriteScaleUtil =<< (AnimationFactorySpriteScaleUtil.getInstance)
    jset this.basicColorArray ((jget ((jio (BasicColorUtil.getInstance))).zERO_ARRAY))
    pure ()


-- throws Exception
createCWHDXY :: Image.Image -> JavaArray (BasicColor.BasicColor) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (SpriteIndexedAnimationFactory)
createCWHDXY image basicColorArray width height dx dy animationBehaviorFactory = do
        (new_8 image basicColorArray (jio (PrimitiveIntUtil.getArrayInstance)) width height dx dy animationBehaviorFactory)


-- throws Exception
createCWH :: Image.Image -> JavaArray (BasicColor.BasicColor) -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (SpriteIndexedAnimationFactory)
createCWH image basicColorArray width height animationBehaviorFactory = do
        spriteIndexedAnimationFactory <- (new_8 image basicColorArray (jio (PrimitiveIntUtil.getArrayInstance)) width height 0 0 animationBehaviorFactory)
        Control.Monad.void (SpriteIndexedAnimationFactory.initHWH spriteIndexedAnimationFactory)
        pure (spriteIndexedAnimationFactory)


-- throws Exception
createWH :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (SpriteIndexedAnimationFactory)
createWH image width height animationBehaviorFactory = do
        (new_8 image (jget ((jio (BasicColorUtil.getInstance))).zERO_ARRAY) (jio (PrimitiveIntUtil.getArrayInstance)) width height 0 0 animationBehaviorFactory)

new_8 :: Image.Image -> JavaArray (BasicColor.BasicColor) -> JavaArray (Int) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO SpriteIndexedAnimationFactory
new_8 image basicColorArray sequenceArray width height dx dy animationBehaviorFactory = do
    this <- newRecord_
    init_8 this image basicColorArray sequenceArray width height dx dy animationBehaviorFactory
    pure this

init_8 :: SpriteIndexedAnimationFactory -> Image.Image -> JavaArray (BasicColor.BasicColor) -> JavaArray (Int) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_8 this image basicColorArray sequenceArray width height dx dy animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (sequenceArray) (width) (height) (dx) (dy) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).basicColorArray (basicColorArray)
        pure ()


initHWH :: (JavaObjectClass this_) => this_ -> IO (())
initHWH object_ = jmethod object_ "initHWH" (\() -> (initHWH_impl (javaCast object_ :: SpriteIndexedAnimationFactory))) ()

initHWH_super :: (JavaObjectClass this_) => this_ -> IO (())
initHWH_super object_ = (initHWH_impl (javaCast object_ :: SpriteIndexedAnimationFactory))

initHWH_impl :: SpriteIndexedAnimationFactory -> IO (())
initHWH_impl this = do
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx ((Prelude.negate (((jget ((jget (this).base.animationFactoryInitializationVisitor)).width) `Data.Bits.shiftR` 2))))
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dy ((Prelude.negate (((jget ((jget (this).base.animationFactoryInitializationVisitor)).height) `Data.Bits.shiftR` 2))))
        when (jio (AndroidUtil.isAndroid)) $ do
            jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) + 3))
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: SpriteIndexedAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: SpriteIndexedAnimationFactory)) a1

getInstance_impl :: SpriteIndexedAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        sprite <- (AnimationFactorySpriteScaleUtil.createImage ((jget (this).animationFactorySpriteScaleUtil)) (jio (BaseImageAnimationFactory.getImage this)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).width) (jget ((jget (this).base.animationFactoryInitializationVisitor)).height) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedSpriteIndexedAnimation.new_6 sprite (jio (BaseImageAnimationFactory.getImage this)) (jget (this).basicColorArray) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (SpriteIndexedAnimation.new_4 sprite (jio (BaseImageAnimationFactory.getImage this)) (jget (this).basicColorArray) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: SpriteIndexedAnimationFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: SpriteIndexedAnimationFactory)) a1

getInstanceAnimation_impl :: SpriteIndexedAnimationFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        (SpriteIndexedAnimationFactory.getInstance this 0)


