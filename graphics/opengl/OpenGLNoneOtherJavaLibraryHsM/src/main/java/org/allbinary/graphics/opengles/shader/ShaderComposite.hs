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
module ShaderComposite where

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
import qualified Shader -- same package or java.lang
import qualified ShaderInitializer -- same package or java.lang
import qualified CompositeShaderUpdater -- same package or java.lang
import qualified ModelViewProjection -- same package or java.lang
import qualified NullOpenGLTextureProcessor -- same package or java.lang
import qualified OpenGLObject3dProcessor -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified NullOpenGLProcessorFactory -- org.allbinary.graphics.opengles.NullOpenGLProcessorFactory
import qualified OpenGLProcessor -- org.allbinary.graphics.opengles.OpenGLProcessor
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data ShaderComposite = ShaderComposite
    { header_ :: JavaHeader
    , disableProgramShaderOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , requiresOpenGLVersion :: IORef (String)
    , shaderArray :: IORef (JavaArray (Shader.Shader))
    , shaderInitializer :: IORef (ShaderInitializer.ShaderInitializer)
    , compositeShaderUpdater :: IORef (CompositeShaderUpdater.CompositeShaderUpdater)
    , modelViewProjection :: IORef (ModelViewProjection.ModelViewProjection)
    , colorOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , vertexOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , useProgramShaderOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , shaderMatrixOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , colorEnableVertexAttribArrayOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , normalEnableVertexAttribArrayOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , vertexEnableVertexAttribArrayOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , textureEnableVertexAttribArrayOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , colorDisableVertexAttribArrayOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , normalDisableVertexAttribArrayOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , vertexDisableVertexAttribArrayOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , textureDisableVertexAttribArrayOpenGLProcessor :: IORef (OpenGLProcessor.OpenGLProcessor)
    , uniformLightPositionOpenGLProcessor :: IORef (OpenGLObject3dProcessor.OpenGLObject3dProcessor)
    , uniformLightColorOpenGLProcessor :: IORef (OpenGLObject3dProcessor.OpenGLObject3dProcessor)
    , uniformCameraPositionOpenGLProcessor :: IORef (OpenGLObject3dProcessor.OpenGLObject3dProcessor)
    , uniformTextureUnitOpenGLProcessor :: IORef (OpenGLObject3dProcessor.OpenGLObject3dProcessor)
    , programHandle :: IORef (Int)
    }

instance JavaNull ShaderComposite where
    javaNull = javaNullRecord "ShaderComposite"

instance JavaEquals ShaderComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShaderComposite where
    (==) = jrecordEquals

