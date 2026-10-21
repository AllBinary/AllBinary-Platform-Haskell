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
module SecuredNativeLibraryInterface where

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

-- Java interface: the classes that implement it have these functions
data SecuredNativeLibraryInterface = SecuredNativeLibraryInterface
    { header_ :: JavaHeader
    }

instance JavaNull SecuredNativeLibraryInterface where
    javaNull = javaNullRecord "SecuredNativeLibraryInterface"

instance JavaEquals SecuredNativeLibraryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SecuredNativeLibraryInterface where
    (==) = jrecordEquals

instance JavaObjectClass SecuredNativeLibraryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SecuredNativeLibraryInterface
fromHeader_ header = SecuredNativeLibraryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SecuredNativeLibraryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
load :: (JavaObjectClass this_) => this_ -> IO (())
load object_ = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: SecuredNativeLibraryInterface))) ()

load_super :: (JavaObjectClass this_) => this_ -> IO (())
load_super object_ = (load_impl (javaCast object_ :: SecuredNativeLibraryInterface))

load_impl :: SecuredNativeLibraryInterface -> IO (())
load_impl this = javaAbstractMethod "load"


-- throws Exception
unload :: (JavaObjectClass this_) => this_ -> IO (())
unload object_ = jmethod object_ "unload" (\() -> (unload_impl (javaCast object_ :: SecuredNativeLibraryInterface))) ()

unload_super :: (JavaObjectClass this_) => this_ -> IO (())
unload_super object_ = (unload_impl (javaCast object_ :: SecuredNativeLibraryInterface))

unload_impl :: SecuredNativeLibraryInterface -> IO (())
unload_impl this = javaAbstractMethod "unload"


unlock :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
unlock object_ a1 = jmethod object_ "unlock" (\() -> (unlock_impl (javaCast object_ :: SecuredNativeLibraryInterface))) () a1

unlock_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
unlock_super object_ a1 = (unlock_impl (javaCast object_ :: SecuredNativeLibraryInterface)) a1

unlock_impl :: SecuredNativeLibraryInterface -> String -> IO (Bool)
unlock_impl this key = javaAbstractMethod "unlock"


getLibraryName :: (JavaObjectClass this_) => this_ -> IO (String)
getLibraryName object_ = jmethod object_ "getLibraryName" (\() -> (getLibraryName_impl (javaCast object_ :: SecuredNativeLibraryInterface))) ()

getLibraryName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLibraryName_super object_ = (getLibraryName_impl (javaCast object_ :: SecuredNativeLibraryInterface))

getLibraryName_impl :: SecuredNativeLibraryInterface -> IO (String)
getLibraryName_impl this = javaAbstractMethod "getLibraryName"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: SecuredNativeLibraryInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: SecuredNativeLibraryInterface))

getName_impl :: SecuredNativeLibraryInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


