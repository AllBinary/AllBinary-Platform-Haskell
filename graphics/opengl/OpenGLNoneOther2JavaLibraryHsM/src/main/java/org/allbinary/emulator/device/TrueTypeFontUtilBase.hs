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
-- package org.allbinary.emulator.device
module TrueTypeFontUtilBase where

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

data TrueTypeFontUtilBase = TrueTypeFontUtilBase
    { header_ :: JavaHeader
    }

instance JavaNull TrueTypeFontUtilBase where
    javaNull = javaNullRecord "TrueTypeFontUtilBase"

instance JavaEquals TrueTypeFontUtilBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrueTypeFontUtilBase where
    (==) = jrecordEquals

instance JavaObjectClass TrueTypeFontUtilBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TrueTypeFontUtilBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = TrueTypeFontUtilBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "getAsTextureSize" (\() -> getAsTextureSize_impl this)
    jregisterMethod header_ "getCellSize" (\() -> getCellSize_impl this)
    pure this

initFields_ :: TrueTypeFontUtilBase -> IO ()
initFields_ this = do
    pure ()

new_1 :: Int -> IO TrueTypeFontUtilBase
new_1 scale = do
    this <- newRecord_
    init_1 this scale
    pure this

init_1 :: TrueTypeFontUtilBase -> Int -> IO ()
init_1 this scale = do
        initFields_ this
        pure ()
        pure ()


getAsTextureSize :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAsTextureSize object_ a1 = jmethod object_ "getAsTextureSize" (\() -> (getAsTextureSize_impl (javaCast object_ :: TrueTypeFontUtilBase))) () a1

getAsTextureSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAsTextureSize_super object_ a1 = (getAsTextureSize_impl (javaCast object_ :: TrueTypeFontUtilBase)) a1

getAsTextureSize_impl :: TrueTypeFontUtilBase -> Int -> IO (Int)
getAsTextureSize_impl this textureSize = do
        pure ((Prelude.negate 1))


getCellSize :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellSize object_ a1 = jmethod object_ "getCellSize" (\() -> (getCellSize_impl (javaCast object_ :: TrueTypeFontUtilBase))) () a1

getCellSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellSize_super object_ a1 = (getCellSize_impl (javaCast object_ :: TrueTypeFontUtilBase)) a1

getCellSize_impl :: TrueTypeFontUtilBase -> Int -> IO (Int)
getCellSize_impl this cellSize = do
        pure ((Prelude.negate 1))


