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
-- package org.allbinary.image.opengles
module OpenGLESImage (module OpenGLESImage, module Image) where

import Image hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getHeight, getHeight_super, getHeight_impl, getWidth, getWidth_super, getWidth_impl, set, set_super, set_impl, initTexture, initTexture_super, initTexture_impl, drawRegion, drawRegion_super, drawRegion_impl, draw, draw_super, draw_impl, getType, getType_super, getType_impl, toString, toString_super, toString_impl, nULL_OPENGL_IMAGE, logUtil, texture2dList, commonStrings, textureFactory, openGLBitmap, imageProcessor, openGLESImageTranslate, openGLESImageProperties, tYPE)
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
import qualified OpenGLESImageProcessor -- same package or java.lang
import qualified OpenGLESImageTranslate -- same package or java.lang
import qualified OpenGLESImageProperties -- same package or java.lang
import qualified OpenGLImageCacheFactory -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified OpenGLESPostLoadPlatformImage -- javax.microedition.lcdui.OpenGLESPostLoadPlatformImage
import qualified PostLoadImageProcessor -- javax.microedition.lcdui.PostLoadImageProcessor
import qualified GraphicsStrings -- org.allbinary.graphics.GraphicsStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PlatformBitmapBase -- org.allbinary.platform.graphics.PlatformBitmapBase
import qualified PlatformBitmapBaseFactory -- org.allbinary.platform.graphics.PlatformBitmapBaseFactory
import qualified PlatformTextureBaseFactory -- org.allbinary.platform.opengles.PlatformTextureBaseFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified OpenGLSurfaceChangedInterface

-- implements OpenGLSurfaceChangedInterface
data OpenGLESImage = OpenGLESImage
    { header_ :: JavaHeader
    , base :: Image.Image
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , textureFactory :: IORef (PlatformTextureBaseFactory.PlatformTextureBaseFactory)
    , openGLBitmap :: IORef (PlatformBitmapBase.PlatformBitmapBase)
    , imageProcessor :: IORef (OpenGLESImageProcessor.OpenGLESImageProcessor)
    , openGLESImageTranslate :: IORef (OpenGLESImageTranslate.OpenGLESImageTranslate)
    , openGLESImageProperties :: IORef (OpenGLESImageProperties.OpenGLESImageProperties)
    }

instance JavaNull OpenGLESImage where
    javaNull = javaNullRecord "OpenGLESImage"

instance JavaEquals OpenGLESImage where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESImage where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESImage where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_OPENGL_IMAGE #-}
nULL_OPENGL_IMAGE = unsafePerformIO ((new_3 (NullImage.nULL_IMAGE) (PlatformBitmapBaseFactory.nULL_PLATFORM_BITMAP_BASE_FACTORY) (PlatformTextureBaseFactory.nULL_PLATFORM_TEXTURE_BASE_FACTORY)))

{-# NOINLINE texture2dList #-}
texture2dList = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)))

tYPE = 4

newRecord_ :: IO OpenGLESImage
newRecord_ = do
    base <- Image.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    textureFactory <- newIORef javaNull
    openGLBitmap <- newIORef javaNull
    imageProcessor <- newIORef javaNull
    openGLESImageTranslate <- newIORef javaNull
    openGLESImageProperties <- newIORef javaNull
    let this = OpenGLESImage header_ base logUtil commonStrings textureFactory openGLBitmap imageProcessor openGLESImageTranslate openGLESImageProperties
    jregisterLevel header_ this
    OpenGLSurfaceChangedInterface.registerInterface_ header_
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "initTexture" (\() -> initTexture_impl this)
    jregisterMethod header_ "drawRegion" (\() -> drawRegion_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: OpenGLESImage -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.textureFactory (javaNull)
    jset this.openGLBitmap (javaNull)
    jset this.imageProcessor =<< (OpenGLESImageProcessor.getInstance)
    jset this.openGLESImageTranslate =<< (OpenGLESImageTranslate.getInstance)
    jset this.openGLESImageProperties =<< (OpenGLESImageProperties.new_)
    pure ()

new_3 :: Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO OpenGLESImage
new_3 image bitmapFactory textureFactory = do
    this <- newRecord_
    init_3 this image bitmapFactory textureFactory
    pure this

init_3 :: OpenGLESImage -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO ()
init_3 this image bitmapFactory textureFactory = do
        Image.init_2 this.base (jio (Image.getName image)) (PostLoadImageProcessor.nULL_POST_LOAD_IMAGE_PROCESSOR)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (PlatformBitmapBaseFactory.createBitmap bitmapFactory image)
        jset (this).openGLBitmap (assignedValue)
        jset (this).textureFactory (textureFactory)
        Control.Monad.void (ImageCache.init ((jio (OpenGLImageCacheFactory.getInstance))) (javaCast this))
        assignedValue <- (OpenGLESPostLoadPlatformImage.getInstance)
        jset (this).base.platformImage (assignedValue)
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: OpenGLESImage))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: OpenGLESImage))

