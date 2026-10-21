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
-- package org.allbinary.media.image.analysis
module ImageColorResults where

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
import qualified ColorRange -- same package or java.lang
import qualified ColorAverage -- same package or java.lang

data ImageColorResults = ImageColorResults
    { header_ :: JavaHeader
    , colorRange :: IORef (ColorRange.ColorRange)
    , colorAverage :: IORef (ColorAverage.ColorAverage)
    }

instance JavaNull ImageColorResults where
    javaNull = javaNullRecord "ImageColorResults"

instance JavaEquals ImageColorResults where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageColorResults where
    (==) = jrecordEquals

instance JavaObjectClass ImageColorResults where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageColorResults
newRecord_ = do
    header_ <- newJavaHeader
    colorRange <- newIORef javaNull
    colorAverage <- newIORef javaNull
    let this = ImageColorResults header_ colorRange colorAverage
    jregisterLevel header_ this
    jregisterMethod header_ "getColorRange" (\() -> getColorRange_impl this)
    jregisterMethod header_ "setColorRange" (\() -> setColorRange_impl this)
    jregisterMethod header_ "getColorAverage" (\() -> getColorAverage_impl this)
    jregisterMethod header_ "setColorAverage" (\() -> setColorAverage_impl this)
    pure this

initFields_ :: ImageColorResults -> IO ()
initFields_ this = do
    jset this.colorRange (javaNull)
    jset this.colorAverage (javaNull)
    pure ()

new_ :: IO ImageColorResults
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageColorResults -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (ImageColorResults.setColorRange this (jio (ColorRange.new_)))
        Control.Monad.void (ColorRange.setMaxRed ((jio (ImageColorResults.getColorRange this))) (Prelude.negate 1))
        Control.Monad.void (ColorRange.setMaxGreen ((jio (ImageColorResults.getColorRange this))) (Prelude.negate 1))
        Control.Monad.void (ColorRange.setMaxBlue ((jio (ImageColorResults.getColorRange this))) (Prelude.negate 1))
        Control.Monad.void (ColorRange.setMinRed ((jio (ImageColorResults.getColorRange this))) 256)
        Control.Monad.void (ColorRange.setMinGreen ((jio (ImageColorResults.getColorRange this))) 256)
        Control.Monad.void (ColorRange.setMinBlue ((jio (ImageColorResults.getColorRange this))) 256)
        Control.Monad.void (ImageColorResults.setColorAverage this (jio (ColorAverage.new_)))
        pure ()


getColorRange :: (JavaObjectClass this_) => this_ -> IO (ColorRange.ColorRange)
getColorRange object_ = jmethod object_ "getColorRange" (\() -> (getColorRange_impl (javaCast object_ :: ImageColorResults))) ()

getColorRange_super :: (JavaObjectClass this_) => this_ -> IO (ColorRange.ColorRange)
getColorRange_super object_ = (getColorRange_impl (javaCast object_ :: ImageColorResults))

getColorRange_impl :: ImageColorResults -> IO (ColorRange.ColorRange)
getColorRange_impl this = do
        pure ((jget (this).colorRange))


setColorRange :: (JavaObjectClass this_) => this_ -> ColorRange.ColorRange -> IO (())
setColorRange object_ a1 = jmethod object_ "setColorRange" (\() -> (setColorRange_impl (javaCast object_ :: ImageColorResults))) () a1

setColorRange_super :: (JavaObjectClass this_) => this_ -> ColorRange.ColorRange -> IO (())
setColorRange_super object_ a1 = (setColorRange_impl (javaCast object_ :: ImageColorResults)) a1

setColorRange_impl :: ImageColorResults -> ColorRange.ColorRange -> IO (())
setColorRange_impl this colorRange = do
        jset (this).colorRange (colorRange)
        pure ()


getColorAverage :: (JavaObjectClass this_) => this_ -> IO (ColorAverage.ColorAverage)
getColorAverage object_ = jmethod object_ "getColorAverage" (\() -> (getColorAverage_impl (javaCast object_ :: ImageColorResults))) ()

getColorAverage_super :: (JavaObjectClass this_) => this_ -> IO (ColorAverage.ColorAverage)
getColorAverage_super object_ = (getColorAverage_impl (javaCast object_ :: ImageColorResults))

getColorAverage_impl :: ImageColorResults -> IO (ColorAverage.ColorAverage)
getColorAverage_impl this = do
        pure ((jget (this).colorAverage))


setColorAverage :: (JavaObjectClass this_) => this_ -> ColorAverage.ColorAverage -> IO (())
setColorAverage object_ a1 = jmethod object_ "setColorAverage" (\() -> (setColorAverage_impl (javaCast object_ :: ImageColorResults))) () a1

setColorAverage_super :: (JavaObjectClass this_) => this_ -> ColorAverage.ColorAverage -> IO (())
setColorAverage_super object_ a1 = (setColorAverage_impl (javaCast object_ :: ImageColorResults)) a1

setColorAverage_impl :: ImageColorResults -> ColorAverage.ColorAverage -> IO (())
setColorAverage_impl this colorAverage = do
        jset (this).colorAverage (colorAverage)
        pure ()


