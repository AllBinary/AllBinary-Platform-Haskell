{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
module CacheType where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data CacheType = CacheType
    { header_ :: JavaHeader
    , vendor :: IORef (String)
    , type_ :: IORef (String)
    }

instance JavaNull CacheType where
    javaNull = javaNullRecord "CacheType"

instance JavaEquals CacheType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CacheType where
    (==) = jrecordEquals

instance JavaObjectClass CacheType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CacheType
newRecord_ = do
    header_ <- newJavaHeader
    vendor <- newIORef ""
    type_ <- newIORef ""
    let this = CacheType header_ vendor type_
    jregisterLevel header_ this
    jregisterMethod header_ "getVendor" (\() -> getVendor_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CacheType -> IO ()
initFields_ this = do
    jset this.vendor (javaNull)
    jset this.type_ (javaNull)
    pure ()

new_2 :: String -> String -> IO CacheType
new_2 vendor type_ = do
    this <- newRecord_
    init_2 this vendor type_
    pure this

init_2 :: CacheType -> String -> String -> IO ()
init_2 this vendor type_ = do
        initFields_ this
        jset (this).vendor (vendor)
        jset (this).type_ (type_)
        pure ()


getVendor :: (JavaObjectClass this_) => this_ -> IO (String)
getVendor object_ = jmethod object_ "getVendor" (\() -> (getVendor_impl (javaCast object_ :: CacheType))) ()

getVendor_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVendor_super object_ = (getVendor_impl (javaCast object_ :: CacheType))

getVendor_impl :: CacheType -> IO (String)
getVendor_impl this = do
        pure ((jget (this).vendor))


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: CacheType))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: CacheType))

getType_impl :: CacheType -> IO (String)
getType_impl this = do
        pure ((jget (this).type_))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CacheType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CacheType))

toString_impl :: CacheType -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "CacheType: Vendor: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (CacheType.getVendor this)))
        Control.Monad.void (StringMaker.append stringBuffer " Type: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (CacheType.getType this)))
        (StringMaker.toString stringBuffer)


