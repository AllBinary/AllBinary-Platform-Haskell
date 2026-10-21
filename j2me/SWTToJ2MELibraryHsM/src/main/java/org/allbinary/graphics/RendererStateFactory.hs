{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.graphics
module RendererStateFactory where

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

data RendererStateFactory = RendererStateFactory
    { header_ :: JavaHeader
    , loaded :: IORef (Bool)
    , surfaceChanged :: IORef (Bool)
    }

instance JavaNull RendererStateFactory where
    javaNull = javaNullRecord "RendererStateFactory"

instance JavaEquals RendererStateFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RendererStateFactory where
    (==) = jrecordEquals

instance JavaObjectClass RendererStateFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RendererStateFactory
newRecord_ = do
    header_ <- newJavaHeader
    loaded <- newIORef False
    surfaceChanged <- newIORef False
    let this = RendererStateFactory header_ loaded surfaceChanged
    jregisterLevel header_ this
    jregisterMethod header_ "setLoaded" (\() -> setLoaded_impl this)
    jregisterMethod header_ "isLoaded" (\() -> isLoaded_impl this)
    jregisterMethod header_ "setSurfaceChanged" (\() -> setSurfaceChanged_impl this)
    jregisterMethod header_ "isSurfaceChanged" (\() -> isSurfaceChanged_impl this)
    pure this

initFields_ :: RendererStateFactory -> IO ()
initFields_ this = do
    jset this.loaded (False)
    jset this.surfaceChanged (False)
    pure ()

new_ :: IO RendererStateFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RendererStateFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RendererStateFactory)
getInstance = do
        pure (RendererStateFactory.instance_)


setLoaded :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setLoaded object_ a1 = jmethod object_ "setLoaded" (\() -> (setLoaded_impl (javaCast object_ :: RendererStateFactory))) () a1

setLoaded_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setLoaded_super object_ a1 = (setLoaded_impl (javaCast object_ :: RendererStateFactory)) a1

setLoaded_impl :: RendererStateFactory -> Bool -> IO (())
setLoaded_impl this loaded = do
        jset (this).loaded (loaded)
        pure ()


isLoaded :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLoaded object_ = jmethod object_ "isLoaded" (\() -> (isLoaded_impl (javaCast object_ :: RendererStateFactory))) ()

isLoaded_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLoaded_super object_ = (isLoaded_impl (javaCast object_ :: RendererStateFactory))

isLoaded_impl :: RendererStateFactory -> IO (Bool)
isLoaded_impl this = do
        pure ((jget (this).loaded))


setSurfaceChanged :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSurfaceChanged object_ a1 = jmethod object_ "setSurfaceChanged" (\() -> (setSurfaceChanged_impl (javaCast object_ :: RendererStateFactory))) () a1

setSurfaceChanged_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSurfaceChanged_super object_ a1 = (setSurfaceChanged_impl (javaCast object_ :: RendererStateFactory)) a1

setSurfaceChanged_impl :: RendererStateFactory -> Bool -> IO (())
setSurfaceChanged_impl this initialized = do
        jset (this).surfaceChanged (initialized)
        pure ()


isSurfaceChanged :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSurfaceChanged object_ = jmethod object_ "isSurfaceChanged" (\() -> (isSurfaceChanged_impl (javaCast object_ :: RendererStateFactory))) ()

isSurfaceChanged_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSurfaceChanged_super object_ = (isSurfaceChanged_impl (javaCast object_ :: RendererStateFactory))

isSurfaceChanged_impl :: RendererStateFactory -> IO (Bool)
isSurfaceChanged_impl this = do
        pure ((jget (this).surfaceChanged))


