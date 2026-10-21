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
module ImageScaleUtil where

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
import qualified ImageCreationUtil -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified PlaynImmutableImage -- org.microemu.device.playn.PlaynImmutableImage
import qualified PlaynMutableImage -- org.microemu.device.playn.PlaynMutableImage
import qualified Canvas -- playn.core.Canvas
import qualified CoreImage -- playn.core.CoreImage
import qualified ImageImpl -- playn.core.ImageImpl
import qualified HTMLPlaynUtil -- playn.html.HTMLPlaynUtil

data ImageScaleUtil = ImageScaleUtil
    { header_ :: JavaHeader
    , playnUtil :: IORef (HTMLPlaynUtil.HTMLPlaynUtil)
    }

instance JavaNull ImageScaleUtil where
    javaNull = javaNullRecord "ImageScaleUtil"

instance JavaEquals ImageScaleUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageScaleUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageScaleUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageScaleUtil
newRecord_ = do
    header_ <- newJavaHeader
    playnUtil <- newIORef javaNull
    let this = ImageScaleUtil header_ playnUtil
    jregisterLevel header_ this
    jregisterMethod header_ "createImage2" (\() -> createImage2_impl this)
    jregisterMethod header_ "createImage3" (\() -> createImage3_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "createImageInternal" (\() -> createImageInternal_impl this)
    pure this

initFields_ :: ImageScaleUtil -> IO ()
initFields_ this = do
    jset this.playnUtil =<< (HTMLPlaynUtil.getInstance)
    pure ()


getInstance :: IO (ImageScaleUtil)
getInstance = do
        pure (ImageScaleUtil.instance_)

new_ :: IO ImageScaleUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageScaleUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createImage2 :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> IO (Image.Image)
createImage2 object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "createImage2" (\() -> (createImage2_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4 a5 a6 a7

createImage2_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> IO (Image.Image)
createImage2_super object_ a1 a2 a3 a4 a5 a6 a7 = (createImage2_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4 a5 a6 a7

createImage2_impl :: ImageScaleUtil -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> IO (Image.Image)
createImage2_impl this imageCache originalImage scaleNominatorX scaleDenominatorX scaleNominatorY scaleDenominatorY cached = do
        (ImageScaleUtil.createImage3 this imageCache originalImage scaleNominatorX scaleDenominatorX scaleNominatorY scaleDenominatorY cached True)


-- throws Exception
createImage3 :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> Bool -> IO (Image.Image)
createImage3 object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "createImage3" (\() -> (createImage3_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4 a5 a6 a7 a8

createImage3_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> Bool -> IO (Image.Image)
createImage3_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (createImage3_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4 a5 a6 a7 a8

createImage3_impl :: ImageScaleUtil -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Float -> Float -> Bool -> Bool -> IO (Image.Image)
createImage3_impl this imageCache originalImage scaleNominatorX scaleDenominatorX scaleNominatorY scaleDenominatorY cached mutable = do
        let scaleX = (scaleNominatorX / scaleDenominatorX)
        let scaleY = (scaleNominatorY / scaleDenominatorY)
        (ImageScaleUtil.createImage this imageCache originalImage scaleX scaleY cached)


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Bool -> IO (Image.Image)
createImage object_ a1 a2 a3 a4 a5 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4 a5

createImage_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Bool -> IO (Image.Image)
createImage_super object_ a1 a2 a3 a4 a5 = (createImage_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4 a5

createImage_impl :: ImageScaleUtil -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Bool -> IO (Image.Image)
createImage_impl this imageCache originalImage scaleX scaleY cached = do
        (ImageScaleUtil.createImageInternal this originalImage scaleX scaleY)


-- throws Exception
createImageInternal :: (JavaObjectClass this_) => this_ -> Image.Image -> Float -> Float -> IO (Image.Image)
createImageInternal object_ a1 a2 a3 = jmethod object_ "createImageInternal" (\() -> (createImageInternal_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3

createImageInternal_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Float -> Float -> IO (Image.Image)
createImageInternal_super object_ a1 a2 a3 = (createImageInternal_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3

createImageInternal_impl :: ImageScaleUtil -> Image.Image -> Float -> Float -> IO (Image.Image)
createImageInternal_impl this originalImage scaleX scaleY = do
    javaCatchReturn $ do
        image <- (ImageCreationUtil.createImageWH ((jio (ImageCreationUtil.getInstance))) (Prelude.fromInteger (jnumericInteger (((jio (Image.getWidth originalImage)) * scaleX)))) (Prelude.fromInteger (jnumericInteger (((jio (Image.getHeight originalImage)) * scaleY)))))
        if (jio (Image.isMutable image)) then do
            originalPlayNImage <- newIORef (javaNull)
            if (jio (Image.isMutable originalImage)) then do
                let originalHTMLImage = (javaCast originalImage :: PlaynMutableImage.PlaynMutableImage)
                jset originalPlayNImage ((javaCast (jio (PlaynImmutableImage.getImage originalHTMLImage)) :: CoreImage.CoreImage))
            else do
                let originalHTMLImage = (javaCast originalImage :: PlaynImmutableImage.PlaynImmutableImage)
                jset originalPlayNImage ((javaCast (jio (PlaynImmutableImage.getImage originalHTMLImage)) :: CoreImage.CoreImage))
            let htmlImage = (javaCast image :: PlaynMutableImage.PlaynMutableImage)
            let canvasImage = (javaCast (jio (PlaynMutableImage.getImage htmlImage)) :: ImageImpl.ImageImpl)
            canvas <- (HTMLPlaynUtil.getCanvas ((jget (this).playnUtil)) canvasImage)
            Control.Monad.void (Canvas.drawScale canvas (jget originalPlayNImage) 0 0 (jio (Image.getWidth image)) (jio (Image.getHeight image)) 0 0 (jio (Image.getWidth originalImage)) (jio (Image.getHeight originalImage)))
            javaReturn (image)
        else do
            javaThrow ((JavaException "Exception" "Not Mutable"))


