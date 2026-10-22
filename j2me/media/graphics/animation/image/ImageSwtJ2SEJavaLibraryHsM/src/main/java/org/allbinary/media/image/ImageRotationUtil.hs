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
-- package org.allbinary.media.image
module ImageRotationUtil where

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
import qualified ImageSwtRotationUtil -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified GC -- org.eclipse.swt.graphics.GC
import qualified SwtImmutableImage -- org.microemu.device.swt.SwtImmutableImage
import qualified SwtMutableImage -- org.microemu.device.swt.SwtMutableImage

data ImageRotationUtil = ImageRotationUtil
    { header_ :: JavaHeader
    , imageSwtRotationUtil :: IORef (ImageSwtRotationUtil.ImageSwtRotationUtil)
    , features :: IORef (Features.Features)
    }

instance JavaNull ImageRotationUtil where
    javaNull = javaNullRecord "ImageRotationUtil"

instance JavaEquals ImageRotationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageRotationUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageRotationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageRotationUtil
newRecord_ = do
    header_ <- newJavaHeader
    imageSwtRotationUtil <- newIORef javaNull
    features <- newIORef javaNull
    let this = ImageRotationUtil header_ imageSwtRotationUtil features
    jregisterLevel header_ this
    jregisterMethod header_ "rotateImage" (\() -> rotateImage_impl this)
    jregisterMethod header_ "createRotatedImage" (\() -> createRotatedImage_impl this)
    pure this

initFields_ :: ImageRotationUtil -> IO ()
initFields_ this = do
    jset this.imageSwtRotationUtil =<< (ImageSwtRotationUtil.getInstance)
    jset this.features =<< (Features.getInstance)
    pure ()


getInstance :: IO (ImageRotationUtil)
getInstance = do
        pure (ImageRotationUtil.instance_)

new_ :: IO ImageRotationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageRotationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


rotateImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> IO (())
rotateImage object_ a1 a2 a3 = jmethod object_ "rotateImage" (\() -> (rotateImage_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2 a3

rotateImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> IO (())
rotateImage_super object_ a1 a2 a3 = (rotateImage_impl (javaCast object_ :: ImageRotationUtil)) a1 a2 a3

rotateImage_impl :: ImageRotationUtil -> Image.Image -> Image.Image -> Int -> IO (())
rotateImage_impl this originalImage image totalAngle = do
    javaCatchReturn $ do
        let originalImage2 = originalImage
        when (jio (Features.isFeature ((jget (this).features)) (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL)))) $ do
            if ((jio (Image.getType image)) >= OpenGLESImage.tYPE) then do
                let openGLESImage = ((javaCast image :: OpenGLESImage.OpenGLESImage))
                jset ((jget (openGLESImage).openGLESImageProperties)).angle (totalAngle)
                javaReturn (())
            else do
                Control.Monad.void (PreLogUtil.put ((("OpenGL but image is: " ++ javaToString image) ++ " type: ") ++ javaToString (jio (Image.getType image))) this "rotateImage")
        let originalSwtImage = ((javaCast (jio (Image.getImage originalImage2)) :: Image.Image))
        gc <- newIORef (javaNull)
        copySwtImage <- newIORef (javaNull)
        if (jio (Image.isMutable image)) then do
            let swtImage = (javaCast image :: SwtMutableImage.SwtMutableImage)
            jset copySwtImage ((javaCast (jio (SwtMutableImage.getImage swtImage)) :: Image.Image))
            assignedValue <- (SwtMutableImage.getGc swtImage)
            jset gc (assignedValue)
            Control.Monad.void (ImageSwtRotationUtil.rotateImage ((jget (this).imageSwtRotationUtil)) originalSwtImage (jget copySwtImage) (jget gc) totalAngle)
        else do
            Control.Monad.void (PreLogUtil.put ("No rotation for: " ++ (jio (Image.toString image))) this "rotateImage")
    pure ()


-- throws Exception
createRotatedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage object_ a1 a2 = jmethod object_ "createRotatedImage" (\() -> (createRotatedImage_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2

createRotatedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage_super object_ a1 a2 = (createRotatedImage_impl (javaCast object_ :: ImageRotationUtil)) a1 a2

createRotatedImage_impl :: ImageRotationUtil -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage_impl this originalImage rotationInDegrees = do
        pure (originalImage)


