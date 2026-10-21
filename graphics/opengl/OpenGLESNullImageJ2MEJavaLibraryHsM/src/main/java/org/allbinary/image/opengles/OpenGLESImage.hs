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
module OpenGLESImage where

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
import qualified OpenGLESImageProperties -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
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
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , textureFactory :: IORef (PlatformTextureBaseFactory.PlatformTextureBaseFactory)
    , openGLBitmap :: IORef (PlatformBitmapBase.PlatformBitmapBase)
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

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESImage
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    textureFactory <- newIORef javaNull
    openGLBitmap <- newIORef javaNull
    openGLESImageProperties <- newIORef javaNull
    let this = OpenGLESImage header_ commonStrings textureFactory openGLBitmap openGLESImageProperties
    jregisterLevel header_ this
    OpenGLSurfaceChangedInterface.registerInterface_ header_
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "initTexture" (\() -> initTexture_impl this)
    jregisterMethod header_ "drawRegion" (\() -> drawRegion_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: OpenGLESImage -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.textureFactory (javaNull)
    jset this.openGLBitmap (javaNull)
    jset this.openGLESImageProperties =<< (OpenGLESImageProperties.new_)
    pure ()

new_3 :: Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO OpenGLESImage
new_3 image bitmapFactory textureFactory = do
    this <- newRecord_
    init_3 this image bitmapFactory textureFactory
    pure this

init_3 :: OpenGLESImage -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO ()
init_3 this image bitmapFactory textureFactory = do
        initFields_ this
        assignedValue <- (PlatformBitmapBaseFactory.createBitmap bitmapFactory image)
        jset (this).openGLBitmap (assignedValue)
        jset (this).textureFactory (textureFactory)
        pure ()


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


