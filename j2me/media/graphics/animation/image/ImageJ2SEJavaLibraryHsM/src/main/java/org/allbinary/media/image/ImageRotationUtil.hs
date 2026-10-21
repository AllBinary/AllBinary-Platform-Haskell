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
import qualified ImageJ2SERotationUtil -- same package or java.lang
import qualified ImageCreationUtil -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified Image -- javax.microedition.lcdui.Image
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified J2SEImmutableImage -- org.microemu.device.j2se.J2SEImmutableImage
import qualified J2SEMutableImage -- org.microemu.device.j2se.J2SEMutableImage

data ImageRotationUtil = ImageRotationUtil
    { header_ :: JavaHeader
    , imageJ2SERotationUtil :: IORef (ImageJ2SERotationUtil.ImageJ2SERotationUtil)
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
    imageJ2SERotationUtil <- newIORef javaNull
    let this = ImageRotationUtil header_ imageJ2SERotationUtil
    jregisterLevel header_ this
    jregisterMethod header_ "rotateImage" (\() -> rotateImage_impl this)
    jregisterMethod header_ "createRotatedImage" (\() -> createRotatedImage_impl this)
    pure this

initFields_ :: ImageRotationUtil -> IO ()
initFields_ this = do
    jset this.imageJ2SERotationUtil =<< (ImageJ2SERotationUtil.getInstance)
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
        if (jio (Image.isMutable image)) then do
            let j2seImage = (javaCast image :: J2SEMutableImage.J2SEMutableImage)
            let newBufferedImage = (javaCast (jio (J2SEMutableImage.getImage j2seImage)) :: BufferedImage.BufferedImage)
            originalAwtImage <- newIORef (javaNull)
            if (jio (Image.isMutable originalImage)) then do
                let originalJ2SEImage = (javaCast originalImage :: J2SEMutableImage.J2SEMutableImage)
                jset originalAwtImage ((javaCast (jio (J2SEImmutableImage.getImage originalJ2SEImage)) :: Image.Image))
            else do
                let originalJ2SEImage = (javaCast originalImage :: J2SEImmutableImage.J2SEImmutableImage)
                jset originalAwtImage ((javaCast (jio (J2SEImmutableImage.getImage originalJ2SEImage)) :: Image.Image))
            Control.Monad.void (ImageJ2SERotationUtil.rotateImage ((jget (this).imageJ2SERotationUtil)) (jget originalAwtImage) newBufferedImage totalAngle)
        else do
            Control.Monad.void (PreLogUtil.putOE "Not Mutable" this "getRotatedImage" (JavaException "Exception" ""))
        pure ()


-- throws Exception
createRotatedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage object_ a1 a2 = jmethod object_ "createRotatedImage" (\() -> (createRotatedImage_impl (javaCast object_ :: ImageRotationUtil))) () a1 a2

createRotatedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage_super object_ a1 a2 = (createRotatedImage_impl (javaCast object_ :: ImageRotationUtil)) a1 a2

createRotatedImage_impl :: ImageRotationUtil -> Image.Image -> Int -> IO (Image.Image)
createRotatedImage_impl this originalImage rotationInDegrees = do
    javaCatchReturn $ do
        image <- (ImageCreationUtil.createImageWH ((jio (ImageCreationUtil.getInstance))) (jio (Image.getWidth originalImage)) (jio (Image.getHeight originalImage)))
        if (jio (Image.isMutable image)) then do
            originalAwtImage <- newIORef (javaNull)
            if (jio (Image.isMutable originalImage)) then do
                let originalJ2SEImage = (javaCast originalImage :: J2SEMutableImage.J2SEMutableImage)
                jset originalAwtImage ((javaCast (jio (J2SEImmutableImage.getImage originalJ2SEImage)) :: Image.Image))
            else do
                let originalJ2SEImage = (javaCast originalImage :: J2SEImmutableImage.J2SEImmutableImage)
                jset originalAwtImage ((javaCast (jio (J2SEImmutableImage.getImage originalJ2SEImage)) :: Image.Image))
            let j2seImage = (javaCast image :: J2SEMutableImage.J2SEMutableImage)
            let newBufferedImage = (javaCast (jio (J2SEMutableImage.getImage j2seImage)) :: BufferedImage.BufferedImage)
            bufferedImage <- (ImageJ2SERotationUtil.createRotatedImage ((jget (this).imageJ2SERotationUtil)) (jget originalAwtImage) newBufferedImage rotationInDegrees)
            javaReturn (image)
        else do
            javaThrow ((JavaException "Exception" "Not Mutable"))


