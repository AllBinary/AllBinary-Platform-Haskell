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
-- package dynamic
module NativeLibraryHelper where

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

data NativeLibraryHelper = NativeLibraryHelper
    { header_ :: JavaHeader
    , library :: IORef (String)
    }

instance JavaNull NativeLibraryHelper where
    javaNull = javaNullRecord "NativeLibraryHelper"

instance JavaEquals NativeLibraryHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NativeLibraryHelper where
    (==) = jrecordEquals

instance JavaObjectClass NativeLibraryHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NativeLibraryHelper
newRecord_ = do
    header_ <- newJavaHeader
    library <- newIORef ""
    let this = NativeLibraryHelper header_ library
    jregisterLevel header_ this
    jregisterMethod header_ "load" (\() -> load_impl this)
    pure this

initFields_ :: NativeLibraryHelper -> IO ()
initFields_ this = do
    jset this.library (javaNull)
    pure ()

new_1 :: String -> IO NativeLibraryHelper
new_1 library = do
    this <- newRecord_
    init_1 this library
    pure this

init_1 :: NativeLibraryHelper -> String -> IO ()
init_1 this library = do
        initFields_ this
        jset (this).library (library)
        pure ()


load :: (JavaObjectClass this_) => this_ -> IO (())
load object_ = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: NativeLibraryHelper))) ()

load_super :: (JavaObjectClass this_) => this_ -> IO (())
load_super object_ = (load_impl (javaCast object_ :: NativeLibraryHelper))

load_impl :: NativeLibraryHelper -> IO (())
load_impl this = do
        Control.Monad.void (System.loadLibrary (jget (this).library))
        pure ()


