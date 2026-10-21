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
module LicenseServerInitFileUtil where

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

data LicenseServerInitFileUtil = LicenseServerInitFileUtil
    { header_ :: JavaHeader
    }

instance JavaNull LicenseServerInitFileUtil where
    javaNull = javaNullRecord "LicenseServerInitFileUtil"

instance JavaEquals LicenseServerInitFileUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseServerInitFileUtil where
    (==) = jrecordEquals

instance JavaObjectClass LicenseServerInitFileUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseServerInitFileUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LicenseServerInitFileUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    pure this

initFields_ :: LicenseServerInitFileUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LicenseServerInitFileUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseServerInitFileUtil -> IO ()
init_ this = do
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: LicenseServerInitFileUtil))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: LicenseServerInitFileUtil))

init_impl :: LicenseServerInitFileUtil -> IO (())
init_impl this = do
        pure ()


write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: LicenseServerInitFileUtil))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: LicenseServerInitFileUtil))

write_impl :: LicenseServerInitFileUtil -> IO (())
write_impl this = do
        pure ()


