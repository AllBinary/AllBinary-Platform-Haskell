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
-- package org.allbinary.media.audio
module SoundsFactoryInterface where

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
import qualified Sound -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data SoundsFactoryInterface = SoundsFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull SoundsFactoryInterface where
    javaNull = javaNullRecord "SoundsFactoryInterface"

instance JavaEquals SoundsFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SoundsFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass SoundsFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SoundsFactoryInterface
fromHeader_ header = SoundsFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SoundsFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: SoundsFactoryInterface))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: SoundsFactoryInterface))

init_impl :: SoundsFactoryInterface -> IO (())
init_impl this = javaAbstractMethod "init"


-- throws Exception
getSoundInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray object_ = jmethod object_ "getSoundInterfaceArray" (\() -> (getSoundInterfaceArray_impl (javaCast object_ :: SoundsFactoryInterface))) ()

getSoundInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray_super object_ = (getSoundInterfaceArray_impl (javaCast object_ :: SoundsFactoryInterface))

getSoundInterfaceArray_impl :: SoundsFactoryInterface -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray_impl this = javaAbstractMethod "getSoundInterfaceArray"


setInitialized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized object_ a1 = jmethod object_ "setInitialized" (\() -> (setInitialized_impl (javaCast object_ :: SoundsFactoryInterface))) () a1

setInitialized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized_super object_ a1 = (setInitialized_impl (javaCast object_ :: SoundsFactoryInterface)) a1

setInitialized_impl :: SoundsFactoryInterface -> Bool -> IO (())
setInitialized_impl this initialized = javaAbstractMethod "setInitialized"


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: SoundsFactoryInterface))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: SoundsFactoryInterface))

isInitialized_impl :: SoundsFactoryInterface -> IO (Bool)
isInitialized_impl this = javaAbstractMethod "isInitialized"


