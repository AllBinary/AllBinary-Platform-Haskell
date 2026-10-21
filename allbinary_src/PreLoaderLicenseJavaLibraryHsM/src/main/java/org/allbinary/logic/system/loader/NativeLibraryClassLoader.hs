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
-- package org.allbinary.logic.system.loader
module NativeLibraryClassLoader (module NativeLibraryClassLoader, module ClassLoader) where

import ClassLoader hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, message)
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
import qualified ClassLoader

data NativeLibraryClassLoader = NativeLibraryClassLoader
    { header_ :: JavaHeader
    , base :: ClassLoader.ClassLoader
    , message :: IORef (String)
    }

instance JavaNull NativeLibraryClassLoader where
    javaNull = javaNullRecord "NativeLibraryClassLoader"

instance JavaEquals NativeLibraryClassLoader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NativeLibraryClassLoader where
    (==) = jrecordEquals

instance JavaObjectClass NativeLibraryClassLoader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NativeLibraryClassLoader
newRecord_ = do
    base <- ClassLoader.newRecord_
    let header_ = base.header_
    message <- newIORef ""
    let this = NativeLibraryClassLoader header_ base message
    jregisterLevel header_ this
    pure this

initFields_ :: NativeLibraryClassLoader -> IO ()
initFields_ this = do
    jset this.message ("This Class Loader Does Not Load Classes - Only For Loading and Unloading of Native Libraries")
    pure ()

new_1 :: ClassLoader.ClassLoader -> IO NativeLibraryClassLoader
new_1 parent = do
    this <- newRecord_
    init_1 this parent
    pure this

init_1 :: NativeLibraryClassLoader -> ClassLoader.ClassLoader -> IO ()
init_1 this parent = do
        ClassLoader.init_1 this.base (parent)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