getHeight_impl :: OpenGLESImage -> IO (Int)
getHeight_impl this = do
        pure ((Prelude.truncate (((Prelude.fromIntegral (jio (PlatformBitmapBase.getHeight ((jget (this).openGLBitmap))))) * (jget ((jget (this).openGLESImageProperties)).scaleY2)))))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: OpenGLESImage))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: OpenGLESImage))

getWidth_impl :: OpenGLESImage -> IO (Int)
getWidth_impl this = do
        pure ((Prelude.truncate (((Prelude.fromIntegral (jio (PlatformBitmapBase.getWidth ((jget (this).openGLBitmap))))) * (jget ((jget (this).openGLESImageProperties)).scaleX2)))))


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLESImage))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLESImage)) a1

set_impl :: OpenGLESImage -> GL.GL -> IO (())
set_impl this gl = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


initTexture :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (Bool)
initTexture object_ a1 = jmethod object_ "initTexture" (\() -> (initTexture_impl (javaCast object_ :: OpenGLESImage))) () a1

initTexture_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (Bool)
initTexture_super object_ a1 = (initTexture_impl (javaCast object_ :: OpenGLESImage)) a1

initTexture_impl :: OpenGLESImage -> GL10.GL10 -> IO (Bool)
initTexture_impl this gl = do
    javaCatchReturn $ do
        when (Prelude.not (jio (contains OpenGLESImage.texture2dList this))) $ do
            Control.Monad.void (add OpenGLESImage.texture2dList this)
            let textures = (jnewArray (1) 0)
            Control.Monad.void (GL10.glEnable gl (GL10.gL_TEXTURE_2D))
            when ((jget ((jget (this).openGLESImageProperties)).textureID) /= (Prelude.negate 1)) $ do
                jsetIndex textures (0) ((jget ((jget (this).openGLESImageProperties)).textureID))
                Control.Monad.void (GL10.glDeleteTextures gl 1 textures 0)
            Control.Monad.void (GL10.glGenTextures gl 1 textures 0)
            jset ((jget (this).openGLESImageProperties)).textureID ((jindex textures (0)))
            Control.Monad.void (GL10.glBindTexture gl (GL10.gL_TEXTURE_2D) (jget ((jget (this).openGLESImageProperties)).textureID))
            Control.Monad.void (GL10.glTexParameterf gl (GL10.gL_TEXTURE_2D) (GL10.gL_TEXTURE_MIN_FILTER) (GL10.gL_NEAREST))
            Control.Monad.void (GL10.glTexParameterf gl (GL10.gL_TEXTURE_2D) (GL10.gL_TEXTURE_WRAP_S) (GL10.gL_CLAMP_TO_EDGE))
            Control.Monad.void (GL10.glTexParameterf gl (GL10.gL_TEXTURE_2D) (GL10.gL_TEXTURE_WRAP_T) (GL10.gL_CLAMP_TO_EDGE))
            javaReturn (True)
        pure (False)


drawRegion :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "drawRegion" (\() -> (drawRegion_impl (javaCast object_ :: OpenGLESImage))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

drawRegion_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (drawRegion_impl (javaCast object_ :: OpenGLESImage)) a1 a2 a3 a4 a5 a6 a7 a8 a9

drawRegion_impl :: OpenGLESImage -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion_impl this gl viewHeight x_src y_src width height x y z = do
        pure ()


draw :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw object_ a1 a2 a3 a4 = jmethod object_ "draw" (\() -> (draw_impl (javaCast object_ :: OpenGLESImage))) () a1 a2 a3 a4

draw_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_super object_ a1 a2 a3 a4 = (draw_impl (javaCast object_ :: OpenGLESImage)) a1 a2 a3 a4

draw_impl :: OpenGLESImage -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_impl this gl x y z = do
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: OpenGLESImage))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: OpenGLESImage))

getType_impl :: OpenGLESImage -> IO (Int)
getType_impl this = do
        pure (OpenGLESImage.tYPE)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: OpenGLESImage))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: OpenGLESImage))

toString_impl :: OpenGLESImage -> IO (String)
toString_impl this = do
        graphicsStrings <- (GraphicsStrings.getInstance)
        (StringMaker.toString ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (Image.getName this))))) (jio (Image.toString_super this.base))))) (jget (graphicsStrings).oPACITY)))) (jget ((jget (this).openGLESImageProperties)).alphaf)))))


