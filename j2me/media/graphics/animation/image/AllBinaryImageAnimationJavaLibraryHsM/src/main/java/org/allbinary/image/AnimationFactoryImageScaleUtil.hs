{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.image
module AnimationFactoryImageScaleUtil where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified AnimationFactoryInitializationVisitor -- org.allbinary.animation.image.AnimationFactoryInitializationVisitor
import qualified BaseImageAnimationFactory -- org.allbinary.animation.image.BaseImageAnimationFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified ImageJ2MEScaleUtil -- org.allbinary.media.image.ImageJ2MEScaleUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AnimationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil
    { header_ :: JavaHeader
    , imageScaleUtil :: IORef (ImageJ2MEScaleUtil.ImageJ2MEScaleUtil)
    }

instance JavaNull AnimationFactoryImageScaleUtil where
    javaNull = javaNullRecord "AnimationFactoryImageScaleUtil"

instance JavaEquals AnimationFactoryImageScaleUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationFactoryImageScaleUtil where
    (==) = jrecordEquals

instance JavaObjectClass AnimationFactoryImageScaleUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnimationFactoryImageScaleUtil
newRecord_ = do
    header_ <- newJavaHeader
    imageScaleUtil <- newIORef javaNull
    let this = AnimationFactoryImageScaleUtil header_ imageScaleUtil
    jregisterLevel header_ this
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "processAdjust" (\() -> processAdjust_impl this)
    pure this

initFields_ :: AnimationFactoryImageScaleUtil -> IO ()
initFields_ this = do
    jset this.imageScaleUtil =<< (ImageJ2MEScaleUtil.getInstance)
    pure ()

new_ :: IO AnimationFactoryImageScaleUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnimationFactoryImageScaleUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AnimationFactoryImageScaleUtil)
getInstance = do
        pure (AnimationFactoryImageScaleUtil.instance_)


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Int -> Int -> IO (Image.Image)
createImage object_ a1 a2 a3 a4 a5 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: AnimationFactoryImageScaleUtil))) () a1 a2 a3 a4 a5

createImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Int -> Int -> IO (Image.Image)
createImage_super object_ a1 a2 a3 a4 a5 = (createImage_impl (javaCast object_ :: AnimationFactoryImageScaleUtil)) a1 a2 a3 a4 a5

createImage_impl :: AnimationFactoryImageScaleUtil -> Image.Image -> Int -> Int -> Int -> Int -> IO (Image.Image)
createImage_impl this image width height scaleWidth scaleHeight = do
        scaledImage <- newIORef (javaNull)
        if ((scaleWidth /= 0) && (scaleHeight /= 0)) then do
            let scaleX = (((Prelude.fromIntegral scaleWidth)) / ((Prelude.fromIntegral width)))
            let scaleY = (((Prelude.fromIntegral scaleHeight)) / ((Prelude.fromIntegral height)))
            if ((((scaleX == 1.0) && (scaleY == 1.0))) || (((scaleX == 0.0) || (scaleY == 0.0)))) then do
                jset scaledImage (image)
            else do
                let scaledWidth = (Prelude.truncate ((scaleX * (Prelude.fromIntegral width))))
                let scaledHeight = (Prelude.truncate ((scaleY * (Prelude.fromIntegral height))))
                assignedValue <- (ImageJ2MEScaleUtil.scale ((jget (this).imageScaleUtil)) image scaledWidth scaledHeight)
                jset scaledImage (assignedValue)
        else do
            jset scaledImage (image)
        pure ((jget scaledImage))


-- throws Exception
processAdjust :: (JavaObjectClass this_) => this_ -> BaseImageAnimationFactory.BaseImageAnimationFactory -> IO (())
processAdjust object_ a1 = jmethod object_ "processAdjust" (\() -> (processAdjust_impl (javaCast object_ :: AnimationFactoryImageScaleUtil))) () a1

processAdjust_super :: (JavaObjectClass this_) => this_ -> BaseImageAnimationFactory.BaseImageAnimationFactory -> IO (())
processAdjust_super object_ a1 = (processAdjust_impl (javaCast object_ :: AnimationFactoryImageScaleUtil)) a1

processAdjust_impl :: AnimationFactoryImageScaleUtil -> BaseImageAnimationFactory.BaseImageAnimationFactory -> IO (())
processAdjust_impl this baseImageAnimationFactory = do
        scaleProperties <- (BaseImageAnimationFactory.getScalePropertiesP baseImageAnimationFactory)
        if (((jget (scaleProperties).scaleWidth) /= 0) && ((jget (scaleProperties).scaleHeight) /= 0)) then do
            animationFactoryInitializationVisitor <- (BaseImageAnimationFactory.getAnimationFactoryInitializationVisitorP baseImageAnimationFactory)
            let scaleX = (((Prelude.fromIntegral (jget (scaleProperties).scaleWidth))) / ((Prelude.fromIntegral (jget (animationFactoryInitializationVisitor).width))))
            let scaleY = (((Prelude.fromIntegral (jget (scaleProperties).scaleHeight))) / ((Prelude.fromIntegral (jget (animationFactoryInitializationVisitor).height))))
            if ((((scaleX == 1.0) && (scaleY == 1.0))) || (((scaleX == 0.0) || (scaleY == 0.0)))) then do
                pure ()
            else do
                jset (animationFactoryInitializationVisitor).dx ((Prelude.truncate (((Prelude.fromIntegral (jget (animationFactoryInitializationVisitor).originalDx)) * scaleX))))
                jset (animationFactoryInitializationVisitor).dy ((Prelude.truncate (((Prelude.fromIntegral (jget (animationFactoryInitializationVisitor).originalDy)) * scaleY))))
        else do
            pure ()
        pure ()


