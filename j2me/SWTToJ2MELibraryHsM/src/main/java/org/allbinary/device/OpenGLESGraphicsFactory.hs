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
module OpenGLESGraphicsFactory where

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
import qualified OpenGLESGraphics -- same package or java.lang

data OpenGLESGraphicsFactory = OpenGLESGraphicsFactory
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLESGraphicsFactory where
    javaNull = javaNullRecord "OpenGLESGraphicsFactory"

instance JavaEquals OpenGLESGraphicsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESGraphicsFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESGraphicsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESGraphicsFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLESGraphicsFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getOpenGLESGraphicsInstance" (\() -> getOpenGLESGraphicsInstance_impl this)
    pure this

initFields_ :: OpenGLESGraphicsFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLESGraphicsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESGraphicsFactory -> IO ()
init_ this = do
    initFields_ this


getOpenGLESGraphicsInstance :: (JavaObjectClass this_) => this_ -> IO (OpenGLESGraphics.OpenGLESGraphics)
getOpenGLESGraphicsInstance object_ = jmethod object_ "getOpenGLESGraphicsInstance" (\() -> (getOpenGLESGraphicsInstance_impl (javaCast object_ :: OpenGLESGraphicsFactory))) ()

getOpenGLESGraphicsInstance_super :: (JavaObjectClass this_) => this_ -> IO (OpenGLESGraphics.OpenGLESGraphics)
getOpenGLESGraphicsInstance_super object_ = (getOpenGLESGraphicsInstance_impl (javaCast object_ :: OpenGLESGraphicsFactory))

getOpenGLESGraphicsInstance_impl :: OpenGLESGraphicsFactory -> IO (OpenGLESGraphics.OpenGLESGraphics)
getOpenGLESGraphicsInstance_impl this = do
        pure (javaNull)


