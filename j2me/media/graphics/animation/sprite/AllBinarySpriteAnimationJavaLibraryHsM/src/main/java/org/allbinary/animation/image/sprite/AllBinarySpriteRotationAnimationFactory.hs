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
module AllBinarySpriteRotationAnimationFactory (module AllBinarySpriteRotationAnimationFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createWHDY, createWHDY_super, createWHDY_impl, createWH, createWH_super, createWH_impl, createDXY, createDXY_super, createDXY_impl, createDXYQ, createDXYQ_super, createDXYQ_impl, createQ, createQ_super, createQ_impl, createWHF, createWHF_super, createWHF_impl, init, init_super, init_impl, initWH, initWH_super, initWH_impl, getInstance, getInstance_super, getInstance_impl, getInstanceAnimation, getInstanceAnimation_super, getInstanceAnimation_impl, animationFactorySpriteScaleUtil)
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
import qualified AllBinarySpriteRotationAnimation -- same package or java.lang
import qualified AllBinaryAdjustedSpriteRotationAnimation -- same package or java.lang
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified ScaleProperties -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified BaseImageAnimationFactory -- org.allbinary.animation.image.BaseImageAnimationFactory
import qualified AnimationFactorySpriteScaleUtil -- org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil

-- implements ProceduralAnimationInterfaceFactoryInterface
data AllBinarySpriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , animationFactorySpriteScaleUtil :: IORef (AnimationFactorySpriteScaleUtil.AnimationFactorySpriteScaleUtil)
    }

instance JavaNull AllBinarySpriteRotationAnimationFactory where
    javaNull = javaNullRecord "AllBinarySpriteRotationAnimationFactory"

instance JavaEquals AllBinarySpriteRotationAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinarySpriteRotationAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinarySpriteRotationAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinarySpriteRotationAnimationFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    animationFactorySpriteScaleUtil <- newIORef javaNull
    let this = AllBinarySpriteRotationAnimationFactory header_ base animationFactorySpriteScaleUtil
    jregisterLevel header_ this
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initWH" (\() -> initWH_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    pure this

initFields_ :: AllBinarySpriteRotationAnimationFactory -> IO ()
initFields_ this = do
    jset this.animationFactorySpriteScaleUtil =<< (AnimationFactorySpriteScaleUtil.getInstance)
    pure ()


-- throws Exception
createWHDY :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinarySpriteRotationAnimationFactory)
createWHDY image dx dy animationBehaviorFactory = do
        spriteRotationAnimationFactory <- (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) (((jio (Image.getHeight image)) `Data.Bits.shiftR` 2)) (((jio (Image.getHeight image)) `Data.Bits.shiftR` 2)) 0 0 animationBehaviorFactory)
        Control.Monad.void (AllBinarySpriteRotationAnimationFactory.initWH spriteRotationAnimationFactory dx dy)
        pure (spriteRotationAnimationFactory)


-- throws Exception
createWH :: Image.Image -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinarySpriteRotationAnimationFactory)
createWH image animationBehaviorFactory = do
        (AllBinarySpriteRotationAnimationFactory.createWHDY image 0 0 animationBehaviorFactory)


-- throws Exception
createDXY :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinarySpriteRotationAnimationFactory)
createDXY image dx dy animationBehaviorFactory = do
        spriteRotationAnimationFactory <- (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) (jio (Image.getHeight image)) (jio (Image.getHeight image)) 0 0 animationBehaviorFactory)
        Control.Monad.void (AllBinarySpriteRotationAnimationFactory.init spriteRotationAnimationFactory dx dy)
        pure (spriteRotationAnimationFactory)


-- throws Exception
createDXYQ :: Image.Image -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinarySpriteRotationAnimationFactory)
createDXYQ image dx dy animationBehaviorFactory = do
        spriteRotationAnimationFactory <- (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) (((jio (Image.getHeight image)) `Data.Bits.shiftR` 2)) (((jio (Image.getHeight image)) `Data.Bits.shiftR` 2)) 0 0 animationBehaviorFactory)
        Control.Monad.void (AllBinarySpriteRotationAnimationFactory.init spriteRotationAnimationFactory dx dy)
        pure (spriteRotationAnimationFactory)


