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
module BaseSoundsFactory where

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
import qualified SoundsFactoryInterface

-- implements SoundsFactoryInterface
data BaseSoundsFactory = BaseSoundsFactory
    { header_ :: JavaHeader
    , initialized :: IORef (Bool)
    }

instance JavaNull BaseSoundsFactory where
    javaNull = javaNullRecord "BaseSoundsFactory"

instance JavaEquals BaseSoundsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseSoundsFactory where
    (==) = jrecordEquals

instance JavaObjectClass BaseSoundsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseSoundsFactory
newRecord_ = do
    header_ <- newJavaHeader
    initialized <- newIORef False
    let this = BaseSoundsFactory header_ initialized
    jregisterLevel header_ this
    SoundsFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getSoundInterfaceArray" (\() -> getSoundInterfaceArray_impl this)
    jregisterMethod header_ "setInitialized" (\() -> setInitialized_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    pure this

initFields_ :: BaseSoundsFactory -> IO ()
initFields_ this = do
    jset this.initialized (False)
    pure ()

new_ :: IO BaseSoundsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseSoundsFactory -> IO ()
init_ this = do
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BaseSoundsFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: BaseSoundsFactory))

init_impl :: BaseSoundsFactory -> IO (())
init_impl this = do
        pure ()


-- throws Exception
getSoundInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray object_ = jmethod object_ "getSoundInterfaceArray" (\() -> (getSoundInterfaceArray_impl (javaCast object_ :: BaseSoundsFactory))) ()

getSoundInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray_super object_ = (getSoundInterfaceArray_impl (javaCast object_ :: BaseSoundsFactory))

getSoundInterfaceArray_impl :: BaseSoundsFactory -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray_impl this = do
        pure ((jnewArray (0) javaNull))


setInitialized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized object_ a1 = jmethod object_ "setInitialized" (\() -> (setInitialized_impl (javaCast object_ :: BaseSoundsFactory))) () a1

setInitialized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized_super object_ a1 = (setInitialized_impl (javaCast object_ :: BaseSoundsFactory)) a1

setInitialized_impl :: BaseSoundsFactory -> Bool -> IO (())
setInitialized_impl this initialized = do
        jset (this).initialized (initialized)
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: BaseSoundsFactory))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: BaseSoundsFactory))

isInitialized_impl :: BaseSoundsFactory -> IO (Bool)
isInitialized_impl this = do
        pure ((jget (this).initialized))


