{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.animation
module PolygonRasterizer where

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
import qualified PathParser -- same package or java.lang
import qualified FixedPoint -- same package or java.lang

data PolygonRasterizer = PolygonRasterizer
    { header_ :: JavaHeader
    }

instance JavaNull PolygonRasterizer where
    javaNull = javaNullRecord "PolygonRasterizer"

instance JavaEquals PolygonRasterizer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PolygonRasterizer where
    (==) = jrecordEquals

instance JavaObjectClass PolygonRasterizer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PolygonRasterizer
newRecord_ = do
    header_ <- newJavaHeader
    let this = PolygonRasterizer header_
    jregisterLevel header_ this
    jregisterMethod header_ "getPixelBuffer" (\() -> getPixelBuffer_impl this)
    jregisterMethod header_ "fillPolygon" (\() -> fillPolygon_impl this)
    jregisterMethod header_ "main" (\() -> main_impl this)
    pure this

initFields_ :: PolygonRasterizer -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PolygonRasterizer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PolygonRasterizer -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PolygonRasterizer)
getInstance = do
        pure (PolygonRasterizer.instance_)


getPixelBuffer :: (JavaObjectClass this_) => this_ -> String -> JavaArray (Int) -> JavaArray (Int) -> JavaArray (Int) -> Int -> Int -> IO (JavaArray (Int))
getPixelBuffer object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "getPixelBuffer" (\() -> (getPixelBuffer_impl (javaCast object_ :: PolygonRasterizer))) () a1 a2 a3 a4 a5 a6

getPixelBuffer_super :: (JavaObjectClass this_) => this_ -> String -> JavaArray (Int) -> JavaArray (Int) -> JavaArray (Int) -> Int -> Int -> IO (JavaArray (Int))
getPixelBuffer_super object_ a1 a2 a3 a4 a5 a6 = (getPixelBuffer_impl (javaCast object_ :: PolygonRasterizer)) a1 a2 a3 a4 a5 a6

getPixelBuffer_impl :: PolygonRasterizer -> String -> JavaArray (Int) -> JavaArray (Int) -> JavaArray (Int) -> Int -> Int -> IO (JavaArray (Int))
getPixelBuffer_impl this svgPath pathX pathY pixelBuffer width height = do
        pointCount <- (PathParser.parsePath svgPath pathX pathY (jlength pathX))
        forM_ [0 .. (jlength pixelBuffer) - 1] $ \i -> javaIteration (pure ()) $ do
            jsetIndex pixelBuffer (i) (0xFFFFFFFF)
        Control.Monad.void (PolygonRasterizer.fillPolygon ((jio (PolygonRasterizer.getInstance))) pathX pathY pointCount pixelBuffer width height 0xFFFF00FF)
        pure (pixelBuffer)


fillPolygon :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> JavaArray (Int) -> Int -> JavaArray (Int) -> Int -> Int -> Int -> IO (())
fillPolygon object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "fillPolygon" (\() -> (fillPolygon_impl (javaCast object_ :: PolygonRasterizer))) () a1 a2 a3 a4 a5 a6 a7

fillPolygon_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> JavaArray (Int) -> Int -> JavaArray (Int) -> Int -> Int -> Int -> IO (())
fillPolygon_super object_ a1 a2 a3 a4 a5 a6 a7 = (fillPolygon_impl (javaCast object_ :: PolygonRasterizer)) a1 a2 a3 a4 a5 a6 a7

