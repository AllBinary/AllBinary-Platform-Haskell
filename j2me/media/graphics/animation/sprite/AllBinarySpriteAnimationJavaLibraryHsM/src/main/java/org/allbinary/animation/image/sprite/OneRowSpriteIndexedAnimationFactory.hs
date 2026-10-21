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
module OneRowSpriteIndexedAnimationFactory (module OneRowSpriteIndexedAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createFactoryDX, createFactoryDX_super, createFactoryDX_impl, createFactoryDXY, createFactoryDXY_super, createFactoryDXY_impl, createFactoryWH, createFactoryWH_super, createFactoryWH_impl, createFactory, createFactory_super, createFactory_impl, init, init_super, init_impl, initW, initW_super, initW_impl, getInstance, getInstance_super, getInstance_impl, animationFactorySpriteScaleUtil)
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
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified BaseImageAnimationFactory -- org.allbinary.animation.image.BaseImageAnimationFactory
import qualified BasicColorUtil -- org.allbinary.graphics.color.BasicColorUtil
import qualified AnimationFactorySpriteScaleUtil -- org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil

data OneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , animationFactorySpriteScaleUtil :: IORef (AnimationFactorySpriteScaleUtil.AnimationFactorySpriteScaleUtil)
    }

instance JavaNull OneRowSpriteIndexedAnimationFactory where
    javaNull = javaNullRecord "OneRowSpriteIndexedAnimationFactory"

instance JavaEquals OneRowSpriteIndexedAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OneRowSpriteIndexedAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass OneRowSpriteIndexedAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OneRowSpriteIndexedAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    animationFactorySpriteScaleUtil <- newIORef javaNull
    let this = OneRowSpriteIndexedAnimationFactory header_ base animationFactorySpriteScaleUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initW" (\() -> initW_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: OneRowSpriteIndexedAnimationFactory -> IO ()
initFields_ this = do
    jset this.animationFactorySpriteScaleUtil =<< (AnimationFactorySpriteScaleUtil.getInstance)
    pure ()


-- throws Exception
createFactoryDX :: Image.Image -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (OneRowSpriteIndexedAnimationFactory)
createFactoryDX image dx animationBehaviorFactory = do
        oneRowSpriteIndexedAnimationFactory <- (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) (jio (Image.getHeight image)) (jio (Image.getHeight image)) 0 0 animationBehaviorFactory)
        Control.Monad.void (OneRowSpriteIndexedAnimationFactory.initW oneRowSpriteIndexedAnimationFactory dx)
        pure (oneRowSpriteIndexedAnimationFactory)


-- throws Exception
createFactoryDXY :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (OneRowSpriteIndexedAnimationFactory)
createFactoryDXY image dx dy animationBehaviorFactory = do
        oneRowSpriteIndexedAnimationFactory <- (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) (jio (Image.getHeight image)) (jio (Image.getHeight image)) 0 0 animationBehaviorFactory)
        Control.Monad.void (OneRowSpriteIndexedAnimationFactory.init oneRowSpriteIndexedAnimationFactory dx dy)
        pure (oneRowSpriteIndexedAnimationFactory)


-- throws Exception
createFactoryWH :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (OneRowSpriteIndexedAnimationFactory)
createFactoryWH image width height animationBehaviorFactory = do
        (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) width height 0 0 animationBehaviorFactory)


-- throws Exception
createFactory :: Image.Image -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (OneRowSpriteIndexedAnimationFactory)
createFactory image animationBehaviorFactory = do
        (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) (jio (Image.getHeight image)) (jio (Image.getHeight image)) 0 0 animationBehaviorFactory)

new_7 :: Image.Image -> JavaArray (Int) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO OneRowSpriteIndexedAnimationFactory
new_7 image sequenceArray width height dx dy animationBehaviorFactory = do
    this <- newRecord_
    init_7 this image sequenceArray width height dx dy animationBehaviorFactory
    pure this

init_7 :: OneRowSpriteIndexedAnimationFactory -> Image.Image -> JavaArray (Int) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_7 this image sequenceArray width height dx dy animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (sequenceArray) (width) (height) (dx) (dy) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: OneRowSpriteIndexedAnimationFactory))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: OneRowSpriteIndexedAnimationFactory)) a1 a2

init_impl :: OneRowSpriteIndexedAnimationFactory -> Int -> Int -> IO (())
init_impl this dx dy = do
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dy (dy)
        pure ()


initW :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initW object_ a1 = jmethod object_ "initW" (\() -> (initW_impl (javaCast object_ :: OneRowSpriteIndexedAnimationFactory))) () a1

initW_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initW_super object_ a1 = (initW_impl (javaCast object_ :: OneRowSpriteIndexedAnimationFactory)) a1

initW_impl :: OneRowSpriteIndexedAnimationFactory -> Int -> IO (())
initW_impl this dx = do
        Control.Monad.void (OneRowSpriteIndexedAnimationFactory.init this dx 0)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) + (Prelude.negate (((jget ((jget (this).base.animationFactoryInitializationVisitor)).width) `Data.Bits.shiftR` 2)))))
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: OneRowSpriteIndexedAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: OneRowSpriteIndexedAnimationFactory)) a1

getInstance_impl :: OneRowSpriteIndexedAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        sprite <- (AnimationFactorySpriteScaleUtil.createImage ((jget (this).animationFactorySpriteScaleUtil)) (jio (BaseImageAnimationFactory.getImage this)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).width) (jget ((jget (this).base.animationFactoryInitializationVisitor)).height) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AdjustedSpriteIndexedAnimation.new_6 sprite (jio (BaseImageAnimationFactory.getImage this)) (jget ((jio (BasicColorUtil.getInstance))).zERO_ARRAY) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (SpriteIndexedAnimation.new_4 sprite (jio (BaseImageAnimationFactory.getImage this)) (jget ((jio (BasicColorUtil.getInstance))).zERO_ARRAY) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


