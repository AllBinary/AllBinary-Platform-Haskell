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
module AllBinaryScreenRelationalImageAnimationInterfaceFactory (module AllBinaryScreenRelationalImageAnimationInterfaceFactory, module BaseImageAnimationFactory) where

import BaseImageAnimationFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, lastImage)
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
import qualified ImageAnimation -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified ScreenRelationalUtil -- org.allbinary.graphics.displayable.ScreenRelationalUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified ImageScaleUtil -- org.allbinary.media.image.ImageScaleUtil
import qualified AndroidImageInterface -- org.microemu.android.device.AndroidImageInterface
import qualified BaseImageAnimationFactory

data AllBinaryScreenRelationalImageAnimationInterfaceFactory = AllBinaryScreenRelationalImageAnimationInterfaceFactory
    { header_ :: JavaHeader
    , base :: BaseImageAnimationFactory.BaseImageAnimationFactory
    , lastImage :: IORef (Image.Image)
    }

instance JavaNull AllBinaryScreenRelationalImageAnimationInterfaceFactory where
    javaNull = javaNullRecord "AllBinaryScreenRelationalImageAnimationInterfaceFactory"

instance JavaEquals AllBinaryScreenRelationalImageAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryScreenRelationalImageAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryScreenRelationalImageAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryScreenRelationalImageAnimationInterfaceFactory
newRecord_ = do
    base <- BaseImageAnimationFactory.newRecord_
    let header_ = base.header_
    lastImage <- newIORef javaNull
    let this = AllBinaryScreenRelationalImageAnimationInterfaceFactory header_ base lastImage
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: AllBinaryScreenRelationalImageAnimationInterfaceFactory -> IO ()
initFields_ this = do
    jset this.lastImage (NullImage.nULL_IMAGE)
    pure ()

new_2 :: Image.Image -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO AllBinaryScreenRelationalImageAnimationInterfaceFactory
new_2 image animationBehaviorFactory = do
    this <- newRecord_
    init_2 this image animationBehaviorFactory
    pure this

init_2 :: AllBinaryScreenRelationalImageAnimationInterfaceFactory -> Image.Image -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_2 this image animationBehaviorFactory = do
        BaseImageAnimationFactory.init_7 this.base (image) (jio (PrimitiveIntUtil.getArrayInstance)) (0) (0) (0) (0) (animationBehaviorFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        when ((jget (this).lastImage) /= NullImage.nULL_IMAGE) $ do
            let androidImageInterface = (javaCast (jget (this).lastImage) :: AndroidImageInterface.AndroidImageInterface)
            Control.Monad.void (AndroidImageInterface.recycle ((jio (AndroidImageInterface.getBitmap androidImageInterface))))
        scale <- (ScreenRelationalUtil.getScaleImage ((jio (ScreenRelationalUtil.getInstance))) image)
        assignedValue <- (ImageScaleUtil.createImage ((jio (ImageScaleUtil.getInstance))) (jio (GameFeatureImageCacheFactory.getInstance)) (jio (BaseImageAnimationFactory.getImage this)) scale scale False)
        jset (this).lastImage (assignedValue)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryScreenRelationalImageAnimationInterfaceFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AllBinaryScreenRelationalImageAnimationInterfaceFactory)) a1

getInstance_impl :: AllBinaryScreenRelationalImageAnimationInterfaceFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (ImageAnimation.new_2 (jget (this).lastImage) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).base.animationBehaviorFactory))))))


