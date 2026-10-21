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
-- package org.allbinary.logic.system.security.licensing
module LockableFeature where

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

data LockableFeature = LockableFeature
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull LockableFeature where
    javaNull = javaNullRecord "LockableFeature"

instance JavaEquals LockableFeature where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LockableFeature where
    (==) = jrecordEquals

instance JavaObjectClass LockableFeature where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LockableFeature
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = LockableFeature header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: LockableFeature -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO LockableFeature
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: LockableFeature -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).name (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: LockableFeature))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: LockableFeature))

getName_impl :: LockableFeature -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


