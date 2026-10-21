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
module OpenGLESGL11VBOImage (module OpenGLESGL11VBOImage, module OpenGLESImage) where

import OpenGLESImage hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initVertices, initVertices_super, initVertices_impl, set, set_super, set_impl, drawRegion, drawRegion_super, drawRegion_impl, draw, draw_super, draw_impl, glUtil, textureVertexFloatBuffer, regionRectangleFloatArray, regionRectangleVertexFloatBuffer, regionTextureRectangleFloatArray, regionTextureVertexFloatBuffer)
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
import qualified ByteBuffer -- java.nio.ByteBuffer
import qualified ByteOrder -- java.nio.ByteOrder
import qualified FloatBuffer -- java.nio.FloatBuffer
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified OpenGLLogUtil -- org.allbinary.graphics.opengles.OpenGLLogUtil
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified GLUtil -- org.allbinary.opengles.GLUtil
import qualified PlatformBitmapBaseFactory -- org.allbinary.platform.graphics.PlatformBitmapBaseFactory
import qualified PlatformTextureBaseFactory -- org.allbinary.platform.opengles.PlatformTextureBaseFactory
import qualified OpenGLESImage

data OpenGLESGL11VBOImage = OpenGLESGL11VBOImage
    { header_ :: JavaHeader
    , base :: OpenGLESImage.OpenGLESImage
    , glUtil :: IORef (GLUtil.GLUtil)
    , textureVertexFloatBuffer :: IORef (FloatBuffer.FloatBuffer)
    , regionRectangleFloatArray :: IORef (JavaArray (Float))
    , regionRectangleVertexFloatBuffer :: IORef (FloatBuffer.FloatBuffer)
    , regionTextureRectangleFloatArray :: IORef (JavaArray (Float))
    , regionTextureVertexFloatBuffer :: IORef (FloatBuffer.FloatBuffer)
    }

instance JavaNull OpenGLESGL11VBOImage where
    javaNull = javaNullRecord "OpenGLESGL11VBOImage"

instance JavaEquals OpenGLESGL11VBOImage where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESGL11VBOImage where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESGL11VBOImage where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OpenGLESGL11VBOImage
newRecord_ = do
    base <- OpenGLESImage.newRecord_
    let header_ = base.header_
    glUtil <- newIORef javaNull
    textureVertexFloatBuffer <- newIORef javaNull
    regionRectangleFloatArray <- newIORef javaNull
    regionRectangleVertexFloatBuffer <- newIORef javaNull
    regionTextureRectangleFloatArray <- newIORef javaNull
    regionTextureVertexFloatBuffer <- newIORef javaNull
    let this = OpenGLESGL11VBOImage header_ base glUtil textureVertexFloatBuffer regionRectangleFloatArray regionRectangleVertexFloatBuffer regionTextureRectangleFloatArray regionTextureVertexFloatBuffer
    jregisterLevel header_ this
    jregisterMethod header_ "initVertices" (\() -> initVertices_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "drawRegion" (\() -> drawRegion_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    pure this

initFields_ :: OpenGLESGL11VBOImage -> IO ()
initFields_ this = do
    jset this.glUtil =<< (GLUtil.getInstance)
    jset this.textureVertexFloatBuffer =<< (ByteBuffer.asFloatBuffer ((jio (ByteBuffer.order ((jio (ByteBuffer.allocateDirect ((4 * 4) * 2)))) (jio (ByteOrder.nativeOrder))))))
    jset this.regionRectangleFloatArray ((jarrayFromList [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]))
    jset this.regionRectangleVertexFloatBuffer =<< (ByteBuffer.asFloatBuffer ((jio (ByteBuffer.order ((jio (ByteBuffer.allocateDirect ((4 * 4) * 3)))) (jio (ByteOrder.nativeOrder))))))
    jset this.regionTextureRectangleFloatArray ((jnewArray (8) 0.0))
    jset this.regionTextureVertexFloatBuffer =<< (ByteBuffer.asFloatBuffer ((jio (ByteBuffer.order ((jio (ByteBuffer.allocateDirect ((4 * 4) * 2)))) (jio (ByteOrder.nativeOrder))))))
    pure ()

new_3 :: Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO OpenGLESGL11VBOImage
new_3 image bitmapFactory textureFactory = do
    this <- newRecord_
    init_3 this image bitmapFactory textureFactory
    pure this

init_3 :: OpenGLESGL11VBOImage -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO ()
init_3 this image bitmapFactory textureFactory = do
        OpenGLESImage.init_3 this.base (image) (bitmapFactory) (textureFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (OpenGLESGL11VBOImage.initVertices this)
        Control.Monad.void (FloatBuffer.put ((jget (this).regionRectangleVertexFloatBuffer)) (jio (FloatBuffer.wrap (jget (this).regionRectangleFloatArray))))
        Control.Monad.void (FloatBuffer.put ((jget (this).regionTextureVertexFloatBuffer)) (jio (FloatBuffer.wrap (jget (this).regionTextureRectangleFloatArray))))
        pure ()


initVertices :: (JavaObjectClass this_) => this_ -> IO (())
initVertices object_ = jmethod object_ "initVertices" (\() -> (initVertices_impl (javaCast object_ :: OpenGLESGL11VBOImage))) ()

initVertices_super :: (JavaObjectClass this_) => this_ -> IO (())
initVertices_super object_ = (initVertices_impl (javaCast object_ :: OpenGLESGL11VBOImage))

initVertices_impl :: OpenGLESGL11VBOImage -> IO (())
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
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLESGL11VBOImage))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLESGL11VBOImage)) a1

