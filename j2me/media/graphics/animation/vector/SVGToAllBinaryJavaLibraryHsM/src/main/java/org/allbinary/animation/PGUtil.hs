{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.animation
module PGUtil where

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
import qualified FixedPoint -- same package or java.lang

data PGUtil = PGUtil
    { header_ :: JavaHeader
    }

instance JavaNull PGUtil where
    javaNull = javaNullRecord "PGUtil"

instance JavaEquals PGUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PGUtil where
    (==) = jrecordEquals

instance JavaObjectClass PGUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PGUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = PGUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "flattenCubicBezier" (\() -> flattenCubicBezier_impl this)
    pure this

initFields_ :: PGUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PGUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PGUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PGUtil)
getInstance = do
        pure (PGUtil.instance_)


flattenCubicBezier :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> JavaArray (Int) -> JavaArray (Int) -> JavaArray (Int) -> Int -> IO (())
flattenCubicBezier object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = jmethod object_ "flattenCubicBezier" (\() -> (flattenCubicBezier_impl (javaCast object_ :: PGUtil))) () a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12

flattenCubicBezier_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> JavaArray (Int) -> JavaArray (Int) -> JavaArray (Int) -> Int -> IO (())
flattenCubicBezier_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = (flattenCubicBezier_impl (javaCast object_ :: PGUtil)) a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12

flattenCubicBezier_impl :: PGUtil -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> JavaArray (Int) -> JavaArray (Int) -> JavaArray (Int) -> Int -> IO (())
flattenCubicBezier_impl this x0 y0 x1 y1 x2 y2 x3 y3 outX outY count maxPoints = do
        fixedPoint <- (FixedPoint.getInstance)
        let steps = 10
        forM_ [1 .. steps] $ \i -> javaIteration (pure ()) $ do
            t <- (FixedPoint.div fixedPoint (jio (FixedPoint.toFixed fixedPoint (Prelude.fromIntegral i))) (jio (FixedPoint.toFixed fixedPoint steps)))
            let mt = ((jget (fixedPoint).oNE) - t)
            mt3 <- (FixedPoint.mul fixedPoint (jio (FixedPoint.mul fixedPoint mt mt)) mt)
            let mt2t3 = (3 * (jio (FixedPoint.mul fixedPoint (jio (FixedPoint.mul fixedPoint mt mt)) t)))
            let mtt23 = (3 * (jio (FixedPoint.mul fixedPoint (jio (FixedPoint.mul fixedPoint mt t)) t)))
            t3 <- (FixedPoint.mul fixedPoint (jio (FixedPoint.mul fixedPoint t t)) t)
            let x = ((((jio (FixedPoint.mul fixedPoint mt3 x0)) + (jio (FixedPoint.mul fixedPoint mt2t3 x1))) + (jio (FixedPoint.mul fixedPoint mtt23 x2))) + (jio (FixedPoint.mul fixedPoint t3 x3)))
            let y = ((((jio (FixedPoint.mul fixedPoint mt3 y0)) + (jio (FixedPoint.mul fixedPoint mt2t3 y1))) + (jio (FixedPoint.mul fixedPoint mtt23 y2))) + (jio (FixedPoint.mul fixedPoint t3 y3)))
            when ((jindex count (0)) < maxPoints) $ do
                jsetIndex outX ((jindex count (0))) (x)
                jsetIndex outY ((jindex count (0))) (y)
                jsetIndex count (0) ((jindex count (0)) + 1)
        pure ()


