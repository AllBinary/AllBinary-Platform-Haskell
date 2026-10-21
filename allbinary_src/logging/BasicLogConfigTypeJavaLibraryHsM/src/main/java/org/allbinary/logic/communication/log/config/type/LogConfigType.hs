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
-- package org.allbinary.logic.communication.log.config.type
module LogConfigType where

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

data LogConfigType = LogConfigType
    { header_ :: JavaHeader
    , name :: IORef (String)
    , description :: IORef (String)
    }

instance JavaNull LogConfigType where
    javaNull = javaNullRecord "LogConfigType"

instance JavaEquals LogConfigType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogConfigType where
    (==) = jrecordEquals

instance JavaObjectClass LogConfigType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogConfigType
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    description <- newIORef ""
    let this = LogConfigType header_ name description
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getDescription" (\() -> getDescription_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setDescription" (\() -> setDescription_impl this)
    pure this

initFields_ :: LogConfigType -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.description (javaNull)
    pure ()

new_2 :: String -> String -> IO LogConfigType
new_2 name description = do
    this <- newRecord_
    init_2 this name description
    pure this

init_2 :: LogConfigType -> String -> String -> IO ()
init_2 this name description = do
        initFields_ this
        jset (this).name (name)
        jset (this).description (description)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: LogConfigType))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: LogConfigType))

getName_impl :: LogConfigType -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: LogConfigType))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: LogConfigType))

getDescription_impl :: LogConfigType -> IO (String)
getDescription_impl this = do
        pure ((jget (this).description))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: LogConfigType))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: LogConfigType)) a1

setName_impl :: LogConfigType -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        pure ()


setDescription :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription object_ a1 = jmethod object_ "setDescription" (\() -> (setDescription_impl (javaCast object_ :: LogConfigType))) () a1

setDescription_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription_super object_ a1 = (setDescription_impl (javaCast object_ :: LogConfigType)) a1

setDescription_impl :: LogConfigType -> String -> IO (())
setDescription_impl this value = do
        jset (this).description (value)
        pure ()


