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
-- package org.allbinary.logic
module NullUtil where

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
import qualified Class -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType

data NullUtil = NullUtil
    { header_ :: JavaHeader
    , nULL_OBJECT :: IORef (Any.Any)
    , nULL_CLASS :: IORef (Class.Class)
    , nULL_OBJECT_ARRAY :: IORef (JavaArray (Any.Any))
    , nULL_CHAR_ARRAY :: IORef (JavaArray (Char))
    , nULL_BYTE_ARRAY :: IORef (JavaArray (Int8))
    , nULL_SHORT_ARRAY_ARRAY :: IORef (JavaArray (JavaArray (Int16)))
    , nULL_INT_ARRAY :: IORef (JavaArray (Int))
    , nULL_INT_ARRAY_ARRAY :: IORef (JavaArray (JavaArray (Int)))
    , nULL_INT_ARRAY_ARRAY_ARRAY :: IORef (JavaArray (JavaArray (JavaArray (Int))))
    , nULL_FLOAT_ARRAY :: IORef (JavaArray (Float))
    }

instance JavaNull NullUtil where
    javaNull = javaNullRecord "NullUtil"

instance JavaEquals NullUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullUtil where
    (==) = jrecordEquals

instance JavaObjectClass NullUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullUtil
newRecord_ = do
    header_ <- newJavaHeader
    nULL_OBJECT <- newIORef javaNull
    nULL_CLASS <- newIORef javaNull
    nULL_OBJECT_ARRAY <- newIORef javaNull
    nULL_CHAR_ARRAY <- newIORef javaNull
    nULL_BYTE_ARRAY <- newIORef javaNull
    nULL_SHORT_ARRAY_ARRAY <- newIORef javaNull
    nULL_INT_ARRAY <- newIORef javaNull
    nULL_INT_ARRAY_ARRAY <- newIORef javaNull
    nULL_INT_ARRAY_ARRAY_ARRAY <- newIORef javaNull
    nULL_FLOAT_ARRAY <- newIORef javaNull
    let this = NullUtil header_ nULL_OBJECT nULL_CLASS nULL_OBJECT_ARRAY nULL_CHAR_ARRAY nULL_BYTE_ARRAY nULL_SHORT_ARRAY_ARRAY nULL_INT_ARRAY nULL_INT_ARRAY_ARRAY nULL_INT_ARRAY_ARRAY_ARRAY nULL_FLOAT_ARRAY
    jregisterLevel header_ this
    pure this

initFields_ :: NullUtil -> IO ()
initFields_ this = do
    jset this.nULL_OBJECT =<< (Any.new_)
    jset this.nULL_CLASS =<< (jobjectGetClass (jget (this).nULL_OBJECT))
    jset this.nULL_OBJECT_ARRAY ((jnewArray (0) javaNull))
    jset this.nULL_CHAR_ARRAY ((jnewArray (0) '\0'))
    jset this.nULL_BYTE_ARRAY ((jnewArray (0) 0))
    jset this.nULL_SHORT_ARRAY_ARRAY ((jnewArray2 (0) (0) 0))
    jset this.nULL_INT_ARRAY ((jnewArray (0) 0))
    jset this.nULL_INT_ARRAY_ARRAY ((jnewArray2 (0) (0) 0))
    jset this.nULL_INT_ARRAY_ARRAY_ARRAY ((jnewArray3 (0) (0) (0) 0))
    jset this.nULL_FLOAT_ARRAY ((jnewArray (0) 0.0))
    pure ()

new_ :: IO NullUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (NullUtil)
getInstance = do
        pure (NullUtil.instance_)


