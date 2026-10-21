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
-- package org.allbinary.media.audio
module NullControl where

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
import qualified Control -- javax.microedition.media.Control

-- implements Control
data NullControl = NullControl
    { header_ :: JavaHeader
    }

instance JavaNull NullControl where
    javaNull = javaNullRecord "NullControl"

instance JavaEquals NullControl where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullControl where
    (==) = jrecordEquals

instance JavaObjectClass NullControl where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullControl
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullControl header_
    jregisterLevel header_ this
    Control.registerInterface_ header_
    pure this

initFields_ :: NullControl -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullControl
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullControl -> IO ()
init_ this = do
    initFields_ this


