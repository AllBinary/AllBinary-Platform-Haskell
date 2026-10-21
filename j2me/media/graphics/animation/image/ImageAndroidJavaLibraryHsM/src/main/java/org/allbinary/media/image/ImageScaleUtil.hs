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
import qualified Class -- same package or java.lang
import qualified Bitmap -- android.graphics.Bitmap
import qualified Canvas -- android.graphics.Canvas
import qualified Matrix -- android.graphics.Matrix
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified AndroidImageInterface -- org.microemu.android.device.AndroidImageInterface

data ImageScaleUtil = ImageScaleUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , anchor :: IORef (Int)
    , imageBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    , scaledImageBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    , scaleXBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    , scaleYBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
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
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    anchor <- newIORef 0
    imageBasicArrayList <- newIORef javaNull
    scaledImageBasicArrayList <- newIORef javaNull
    scaleXBasicArrayList <- newIORef javaNull
    scaleYBasicArrayList <- newIORef javaNull
    let this = ImageScaleUtil header_ logUtil commonStrings anchor imageBasicArrayList scaledImageBasicArrayList scaleXBasicArrayList scaleYBasicArrayList
    jregisterLevel header_ this
    jregisterMethod header_ "createImage2" (\() -> createImage2_impl this)
    jregisterMethod header_ "createImage3" (\() -> createImage3_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "getScaledImage" (\() -> getScaledImage_impl this)
    jregisterMethod header_ "scale" (\() -> scale_impl this)
    pure this

initFields_ :: ImageScaleUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.imageBasicArrayList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.scaledImageBasicArrayList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.scaleXBasicArrayList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.scaleYBasicArrayList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
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
    javaCatchReturn $ do
        let originalAndroidImage = (javaCast originalImage :: AndroidImageInterface.AndroidImageInterface)
        originalBitmap <- (AndroidImageInterface.getBitmap originalAndroidImage)
        let width = (Prelude.fromInteger (jnumericInteger (((jio (Bitmap.getWidth originalBitmap)) * scaleX))))
        let height = (Prelude.fromInteger (jnumericInteger (((jio (Bitmap.getHeight originalBitmap)) * scaleY))))
        index <- (BasicArrayList.indexOf ((jget (this).imageBasicArrayList)) originalImage)
        alreadyAvailable <- newIORef (False)
        when (index >= 0) $ do
            let scaleX2Float = (javaCast (jio (BasicArrayList.get ((jget (this).scaleXBasicArrayList)) index)) :: Float)
            let scaleX2 = scaleX2Float
            let scaleY2Float = (javaCast (jio (BasicArrayList.get ((jget (this).scaleYBasicArrayList)) index)) :: Float)
            let scaleY2 = scaleY2Float
            when ((scaleX2 == scaleX) && (scaleY2 == scaleY)) $ do
                jset alreadyAvailable (True)
        if (jget alreadyAvailable) then do
            javaReturn ((javaCast (jio (BasicArrayList.get ((jget (this).scaledImageBasicArrayList)) index)) :: Image.Image))
        else do
            scaledImage <- (ImageScaleUtil.getScaledImage this imageCache originalImage scaleX scaleY width height cached)
            Control.Monad.void (BasicArrayList.add ((jget (this).imageBasicArrayList)) originalImage)
            Control.Monad.void (BasicArrayList.add ((jget (this).scaledImageBasicArrayList)) scaledImage)
            Control.Monad.void (BasicArrayList.add ((jget (this).scaleXBasicArrayList)) scaleX)
            Control.Monad.void (BasicArrayList.add ((jget (this).scaleYBasicArrayList)) scaleY)
            javaReturn (scaledImage)


-- throws Exception
getScaledImage :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Int -> Int -> Bool -> IO (Image.Image)
getScaledImage object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "getScaledImage" (\() -> (getScaledImage_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4 a5 a6 a7

getScaledImage_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Int -> Int -> Bool -> IO (Image.Image)
getScaledImage_super object_ a1 a2 a3 a4 a5 a6 a7 = (getScaledImage_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4 a5 a6 a7

getScaledImage_impl :: ImageScaleUtil -> ImageCache.ImageCache -> Image.Image -> Float -> Float -> Int -> Int -> Bool -> IO (Image.Image)
getScaledImage_impl this imageCache originalImage scaleX scaleY width height cached = do
    javaCatchReturn $ do
        image <- newIORef (NullImage.nULL_IMAGE)
        if cached then do
            assignedValue <- (ImageCache.get imageCache (jio (Class.getName ((jio (jobjectGetClass this))))) width height)
            jset image (assignedValue)
        else do
            assignedValue <- (ImageCache.get imageCache (jget ((jget (this).commonStrings)).cREATE_IMAGE) width height)
            jset image (assignedValue)
        if (jio (Image.isMutable ((jget image)))) then do
            matrix <- (Matrix.new_)
            Control.Monad.void (ImageScaleUtil.scale this (jget image) matrix scaleX scaleY)
            Control.Monad.void (Image.drawImage ((jio (Image.getGraphics ((jget image))))) originalImage 0 0 (jget (this).anchor))
            javaReturn ((jget image))
        else do
            javaThrow ((JavaException "Exception" "Not Mutable"))


scale :: (JavaObjectClass this_) => this_ -> Image.Image -> Matrix.Matrix -> Float -> Float -> IO (())
scale object_ a1 a2 a3 a4 = jmethod object_ "scale" (\() -> (scale_impl (javaCast object_ :: ImageScaleUtil))) () a1 a2 a3 a4

scale_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Matrix.Matrix -> Float -> Float -> IO (())
scale_super object_ a1 a2 a3 a4 = (scale_impl (javaCast object_ :: ImageScaleUtil)) a1 a2 a3 a4

scale_impl :: ImageScaleUtil -> Image.Image -> Matrix.Matrix -> Float -> Float -> IO (())
scale_impl this image matrix scaleX scaleY = do
        Control.Monad.void (Matrix.setScale matrix scaleX scaleY)
        canvas <- (getCanvas (((javaCast image :: AndroidImageInterface.AndroidImageInterface))))
        Control.Monad.void (Canvas.concat canvas matrix)
        pure ()


