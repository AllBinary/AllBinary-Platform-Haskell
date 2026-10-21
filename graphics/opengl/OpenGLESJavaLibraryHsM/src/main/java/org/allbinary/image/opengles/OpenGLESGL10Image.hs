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
module OpenGLESGL10Image (module OpenGLESGL10Image, module OpenGLESImage) where

import OpenGLESImage hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initVertices, initVertices_super, initVertices_impl, set, set_super, set_impl, drawRegion, drawRegion_super, drawRegion_impl, draw, draw_super, draw_impl, textureVertexFloatBuffer, realOpenGLESImageDraw, openGLESImageDraw)
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
import qualified OpenGLESImageDraw -- same package or java.lang
import qualified OpenGLESImageProperties -- same package or java.lang
import qualified OpenGLESImageProcessor -- same package or java.lang
import qualified OpenGLESImageTranslate -- same package or java.lang
import qualified ByteBuffer -- java.nio.ByteBuffer
import qualified ByteOrder -- java.nio.ByteOrder
import qualified FloatBuffer -- java.nio.FloatBuffer
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified OpenGLLogUtil -- org.allbinary.graphics.opengles.OpenGLLogUtil
import qualified GLUtil -- org.allbinary.opengles.GLUtil
import qualified PlatformBitmapBaseFactory -- org.allbinary.platform.graphics.PlatformBitmapBaseFactory
import qualified PlatformTextureBaseFactory -- org.allbinary.platform.opengles.PlatformTextureBaseFactory
import qualified OpenGLESImage

data OpenGLESGL10Image = OpenGLESGL10Image
    { header_ :: JavaHeader
    , base :: OpenGLESImage.OpenGLESImage
    , textureVertexFloatBuffer :: IORef (FloatBuffer.FloatBuffer)
    , realOpenGLESImageDraw :: IORef (OpenGLESImageDraw.OpenGLESImageDraw)
    , openGLESImageDraw :: IORef (OpenGLESImageDraw.OpenGLESImageDraw)
    }

instance JavaNull OpenGLESGL10Image where
    javaNull = javaNullRecord "OpenGLESGL10Image"

