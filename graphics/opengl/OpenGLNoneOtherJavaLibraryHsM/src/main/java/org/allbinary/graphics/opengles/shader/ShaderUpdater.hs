{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.graphics.opengles.shader
module ShaderUpdater where

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
import qualified EGLConfig -- javax.microedition.khronos.egl.EGLConfig
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified RendererStrings -- org.allbinary.graphics.opengles.renderer.RendererStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ShaderUpdater = ShaderUpdater
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , rendererStrings :: IORef (RendererStrings.RendererStrings)
    }

instance JavaNull ShaderUpdater where
    javaNull = javaNullRecord "ShaderUpdater"

instance JavaEquals ShaderUpdater where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShaderUpdater where
    (==) = jrecordEquals

instance JavaObjectClass ShaderUpdater where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShaderUpdater
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    rendererStrings <- newIORef javaNull
    let this = ShaderUpdater header_ commonStrings rendererStrings
    jregisterLevel header_ this
    jregisterMethod header_ "onSurfaceCreated" (\() -> onSurfaceCreated_impl this)
    pure this

initFields_ :: ShaderUpdater -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.rendererStrings =<< (RendererStrings.getInstance)
    pure ()

new_ :: IO ShaderUpdater
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShaderUpdater -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ShaderUpdater)
getInstance = do
        pure (ShaderUpdater.instance_)


onSurfaceCreated :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated object_ a1 a2 = jmethod object_ "onSurfaceCreated" (\() -> (onSurfaceCreated_impl (javaCast object_ :: ShaderUpdater))) () a1 a2

onSurfaceCreated_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated_super object_ a1 a2 = (onSurfaceCreated_impl (javaCast object_ :: ShaderUpdater)) a1 a2

onSurfaceCreated_impl :: ShaderUpdater -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated_impl this gl eglConfig = do
        pure ()


