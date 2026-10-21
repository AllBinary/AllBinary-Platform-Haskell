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
module ImageCopyUtil where

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
import qualified ImageUtil -- same package or java.lang
import qualified ImageCreationUtil -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified Image -- javax.microedition.lcdui.Image
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified J2SEImmutableImage -- org.microemu.device.j2se.J2SEImmutableImage

data ImageCopyUtil = ImageCopyUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    , imageCreationUtil :: IORef (ImageCreationUtil.ImageCreationUtil)
    , anchor :: IORef (Int)
    }

instance JavaNull ImageCopyUtil where
    javaNull = javaNullRecord "ImageCopyUtil"

instance JavaEquals ImageCopyUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCopyUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageCopyUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageCopyUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    imageUtil <- newIORef javaNull
    imageCreationUtil <- newIORef javaNull
    anchor <- newIORef 0
    let this = ImageCopyUtil header_ logUtil imageUtil imageCreationUtil anchor
    jregisterLevel header_ this
    jregisterMethod header_ "createImageForRotation" (\() -> createImageForRotation_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "createImageScale" (\() -> createImageScale_impl this)
    pure this

initFields_ :: ImageCopyUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.imageUtil =<< (ImageUtil.getInstance)
    jset this.imageCreationUtil =<< (ImageCreationUtil.getInstance)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()


getInstance :: IO (ImageCopyUtil)
getInstance = do
        pure (ImageCopyUtil.instance_)

new_ :: IO ImageCopyUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageCopyUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createImageForRotation :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
createImageForRotation object_ a1 = jmethod object_ "createImageForRotation" (\() -> (createImageForRotation_impl (javaCast object_ :: ImageCopyUtil))) () a1

createImageForRotation_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
createImageForRotation_super object_ a1 = (createImageForRotation_impl (javaCast object_ :: ImageCopyUtil)) a1

createImageForRotation_impl :: ImageCopyUtil -> Image.Image -> IO (Image.Image)
createImageForRotation_impl this originalImage = do
        (ImageCopyUtil.createImage this originalImage)


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
createImage object_ a1 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: ImageCopyUtil))) () a1

createImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
createImage_super object_ a1 = (createImage_impl (javaCast object_ :: ImageCopyUtil)) a1

createImage_impl :: ImageCopyUtil -> Image.Image -> IO (Image.Image)
createImage_impl this originalImage = do
    javaCatchReturn $ do
        image <- (ImageCreationUtil.createImageWH ((jget (this).imageCreationUtil)) (jio (Image.getWidth originalImage)) (jio (Image.getHeight originalImage)))
        if (jio (Image.isMutable image)) then do
            Control.Monad.void (Image.drawImage ((jio (Image.getGraphics image))) originalImage 0 0 (jget (this).anchor))
            javaReturn (image)
        else do
            javaThrow ((JavaException "Exception" "Not Mutable"))


-- throws Exception
createImageScale :: (JavaObjectClass this_) => this_ -> Image.Image -> Float -> Bool -> IO (Image.Image)
createImageScale object_ a1 a2 a3 = jmethod object_ "createImageScale" (\() -> (createImageScale_impl (javaCast object_ :: ImageCopyUtil))) () a1 a2 a3

createImageScale_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Float -> Bool -> IO (Image.Image)
createImageScale_super object_ a1 a2 a3 = (createImageScale_impl (javaCast object_ :: ImageCopyUtil)) a1 a2 a3

createImageScale_impl :: ImageCopyUtil -> Image.Image -> Float -> Bool -> IO (Image.Image)
createImageScale_impl this originalImage canvasScale resize = do
        newWidth <- newIORef ((Prelude.fromInteger (jnumericInteger (((jio (Image.getWidth originalImage)) * canvasScale)))))
        newHeight <- newIORef ((Prelude.fromInteger (jnumericInteger (((jio (Image.getHeight originalImage)) * canvasScale)))))
        when resize $ do
            when ((jget newWidth) < (jget newHeight)) $ do
                jset newWidth ((jget newHeight))
            when ((jget newHeight) < (jget newWidth)) $ do
                jset newHeight ((jget newWidth))
        originalBufferedImage <- (ImageUtil.getBufferedImage ((jget (this).imageUtil)) originalImage)
        bufferedImage <- (ImageUtil.createBufferedImageWithLargerCanvas ((jget (this).imageUtil)) originalBufferedImage (jget newWidth) (jget newHeight))
        image <- (J2SEImmutableImage.new_1 bufferedImage)
        pure ((javaCast image :: Image.Image))