instance JavaEquals OpenGLESGL10Image where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESGL10Image where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESGL10Image where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OpenGLESGL10Image
newRecord_ = do
    base <- OpenGLESImage.newRecord_
    let header_ = base.header_
    textureVertexFloatBuffer <- newIORef javaNull
    realOpenGLESImageDraw <- newIORef javaNull
    openGLESImageDraw <- newIORef javaNull
    let this = OpenGLESGL10Image header_ base textureVertexFloatBuffer realOpenGLESImageDraw openGLESImageDraw
    jregisterLevel header_ this
    jregisterMethod header_ "initVertices" (\() -> initVertices_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "drawRegion" (\() -> drawRegion_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    pure this

initFields_ :: OpenGLESGL10Image -> IO ()
initFields_ this = do
    jset this.textureVertexFloatBuffer =<< (ByteBuffer.asFloatBuffer ((jio (ByteBuffer.order ((jio (ByteBuffer.allocateDirect ((4 * 4) * 2)))) (jio (ByteOrder.nativeOrder))))))
    jset this.realOpenGLESImageDraw =<< (OpenGLESImageDraw.new_ {- Java anonymous class body: implement it as a record of functions
        jset this.glUtil =<< (GLUtil.getInstance)
        jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
        jset this.textureVertexFloatBuffer ((jget (this).textureVertexFloatBuffer))
        jset this.regionTextureRectangleFloatArray ((jnewArray (8) 0.0))
        jset this.regionTextureVertexFloatBuffer =<< (ByteBuffer.asFloatBuffer ((jio (ByteBuffer.order ((jio (ByteBuffer.allocateDirect ((4 * 4) * 2)))) (jio (ByteOrder.nativeOrder))))))
        jset this.regionRectangleFloatArray ((jarrayFromList [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]))
        jset this.regionRectangleVertexFloatBuffer =<< (ByteBuffer.asFloatBuffer ((jio (ByteBuffer.order ((jio (ByteBuffer.allocateDirect ((4 * 4) * 3)))) (jio (ByteOrder.nativeOrder))))))
        jset this.openGLESImageProperties ((jget (this).base.openGLESImageProperties))
        -- drawRegion
        -- draw
-})
    jset this.openGLESImageDraw =<< (OpenGLESImageDraw.getInstance)
    pure ()

new_3 :: Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO OpenGLESGL10Image
new_3 image bitmapFactory textureFactory = do
    this <- newRecord_
    init_3 this image bitmapFactory textureFactory
    pure this

init_3 :: OpenGLESGL10Image -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO ()
init_3 this image bitmapFactory textureFactory = do
        OpenGLESImage.init_3 this.base (image) (bitmapFactory) (textureFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (OpenGLESGL10Image.initVertices this)
        pure ()


initVertices :: (JavaObjectClass this_) => this_ -> IO (())
initVertices object_ = jmethod object_ "initVertices" (\() -> (initVertices_impl (javaCast object_ :: OpenGLESGL10Image))) ()

initVertices_super :: (JavaObjectClass this_) => this_ -> IO (())
initVertices_super object_ = (initVertices_impl (javaCast object_ :: OpenGLESGL10Image))

initVertices_impl :: OpenGLESGL10Image -> IO (())
initVertices_impl this = do
        Control.Monad.void (FloatBuffer.put ((jget (this).textureVertexFloatBuffer)) (0.0))
        Control.Monad.void (FloatBuffer.put ((jget (this).textureVertexFloatBuffer)) (1.0))
        Control.Monad.void (FloatBuffer.put ((jget (this).textureVertexFloatBuffer)) (1.0))
        Control.Monad.void (FloatBuffer.put ((jget (this).textureVertexFloatBuffer)) (1.0))
        Control.Monad.void (FloatBuffer.put ((jget (this).textureVertexFloatBuffer)) (0.0))
        Control.Monad.void (FloatBuffer.put ((jget (this).textureVertexFloatBuffer)) (0.0))
        Control.Monad.void (FloatBuffer.put ((jget (this).textureVertexFloatBuffer)) (1.0))
        Control.Monad.void (FloatBuffer.put ((jget (this).textureVertexFloatBuffer)) (0.0))
        Control.Monad.void (FloatBuffer.rewind ((jget (this).textureVertexFloatBuffer)))
        pure ()


set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLESGL10Image))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLESGL10Image)) a1

set_impl :: OpenGLESGL10Image -> GL.GL -> IO (())
set_impl this gl = do
        let gl10 = (javaCast gl :: GL10.GL10)
        when (jio (OpenGLESImage.initTexture_super this.base gl10)) $ do
            Control.Monad.void (PlatformTextureBaseFactory.load ((jget (this).base.textureFactory)) gl10 (GL10.gL_TEXTURE_2D) 0 this 0 True)
            Control.Monad.void (GL10.glDisable gl10 (GL10.gL_TEXTURE_2D))
            jset (this).openGLESImageDraw ((jget (this).realOpenGLESImageDraw))
            Control.Monad.void (OpenGLLogUtil.logError ((jio (OpenGLLogUtil.getInstance))) gl10 this)
        pure ()


drawRegion :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "drawRegion" (\() -> (drawRegion_impl (javaCast object_ :: OpenGLESGL10Image))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

drawRegion_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (drawRegion_impl (javaCast object_ :: OpenGLESGL10Image)) a1 a2 a3 a4 a5 a6 a7 a8 a9

drawRegion_impl :: OpenGLESGL10Image -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion_impl this gl viewHeight x_src y_src width height x y z = do
        Control.Monad.void (OpenGLESImageDraw.drawRegion ((jget (this).openGLESImageDraw)) gl viewHeight x_src y_src width height x y z)
        pure ()


draw :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw object_ a1 a2 a3 a4 = jmethod object_ "draw" (\() -> (draw_impl (javaCast object_ :: OpenGLESGL10Image))) () a1 a2 a3 a4

draw_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_super object_ a1 a2 a3 a4 = (draw_impl (javaCast object_ :: OpenGLESGL10Image)) a1 a2 a3 a4

draw_impl :: OpenGLESGL10Image -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_impl this gl x y z = do
        Control.Monad.void (OpenGLESImageDraw.draw ((jget (this).openGLESImageDraw)) gl x y z)
        pure ()


