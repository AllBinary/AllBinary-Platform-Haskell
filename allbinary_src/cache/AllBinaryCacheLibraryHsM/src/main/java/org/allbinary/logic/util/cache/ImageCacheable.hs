{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
-- package org.allbinary.logic.util.cache
module ImageCacheable where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data ImageCacheable = ImageCacheable
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull ImageCacheable where
    javaNull = javaNullRecord "ImageCacheable"

instance JavaEquals ImageCacheable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCacheable where
    (==) = jrecordEquals

instance JavaObjectClass ImageCacheable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageCacheable
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = ImageCacheable header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ImageCacheable -> IO ()
initFields_ this = do
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_2 :: (JavaObjectClass o2) => String -> o2 -> IO ImageCacheable
new_2 name anyTypeObject_ = do
    this <- newRecord_
    init_2 this name anyTypeObject_
    pure this

init_2 :: (JavaObjectClass o2) => ImageCacheable -> String -> o2 -> IO ()
init_2 this name anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        initFields_ this
        pure ()
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: ImageCacheable))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: ImageCacheable))

getKey_impl :: ImageCacheable -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).name)))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageCacheable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ImageCacheable))

toString_impl :: ImageCacheable -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


