{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
module ShaderOpenGLProcessor (module ShaderOpenGLProcessor, module OpenGLProcessor) where

import OpenGLProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process0, process0_super, process0_impl, process1, process1_super, process1_impl, process, process_super, process_impl, process2, process2_super, process2_impl, process3, process3_super, process3_impl)
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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified OpenGLProcessor -- org.allbinary.graphics.opengles.OpenGLProcessor

data ShaderOpenGLProcessor = ShaderOpenGLProcessor
    { header_ :: JavaHeader
    , base :: OpenGLProcessor.OpenGLProcessor
    }

instance JavaNull ShaderOpenGLProcessor where
    javaNull = javaNullRecord "ShaderOpenGLProcessor"

instance JavaEquals ShaderOpenGLProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShaderOpenGLProcessor where
    (==) = jrecordEquals

instance JavaObjectClass ShaderOpenGLProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ShaderOpenGLProcessor
newRecord_ = do
    base <- OpenGLProcessor.newRecord_
    let header_ = base.header_
    let this = ShaderOpenGLProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process0" (\() -> process0_impl this)
    jregisterMethod header_ "process1" (\() -> process1_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "process2" (\() -> process2_impl this)
    jregisterMethod header_ "process3" (\() -> process3_impl this)
    pure this

initFields_ :: ShaderOpenGLProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ShaderOpenGLProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShaderOpenGLProcessor -> IO ()
init_ this = do
        OpenGLProcessor.init_ this.base
        initFields_ this
        pure ()
        pure ()


process0 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process0 object_ a1 = jmethod object_ "process0" (\() -> (process0_impl (javaCast object_ :: ShaderOpenGLProcessor))) () a1

process0_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process0_super object_ a1 = (process0_impl (javaCast object_ :: ShaderOpenGLProcessor)) a1

process0_impl :: ShaderOpenGLProcessor -> GL10.GL10 -> IO (())
process0_impl this gl = do
        pure ()


process1 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process1 object_ a1 = jmethod object_ "process1" (\() -> (process1_impl (javaCast object_ :: ShaderOpenGLProcessor))) () a1

process1_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process1_super object_ a1 = (process1_impl (javaCast object_ :: ShaderOpenGLProcessor)) a1

process1_impl :: ShaderOpenGLProcessor -> GL10.GL10 -> IO (())
process1_impl this gl = do
        pure ()


process :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ShaderOpenGLProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: ShaderOpenGLProcessor)) a1

process_impl :: ShaderOpenGLProcessor -> GL10.GL10 -> IO (())
process_impl this gl = do
        pure ()


process2 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process2 object_ a1 = jmethod object_ "process2" (\() -> (process2_impl (javaCast object_ :: ShaderOpenGLProcessor))) () a1

process2_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process2_super object_ a1 = (process2_impl (javaCast object_ :: ShaderOpenGLProcessor)) a1

process2_impl :: ShaderOpenGLProcessor -> GL10.GL10 -> IO (())
process2_impl this gl = do
        pure ()


process3 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process3 object_ a1 = jmethod object_ "process3" (\() -> (process3_impl (javaCast object_ :: ShaderOpenGLProcessor))) () a1

process3_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process3_super object_ a1 = (process3_impl (javaCast object_ :: ShaderOpenGLProcessor)) a1

process3_impl :: ShaderOpenGLProcessor -> GL10.GL10 -> IO (())
process3_impl this gl = do
        pure ()


