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
-- package org.allbinary.graphics.opengles
module TextureAttributePointerOpenGLProcessor (module TextureAttributePointerOpenGLProcessor, module ObjectThreedOpenGLProcessor) where

import ObjectThreedOpenGLProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, instance_)
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
import qualified Any -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified ObjectThreedOpenGLProcessor -- org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor

data TextureAttributePointerOpenGLProcessor = TextureAttributePointerOpenGLProcessor
    { header_ :: JavaHeader
    , base :: ObjectThreedOpenGLProcessor.ObjectThreedOpenGLProcessor
    }

instance JavaNull TextureAttributePointerOpenGLProcessor where
    javaNull = javaNullRecord "TextureAttributePointerOpenGLProcessor"

instance JavaEquals TextureAttributePointerOpenGLProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TextureAttributePointerOpenGLProcessor where
    (==) = jrecordEquals

instance JavaObjectClass TextureAttributePointerOpenGLProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO TextureAttributePointerOpenGLProcessor
newRecord_ = do
    base <- ObjectThreedOpenGLProcessor.newRecord_
    let header_ = base.header_
    let this = TextureAttributePointerOpenGLProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: TextureAttributePointerOpenGLProcessor -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (TextureAttributePointerOpenGLProcessor)
getInstance = do
        pure (TextureAttributePointerOpenGLProcessor.instance_)

new_ :: IO TextureAttributePointerOpenGLProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TextureAttributePointerOpenGLProcessor -> IO ()
init_ this = do
        ObjectThreedOpenGLProcessor.init_ this.base
        initFields_ this
        pure ()
        pure ()


process :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> GL10.GL10 -> o2 -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: TextureAttributePointerOpenGLProcessor))) () a1 (jtoObject a2)

process_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> GL10.GL10 -> o2 -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: TextureAttributePointerOpenGLProcessor)) a1 (jtoObject a2)

process_impl :: TextureAttributePointerOpenGLProcessor -> GL10.GL10 -> JavaObject -> IO (())
process_impl this gl anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


