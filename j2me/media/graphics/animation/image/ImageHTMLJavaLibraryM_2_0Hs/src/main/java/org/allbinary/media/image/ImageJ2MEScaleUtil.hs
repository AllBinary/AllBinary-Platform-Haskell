{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2023 AllBinary
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
module ImageJ2MEScaleUtil where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PlaynImmutableImage -- org.microemu.device.playn.PlaynImmutableImage
import qualified PlaynMutableImage -- org.microemu.device.playn.PlaynMutableImage
import qualified Canvas -- playn.core.Canvas
import qualified CoreImage -- playn.core.CoreImage
import qualified ImageImpl -- playn.core.ImageImpl
import qualified PlayN -- playn.core.PlayN
import qualified HtmlGraphics -- playn.html.HtmlGraphics
import qualified HtmlImage -- playn.html.HtmlImage

data ImageJ2MEScaleUtil = ImageJ2MEScaleUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ImageJ2MEScaleUtil where
    javaNull = javaNullRecord "ImageJ2MEScaleUtil"

instance JavaEquals ImageJ2MEScaleUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageJ2MEScaleUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageJ2MEScaleUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageJ2MEScaleUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ImageJ2MEScaleUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "scaleArray" (\() -> scaleArray_impl this)
    jregisterMethod header_ "scale" (\() -> scale_impl this)
    pure this

initFields_ :: ImageJ2MEScaleUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (ImageJ2MEScaleUtil)
getInstance = do
        pure (ImageJ2MEScaleUtil.instance_)

new_ :: IO ImageJ2MEScaleUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageJ2MEScaleUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
scaleArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Int -> IO (JavaArray (Image.Image))
scaleArray object_ a1 a2 a3 = jmethod object_ "scaleArray" (\() -> (scaleArray_impl (javaCast object_ :: ImageJ2MEScaleUtil))) () a1 a2 a3

scaleArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Int -> IO (JavaArray (Image.Image))
scaleArray_super object_ a1 a2 a3 = (scaleArray_impl (javaCast object_ :: ImageJ2MEScaleUtil)) a1 a2 a3

scaleArray_impl :: ImageJ2MEScaleUtil -> JavaArray (Image.Image) -> Int -> Int -> IO (JavaArray (Image.Image))
scaleArray_impl this images width height = do
        let scaledImages = (jnewArray ((jlength images)) javaNull)
        index <- newIORef ((jlength images))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            assignedValue <- (ImageJ2MEScaleUtil.scale this (jindex images ((jget index))) width height)
            jsetIndex scaledImages ((jget index)) (assignedValue)
        pure (scaledImages)


-- throws Exception
scale :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Image.Image)
scale object_ a1 a2 a3 = jmethod object_ "scale" (\() -> (scale_impl (javaCast object_ :: ImageJ2MEScaleUtil))) () a1 a2 a3

scale_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Image.Image)
scale_super object_ a1 a2 a3 = (scale_impl (javaCast object_ :: ImageJ2MEScaleUtil)) a1 a2 a3

scale_impl :: ImageJ2MEScaleUtil -> Image.Image -> Int -> Int -> IO (Image.Image)
scale_impl this image width height = do
        originalPlayNImage <- newIORef (javaNull)
        if (jio (Image.isMutable image)) then do
            let originalHTMLImage = (javaCast image :: PlaynMutableImage.PlaynMutableImage)
            jset originalPlayNImage ((javaCast (jio (PlaynImmutableImage.getImage originalHTMLImage)) :: CoreImage.CoreImage))
        else do
            let originalHTMLImage = (javaCast image :: PlaynImmutableImage.PlaynImmutableImage)
            jset originalPlayNImage ((javaCast (jio (PlaynImmutableImage.getImage originalHTMLImage)) :: CoreImage.CoreImage))
        scaledImage <- (Image.createImageWH width height)
        let htmlImage = (javaCast scaledImage :: PlaynMutableImage.PlaynMutableImage)
        let scaledPlayNImage = (javaCast (jio (PlaynMutableImage.getImage htmlImage)) :: ImageImpl.ImageImpl)
        canvas <- (get (((javaCast (jio (PlayN.graphics ((jio (PlayN.getInstance))))) :: HtmlGraphics.HtmlGraphics))) (javaCast scaledPlayNImage :: HtmlImage.HtmlImage))
        Control.Monad.void (draw (((javaCast (jget originalPlayNImage) :: ImageImpl.ImageImpl))) (jio (Canvas.gc canvas)) 0 0 (jio (Image.getWidth scaledImage)) (jio (Image.getHeight scaledImage)) 0 0 (jio (Image.getWidth image)) (jio (Image.getHeight image)))
        pure (scaledImage)


