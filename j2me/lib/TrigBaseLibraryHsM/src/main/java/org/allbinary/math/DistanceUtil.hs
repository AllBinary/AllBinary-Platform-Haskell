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
-- package org.allbinary.math
module DistanceUtil where

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
import qualified MathUtil -- org.allbinary.logic.math.MathUtil

data DistanceUtil = DistanceUtil
    { header_ :: JavaHeader
    , mathUtil :: IORef (MathUtil.MathUtil)
    }

instance JavaNull DistanceUtil where
    javaNull = javaNullRecord "DistanceUtil"

instance JavaEquals DistanceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DistanceUtil where
    (==) = jrecordEquals

instance JavaObjectClass DistanceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DistanceUtil
newRecord_ = do
    header_ <- newJavaHeader
    mathUtil <- newIORef javaNull
    let this = DistanceUtil header_ mathUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getDistance" (\() -> getDistance_impl this)
    pure this

initFields_ :: DistanceUtil -> IO ()
initFields_ this = do
    jset this.mathUtil =<< (MathUtil.getInstance)
    pure ()

new_ :: IO DistanceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DistanceUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DistanceUtil)
getInstance = do
        pure (DistanceUtil.instance_)


getDistance :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (Int)
getDistance object_ a1 a2 a3 a4 = jmethod object_ "getDistance" (\() -> (getDistance_impl (javaCast object_ :: DistanceUtil))) () a1 a2 a3 a4

getDistance_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (Int)
getDistance_super object_ a1 a2 a3 a4 = (getDistance_impl (javaCast object_ :: DistanceUtil)) a1 a2 a3 a4

getDistance_impl :: DistanceUtil -> Int -> Int -> Int -> Int -> IO (Int)
getDistance_impl this x1 y1 x2 y2 = do
        let dx = (x1 - x2)
        let dy = (y1 - y2)
        pure ((jio (MathUtil.sqrt ((jget (this).mathUtil)) (((dx * dx)) + ((dy * dy))))))


