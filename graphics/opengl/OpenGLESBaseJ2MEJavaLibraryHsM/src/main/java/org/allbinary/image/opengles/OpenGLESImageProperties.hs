{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.image.opengles
module OpenGLESImageProperties where

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

data OpenGLESImageProperties = OpenGLESImageProperties
    { header_ :: JavaHeader
    , textureID :: IORef (Int)
    , scaleX :: IORef (Float)
    , scaleY :: IORef (Float)
    , scaleX2 :: IORef (Float)
    , scaleY2 :: IORef (Float)
    , angle :: IORef (Int)
    , redf :: IORef (Float)
    , greenf :: IORef (Float)
    , bluef :: IORef (Float)
    , alphaf :: IORef (Float)
    }

instance JavaNull OpenGLESImageProperties where
    javaNull = javaNullRecord "OpenGLESImageProperties"

instance JavaEquals OpenGLESImageProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESImageProperties where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESImageProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESImageProperties
newRecord_ = do
    header_ <- newJavaHeader
    textureID <- newIORef 0
    scaleX <- newIORef 0.0
    scaleY <- newIORef 0.0
    scaleX2 <- newIORef 0.0
    scaleY2 <- newIORef 0.0
    angle <- newIORef 0
    redf <- newIORef 0.0
    greenf <- newIORef 0.0
    bluef <- newIORef 0.0
    alphaf <- newIORef 0.0
    let this = OpenGLESImageProperties header_ textureID scaleX scaleY scaleX2 scaleY2 angle redf greenf bluef alphaf
    jregisterLevel header_ this
    pure this

initFields_ :: OpenGLESImageProperties -> IO ()
initFields_ this = do
    jset this.textureID ((Prelude.negate 1))
    jset this.scaleX (1.0)
    jset this.scaleY (1.0)
    jset this.scaleX2 (1.0)
    jset this.scaleY2 (1.0)
    jset this.angle (0)
    jset this.redf (1.0)
    jset this.greenf (1.0)
    jset this.bluef (1.0)
    jset this.alphaf (0.0)
    pure ()

new_ :: IO OpenGLESImageProperties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESImageProperties -> IO ()
init_ this = do
    initFields_ this


