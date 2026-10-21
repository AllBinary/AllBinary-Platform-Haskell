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
module CompositeShaderUpdater (module CompositeShaderUpdater, module ShaderUpdater) where

import ShaderUpdater hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, onSurfaceCreated, onSurfaceCreated_super, onSurfaceCreated_impl, onSurfaceDestroyed, onSurfaceDestroyed_super, onSurfaceDestroyed_impl, commonSeps, shaderStrings, instanceC, uniformBlockHandleArray, uniformBlockArray, uniformHandleArray, uniformArray, attributeHandleArray, attributeArray)
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
import qualified ShaderStrings -- same package or java.lang
import qualified EGLConfig -- javax.microedition.khronos.egl.EGLConfig
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ShaderUpdater

data CompositeShaderUpdater = CompositeShaderUpdater
    { header_ :: JavaHeader
    , base :: ShaderUpdater.ShaderUpdater
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , shaderStrings :: IORef (ShaderStrings.ShaderStrings)
    , uniformBlockHandleArray :: IORef (JavaArray (Int))
    , uniformBlockArray :: IORef (JavaArray (String))
    , uniformHandleArray :: IORef (JavaArray (Int))
    , uniformArray :: IORef (JavaArray (String))
    , attributeHandleArray :: IORef (JavaArray (Int))
    , attributeArray :: IORef (JavaArray (String))
    }

instance JavaNull CompositeShaderUpdater where
    javaNull = javaNullRecord "CompositeShaderUpdater"

instance JavaEquals CompositeShaderUpdater where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompositeShaderUpdater where
    (==) = jrecordEquals

instance JavaObjectClass CompositeShaderUpdater where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_4 (jio (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))) (jio (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))) (jio (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))) (jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY)))

newRecord_ :: IO CompositeShaderUpdater
newRecord_ = do
    base <- ShaderUpdater.newRecord_
    let header_ = base.header_
    commonSeps <- newIORef javaNull
    shaderStrings <- newIORef javaNull
    uniformBlockHandleArray <- newIORef javaNull
    uniformBlockArray <- newIORef javaNull
    uniformHandleArray <- newIORef javaNull
    uniformArray <- newIORef javaNull
    attributeHandleArray <- newIORef javaNull
    attributeArray <- newIORef javaNull
    let this = CompositeShaderUpdater header_ base commonSeps shaderStrings uniformBlockHandleArray uniformBlockArray uniformHandleArray uniformArray attributeHandleArray attributeArray
    jregisterLevel header_ this
    jregisterMethod header_ "onSurfaceCreated" (\() -> onSurfaceCreated_impl this)
    jregisterMethod header_ "onSurfaceDestroyed" (\() -> onSurfaceDestroyed_impl this)
    pure this

initFields_ :: CompositeShaderUpdater -> IO ()
initFields_ this = do
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.shaderStrings =<< (ShaderStrings.getInstance)
    jset this.uniformBlockHandleArray (javaNull)
    jset this.uniformBlockArray (javaNull)
    jset this.uniformHandleArray (javaNull)
    jset this.uniformArray (javaNull)
    jset this.attributeHandleArray (javaNull)
    jset this.attributeArray (javaNull)
    pure ()


getInstance :: IO (CompositeShaderUpdater)
getInstance = do
        pure (CompositeShaderUpdater.instanceC)

new_4 :: JavaArray (String) -> JavaArray (String) -> JavaArray (String) -> JavaArray (Int) -> IO CompositeShaderUpdater
new_4 uniformBlockArray uniformArray attributeArray attributeHandleArray = do
    this <- newRecord_
    init_4 this uniformBlockArray uniformArray attributeArray attributeHandleArray
    pure this

init_4 :: CompositeShaderUpdater -> JavaArray (String) -> JavaArray (String) -> JavaArray (String) -> JavaArray (Int) -> IO ()
init_4 this uniformBlockArray uniformArray attributeArray attributeHandleArray = do
        ShaderUpdater.init_ this.base
        initFields_ this
        jset (this).uniformBlockArray (uniformBlockArray)
        jset (this).uniformBlockHandleArray ((jnewArray ((jlength (jget (this).uniformBlockArray))) 0))
        jset (this).uniformArray (uniformArray)
        jset (this).uniformHandleArray ((jnewArray ((jlength (jget (this).uniformArray))) 0))
        jset (this).attributeArray (attributeArray)
        jset (this).attributeHandleArray (attributeHandleArray)
        pure ()


onSurfaceCreated :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> EGLConfig.EGLConfig -> Int -> IO (())
onSurfaceCreated object_ a1 a2 a3 = jmethod object_ "onSurfaceCreated" (\() -> (onSurfaceCreated_impl (javaCast object_ :: CompositeShaderUpdater))) () a1 a2 a3

onSurfaceCreated_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> EGLConfig.EGLConfig -> Int -> IO (())
onSurfaceCreated_super object_ a1 a2 a3 = (onSurfaceCreated_impl (javaCast object_ :: CompositeShaderUpdater)) a1 a2 a3

onSurfaceCreated_impl :: CompositeShaderUpdater -> GL10.GL10 -> EGLConfig.EGLConfig -> Int -> IO (())
onSurfaceCreated_impl this gl eglConfig programHandle = do
        pure ()


onSurfaceDestroyed :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
onSurfaceDestroyed object_ a1 = jmethod object_ "onSurfaceDestroyed" (\() -> (onSurfaceDestroyed_impl (javaCast object_ :: CompositeShaderUpdater))) () a1

onSurfaceDestroyed_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
onSurfaceDestroyed_super object_ a1 = (onSurfaceDestroyed_impl (javaCast object_ :: CompositeShaderUpdater)) a1

onSurfaceDestroyed_impl :: CompositeShaderUpdater -> GL10.GL10 -> IO (())
onSurfaceDestroyed_impl this gl = do
        pure ()


