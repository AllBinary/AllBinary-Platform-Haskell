{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
module MathUtil where

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
import qualified JsType -- jsinterop.annotations.JsType

data MathUtil = MathUtil
    { header_ :: JavaHeader
    , aCCURACY :: IORef (Int)
    }

instance JavaNull MathUtil where
    javaNull = javaNullRecord "MathUtil"

instance JavaEquals MathUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MathUtil where
    (==) = jrecordEquals

instance JavaObjectClass MathUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MathUtil
newRecord_ = do
    header_ <- newJavaHeader
    aCCURACY <- newIORef 0
    let this = MathUtil header_ aCCURACY
    jregisterLevel header_ this
    jregisterMethod header_ "getTotalDigits" (\() -> getTotalDigits_impl this)
    jregisterMethod header_ "sqrt" (\() -> sqrt_impl this)
    jregisterMethod header_ "sqrtd" (\() -> sqrtd_impl this)
    jregisterMethod header_ "abs" (\() -> abs_impl this)
    jregisterMethod header_ "abslong" (\() -> abslong_impl this)
    jregisterMethod header_ "min" (\() -> min_impl this)
    jregisterMethod header_ "max" (\() -> max_impl this)
    pure this

initFields_ :: MathUtil -> IO ()
initFields_ this = do
    jset this.aCCURACY (100)
    pure ()

new_ :: IO MathUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MathUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MathUtil)
getInstance = do
        pure (MathUtil.instance_)


getTotalDigits :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getTotalDigits object_ a1 = jmethod object_ "getTotalDigits" (\() -> (getTotalDigits_impl (javaCast object_ :: MathUtil))) () a1

getTotalDigits_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getTotalDigits_super object_ a1 = (getTotalDigits_impl (javaCast object_ :: MathUtil)) a1

getTotalDigits_impl :: MathUtil -> Int -> IO (Int)
getTotalDigits_impl this digits = do
        digits <- newIORef digits
        total <- newIORef (0)
        fix $ \loop -> when ((jget digits) > 0) $ javaIteration (loop) $ do
            jset digits (((jget digits) `quot` 10))
            jset total ((jget total) + 1)
        pure ((jget total))


sqrt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
sqrt object_ a1 = jmethod object_ "sqrt" (\() -> (sqrt_impl (javaCast object_ :: MathUtil))) () a1

sqrt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
sqrt_super object_ a1 = (sqrt_impl (javaCast object_ :: MathUtil)) a1

sqrt_impl :: MathUtil -> Int -> IO (Int)
sqrt_impl this value = do
    javaCatchReturn $ do
        when (value <= 1) $ do
            javaReturn (value)
        accumulated <- newIORef ((value `Data.Bits.shiftR` 1))
        result <- newIORef (((((jget accumulated) + ((value `quot` (jget accumulated))))) `Data.Bits.shiftR` 1))
        fix $ \loop -> javaIteration (when ((jget accumulated) > (jget result)) loop) $ do
            jset accumulated ((jget result))
            jset result (((((jget accumulated) + ((value `quot` (jget accumulated))))) `Data.Bits.shiftR` 1))
        pure ((jget accumulated))


sqrtd :: (JavaObjectClass this_) => this_ -> Int -> IO (Double)
sqrtd object_ a1 = jmethod object_ "sqrtd" (\() -> (sqrtd_impl (javaCast object_ :: MathUtil))) () a1

sqrtd_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Double)
sqrtd_super object_ a1 = (sqrtd_impl (javaCast object_ :: MathUtil)) a1

sqrtd_impl :: MathUtil -> Int -> IO (Double)
sqrtd_impl this x = do
    javaCatchReturn $ do
        when (x == 0) $ do
            javaReturn ((Prelude.realToFrac (0.0 :: Float)))
        when (x < 0) $ do
            javaReturn ((Prelude.realToFrac ((Prelude.negate 1.0) :: Float)))
        result <- newIORef ((Prelude.fromIntegral x))
        forM_ [0 .. (jget (this).aCCURACY) - 1] $ \index -> javaIteration (pure ()) $ do
            jset result (((((jget result) + (((Prelude.fromIntegral x) / (jget result))))) / 2.0))
        pure ((jget result))


abs :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
abs object_ a1 = jmethod object_ "abs" (\() -> (abs_impl (javaCast object_ :: MathUtil))) () a1

abs_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
abs_super object_ a1 = (abs_impl (javaCast object_ :: MathUtil)) a1

abs_impl :: MathUtil -> Int -> IO (Int)
abs_impl this value = do
        pure ((if ((value < 0)) then (Prelude.negate value) else value))


abslong :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
abslong object_ a1 = jmethod object_ "abslong" (\() -> (abslong_impl (javaCast object_ :: MathUtil))) () a1

abslong_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
abslong_super object_ a1 = (abslong_impl (javaCast object_ :: MathUtil)) a1

abslong_impl :: MathUtil -> Int64 -> IO (Int64)
abslong_impl this value = do
        pure ((if ((value < 0)) then (Prelude.negate value) else value))


min :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
min object_ a1 a2 = jmethod object_ "min" (\() -> (min_impl (javaCast object_ :: MathUtil))) () a1 a2

min_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
min_super object_ a1 a2 = (min_impl (javaCast object_ :: MathUtil)) a1 a2

min_impl :: MathUtil -> Int -> Int -> IO (Int)
min_impl this value value2 = do
        pure ((if ((value <= value2)) then value else value2))


max :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
max object_ a1 a2 = jmethod object_ "max" (\() -> (max_impl (javaCast object_ :: MathUtil))) () a1 a2

max_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
max_super object_ a1 a2 = (max_impl (javaCast object_ :: MathUtil)) a1 a2

max_impl :: MathUtil -> Int -> Int -> IO (Int)
max_impl this value value2 = do
        pure ((if ((value >= value2)) then value else value2))


