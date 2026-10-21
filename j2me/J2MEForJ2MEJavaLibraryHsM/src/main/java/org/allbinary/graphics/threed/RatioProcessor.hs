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
-- package org.allbinary.graphics.threed
module RatioProcessor where

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

data RatioProcessor = RatioProcessor
    { header_ :: JavaHeader
    }

instance JavaNull RatioProcessor where
    javaNull = javaNullRecord "RatioProcessor"

instance JavaEquals RatioProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RatioProcessor where
    (==) = jrecordEquals

instance JavaObjectClass RatioProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RatioProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = RatioProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "setCustom" (\() -> setCustom_impl this)
    pure this

initFields_ :: RatioProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RatioProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RatioProcessor -> IO ()
init_ this = do
    initFields_ this


setCustom :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
setCustom object_ a1 a2 a3 = jmethod object_ "setCustom" (\() -> (setCustom_impl (javaCast object_ :: RatioProcessor))) () a1 a2 a3

setCustom_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Float -> IO (())
setCustom_super object_ a1 a2 a3 = (setCustom_impl (javaCast object_ :: RatioProcessor)) a1 a2 a3

setCustom_impl :: RatioProcessor -> Int -> Int -> Float -> IO (())
setCustom_impl this width height ratio = do
        pure ()


