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
-- package org.allbinary.logic.math
module J2SEMath where

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

data J2SEMath = J2SEMath
    { header_ :: JavaHeader
    }

instance JavaNull J2SEMath where
    javaNull = javaNullRecord "J2SEMath"

instance JavaEquals J2SEMath where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq J2SEMath where
    (==) = jrecordEquals

instance JavaObjectClass J2SEMath where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO J2SEMath
newRecord_ = do
    header_ <- newJavaHeader
    let this = J2SEMath header_
    jregisterLevel header_ this
    jregisterMethod header_ "round" (\() -> round_impl this)
    jregisterMethod header_ "abs" (\() -> abs_impl this)
    jregisterMethod header_ "absdouble" (\() -> absdouble_impl this)
    pure this

initFields_ :: J2SEMath -> IO ()
initFields_ this = do
    pure ()

new_ :: IO J2SEMath
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: J2SEMath -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (J2SEMath)
getInstance = do
        pure (J2SEMath.instance_)


round :: (JavaObjectClass this_) => this_ -> Float -> IO (Int)
round object_ a1 = jmethod object_ "round" (\() -> (round_impl (javaCast object_ :: J2SEMath))) () a1

round_super :: (JavaObjectClass this_) => this_ -> Float -> IO (Int)
round_super object_ a1 = (round_impl (javaCast object_ :: J2SEMath)) a1

round_impl :: J2SEMath -> Float -> IO (Int)
round_impl this value = do
        pure ((Prelude.truncate value))


abs :: (JavaObjectClass this_) => this_ -> Float -> IO (Float)
abs object_ a1 = jmethod object_ "abs" (\() -> (abs_impl (javaCast object_ :: J2SEMath))) () a1

abs_super :: (JavaObjectClass this_) => this_ -> Float -> IO (Float)
abs_super object_ a1 = (abs_impl (javaCast object_ :: J2SEMath)) a1

abs_impl :: J2SEMath -> Float -> IO (Float)
abs_impl this value = do
        pure ((if ((value < 0.0)) then (Prelude.negate value) else value))


absdouble :: (JavaObjectClass this_) => this_ -> Double -> IO (Double)
absdouble object_ a1 = jmethod object_ "absdouble" (\() -> (absdouble_impl (javaCast object_ :: J2SEMath))) () a1

absdouble_super :: (JavaObjectClass this_) => this_ -> Double -> IO (Double)
absdouble_super object_ a1 = (absdouble_impl (javaCast object_ :: J2SEMath)) a1

absdouble_impl :: J2SEMath -> Double -> IO (Double)
absdouble_impl this value = do
        pure ((if ((value < 0.0)) then (Prelude.negate value) else value))


