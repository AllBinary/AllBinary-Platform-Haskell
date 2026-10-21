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
-- package org.allbinary.game.resource
module ResourceLoadingLevel where

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

data ResourceLoadingLevel = ResourceLoadingLevel
    { header_ :: JavaHeader
    , name :: IORef (String)
    , level :: IORef (Int)
    }

instance JavaNull ResourceLoadingLevel where
    javaNull = javaNullRecord "ResourceLoadingLevel"

instance JavaEquals ResourceLoadingLevel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResourceLoadingLevel where
    (==) = jrecordEquals

instance JavaObjectClass ResourceLoadingLevel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ResourceLoadingLevel
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    level <- newIORef 0
    let this = ResourceLoadingLevel header_ name level
    jregisterLevel header_ this
    jregisterMethod header_ "getLevel" (\() -> getLevel_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: ResourceLoadingLevel -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.level (0)
    pure ()

new_2 :: String -> Int -> IO ResourceLoadingLevel
new_2 name level = do
    this <- newRecord_
    init_2 this name level
    pure this

init_2 :: ResourceLoadingLevel -> String -> Int -> IO ()
init_2 this name level = do
        initFields_ this
        jset (this).name (name)
        jset (this).level (level)
        pure ()


getLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: ResourceLoadingLevel))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: ResourceLoadingLevel))

getLevel_impl :: ResourceLoadingLevel -> IO (Int)
getLevel_impl this = do
        pure ((jget (this).level))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: ResourceLoadingLevel))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: ResourceLoadingLevel))

getName_impl :: ResourceLoadingLevel -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


