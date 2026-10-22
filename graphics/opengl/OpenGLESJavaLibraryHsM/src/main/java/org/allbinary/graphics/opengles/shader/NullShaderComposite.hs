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
module NullShaderComposite (module NullShaderComposite, module ShaderComposite) where

import ShaderComposite hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified CompositeShaderUpdater -- same package or java.lang
import qualified ShaderInitializer -- same package or java.lang
import qualified ModelViewProjection -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified NullOpenGLProcessorFactory -- org.allbinary.graphics.opengles.NullOpenGLProcessorFactory
import qualified OpenGLCapabilities -- org.allbinary.graphics.opengles.OpenGLCapabilities
import qualified OpenGLProcessor -- org.allbinary.graphics.opengles.OpenGLProcessor
import qualified ShaderComposite

data NullShaderComposite = NullShaderComposite
    { header_ :: JavaHeader
    , base :: ShaderComposite.ShaderComposite
    }

instance JavaNull NullShaderComposite where
    javaNull = javaNullRecord "NullShaderComposite"

instance JavaEquals NullShaderComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullShaderComposite where
    (==) = jrecordEquals

instance JavaObjectClass NullShaderComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((NullShaderComposite.new_8 (jget ((jio (OpenGLCapabilities.getInstance))).vERSION_2_0) (jarrayFromList [(jio (Shader.new_)), (jio (Shader.new_))]) (jio (CompositeShaderUpdater.getInstance)) (jio (ShaderInitializer.getInstance)) (jio (ModelViewProjection.getInstance)) (jio (NullOpenGLProcessorFactory.getInstance)) (jio (NullOpenGLProcessorFactory.getInstance)) (jio (NullOpenGLProcessorFactory.getInstance)) {- Java anonymous class body: implement it as a record of functions
        -- init
-}))

newRecord_ :: IO NullShaderComposite
newRecord_ = do
    base <- ShaderComposite.newRecord_
    let header_ = base.header_
    let this = NullShaderComposite header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: NullShaderComposite -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ShaderComposite.ShaderComposite)
getInstance = do
        pure ((javaCast NullShaderComposite.instance_ :: ShaderComposite.ShaderComposite))

new_8 :: String -> JavaArray (Shader.Shader) -> CompositeShaderUpdater.CompositeShaderUpdater -> ShaderInitializer.ShaderInitializer -> ModelViewProjection.ModelViewProjection -> OpenGLProcessor.OpenGLProcessor -> OpenGLProcessor.OpenGLProcessor -> OpenGLProcessor.OpenGLProcessor -> IO NullShaderComposite
new_8 requiresOpenGLVersion shaderArray compositeShaderUpdater shaderInitializer modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor disableProgramShaderOpenGLProcessor = do
    this <- newRecord_
    init_8 this requiresOpenGLVersion shaderArray compositeShaderUpdater shaderInitializer modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor disableProgramShaderOpenGLProcessor
    pure this

init_8 :: NullShaderComposite -> String -> JavaArray (Shader.Shader) -> CompositeShaderUpdater.CompositeShaderUpdater -> ShaderInitializer.ShaderInitializer -> ModelViewProjection.ModelViewProjection -> OpenGLProcessor.OpenGLProcessor -> OpenGLProcessor.OpenGLProcessor -> OpenGLProcessor.OpenGLProcessor -> IO ()
init_8 this requiresOpenGLVersion shaderArray compositeShaderUpdater shaderInitializer modelViewProjection colorOpenGLProcessor vertexOpenGLProcessor disableProgramShaderOpenGLProcessor = do
        ShaderComposite.init_8 this.base (requiresOpenGLVersion) (shaderArray) (compositeShaderUpdater) (shaderInitializer) (modelViewProjection) (colorOpenGLProcessor) (vertexOpenGLProcessor) (disableProgramShaderOpenGLProcessor)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (NullOpenGLProcessorFactory.getInstance)
        jset (this).base.useProgramShaderOpenGLProcessor (assignedValue)
        pure ()


