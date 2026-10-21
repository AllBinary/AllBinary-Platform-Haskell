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
module UniformLightPositionOpenGLProcessor (module UniformLightPositionOpenGLProcessor, module OpenGLObject3dProcessor) where

import OpenGLObject3dProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl)
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
import qualified Any -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified OpenGLObject3dProcessor

data UniformLightPositionOpenGLProcessor = UniformLightPositionOpenGLProcessor
    { header_ :: JavaHeader
    , base :: OpenGLObject3dProcessor.OpenGLObject3dProcessor
    }

instance JavaNull UniformLightPositionOpenGLProcessor where
    javaNull = javaNullRecord "UniformLightPositionOpenGLProcessor"

instance JavaEquals UniformLightPositionOpenGLProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UniformLightPositionOpenGLProcessor where
    (==) = jrecordEquals

instance JavaObjectClass UniformLightPositionOpenGLProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UniformLightPositionOpenGLProcessor
newRecord_ = do
    base <- OpenGLObject3dProcessor.newRecord_
    let header_ = base.header_
    let this = UniformLightPositionOpenGLProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: UniformLightPositionOpenGLProcessor -> IO ()
initFields_ this = do
    pure ()

new_2 :: ShaderComposite.ShaderComposite -> Int -> IO UniformLightPositionOpenGLProcessor
new_2 shaderComposite handleIndex = do
    this <- newRecord_
    init_2 this shaderComposite handleIndex
    pure this

init_2 :: UniformLightPositionOpenGLProcessor -> ShaderComposite.ShaderComposite -> Int -> IO ()
init_2 this shaderComposite handleIndex = do
        OpenGLObject3dProcessor.init_ this.base
        initFields_ this
        pure ()
        pure ()


process :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> GL10.GL10 -> o2 -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: UniformLightPositionOpenGLProcessor))) () a1 (jtoObject a2)

process_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> GL10.GL10 -> o2 -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: UniformLightPositionOpenGLProcessor)) a1 (jtoObject a2)

process_impl :: UniformLightPositionOpenGLProcessor -> GL10.GL10 -> JavaObject -> IO (())
process_impl this gl unusedObject_ = do
        let unused = jtoObject unusedObject_
        pure ()


