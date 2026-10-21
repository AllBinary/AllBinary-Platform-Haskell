{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.animation
module FixedPoint where

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

data FixedPoint = FixedPoint
    { header_ :: JavaHeader
    , oNE :: IORef (Int)
    }

instance JavaNull FixedPoint where
    javaNull = javaNullRecord "FixedPoint"

instance JavaEquals FixedPoint where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FixedPoint where
    (==) = jrecordEquals

instance JavaObjectClass FixedPoint where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FixedPoint
newRecord_ = do
    header_ <- newJavaHeader
    oNE <- newIORef 0
    let this = FixedPoint header_ oNE
    jregisterLevel header_ this
    jregisterMethod header_ "toFixed_overload1" (\() -> toFixed_overload1_impl this)
    jregisterMethod header_ "toFixed_overload2" (\() -> toFixed_overload2_impl this)
    jregisterMethod header_ "mul" (\() -> mul_impl this)
    jregisterMethod header_ "div" (\() -> div_impl this)
    jregisterMethod header_ "toInt" (\() -> toInt_impl this)
    pure this

initFields_ :: FixedPoint -> IO ()
initFields_ this = do
    jset this.oNE ((1 `Data.Bits.shiftL` 16))
    pure ()

new_ :: IO FixedPoint
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FixedPoint -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FixedPoint)
getInstance = do
        pure (FixedPoint.instance_)


-- Java overloads of toFixed: calls the overload for the types of the arguments
toFixed :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
toFixed this a1
    | jisInstanceOf a1 (javaNull :: Double) = toFixed_overload1 this (javaCast a1 :: Double)
    | jisInstanceOf a1 (javaNull :: Float) = toFixed_overload2 this (javaCast a1 :: Float)
    | otherwise = toFixed_overload2 this (javaCast a1 :: Float)

toFixed_overload1 :: (JavaObjectClass this_) => this_ -> Double -> IO (Int)
toFixed_overload1 object_ a1 = jmethod object_ "toFixed_overload1" (\() -> (toFixed_overload1_impl (javaCast object_ :: FixedPoint))) () a1

toFixed_overload1_super :: (JavaObjectClass this_) => this_ -> Double -> IO (Int)
toFixed_overload1_super object_ a1 = (toFixed_overload1_impl (javaCast object_ :: FixedPoint)) a1

toFixed_overload1_impl :: FixedPoint -> Double -> IO (Int)
toFixed_overload1_impl this val = do
        pure ((Prelude.truncate ((val * 65536.0))))


toFixed_overload2 :: (JavaObjectClass this_) => this_ -> Float -> IO (Int)
toFixed_overload2 object_ a1 = jmethod object_ "toFixed_overload2" (\() -> (toFixed_overload2_impl (javaCast object_ :: FixedPoint))) () a1

toFixed_overload2_super :: (JavaObjectClass this_) => this_ -> Float -> IO (Int)
toFixed_overload2_super object_ a1 = (toFixed_overload2_impl (javaCast object_ :: FixedPoint)) a1

toFixed_overload2_impl :: FixedPoint -> Float -> IO (Int)
toFixed_overload2_impl this val = do
        pure ((Prelude.truncate ((val * 65536.0))))


mul :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
mul object_ a1 a2 = jmethod object_ "mul" (\() -> (mul_impl (javaCast object_ :: FixedPoint))) () a1 a2

mul_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
mul_super object_ a1 a2 = (mul_impl (javaCast object_ :: FixedPoint)) a1 a2

mul_impl :: FixedPoint -> Int -> Int -> IO (Int)
mul_impl this a b = do
        pure ((Prelude.fromIntegral (((((Prelude.fromIntegral a) * (Prelude.fromIntegral b))) `Data.Bits.shiftR` 16))))


div :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
div object_ a1 a2 = jmethod object_ "div" (\() -> (div_impl (javaCast object_ :: FixedPoint))) () a1 a2

div_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
div_super object_ a1 a2 = (div_impl (javaCast object_ :: FixedPoint)) a1 a2

div_impl :: FixedPoint -> Int -> Int -> IO (Int)
div_impl this a b = do
        pure ((Prelude.fromIntegral ((((((Prelude.fromIntegral a)) `Data.Bits.shiftL` 16)) `quot` (Prelude.fromIntegral b)))))


toInt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
toInt object_ a1 = jmethod object_ "toInt" (\() -> (toInt_impl (javaCast object_ :: FixedPoint))) () a1

toInt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
toInt_super object_ a1 = (toInt_impl (javaCast object_ :: FixedPoint)) a1

toInt_impl :: FixedPoint -> Int -> IO (Int)
toInt_impl this fixed = do
        pure ((fixed `Data.Bits.shiftR` 16))


