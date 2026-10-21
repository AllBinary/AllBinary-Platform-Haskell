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
-- package org.allbinary.logic.math.vector
module AxisMathVectorUtil where

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
import qualified NoDecimalTrigTable -- org.allbinary.math.NoDecimalTrigTable

data AxisMathVectorUtil = AxisMathVectorUtil
    { header_ :: JavaHeader
    , noDecimalTrigTable :: IORef (NoDecimalTrigTable.NoDecimalTrigTable)
    }

instance JavaNull AxisMathVectorUtil where
    javaNull = javaNullRecord "AxisMathVectorUtil"

instance JavaEquals AxisMathVectorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AxisMathVectorUtil where
    (==) = jrecordEquals

instance JavaObjectClass AxisMathVectorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AxisMathVectorUtil
newRecord_ = do
    header_ <- newJavaHeader
    noDecimalTrigTable <- newIORef javaNull
    let this = AxisMathVectorUtil header_ noDecimalTrigTable
    jregisterLevel header_ this
    jregisterMethod header_ "calculateX" (\() -> calculateX_impl this)
    jregisterMethod header_ "calculateY" (\() -> calculateY_impl this)
    jregisterMethod header_ "calculateZ" (\() -> calculateZ_impl this)
    pure this

initFields_ :: AxisMathVectorUtil -> IO ()
initFields_ this = do
    jset this.noDecimalTrigTable =<< (NoDecimalTrigTable.getInstance)
    pure ()

new_ :: IO AxisMathVectorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AxisMathVectorUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AxisMathVectorUtil)
getInstance = do
        pure (AxisMathVectorUtil.instance_)


calculateX :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> IO (Int64)
calculateX object_ a1 a2 = jmethod object_ "calculateX" (\() -> (calculateX_impl (javaCast object_ :: AxisMathVectorUtil))) () a1 a2

calculateX_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> IO (Int64)
calculateX_super object_ a1 a2 = (calculateX_impl (javaCast object_ :: AxisMathVectorUtil)) a1 a2

calculateX_impl :: AxisMathVectorUtil -> Int64 -> Int -> IO (Int64)
calculateX_impl this magnitude angle = do
        pure (((magnitude * (jio (NoDecimalTrigTable.cos ((jget (this).noDecimalTrigTable)) angle))) `quot` 10))


calculateY :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> IO (Int64)
calculateY object_ a1 a2 = jmethod object_ "calculateY" (\() -> (calculateY_impl (javaCast object_ :: AxisMathVectorUtil))) () a1 a2

calculateY_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> IO (Int64)
calculateY_super object_ a1 a2 = (calculateY_impl (javaCast object_ :: AxisMathVectorUtil)) a1 a2

calculateY_impl :: AxisMathVectorUtil -> Int64 -> Int -> IO (Int64)
calculateY_impl this magnitude angle = do
        pure (((magnitude * (jio (NoDecimalTrigTable.sin ((jget (this).noDecimalTrigTable)) angle))) `quot` 10))


calculateZ :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> IO (Int64)
calculateZ object_ a1 a2 = jmethod object_ "calculateZ" (\() -> (calculateZ_impl (javaCast object_ :: AxisMathVectorUtil))) () a1 a2

calculateZ_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> IO (Int64)
calculateZ_super object_ a1 a2 = (calculateZ_impl (javaCast object_ :: AxisMathVectorUtil)) a1 a2

calculateZ_impl :: AxisMathVectorUtil -> Int64 -> Int -> IO (Int64)
calculateZ_impl this magnitude otherAngle = do
        pure (((magnitude * (jio (NoDecimalTrigTable.sin ((jget (this).noDecimalTrigTable)) otherAngle))) `quot` 10))


