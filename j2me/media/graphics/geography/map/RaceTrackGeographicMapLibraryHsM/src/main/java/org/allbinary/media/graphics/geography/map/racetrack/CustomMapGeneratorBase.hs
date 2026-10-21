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
-- package org.allbinary.media.graphics.geography.map.racetrack
module CustomMapGeneratorBase where

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
import qualified NullUtil -- org.allbinary.logic.NullUtil

data CustomMapGeneratorBase = CustomMapGeneratorBase
    { header_ :: JavaHeader
    }

instance JavaNull CustomMapGeneratorBase where
    javaNull = javaNullRecord "CustomMapGeneratorBase"

instance JavaEquals CustomMapGeneratorBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomMapGeneratorBase where
    (==) = jrecordEquals

instance JavaObjectClass CustomMapGeneratorBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CustomMapGeneratorBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = CustomMapGeneratorBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "copyMapIntoCustomMap" (\() -> copyMapIntoCustomMap_impl this)
    jregisterMethod header_ "getCustomMapArray" (\() -> getCustomMapArray_impl this)
    jregisterMethod header_ "getCustomType" (\() -> getCustomType_impl this)
    pure this

initFields_ :: CustomMapGeneratorBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CustomMapGeneratorBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomMapGeneratorBase -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
copyMapIntoCustomMap :: (JavaObjectClass this_) => this_ -> IO (())
copyMapIntoCustomMap object_ = jmethod object_ "copyMapIntoCustomMap" (\() -> (copyMapIntoCustomMap_impl (javaCast object_ :: CustomMapGeneratorBase))) ()

copyMapIntoCustomMap_super :: (JavaObjectClass this_) => this_ -> IO (())
copyMapIntoCustomMap_super object_ = (copyMapIntoCustomMap_impl (javaCast object_ :: CustomMapGeneratorBase))

copyMapIntoCustomMap_impl :: CustomMapGeneratorBase -> IO (())
copyMapIntoCustomMap_impl this = do
        pure ()


getCustomMapArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getCustomMapArray object_ = jmethod object_ "getCustomMapArray" (\() -> (getCustomMapArray_impl (javaCast object_ :: CustomMapGeneratorBase))) ()

getCustomMapArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getCustomMapArray_super object_ = (getCustomMapArray_impl (javaCast object_ :: CustomMapGeneratorBase))

getCustomMapArray_impl :: CustomMapGeneratorBase -> IO (JavaArray (JavaArray (Int)))
getCustomMapArray_impl this = do
        pure ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY))


-- throws Exception
getCustomType :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Int)
getCustomType object_ a1 a2 a3 = jmethod object_ "getCustomType" (\() -> (getCustomType_impl (javaCast object_ :: CustomMapGeneratorBase))) () a1 a2 a3

getCustomType_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Int)
getCustomType_super object_ a1 a2 a3 = (getCustomType_impl (javaCast object_ :: CustomMapGeneratorBase)) a1 a2 a3

getCustomType_impl :: CustomMapGeneratorBase -> Int -> Int -> Int -> IO (Int)
getCustomType_impl this column row currentType = do
        pure ((Prelude.negate 1))