-- throws Exception
createQ :: Image.Image -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinarySpriteRotationAnimationFactory)
createQ image animationBehaviorFactory = do
        (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) (((jio (Image.getHeight image)) `Data.Bits.shiftR` 2)) (((jio (Image.getHeight image)) `Data.Bits.shiftR` 2)) 0 0 animationBehaviorFactory)


-- throws Exception
createWHF :: Image.Image -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (AllBinarySpriteRotationAnimationFactory)
createWHF image animationBehaviorFactory = do
        (new_7 image (jio (PrimitiveIntUtil.getArrayInstance)) (jio (Image.getHeight image)) (jio (Image.getHeight image)) 0 0 animationBehaviorFactory)

new_7 :: Image.Image -> JavaArray (Int) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO AllBinarySpriteRotationAnimationFactory
new_7 image sequenceArray width height dx dy animationBehaviorFactory = do
    this <- newRecord_
    init_7 this image sequenceArray width height dx dy animationBehaviorFactory
    pure this

init_7 :: AllBinarySpriteRotationAnimationFactory -> Image.Image -> JavaArray (Int) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_7 this image sequenceArray width height dx dy animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (sequenceArray) (width) (height) (dx) (dy) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        when (animationBehaviorFactory == (jio (AnimationBehaviorFactory.getInstance))) $ do
            Control.Monad.void (ForcedLogUtil.log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AllBinarySpriteRotationAnimationFactory))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: AllBinarySpriteRotationAnimationFactory)) a1 a2

init_impl :: AllBinarySpriteRotationAnimationFactory -> Int -> Int -> IO (())
init_impl this dx dy = do
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (dx)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dy (dy)
        pure ()


initWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initWH object_ a1 a2 = jmethod object_ "initWH" (\() -> (initWH_impl (javaCast object_ :: AllBinarySpriteRotationAnimationFactory))) () a1 a2

initWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initWH_super object_ a1 a2 = (initWH_impl (javaCast object_ :: AllBinarySpriteRotationAnimationFactory)) a1 a2

initWH_impl :: AllBinarySpriteRotationAnimationFactory -> Int -> Int -> IO (())
initWH_impl this dx dy = do
        Control.Monad.void (AllBinarySpriteRotationAnimationFactory.init this dx dy)
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dx (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) + ((Prelude.negate (jget ((jget (this).base.animationFactoryInitializationVisitor)).width)) `quot` 5)))
        jset ((jget (this).base.animationFactoryInitializationVisitor)).dy (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) + ((Prelude.negate (jget ((jget (this).base.animationFactoryInitializationVisitor)).height)) `quot` 5)))
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinarySpriteRotationAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AllBinarySpriteRotationAnimationFactory)) a1

getInstance_impl :: AllBinarySpriteRotationAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
    javaCatchReturn $ do
        sprite <- (AnimationFactorySpriteScaleUtil.createImage ((jget (this).animationFactorySpriteScaleUtil)) (jio (BaseImageAnimationFactory.getImage this)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).width) (jget ((jget (this).base.animationFactoryInitializationVisitor)).height) (jget ((jget (this).base.scaleProperties)).scaleWidth) (jget ((jget (this).base.scaleProperties)).scaleHeight))
        if (((jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) /= 0) || ((jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) /= 0)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinaryAdjustedSpriteRotationAnimation.new_5 sprite (jio (BaseImageAnimationFactory.getImage this)) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dx) (jget ((jget (this).base.animationFactoryInitializationVisitor)).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (AllBinarySpriteRotationAnimation.new_3 sprite (jio (BaseImageAnimationFactory.getImage this)) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: AllBinarySpriteRotationAnimationFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: AllBinarySpriteRotationAnimationFactory)) a1

getInstanceAnimation_impl :: AllBinarySpriteRotationAnimationFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        (AllBinarySpriteRotationAnimationFactory.getInstance this 0)


