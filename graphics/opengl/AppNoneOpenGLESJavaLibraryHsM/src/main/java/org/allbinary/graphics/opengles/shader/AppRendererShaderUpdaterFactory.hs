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
module AppRendererShaderUpdaterFactory (module AppRendererShaderUpdaterFactory, module ShaderUpdater) where

import ShaderUpdater hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getTestShaders, getTestShaders_super, getTestShaders_impl, setShaderComposite, setShaderComposite_super, setShaderComposite_impl, instanceC, nULL_SHADER_COMPOSITE_ARRAY, shaderCompositeArray, shaderOpenGLProcessorArray)
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
import qualified ShaderComposite -- same package or java.lang
import qualified ShaderOpenGLProcessor -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ShaderUpdater

data AppRendererShaderUpdaterFactory = AppRendererShaderUpdaterFactory
    { header_ :: JavaHeader
    , base :: ShaderUpdater.ShaderUpdater
    , nULL_SHADER_COMPOSITE_ARRAY :: IORef (JavaArray (ShaderComposite.ShaderComposite))
    , shaderCompositeArray :: IORef (JavaArray (ShaderComposite.ShaderComposite))
    , shaderOpenGLProcessorArray :: IORef (JavaArray (ShaderOpenGLProcessor.ShaderOpenGLProcessor))
    }

instance JavaNull AppRendererShaderUpdaterFactory where
    javaNull = javaNullRecord "AppRendererShaderUpdaterFactory"

instance JavaEquals AppRendererShaderUpdaterFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AppRendererShaderUpdaterFactory where
    (==) = jrecordEquals

instance JavaObjectClass AppRendererShaderUpdaterFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO AppRendererShaderUpdaterFactory
newRecord_ = do
    base <- ShaderUpdater.newRecord_
    let header_ = base.header_
    nULL_SHADER_COMPOSITE_ARRAY <- newIORef javaNull
    shaderCompositeArray <- newIORef javaNull
    shaderOpenGLProcessorArray <- newIORef javaNull
    let this = AppRendererShaderUpdaterFactory header_ base nULL_SHADER_COMPOSITE_ARRAY shaderCompositeArray shaderOpenGLProcessorArray
    jregisterLevel header_ this
    jregisterMethod header_ "getTestShaders" (\() -> getTestShaders_impl this)
    jregisterMethod header_ "setShaderComposite" (\() -> setShaderComposite_impl this)
    pure this

initFields_ :: AppRendererShaderUpdaterFactory -> IO ()
initFields_ this = do
    jset this.nULL_SHADER_COMPOSITE_ARRAY ((jnewArray (0) javaNull))
    jset this.shaderCompositeArray ((jget (this).nULL_SHADER_COMPOSITE_ARRAY))
    jset this.shaderOpenGLProcessorArray ((jnewArray (0) javaNull))
    pure ()

new_ :: IO AppRendererShaderUpdaterFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AppRendererShaderUpdaterFactory -> IO ()
init_ this = do
    ShaderUpdater.init_ this.base
    initFields_ this


getInstance :: IO (AppRendererShaderUpdaterFactory)
getInstance = do
        pure (AppRendererShaderUpdaterFactory.instanceC)


getTestShaders :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ShaderOpenGLProcessor.ShaderOpenGLProcessor))
getTestShaders object_ = jmethod object_ "getTestShaders" (\() -> (getTestShaders_impl (javaCast object_ :: AppRendererShaderUpdaterFactory))) ()

getTestShaders_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ShaderOpenGLProcessor.ShaderOpenGLProcessor))
getTestShaders_super object_ = (getTestShaders_impl (javaCast object_ :: AppRendererShaderUpdaterFactory))

getTestShaders_impl :: AppRendererShaderUpdaterFactory -> IO (JavaArray (ShaderOpenGLProcessor.ShaderOpenGLProcessor))
getTestShaders_impl this = do
        pure ((jget (this).shaderOpenGLProcessorArray))


setShaderComposite :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setShaderComposite object_ a1 = jmethod object_ "setShaderComposite" (\() -> (setShaderComposite_impl (javaCast object_ :: AppRendererShaderUpdaterFactory))) () (jtoObject a1)

setShaderComposite_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setShaderComposite_super object_ a1 = (setShaderComposite_impl (javaCast object_ :: AppRendererShaderUpdaterFactory)) (jtoObject a1)

setShaderComposite_impl :: AppRendererShaderUpdaterFactory -> JavaObject -> IO (())
setShaderComposite_impl this object3dObject_ = do
        let object3d = jtoObject object3dObject_
        pure ()


