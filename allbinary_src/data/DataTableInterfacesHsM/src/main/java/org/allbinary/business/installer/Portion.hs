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
-- package org.allbinary.business.installer
module Portion where

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
import qualified HashMap -- java.util.HashMap

data Portion = Portion
    { header_ :: JavaHeader
    , current :: IORef (Int)
    , total :: IORef (Int)
    }

instance JavaNull Portion where
    javaNull = javaNullRecord "Portion"

instance JavaEquals Portion where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Portion where
    (==) = jrecordEquals

instance JavaObjectClass Portion where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Portion
newRecord_ = do
    header_ <- newJavaHeader
    current <- newIORef javaNull
    total <- newIORef javaNull
    let this = Portion header_ current total
    jregisterLevel header_ this
    jregisterMethod header_ "getCurrent" (\() -> getCurrent_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    pure this

initFields_ :: Portion -> IO ()
initFields_ this = do
    jset this.current (javaNull)
    jset this.total (javaNull)
    pure ()

new_1 :: HashMap.HashMap -> IO Portion
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: Portion -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).current ((javaCast (jio (HashMap.get hashMap "current")) :: Int))
        jset (this).total ((javaCast (jio (HashMap.get hashMap "total")) :: Int))
        pure ()


getCurrent :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrent object_ = jmethod object_ "getCurrent" (\() -> (getCurrent_impl (javaCast object_ :: Portion))) ()

getCurrent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrent_super object_ = (getCurrent_impl (javaCast object_ :: Portion))

getCurrent_impl :: Portion -> IO (Int)
getCurrent_impl this = do
        pure ((jget (this).current))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: Portion))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: Portion))

getTotal_impl :: Portion -> IO (Int)
getTotal_impl this = do
        pure ((jget (this).total))


