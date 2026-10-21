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
module LoadTextures where

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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10

data LoadTextures = LoadTextures
    { header_ :: JavaHeader
    }

instance JavaNull LoadTextures where
    javaNull = javaNullRecord "LoadTextures"

instance JavaEquals LoadTextures where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LoadTextures where
    (==) = jrecordEquals

instance JavaObjectClass LoadTextures where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LoadTextures
newRecord_ = do
    header_ <- newJavaHeader
    let this = LoadTextures header_
    jregisterLevel header_ this
    jregisterMethod header_ "load" (\() -> load_impl this)
    pure this

initFields_ :: LoadTextures -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LoadTextures
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LoadTextures -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
load :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
load object_ a1 = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: LoadTextures))) () a1

load_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
load_super object_ a1 = (load_impl (javaCast object_ :: LoadTextures)) a1

load_impl :: LoadTextures -> GL10.GL10 -> IO (())
load_impl this gl = do
        pure ()


