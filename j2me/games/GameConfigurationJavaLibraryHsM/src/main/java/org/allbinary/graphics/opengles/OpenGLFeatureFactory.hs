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
-- package org.allbinary.graphics.opengles
module OpenGLFeatureFactory where

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
import qualified OpenGLFeature -- same package or java.lang

data OpenGLFeatureFactory = OpenGLFeatureFactory
    { header_ :: JavaHeader
    , oPENGL_OPTIONS :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_SURFACE_VIEW :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_2D :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_3D :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_2D_AND_3D :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_AUTO_SELECT :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_MINIMUM :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_AS_GAME_THREAD :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS :: IORef (OpenGLFeature.OpenGLFeature)
    , iMAGE_COLOR_DEPTH_4444 :: IORef (OpenGLFeature.OpenGLFeature)
    , iMAGE_COLOR_DEPTH_8888 :: IORef (OpenGLFeature.OpenGLFeature)
    , iMAGE_COLOR_DEPTH_565 :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_COLOR_DEPTH_4444 :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_COLOR_DEPTH_8888 :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_COLOR_DEPTH_565 :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_DRAW_TEXTURE :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_VERTEX_BUFFER_OBJECT :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_SIMPLE_OBJECT3D_PROCESSOR :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_COMPLEX_OBJECT3D_PROCESSOR :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_SIMPLE_TEXTURE_PROCESSOR :: IORef (OpenGLFeature.OpenGLFeature)
    , oPENGL_COMPLEX_TEXTURE_PROCESSOR :: IORef (OpenGLFeature.OpenGLFeature)
    }

instance JavaNull OpenGLFeatureFactory where
    javaNull = javaNullRecord "OpenGLFeatureFactory"

instance JavaEquals OpenGLFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    oPENGL_OPTIONS <- newIORef javaNull
    oPENGL <- newIORef javaNull
    oPENGL_SURFACE_VIEW <- newIORef javaNull
    oPENGL_2D <- newIORef javaNull
    oPENGL_3D <- newIORef javaNull
    oPENGL_2D_AND_3D <- newIORef javaNull
    oPENGL_AUTO_SELECT <- newIORef javaNull
    oPENGL_MINIMUM <- newIORef javaNull
    oPENGL_AS_GAME_THREAD <- newIORef javaNull
    oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS <- newIORef javaNull
    iMAGE_COLOR_DEPTH_4444 <- newIORef javaNull
    iMAGE_COLOR_DEPTH_8888 <- newIORef javaNull
    iMAGE_COLOR_DEPTH_565 <- newIORef javaNull
    oPENGL_COLOR_DEPTH_4444 <- newIORef javaNull
    oPENGL_COLOR_DEPTH_8888 <- newIORef javaNull
    oPENGL_COLOR_DEPTH_565 <- newIORef javaNull
    oPENGL_DRAW_TEXTURE <- newIORef javaNull
    oPENGL_VERTEX_BUFFER_OBJECT <- newIORef javaNull
    oPENGL_SIMPLE_OBJECT3D_PROCESSOR <- newIORef javaNull
    oPENGL_COMPLEX_OBJECT3D_PROCESSOR <- newIORef javaNull
    oPENGL_SIMPLE_TEXTURE_PROCESSOR <- newIORef javaNull
    oPENGL_COMPLEX_TEXTURE_PROCESSOR <- newIORef javaNull
    let this = OpenGLFeatureFactory header_ oPENGL_OPTIONS oPENGL oPENGL_SURFACE_VIEW oPENGL_2D oPENGL_3D oPENGL_2D_AND_3D oPENGL_AUTO_SELECT oPENGL_MINIMUM oPENGL_AS_GAME_THREAD oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS iMAGE_COLOR_DEPTH_4444 iMAGE_COLOR_DEPTH_8888 iMAGE_COLOR_DEPTH_565 oPENGL_COLOR_DEPTH_4444 oPENGL_COLOR_DEPTH_8888 oPENGL_COLOR_DEPTH_565 oPENGL_DRAW_TEXTURE oPENGL_VERTEX_BUFFER_OBJECT oPENGL_SIMPLE_OBJECT3D_PROCESSOR oPENGL_COMPLEX_OBJECT3D_PROCESSOR oPENGL_SIMPLE_TEXTURE_PROCESSOR oPENGL_COMPLEX_TEXTURE_PROCESSOR
    jregisterLevel header_ this
    pure this

initFields_ :: OpenGLFeatureFactory -> IO ()
initFields_ this = do
    jset this.oPENGL_OPTIONS =<< (OpenGLFeature.new_1 "OpenGL Options")
    jset this.oPENGL =<< (OpenGLFeature.new_1 "OpenGL")
    jset this.oPENGL_SURFACE_VIEW =<< (OpenGLFeature.new_1 "GLSurfaceView")
    jset this.oPENGL_2D =<< (OpenGLFeature.new_1 "OpenGL 2D")
    jset this.oPENGL_3D =<< (OpenGLFeature.new_1 "OpenGL 3D")
    jset this.oPENGL_2D_AND_3D =<< (OpenGLFeature.new_1 "OpenGL 2D/3D")
    jset this.oPENGL_AUTO_SELECT =<< (OpenGLFeature.new_1 "Auto Select")
    jset this.oPENGL_MINIMUM =<< (OpenGLFeature.new_1 "Minimum")
    jset this.oPENGL_AS_GAME_THREAD =<< (OpenGLFeature.new_1 "As game thread")
    jset this.oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS =<< (OpenGLFeature.new_1 "As different threads")
    jset this.iMAGE_COLOR_DEPTH_4444 =<< (OpenGLFeature.new_1 "4444")
    jset this.iMAGE_COLOR_DEPTH_8888 =<< (OpenGLFeature.new_1 "8888")
    jset this.iMAGE_COLOR_DEPTH_565 =<< (OpenGLFeature.new_1 "565")
    jset this.oPENGL_COLOR_DEPTH_4444 =<< (OpenGLFeature.new_1 "4444")
    jset this.oPENGL_COLOR_DEPTH_8888 =<< (OpenGLFeature.new_1 "8888")
    jset this.oPENGL_COLOR_DEPTH_565 =<< (OpenGLFeature.new_1 "565")
    jset this.oPENGL_DRAW_TEXTURE =<< (OpenGLFeature.new_1 "GL_OES_draw_texture")
    jset this.oPENGL_VERTEX_BUFFER_OBJECT =<< (OpenGLFeature.new_1 "vertex_buffer_object")
    jset this.oPENGL_SIMPLE_OBJECT3D_PROCESSOR =<< (OpenGLFeature.new_1 "Simple Object3d Processor")
    jset this.oPENGL_COMPLEX_OBJECT3D_PROCESSOR =<< (OpenGLFeature.new_1 "Complex Object3d Processor")
    jset this.oPENGL_SIMPLE_TEXTURE_PROCESSOR =<< (OpenGLFeature.new_1 "Simple Texture Processor")
    jset this.oPENGL_COMPLEX_TEXTURE_PROCESSOR =<< (OpenGLFeature.new_1 "Complex Texture Processor")
    pure ()


getInstance :: IO (OpenGLFeatureFactory)
getInstance = do
        pure (OpenGLFeatureFactory.instance_)

new_ :: IO OpenGLFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLFeatureFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


