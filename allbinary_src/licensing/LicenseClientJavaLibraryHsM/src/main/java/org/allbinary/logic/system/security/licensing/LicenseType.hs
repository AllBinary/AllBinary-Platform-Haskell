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
module LicenseType where

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

data LicenseType = LicenseType
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull LicenseType where
    javaNull = javaNullRecord "LicenseType"

instance JavaEquals LicenseType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseType where
    (==) = jrecordEquals

instance JavaObjectClass LicenseType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseType
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = LicenseType header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: LicenseType -> IO ()
initFields_ this = do
    jset this.name ("")
    pure ()

new_1 :: String -> IO LicenseType
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: LicenseType -> String -> IO ()
init_1 this name = do
        initFields_ this
        Control.Monad.void (LicenseType.setName this name)
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: LicenseType))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: LicenseType)) a1

setName_impl :: LicenseType -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: LicenseType))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: LicenseType))

getName_impl :: LicenseType -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


