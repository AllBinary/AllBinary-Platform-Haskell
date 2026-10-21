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
-- package org.allbinary.logic.system.os
module SystemProperties where

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
import qualified JsType -- jsinterop.annotations.JsType

data SystemProperties = SystemProperties
    { header_ :: JavaHeader
    , oS_NAME :: IORef (String)
    , oS_ARCH :: IORef (String)
    , oS_VERSION :: IORef (String)
    }

instance JavaNull SystemProperties where
    javaNull = javaNullRecord "SystemProperties"

instance JavaEquals SystemProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SystemProperties where
    (==) = jrecordEquals

instance JavaObjectClass SystemProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SystemProperties
newRecord_ = do
    header_ <- newJavaHeader
    oS_NAME <- newIORef ""
    oS_ARCH <- newIORef ""
    oS_VERSION <- newIORef ""
    let this = SystemProperties header_ oS_NAME oS_ARCH oS_VERSION
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getArch" (\() -> getArch_impl this)
    jregisterMethod header_ "getVersion" (\() -> getVersion_impl this)
    jregisterMethod header_ "getUserHomePath" (\() -> getUserHomePath_impl this)
    pure this

initFields_ :: SystemProperties -> IO ()
initFields_ this = do
    jset this.oS_NAME ("os.name")
    jset this.oS_ARCH ("os.arch")
    jset this.oS_VERSION ("os.version")
    pure ()


getInstance :: IO (SystemProperties)
getInstance = do
        pure (SystemProperties.instance_)

new_ :: IO SystemProperties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SystemProperties -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: SystemProperties))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: SystemProperties))

getName_impl :: SystemProperties -> IO (String)
getName_impl this = do
        pure ((jget (this).oS_NAME))


getArch :: (JavaObjectClass this_) => this_ -> IO (String)
getArch object_ = jmethod object_ "getArch" (\() -> (getArch_impl (javaCast object_ :: SystemProperties))) ()

getArch_super :: (JavaObjectClass this_) => this_ -> IO (String)
getArch_super object_ = (getArch_impl (javaCast object_ :: SystemProperties))

getArch_impl :: SystemProperties -> IO (String)
getArch_impl this = do
        pure ((jget (this).oS_ARCH))


getVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion object_ = jmethod object_ "getVersion" (\() -> (getVersion_impl (javaCast object_ :: SystemProperties))) ()

getVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion_super object_ = (getVersion_impl (javaCast object_ :: SystemProperties))

getVersion_impl :: SystemProperties -> IO (String)
getVersion_impl this = do
        pure ((jget (this).oS_VERSION))


getUserHomePath :: (JavaObjectClass this_) => this_ -> IO (String)
getUserHomePath object_ = jmethod object_ "getUserHomePath" (\() -> (getUserHomePath_impl (javaCast object_ :: SystemProperties))) ()

getUserHomePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserHomePath_super object_ = (getUserHomePath_impl (javaCast object_ :: SystemProperties))

getUserHomePath_impl :: SystemProperties -> IO (String)
getUserHomePath_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


