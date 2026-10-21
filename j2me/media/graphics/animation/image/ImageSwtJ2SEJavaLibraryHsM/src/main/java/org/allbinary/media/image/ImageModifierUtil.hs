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
-- package org.allbinary.media.image
module ImageModifierUtil where

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
import qualified ImageCopyUtil -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified ModifierOpenGLESImageProcessor -- org.allbinary.image.opengles.ModifierOpenGLESImageProcessor
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified ImageData -- org.eclipse.swt.graphics.ImageData
import qualified SwtImmutableImage -- org.microemu.device.swt.SwtImmutableImage
import qualified SwtMutableImage -- org.microemu.device.swt.SwtMutableImage

data ImageModifierUtil = ImageModifierUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , imageCopyUtil :: IORef (ImageCopyUtil.ImageCopyUtil)
    , features :: IORef (Features.Features)
    }

instance JavaNull ImageModifierUtil where
    javaNull = javaNullRecord "ImageModifierUtil"

instance JavaEquals ImageModifierUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageModifierUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageModifierUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageModifierUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    imageCopyUtil <- newIORef javaNull
    features <- newIORef javaNull
    let this = ImageModifierUtil header_ logUtil imageCopyUtil features
    jregisterLevel header_ this
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "changeColor" (\() -> changeColor_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "setAlphaSWT" (\() -> setAlphaSWT_impl this)
    jregisterMethod header_ "getImageArray" (\() -> getImageArray_impl this)
    jregisterMethod header_ "handleImage" (\() -> handleImage_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    pure this

initFields_ :: ImageModifierUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.imageCopyUtil =<< (ImageCopyUtil.getInstance)
    jset this.features =<< (Features.getInstance)
    pure ()

new_ :: IO ImageModifierUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageModifierUtil -> IO ()
init_ this = do
    initFields_ this


getInstanceOrCreate :: IO (ImageModifierUtil)
getInstanceOrCreate = do
        pure (ImageModifierUtil.instance_)


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: ImageModifierUtil))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: ImageModifierUtil)) a1

setBasicColorP_impl :: ImageModifierUtil -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        pure ()


