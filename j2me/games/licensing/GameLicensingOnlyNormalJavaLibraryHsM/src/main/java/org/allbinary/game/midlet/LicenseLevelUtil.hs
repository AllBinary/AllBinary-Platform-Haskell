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
-- package org.allbinary.game.midlet
module LicenseLevelUtil where

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

data LicenseLevelUtil = LicenseLevelUtil
    { header_ :: JavaHeader
    }

instance JavaNull LicenseLevelUtil where
    javaNull = javaNullRecord "LicenseLevelUtil"

instance JavaEquals LicenseLevelUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseLevelUtil where
    (==) = jrecordEquals

instance JavaObjectClass LicenseLevelUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseLevelUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LicenseLevelUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getMaxLevel" (\() -> getMaxLevel_impl this)
    pure this

initFields_ :: LicenseLevelUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LicenseLevelUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseLevelUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LicenseLevelUtil)
getInstance = do
        pure (LicenseLevelUtil.instance_)


getMaxLevel :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getMaxLevel object_ a1 a2 = jmethod object_ "getMaxLevel" (\() -> (getMaxLevel_impl (javaCast object_ :: LicenseLevelUtil))) () a1 a2

getMaxLevel_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getMaxLevel_super object_ a1 a2 = (getMaxLevel_impl (javaCast object_ :: LicenseLevelUtil)) a1 a2

getMaxLevel_impl :: LicenseLevelUtil -> Int -> Int -> IO (Int)
getMaxLevel_impl this maxLevel demoLevel = do
        pure (maxLevel)


