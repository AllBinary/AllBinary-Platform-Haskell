{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.font
module FontDebugBase where

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
import qualified Any -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data FontDebugBase = FontDebugBase
    { header_ :: JavaHeader
    , sET_FONT :: IORef (String)
    }

instance JavaNull FontDebugBase where
    javaNull = javaNullRecord "FontDebugBase"

instance JavaEquals FontDebugBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FontDebugBase where
    (==) = jrecordEquals

instance JavaObjectClass FontDebugBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceBase #-}
instanceBase = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FontDebugBase
newRecord_ = do
    header_ <- newJavaHeader
    sET_FONT <- newIORef ""
    let this = FontDebugBase header_ sET_FONT
    jregisterLevel header_ this
    jregisterMethod header_ "debugMetrics" (\() -> debugMetrics_impl this)
    jregisterMethod header_ "debugDpi" (\() -> debugDpi_impl this)
    jregisterMethod header_ "debugDimension" (\() -> debugDimension_impl this)
    pure this

initFields_ :: FontDebugBase -> IO ()
initFields_ this = do
    jset this.sET_FONT ("setFont")
    pure ()

new_ :: IO FontDebugBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FontDebugBase -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FontDebugBase)
getInstance = do
        pure (FontDebugBase.instanceBase)


debugMetrics :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Font.Font -> Float -> o3 -> StringMaker.StringMaker -> IO (())
debugMetrics object_ a1 a2 a3 a4 = jmethod object_ "debugMetrics" (\() -> (debugMetrics_impl (javaCast object_ :: FontDebugBase))) () a1 a2 (jtoObject a3) a4

debugMetrics_super :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Font.Font -> Float -> o3 -> StringMaker.StringMaker -> IO (())
debugMetrics_super object_ a1 a2 a3 a4 = (debugMetrics_impl (javaCast object_ :: FontDebugBase)) a1 a2 (jtoObject a3) a4

debugMetrics_impl :: FontDebugBase -> Font.Font -> Float -> JavaObject -> StringMaker.StringMaker -> IO (())
debugMetrics_impl this currentFont convertedTextSize displayMetricsObject_ stringBuffer = do
        let displayMetrics = jtoObject displayMetricsObject_
        pure ()


debugDpi :: (JavaObjectClass this_) => this_ -> Int -> StringMaker.StringMaker -> IO (())
debugDpi object_ a1 a2 = jmethod object_ "debugDpi" (\() -> (debugDpi_impl (javaCast object_ :: FontDebugBase))) () a1 a2

debugDpi_super :: (JavaObjectClass this_) => this_ -> Int -> StringMaker.StringMaker -> IO (())
debugDpi_super object_ a1 a2 = (debugDpi_impl (javaCast object_ :: FontDebugBase)) a1 a2

debugDpi_impl :: FontDebugBase -> Int -> StringMaker.StringMaker -> IO (())
debugDpi_impl this densityDpi stringBuffer = do
        pure ()


debugDimension :: (JavaObjectClass this_) => this_ -> Font.Font -> Float -> Int -> StringMaker.StringMaker -> IO (())
debugDimension object_ a1 a2 a3 a4 = jmethod object_ "debugDimension" (\() -> (debugDimension_impl (javaCast object_ :: FontDebugBase))) () a1 a2 a3 a4

debugDimension_super :: (JavaObjectClass this_) => this_ -> Font.Font -> Float -> Int -> StringMaker.StringMaker -> IO (())
debugDimension_super object_ a1 a2 a3 a4 = (debugDimension_impl (javaCast object_ :: FontDebugBase)) a1 a2 a3 a4

debugDimension_impl :: FontDebugBase -> Font.Font -> Float -> Int -> StringMaker.StringMaker -> IO (())
debugDimension_impl this currentFont convertedTextSize longestDimensionTotalPixels stringBuffer = do
        pure ()