instance JavaObjectClass ShaderComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShaderComposite
newRecord_ = do
    header_ <- newJavaHeader
    disableProgramShaderOpenGLProcessor <- newIORef javaNull
    requiresOpenGLVersion <- newIORef ""
    shaderArray <- newIORef javaNull
    shaderInitializer <- newIORef javaNull
    compositeShaderUpdater <- newIORef javaNull
    modelViewProjection <- newIORef javaNull
    colorOpenGLProcessor <- newIORef javaNull
    vertexOpenGLProcessor <- newIORef javaNull
    useProgramShaderOpenGLProcessor <- newIORef javaNull
    shaderMatrixOpenGLProcessor <- newIORef javaNull
    colorEnableVertexAttribArrayOpenGLProcessor <- newIORef javaNull
    normalEnableVertexAttribArrayOpenGLProcessor <- newIORef javaNull
    vertexEnableVertexAttribArrayOpenGLProcessor <- newIORef javaNull
    textureEnableVertexAttribArrayOpenGLProcessor <- newIORef javaNull
    colorDisableVertexAttribArrayOpenGLProcessor <- newIORef javaNull
    normalDisableVertexAttribArrayOpenGLProcessor <- newIORef javaNull
    vertexDisableVertexAttribArrayOpenGLProcessor <- newIORef javaNull
    textureDisableVertexAttribArrayOpenGLProcessor <- newIORef javaNull
    uniformLightPositionOpenGLProcessor <- newIORef javaNull
    uniformLightColorOpenGLProcessor <- newIORef javaNull
    uniformCameraPositionOpenGLProcessor <- newIORef javaNull
    uniformTextureUnitOpenGLProcessor <- newIORef javaNull
    programHandle <- newIORef 0
    let this = ShaderComposite header_ disableProgramShaderOpenGLProcessor requiresOpenGLVersion shaderArray shaderInitializer compositeShaderUpdater modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor useProgramShaderOpenGLProcessor shaderMatrixOpenGLProcessor colorEnableVertexAttribArrayOpenGLProcessor normalEnableVertexAttribArrayOpenGLProcessor vertexEnableVertexAttribArrayOpenGLProcessor textureEnableVertexAttribArrayOpenGLProcessor colorDisableVertexAttribArrayOpenGLProcessor normalDisableVertexAttribArrayOpenGLProcessor vertexDisableVertexAttribArrayOpenGLProcessor textureDisableVertexAttribArrayOpenGLProcessor uniformLightPositionOpenGLProcessor uniformLightColorOpenGLProcessor uniformCameraPositionOpenGLProcessor uniformTextureUnitOpenGLProcessor programHandle
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: ShaderComposite -> IO ()
initFields_ this = do
    jset this.disableProgramShaderOpenGLProcessor (javaNull)
    jset this.requiresOpenGLVersion (javaNull)
    jset this.shaderArray (javaNull)
    jset this.shaderInitializer (javaNull)
    jset this.compositeShaderUpdater (javaNull)
    jset this.modelViewProjection (javaNull)
    jset this.colorOpenGLProcessor (javaNull)
    jset this.vertexOpenGLProcessor (javaNull)
    jset this.useProgramShaderOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.shaderMatrixOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.colorEnableVertexAttribArrayOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.normalEnableVertexAttribArrayOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.vertexEnableVertexAttribArrayOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.textureEnableVertexAttribArrayOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.colorDisableVertexAttribArrayOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.normalDisableVertexAttribArrayOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.vertexDisableVertexAttribArrayOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.textureDisableVertexAttribArrayOpenGLProcessor =<< (NullOpenGLProcessorFactory.getInstance)
    jset this.uniformLightPositionOpenGLProcessor =<< (NullOpenGLTextureProcessor.getInstance)
    jset this.uniformLightColorOpenGLProcessor =<< (NullOpenGLTextureProcessor.getInstance)
    jset this.uniformCameraPositionOpenGLProcessor =<< (NullOpenGLTextureProcessor.getInstance)
    jset this.uniformTextureUnitOpenGLProcessor =<< (NullOpenGLTextureProcessor.getInstance)
    jset this.programHandle (0)
    pure ()

new_8 :: String -> JavaArray (Shader.Shader) -> CompositeShaderUpdater.CompositeShaderUpdater -> ShaderInitializer.ShaderInitializer -> ModelViewProjection.ModelViewProjection -> OpenGLProcessor.OpenGLProcessor -> OpenGLProcessor.OpenGLProcessor -> OpenGLProcessor.OpenGLProcessor -> IO ShaderComposite
new_8 requiresOpenGLVersion shaderArray compositeShaderUpdater shaderInitializer modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor disableProgramShaderOpenGLProcessor = do
    this <- newRecord_
    init_8 this requiresOpenGLVersion shaderArray compositeShaderUpdater shaderInitializer modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor disableProgramShaderOpenGLProcessor
    pure this

init_8 :: ShaderComposite -> String -> JavaArray (Shader.Shader) -> CompositeShaderUpdater.CompositeShaderUpdater -> ShaderInitializer.ShaderInitializer -> ModelViewProjection.ModelViewProjection -> OpenGLProcessor.OpenGLProcessor -> OpenGLProcessor.OpenGLProcessor -> OpenGLProcessor.OpenGLProcessor -> IO ()
init_8 this requiresOpenGLVersion shaderArray compositeShaderUpdater shaderInitializer modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor disableProgramShaderOpenGLProcessor = do
        initFields_ this
        jset (this).requiresOpenGLVersion (requiresOpenGLVersion)
        jset (this).shaderArray (shaderArray)
        jset (this).shaderInitializer (shaderInitializer)
        jset (this).compositeShaderUpdater (compositeShaderUpdater)
        jset (this).modelViewProjection (modelViewProjection)
        jset (this).colorOpenGLProcessor (colorOpenGLProcessor)
        jset (this).vertexOpenGLProcessor (vertexOpenGLProcessor)
        jset (this).disableProgramShaderOpenGLProcessor (disableProgramShaderOpenGLProcessor)
        pure ()


init :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ShaderComposite))) () a1

init_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: ShaderComposite)) a1

init_impl :: ShaderComposite -> GL10.GL10 -> IO (())
init_impl this gl = do
        assignedValue <- (ShaderInitializer.init ((jget (this).shaderInitializer)) gl (jget (this).shaderArray) (jio (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))))
        jset (this).programHandle (assignedValue)
        pure ()