set_impl :: OpenGLESGL11VBOImage -> GL.GL -> IO (())
set_impl this gl = do
        let gl10 = (javaCast gl :: GL10.GL10)
        when (jio (OpenGLESImage.initTexture_super this.base gl10)) $ do
            Control.Monad.void (PlatformTextureBaseFactory.load ((jget (this).base.textureFactory)) gl10 (GL10.gL_TEXTURE_2D) 0 this 0 True)
            Control.Monad.void (GL10.glDisable gl10 (GL10.gL_TEXTURE_2D))
            Control.Monad.void (OpenGLLogUtil.logError ((jio (OpenGLLogUtil.getInstance))) gl10 this)
        pure ()


drawRegion :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "drawRegion" (\() -> (drawRegion_impl (javaCast object_ :: OpenGLESGL11VBOImage))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

drawRegion_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (drawRegion_impl (javaCast object_ :: OpenGLESGL11VBOImage)) a1 a2 a3 a4 a5 a6 a7 a8 a9

drawRegion_impl :: OpenGLESGL11VBOImage -> GL10.GL10 -> Int -> Float -> Float -> Float -> Float -> Int -> Int -> Int -> IO (())
drawRegion_impl this gl viewHeight x_src y_src width height x y z = do
        jsetIndex ((jget (this).regionRectangleFloatArray)) (0) ((Prelude.fromIntegral x))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (7) ((Prelude.fromIntegral (viewHeight - y)))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (1) (((jindex ((jget (this).regionRectangleFloatArray)) (7)) - height))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (3) (((Prelude.fromIntegral x) + width))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (4) ((jindex ((jget (this).regionRectangleFloatArray)) (1)))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (6) ((Prelude.fromIntegral x))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (9) ((jindex ((jget (this).regionRectangleFloatArray)) (3)))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (10) ((jindex ((jget (this).regionRectangleFloatArray)) (7)))
        jsetIndex ((jget (this).regionTextureRectangleFloatArray)) (0) ((x_src / (jio (OpenGLESImage.getWidth this))))
        jsetIndex ((jget (this).regionTextureRectangleFloatArray)) (1) ((((y_src + height)) / (jio (OpenGLESImage.getHeight this))))
        jsetIndex ((jget (this).regionTextureRectangleFloatArray)) (2) ((((x_src + width)) / (jio (OpenGLESImage.getWidth this))))
        jsetIndex ((jget (this).regionTextureRectangleFloatArray)) (3) ((jindex ((jget (this).regionTextureRectangleFloatArray)) (1)))
        jsetIndex ((jget (this).regionTextureRectangleFloatArray)) (4) ((jindex ((jget (this).regionTextureRectangleFloatArray)) (0)))
        jsetIndex ((jget (this).regionTextureRectangleFloatArray)) (5) ((y_src / (jio (OpenGLESImage.getHeight this))))
        jsetIndex ((jget (this).regionTextureRectangleFloatArray)) (6) ((jindex ((jget (this).regionTextureRectangleFloatArray)) (2)))
        jsetIndex ((jget (this).regionTextureRectangleFloatArray)) (7) ((jindex ((jget (this).regionTextureRectangleFloatArray)) (5)))
        Control.Monad.void (GLUtil.position ((jget (this).glUtil)) (jget (this).regionRectangleVertexFloatBuffer) 0)
        Control.Monad.void (GL.glVertexPointer gl 3 (GL10.gL_FLOAT) 0 (jget (this).regionRectangleVertexFloatBuffer))
        Control.Monad.void (GL.glEnableClientState gl (GL10.gL_VERTEX_ARRAY))
        Control.Monad.void (GL.glEnable gl (GL10.gL_TEXTURE_2D))
        Control.Monad.void (GL.glBindTexture gl (GL10.gL_TEXTURE_2D) (jget ((jget (this).base.openGLESImageProperties)).textureID))
        Control.Monad.void (GL.glEnableClientState gl (GL10.gL_TEXTURE_COORD_ARRAY))
        Control.Monad.void (GLUtil.position ((jget (this).glUtil)) (jget (this).regionTextureVertexFloatBuffer) 0)
        Control.Monad.void (GL.glTexCoordPointer gl 2 (GL10.gL_FLOAT) 0 (jget (this).regionTextureVertexFloatBuffer))
        Control.Monad.void (GL.glDrawArrays gl (GL10.gL_TRIANGLE_STRIP) 0 4)
        Control.Monad.void (GL.glDisableClientState gl (GL10.gL_VERTEX_ARRAY))
        Control.Monad.void (GL.glDisableClientState gl (GL10.gL_TEXTURE_COORD_ARRAY))
        Control.Monad.void (GL.glDisable gl (GL10.gL_TEXTURE_2D))
        pure ()


draw :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw object_ a1 a2 a3 a4 = jmethod object_ "draw" (\() -> (draw_impl (javaCast object_ :: OpenGLESGL11VBOImage))) () a1 a2 a3 a4

draw_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_super object_ a1 a2 a3 a4 = (draw_impl (javaCast object_ :: OpenGLESGL11VBOImage)) a1 a2 a3 a4

draw_impl :: OpenGLESGL11VBOImage -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_impl this gl x y z = do
        jsetIndex ((jget (this).regionRectangleFloatArray)) (0) ((Prelude.fromIntegral x))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (7) ((Prelude.fromIntegral (((jio (DisplayInfoSingleton.getLastHeight ((jio (DisplayInfoSingleton.getInstance))))) - y))))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (1) (((jindex ((jget (this).regionRectangleFloatArray)) (7)) - (jio (OpenGLESImage.getHeight this))))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (3) ((Prelude.realToFrac (jnumericDouble ((x + (jio (OpenGLESImage.getWidth this)))))))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (4) ((jindex ((jget (this).regionRectangleFloatArray)) (1)))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (6) ((Prelude.fromIntegral x))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (9) ((jindex ((jget (this).regionRectangleFloatArray)) (3)))
        jsetIndex ((jget (this).regionRectangleFloatArray)) (10) ((jindex ((jget (this).regionRectangleFloatArray)) (7)))
        Control.Monad.void (GLUtil.position ((jget (this).glUtil)) (jget (this).regionRectangleVertexFloatBuffer) 0)
        Control.Monad.void (GL.glVertexPointer gl 3 (GL10.gL_FLOAT) 0 (jget (this).regionRectangleVertexFloatBuffer))
        Control.Monad.void (GL.glEnableClientState gl (GL10.gL_VERTEX_ARRAY))
        Control.Monad.void (GL.glEnable gl (GL10.gL_TEXTURE_2D))
        Control.Monad.void (GL.glBindTexture gl (GL10.gL_TEXTURE_2D) (jget ((jget (this).base.openGLESImageProperties)).textureID))
        Control.Monad.void (GL.glEnableClientState gl (GL10.gL_TEXTURE_COORD_ARRAY))
        Control.Monad.void (GLUtil.position ((jget (this).glUtil)) (jget (this).textureVertexFloatBuffer) 0)
        Control.Monad.void (GL.glTexCoordPointer gl 2 (GL10.gL_FLOAT) 0 (jget (this).textureVertexFloatBuffer))
        Control.Monad.void (GL.glDrawArrays gl (GL10.gL_TRIANGLE_STRIP) 0 4)
        Control.Monad.void (GL.glDisableClientState gl (GL10.gL_VERTEX_ARRAY))
        Control.Monad.void (GL.glDisableClientState gl (GL10.gL_TEXTURE_COORD_ARRAY))
        Control.Monad.void (GL.glDisable gl (GL10.gL_TEXTURE_2D))
        pure ()


