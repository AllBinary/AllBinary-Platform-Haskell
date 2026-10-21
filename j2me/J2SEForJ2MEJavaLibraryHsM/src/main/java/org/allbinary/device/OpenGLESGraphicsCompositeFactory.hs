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
-- package org.allbinary.device
module OpenGLESGraphicsCompositeFactory where

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
import qualified OpenGLESGraphicsFactory -- same package or java.lang

data OpenGLESGraphicsCompositeFactory = OpenGLESGraphicsCompositeFactory
    { header_ :: JavaHeader
    , openGLESGraphicsFactory :: IORef (OpenGLESGraphicsFactory.OpenGLESGraphicsFactory)
    }

instance JavaNull OpenGLESGraphicsCompositeFactory where
    javaNull = javaNullRecord "OpenGLESGraphicsCompositeFactory"

instance JavaEquals OpenGLESGraphicsCompositeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESGraphicsCompositeFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESGraphicsCompositeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESGraphicsCompositeFactory
newRecord_ = do
    header_ <- newJavaHeader
    openGLESGraphicsFactory <- newIORef javaNull
    let this = OpenGLESGraphicsCompositeFactory header_ openGLESGraphicsFactory
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: OpenGLESGraphicsCompositeFactory -> IO ()
initFields_ this = do
    jset this.openGLESGraphicsFactory =<< (OpenGLESGraphicsFactory.new_)
    pure ()

new_ :: IO OpenGLESGraphicsCompositeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESGraphicsCompositeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLESGraphicsCompositeFactory)
getInstance = do
        pure (OpenGLESGraphicsCompositeFactory.instance_)


set :: (JavaObjectClass this_) => this_ -> OpenGLESGraphicsFactory.OpenGLESGraphicsFactory -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLESGraphicsCompositeFactory))) () a1

set_super :: (JavaObjectClass this_) => this_ -> OpenGLESGraphicsFactory.OpenGLESGraphicsFactory -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLESGraphicsCompositeFactory)) a1

set_impl :: OpenGLESGraphicsCompositeFactory -> OpenGLESGraphicsFactory.OpenGLESGraphicsFactory -> IO (())
set_impl this openGLESGraphicsFactory = do
        jset (this).openGLESGraphicsFactory (openGLESGraphicsFactory)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (OpenGLESGraphicsFactory.OpenGLESGraphicsFactory)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: OpenGLESGraphicsCompositeFactory))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (OpenGLESGraphicsFactory.OpenGLESGraphicsFactory)
get_super object_ = (get_impl (javaCast object_ :: OpenGLESGraphicsCompositeFactory))

get_impl :: OpenGLESGraphicsCompositeFactory -> IO (OpenGLESGraphicsFactory.OpenGLESGraphicsFactory)
get_impl this = do
        pure ((jget (this).openGLESGraphicsFactory))


