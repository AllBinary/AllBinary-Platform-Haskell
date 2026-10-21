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
module OpenGLVUtilBase where

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

data OpenGLVUtilBase = OpenGLVUtilBase
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLVUtilBase where
    javaNull = javaNullRecord "OpenGLVUtilBase"

instance JavaEquals OpenGLVUtilBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLVUtilBase where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLVUtilBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLVUtilBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLVUtilBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "glTexEnvix" (\() -> glTexEnvix_impl this)
    jregisterMethod header_ "glTexParameterix" (\() -> glTexParameterix_impl this)
    jregisterMethod header_ "glGenerateMipmap" (\() -> glGenerateMipmap_impl this)
    pure this

initFields_ :: OpenGLVUtilBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLVUtilBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLVUtilBase -> IO ()
init_ this = do
    initFields_ this


glTexEnvix :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
glTexEnvix object_ a1 a2 a3 a4 = jmethod object_ "glTexEnvix" (\() -> (glTexEnvix_impl (javaCast object_ :: OpenGLVUtilBase))) () a1 a2 a3 a4

glTexEnvix_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
glTexEnvix_super object_ a1 a2 a3 a4 = (glTexEnvix_impl (javaCast object_ :: OpenGLVUtilBase)) a1 a2 a3 a4

glTexEnvix_impl :: OpenGLVUtilBase -> GL10.GL10 -> Int -> Int -> Int -> IO (())
glTexEnvix_impl this gl target pname param = do
        pure ()


glTexParameterix :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
glTexParameterix object_ a1 a2 a3 a4 = jmethod object_ "glTexParameterix" (\() -> (glTexParameterix_impl (javaCast object_ :: OpenGLVUtilBase))) () a1 a2 a3 a4

glTexParameterix_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
glTexParameterix_super object_ a1 a2 a3 a4 = (glTexParameterix_impl (javaCast object_ :: OpenGLVUtilBase)) a1 a2 a3 a4

glTexParameterix_impl :: OpenGLVUtilBase -> GL10.GL10 -> Int -> Int -> Int -> IO (())
glTexParameterix_impl this gl target pname param = do
        pure ()


glGenerateMipmap :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Bool -> IO (())
glGenerateMipmap object_ a1 a2 a3 a4 = jmethod object_ "glGenerateMipmap" (\() -> (glGenerateMipmap_impl (javaCast object_ :: OpenGLVUtilBase))) () a1 a2 a3 a4

glGenerateMipmap_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Bool -> IO (())
glGenerateMipmap_super object_ a1 a2 a3 a4 = (glGenerateMipmap_impl (javaCast object_ :: OpenGLVUtilBase)) a1 a2 a3 a4

glGenerateMipmap_impl :: OpenGLVUtilBase -> GL10.GL10 -> Int -> Int -> Bool -> IO (())
glGenerateMipmap_impl this gl textureId target generateMipMap = do
        pure ()