fillPolygon_impl :: PolygonRasterizer -> JavaArray (Int) -> JavaArray (Int) -> Int -> JavaArray (Int) -> Int -> Int -> Int -> IO (())
fillPolygon_impl this polyX polyY numPoints buffer width height colorRGB = do
        when (numPoints < 3) $ do
            pure (())
        fixedPoint <- (FixedPoint.getInstance)
        let x = (jnewArray (numPoints) 0)
        let y = (jnewArray (numPoints) 0)
        minY <- newIORef (height)
        maxY <- newIORef (0)
        forM_ [0 .. numPoints - 1] $ \i -> javaIteration (pure ()) $ do
            assignedValue <- (FixedPoint.toInt fixedPoint (jindex polyX (i)))
            jsetIndex x (i) (assignedValue)
            assignedValue <- (FixedPoint.toInt fixedPoint (jindex polyY (i)))
            jsetIndex y (i) (assignedValue)
            when ((jindex y (i)) < (jget minY)) $ do
                jset minY ((jindex y (i)))
            when ((jindex y (i)) > (jget maxY)) $ do
                jset maxY ((jindex y (i)))
        when ((jget minY) < 0) $ do
            jset minY (0)
        when ((jget maxY) >= height) $ do
            jset maxY ((height - 1))
        let scanlineX = (jnewArray (numPoints) 0)
        forM_ [(jget minY) .. (jget maxY)] $ \scanY -> javaIteration (pure ()) $ do
            intersectCount <- newIORef (0)
            forM_ [0 .. numPoints - 1] $ \i -> javaIteration (pure ()) $ do
                let next = (((i + 1)) `rem` numPoints)
                let x1 = (jindex x (i))
                let y1 = (jindex y (i))
                let x2 = (jindex x (next))
                let y2 = (jindex y (next))
                when ((((y1 < scanY) && (y2 >= scanY))) || (((y2 < scanY) && (y1 >= scanY)))) $ do
                    when (y2 /= y1) $ do
                        let interX = (x1 + ((((scanY - y1)) * ((x2 - x1))) `quot` ((y2 - y1))))
                        jsetIndex scanlineX ((jpostIncrement intersectCount (+ 1))) (interX)
            forM_ [0 .. ((jget intersectCount) - 1) - 1] $ \i -> javaIteration (pure ()) $ do
                forM_ [(i + 1) .. (jget intersectCount) - 1] $ \j -> javaIteration (pure ()) $ do
                    when ((jindex scanlineX (i)) > (jindex scanlineX (j))) $ do
                        let temp = (jindex scanlineX (i))
                        jsetIndex scanlineX (i) ((jindex scanlineX (j)))
                        jsetIndex scanlineX (j) (temp)
            forM_ [0, 0 + (2) .. (jget intersectCount) - 1] $ \i -> javaIteration (pure ()) $ do
                when ((i + 1) >= (jget intersectCount)) $ do
                    throwIO JavaBreak
                startX <- newIORef ((jindex scanlineX (i)))
                endX <- newIORef ((jindex scanlineX ((i + 1))))
                when ((jget startX) < 0) $ do
                    jset startX (0)
                when ((jget endX) >= width) $ do
                    jset endX ((width - 1))
                let rowOffset = (scanY * width)
                forM_ [(jget startX) .. (jget endX)] $ \pixelX -> javaIteration (pure ()) $ do
                    jsetIndex buffer ((rowOffset + pixelX)) (colorRGB)
        pure ()


main :: (JavaObjectClass this_) => this_ -> JavaArray (String) -> IO (())
main object_ a1 = jmethod object_ "main" (\() -> (main_impl (javaCast object_ :: PolygonRasterizer))) () a1

main_super :: (JavaObjectClass this_) => this_ -> JavaArray (String) -> IO (())
main_super object_ a1 = (main_impl (javaCast object_ :: PolygonRasterizer)) a1

main_impl :: PolygonRasterizer -> JavaArray (String) -> IO (())
main_impl this args = do
        let width = 100
        let height = 100
        let pathX = (jnewArray (200) 0)
        let pathY = (jnewArray (200) 0)
        let pixelBuffer = (jnewArray ((width * height)) 0)
        let svgPath = "M 32.139812,81.554575 14.450128,74.294372 V 50.000034 25.705697 l 17.73231,-7.268329 C 41.935209,14.439788 49.953112,11.168898 50,11.168723 c 0.04689,-1.74e-4 8.064791,3.270238 17.817562,7.267583 l 17.73231,7.267899 V 50 74.295795 l -17.73231,7.2679 c -9.752771,3.997344 -17.789855,7.264116 -17.860188,7.259492 -0.07033,-0.0046 -8.088235,-3.275499 -17.817562,-7.268612 z"
        Control.Monad.void (PolygonRasterizer.getPixelBuffer ((jio (PolygonRasterizer.getInstance))) svgPath pathX pathY pixelBuffer width height)
        pure ()


