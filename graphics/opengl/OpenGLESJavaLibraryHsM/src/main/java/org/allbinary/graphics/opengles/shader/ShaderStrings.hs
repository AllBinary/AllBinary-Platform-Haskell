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
module ShaderStrings where

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

data ShaderStrings = ShaderStrings
    { header_ :: JavaHeader
    , nO_PROGRAM_HANDLE :: IORef (String)
    , uNIFORM_BLOCK_HANDLE :: IORef (String)
    , uNIFORM_HANDLE :: IORef (String)
    , uNIFORM_ATTRIBUTE_HANDLE :: IORef (String)
    }

instance JavaNull ShaderStrings where
    javaNull = javaNullRecord "ShaderStrings"

instance JavaEquals ShaderStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShaderStrings where
    (==) = jrecordEquals

instance JavaObjectClass ShaderStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShaderStrings
newRecord_ = do
    header_ <- newJavaHeader
    nO_PROGRAM_HANDLE <- newIORef ""
    uNIFORM_BLOCK_HANDLE <- newIORef ""
    uNIFORM_HANDLE <- newIORef ""
    uNIFORM_ATTRIBUTE_HANDLE <- newIORef ""
    let this = ShaderStrings header_ nO_PROGRAM_HANDLE uNIFORM_BLOCK_HANDLE uNIFORM_HANDLE uNIFORM_ATTRIBUTE_HANDLE
    jregisterLevel header_ this
    pure this

initFields_ :: ShaderStrings -> IO ()
initFields_ this = do
    jset this.nO_PROGRAM_HANDLE ("No program handle")
    jset this.uNIFORM_BLOCK_HANDLE ("Uniform Block Handle: ")
    jset this.uNIFORM_HANDLE ("Uniform Handle: ")
    jset this.uNIFORM_ATTRIBUTE_HANDLE ("Uniform Attribute Handle: ")
    pure ()

new_ :: IO ShaderStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShaderStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ShaderStrings)
getInstance = do
        pure (ShaderStrings.instance_)


