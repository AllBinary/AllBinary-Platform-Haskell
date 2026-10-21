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
module ShaderManager where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data ShaderManager = ShaderManager
    { header_ :: JavaHeader
    , lOAD_SHADER :: IORef (String)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gL_VERTEX_SHADER :: IORef (Int)
    , gL_FRAGMENT_SHADER :: IORef (Int)
    }

instance JavaNull ShaderManager where
    javaNull = javaNullRecord "ShaderManager"

instance JavaEquals ShaderManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShaderManager where
    (==) = jrecordEquals

instance JavaObjectClass ShaderManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_2 (Prelude.negate 1) (Prelude.negate 1)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShaderManager
newRecord_ = do
    header_ <- newJavaHeader
    lOAD_SHADER <- newIORef ""
    commonStrings <- newIORef javaNull
    gL_VERTEX_SHADER <- newIORef 0
    gL_FRAGMENT_SHADER <- newIORef 0
    let this = ShaderManager header_ lOAD_SHADER commonStrings gL_VERTEX_SHADER gL_FRAGMENT_SHADER
    jregisterLevel header_ this
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "loadShader" (\() -> loadShader_impl this)
    pure this

initFields_ :: ShaderManager -> IO ()
initFields_ this = do
    jset this.lOAD_SHADER ("loadShader")
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gL_VERTEX_SHADER (0)
    jset this.gL_FRAGMENT_SHADER (0)
    pure ()


getInstance :: IO (ShaderManager)
getInstance = do
        pure (ShaderManager.instance_)

new_2 :: Int -> Int -> IO ShaderManager
new_2 gL_VERTEX_SHADER gL_FRAGMENT_SHADER = do
    this <- newRecord_
    init_2 this gL_VERTEX_SHADER gL_FRAGMENT_SHADER
    pure this

init_2 :: ShaderManager -> Int -> Int -> IO ()
init_2 this gL_VERTEX_SHADER gL_FRAGMENT_SHADER = do
        initFields_ this
        jset (this).gL_VERTEX_SHADER (gL_VERTEX_SHADER)
        jset (this).gL_FRAGMENT_SHADER (gL_FRAGMENT_SHADER)
        pure ()


load :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> JavaArray (String) -> Int -> IO (Int)
load object_ a1 a2 a3 a4 = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: ShaderManager))) () a1 a2 a3 a4

load_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> JavaArray (String) -> Int -> IO (Int)
load_super object_ a1 a2 a3 a4 = (load_impl (javaCast object_ :: ShaderManager)) a1 a2 a3 a4

load_impl :: ShaderManager -> GL10.GL10 -> String -> JavaArray (String) -> Int -> IO (Int)
load_impl this gl resource shaderAsStringArray shaderType = do
        pure ((Prelude.negate 1))


loadShader :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> BasicArrayList.BasicArrayList -> Int -> IO (Int)
loadShader object_ a1 a2 a3 a4 = jmethod object_ "loadShader" (\() -> (loadShader_impl (javaCast object_ :: ShaderManager))) () a1 a2 a3 a4

loadShader_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> BasicArrayList.BasicArrayList -> Int -> IO (Int)
loadShader_super object_ a1 a2 a3 a4 = (loadShader_impl (javaCast object_ :: ShaderManager)) a1 a2 a3 a4

loadShader_impl :: ShaderManager -> GL10.GL10 -> String -> BasicArrayList.BasicArrayList -> Int -> IO (Int)
loadShader_impl this gl resource stringList shaderType = do
        pure ((Prelude.negate 1))