setColor :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor object_ a1 a2 a3 a4 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setColor_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor_super object_ a1 a2 a3 a4 = (setColor_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setColor_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor_impl this unusedOriginalImage image imageIndex basicColor = do
        newBufferedImage <- newIORef (javaNull)
        if (jio (Image.isMutable image)) then do
            let swtImage = (javaCast image :: SwtMutableImage.SwtMutableImage)
            jset newBufferedImage ((javaCast (jio (SwtImmutableImage.getImage swtImage)) :: Image.Image))
        else do
            let swtImage = (javaCast image :: SwtImmutableImage.SwtImmutableImage)
            jset newBufferedImage ((javaCast (jio (SwtImmutableImage.getImage swtImage)) :: Image.Image))
        let r = (jget (basicColor).red)
        let g = (jget (basicColor).green)
        let b = (jget (basicColor).blue)
        width <- (Image.getWidth image)
        height <- (Image.getHeight image)
        imageData <- (Image.getImageData ((jget newBufferedImage)))
        when ((jget (imageData).depth) == 24) $ do
            rx <- newIORef (0)
            gx <- newIORef (0)
            bx <- newIORef (0)
            index3 <- newIORef (0)
            forM_ [0 .. width - 1] $ \index -> javaIteration (pure ()) $ do
                forM_ [0 .. height - 1] $ \index2 -> javaIteration (pure ()) $ do
                    jset index3 ((((index2 * (jget (imageData).bytesPerLine))) + ((index * 4))))
                    jset rx (((((jindex ((jget (imageData).data_)) ((jget index3))) Data.Bits..&. 0xFF)) `Data.Bits.shiftL` 16))
                    jset gx (((((jindex ((jget (imageData).data_)) (((jget index3) + 1))) Data.Bits..&. 0xFF)) `Data.Bits.shiftL` 8))
                    jset bx ((((jindex ((jget (imageData).data_)) (((jget index3) + 2))) Data.Bits..&. 0xFF)))
                    when ((((jget rx) /= 0) || ((jget gx) /= 0)) || ((jget bx) /= 0)) $ do
                        jsetIndex ((jget (imageData).data_)) ((jget index3)) ((Prelude.fromIntegral r))
                        jsetIndex ((jget (imageData).data_)) (((jget index3) + 1)) ((Prelude.fromIntegral g))
                        jsetIndex ((jget (imageData).data_)) (((jget index3) + 2)) ((Prelude.fromIntegral b))
        pure ()


changeColor :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor object_ a1 a2 a3 a4 = jmethod object_ "changeColor" (\() -> (changeColor_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

changeColor_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor_super object_ a1 a2 a3 a4 = (changeColor_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

changeColor_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor_impl this unusedOriginalImage image imageIndex basicColor = do
    javaCatchReturn $ do
        when (jio (Features.isFeature ((jget (this).features)) (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))) $ do
            when ((jio (Image.getType image)) >= OpenGLESImage.tYPE) $ do
                let openGLESImage = ((javaCast image :: OpenGLESImage.OpenGLESImage))
                assignedValue <- (ModifierOpenGLESImageProcessor.getInstance)
                jset (openGLESImage).imageProcessor (assignedValue)
                assignedValue <- (BasicColor.getRedComponent basicColor)
                jset ((jget (openGLESImage).openGLESImageProperties)).redf (assignedValue)
                assignedValue <- (BasicColor.getGreenComponent basicColor)
                jset ((jget (openGLESImage).openGLESImageProperties)).greenf (assignedValue)
                assignedValue <- (BasicColor.getBlueComponent basicColor)
                jset ((jget (openGLESImage).openGLESImageProperties)).bluef (assignedValue)
                javaReturn (())
        newBufferedImage <- newIORef (javaNull)
        if (jio (Image.isMutable image)) then do
            let swtImage = (javaCast image :: SwtMutableImage.SwtMutableImage)
            jset newBufferedImage ((javaCast (jio (SwtImmutableImage.getImage swtImage)) :: Image.Image))
        else do
            let swtImage = (javaCast image :: SwtImmutableImage.SwtImmutableImage)
            jset newBufferedImage ((javaCast (jio (SwtImmutableImage.getImage swtImage)) :: Image.Image))
        let mAX = 255.0
        let r = (((Prelude.fromIntegral (jget (basicColor).red))) / mAX)
        let g = (((Prelude.fromIntegral (jget (basicColor).green))) / mAX)
        let b = (((Prelude.fromIntegral (jget (basicColor).blue))) / mAX)
        rx <- newIORef (0)
        gx <- newIORef (0)
        bx <- newIORef (0)
        imageData <- (Image.getImageData ((jget newBufferedImage)))
        when ((jget (imageData).depth) == 24) $ do
            let size = (jlength (jget (imageData).data_))
            forM_ [0, 0 + (4) .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset rx (((((jindex ((jget (imageData).data_)) (index)) Data.Bits..&. 0xFF)) `Data.Bits.shiftL` 16))
                jset gx (((((jindex ((jget (imageData).data_)) ((index + 1))) Data.Bits..&. 0xFF)) `Data.Bits.shiftL` 8))
                jset bx ((((jindex ((jget (imageData).data_)) ((index + 2))) Data.Bits..&. 0xFF)))
                jset rx ((Prelude.truncate ((jget rx) * r)))
                jset gx ((Prelude.truncate ((jget gx) * g)))
                jset bx ((Prelude.truncate ((jget bx) * b)))
                jsetIndex ((jget (imageData).data_)) (index) ((Prelude.fromIntegral (jget rx)))
                jsetIndex ((jget (imageData).data_)) ((index + 1)) ((Prelude.fromIntegral (jget gx)))
                jsetIndex ((jget (imageData).data_)) ((index + 2)) ((Prelude.fromIntegral (jget bx)))
    pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha object_ a1 a2 a3 a4 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setAlpha_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha_super object_ a1 a2 a3 a4 = (setAlpha_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setAlpha_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha_impl this unusedOriginalImage image imageIndex alphaInt = do
    javaCatchReturn $ do
        when (jio (Features.isFeature ((jget (this).features)) (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))) $ do
            when ((jio (Image.getType image)) >= OpenGLESImage.tYPE) $ do
                let openGLESImage = ((javaCast image :: OpenGLESImage.OpenGLESImage))
                assignedValue <- (ModifierOpenGLESImageProcessor.getInstance)
                jset (openGLESImage).imageProcessor (assignedValue)
                jset ((jget (openGLESImage).openGLESImageProperties)).alphaf ((((Prelude.fromIntegral alphaInt)) / 255.0))
                javaReturn (())
        Control.Monad.void (ImageModifierUtil.setAlphaSWT this image alphaInt)
    pure ()


setAlphaSWT :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (())
setAlphaSWT object_ a1 a2 = jmethod object_ "setAlphaSWT" (\() -> (setAlphaSWT_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2

setAlphaSWT_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (())
setAlphaSWT_super object_ a1 a2 = (setAlphaSWT_impl (javaCast object_ :: ImageModifierUtil)) a1 a2

setAlphaSWT_impl :: ImageModifierUtil -> Image.Image -> Int -> IO (())
setAlphaSWT_impl this image alphaInt = do
        let alpha = (Prelude.fromIntegral alphaInt)
        newBufferedImage <- newIORef (javaNull)
        if (jio (Image.isMutable image)) then do
            let swtImage = (javaCast image :: SwtMutableImage.SwtMutableImage)
            jset newBufferedImage ((javaCast (jio (SwtImmutableImage.getImage swtImage)) :: Image.Image))
        else do
            let swtImage = (javaCast image :: SwtImmutableImage.SwtImmutableImage)
            jset newBufferedImage ((javaCast (jio (SwtImmutableImage.getImage swtImage)) :: Image.Image))
        jset ((jio (Image.getImageData ((jget newBufferedImage))))).alpha (alpha)
        pure ()


getImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray object_ a1 = jmethod object_ "getImageArray" (\() -> (getImageArray_impl (javaCast object_ :: ImageModifierUtil))) () a1

getImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray_super object_ a1 = (getImageArray_impl (javaCast object_ :: ImageModifierUtil)) a1

getImageArray_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray_impl this originalImageArray = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this "getImageArray" e)
            pure (originalImageArray)
            ) $ do
            let newImageArray = (jnewArray ((jlength originalImageArray)) javaNull)
            let size = (jlength newImageArray)
            originalImage <- newIORef (javaNull)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset originalImage ((jindex originalImageArray (index)))
                image <- (ImageCopyUtil.createImage ((jget (this).imageCopyUtil)) (jget originalImage))
                jsetIndex newImageArray (index) (image)
            pure (newImageArray)


handleImage :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage object_ a1 a2 a3 = jmethod object_ "handleImage" (\() -> (handleImage_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3

handleImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage_super object_ a1 a2 a3 = (handleImage_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3

handleImage_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage_impl this imageArray index image = do
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: ImageModifierUtil))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: ImageModifierUtil))

reset_impl :: ImageModifierUtil -> IO (())
reset_impl this = do
        pure ()


