{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics
module OpenGLBitmap (module OpenGLBitmap, module PlatformBitmapBase) where

import PlatformBitmapBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getImage, getImage_super, getImage_impl, getDepth, getDepth_super, getDepth_impl, getPixels, getPixels_super, getPixels_impl, setPixels, setPixels_super, setPixels_impl, getWidth, getWidth_super, getWidth_impl, getHeight, getHeight_super, getHeight_impl, recycle, recycle_super, recycle_impl, image)
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
import qualified Any -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified DisposalUtil -- org.allbinary.DisposalUtil
import qualified PlatformBitmapBase -- org.allbinary.platform.graphics.PlatformBitmapBase
import qualified SwtImmutableImage -- org.microemu.device.swt.SwtImmutableImage
import qualified SwtMutableImage -- org.microemu.device.swt.SwtMutableImage

data OpenGLBitmap = OpenGLBitmap
    { header_ :: JavaHeader
    , base :: PlatformBitmapBase.PlatformBitmapBase
    , image :: IORef (Image.Image)
    }

instance JavaNull OpenGLBitmap where
    javaNull = javaNullRecord "OpenGLBitmap"

instance JavaEquals OpenGLBitmap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLBitmap where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLBitmap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OpenGLBitmap
newRecord_ = do
    base <- PlatformBitmapBase.newRecord_
    let header_ = base.header_
    image <- newIORef javaNull
    let this = OpenGLBitmap header_ base image
    jregisterLevel header_ this
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "getDepth" (\() -> getDepth_impl this)
    jregisterMethod header_ "getPixels" (\() -> getPixels_impl this)
    jregisterMethod header_ "setPixels" (\() -> setPixels_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "recycle" (\() -> recycle_impl this)
    pure this

initFields_ :: OpenGLBitmap -> IO ()
initFields_ this = do
    jset this.image (javaNull)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO OpenGLBitmap
new_1 bitmapObject_ = do
    this <- newRecord_
    init_1 this bitmapObject_
    pure this

init_1 :: (JavaObjectClass o1) => OpenGLBitmap -> o1 -> IO ()
init_1 this bitmapObject_ = do
        let bitmap = jtoObject bitmapObject_
        PlatformBitmapBase.init_ this.base
        initFields_ this
        jset (this).image ((javaCast bitmap :: Image.Image))
        pure ()


getImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: OpenGLBitmap))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage_super object_ = (getImage_impl (javaCast object_ :: OpenGLBitmap))

getImage_impl :: OpenGLBitmap -> IO (Image.Image)
getImage_impl this = do
        pure ((jget (this).image))


getDepth :: (JavaObjectClass this_) => this_ -> IO (Int)
getDepth object_ = jmethod object_ "getDepth" (\() -> (getDepth_impl (javaCast object_ :: OpenGLBitmap))) ()

getDepth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDepth_super object_ = (getDepth_impl (javaCast object_ :: OpenGLBitmap))

getDepth_impl :: OpenGLBitmap -> IO (Int)
getDepth_impl this = do
    javaCatchReturn $ do
        if (jio (Image.isMutable ((jget (this).image)))) then do
            let mutableImage = (javaCast (jget (this).image) :: SwtMutableImage.SwtMutableImage)
            javaReturn =<< (SwtMutableImage.getDepth mutableImage)
        else do
            let immutableImage = (javaCast (jget (this).image) :: SwtImmutableImage.SwtImmutableImage)
            javaReturn =<< (SwtImmutableImage.getDepth immutableImage)


getPixels :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
getPixels object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "getPixels" (\() -> (getPixels_impl (javaCast object_ :: OpenGLBitmap))) () a1 a2 a3 a4 a5 a6 a7

getPixels_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
getPixels_super object_ a1 a2 a3 a4 a5 a6 a7 = (getPixels_impl (javaCast object_ :: OpenGLBitmap)) a1 a2 a3 a4 a5 a6 a7

getPixels_impl :: OpenGLBitmap -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
getPixels_impl this pixels offset stride x y width height = do
        if (jio (Image.isMutable ((jget (this).image)))) then do
            let mutableImage = (javaCast (jget (this).image) :: SwtMutableImage.SwtMutableImage)
            Control.Monad.void (SwtMutableImage.getRGB mutableImage pixels offset stride x y width height)
        else do
            let immutableImage = (javaCast (jget (this).image) :: SwtImmutableImage.SwtImmutableImage)
            Control.Monad.void (SwtImmutableImage.getRGB immutableImage pixels offset stride x y width height)
        pure ()


setPixels :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
setPixels object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "setPixels" (\() -> (setPixels_impl (javaCast object_ :: OpenGLBitmap))) () a1 a2 a3 a4 a5 a6 a7

setPixels_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
setPixels_super object_ a1 a2 a3 a4 a5 a6 a7 = (setPixels_impl (javaCast object_ :: OpenGLBitmap)) a1 a2 a3 a4 a5 a6 a7

setPixels_impl :: OpenGLBitmap -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> IO (())
setPixels_impl this pixels offset stride x y width height = do
        Control.Monad.void (Image.setRGB2 ((jget (this).image)) pixels offset height x y width height)
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: OpenGLBitmap))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: OpenGLBitmap))

getWidth_impl :: OpenGLBitmap -> IO (Int)
getWidth_impl this = do
        (Image.getWidth ((jget (this).image)))


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: OpenGLBitmap))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: OpenGLBitmap))

getHeight_impl :: OpenGLBitmap -> IO (Int)
getHeight_impl this = do
        (Image.getHeight ((jget (this).image)))


recycle :: (JavaObjectClass this_) => this_ -> IO (())
recycle object_ = jmethod object_ "recycle" (\() -> (recycle_impl (javaCast object_ :: OpenGLBitmap))) ()

recycle_super :: (JavaObjectClass this_) => this_ -> IO (())
recycle_super object_ = (recycle_impl (javaCast object_ :: OpenGLBitmap))

recycle_impl :: OpenGLBitmap -> IO (())
recycle_impl this = do
        Control.Monad.void (DisposalUtil.disposeImage ((jio (DisposalUtil.getInstance))) (jget (this).image))
        pure ()


