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
module ImageAnalysisResults where

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
import qualified ImageColorRangeResults -- same package or java.lang
import qualified ImageColorResults -- same package or java.lang

data ImageAnalysisResults = ImageAnalysisResults
    { header_ :: JavaHeader
    , imageColorRangeResults :: IORef (ImageColorRangeResults.ImageColorRangeResults)
    , imageColorResults :: IORef (ImageColorResults.ImageColorResults)
    , averageAmbientLevel :: IORef (Float)
    }

instance JavaNull ImageAnalysisResults where
    javaNull = javaNullRecord "ImageAnalysisResults"

instance JavaEquals ImageAnalysisResults where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageAnalysisResults where
    (==) = jrecordEquals

instance JavaObjectClass ImageAnalysisResults where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageAnalysisResults
newRecord_ = do
    header_ <- newJavaHeader
    imageColorRangeResults <- newIORef javaNull
    imageColorResults <- newIORef javaNull
    averageAmbientLevel <- newIORef 0.0
    let this = ImageAnalysisResults header_ imageColorRangeResults imageColorResults averageAmbientLevel
    jregisterLevel header_ this
    jregisterMethod header_ "getImageColorRangeResults" (\() -> getImageColorRangeResults_impl this)
    jregisterMethod header_ "setImageColorRangeResults" (\() -> setImageColorRangeResults_impl this)
    jregisterMethod header_ "getAverageAmbientLevel" (\() -> getAverageAmbientLevel_impl this)
    jregisterMethod header_ "setAverageAmbientLevel" (\() -> setAverageAmbientLevel_impl this)
    jregisterMethod header_ "getImageColorResults" (\() -> getImageColorResults_impl this)
    jregisterMethod header_ "setImageColorResults" (\() -> setImageColorResults_impl this)
    pure this

initFields_ :: ImageAnalysisResults -> IO ()
initFields_ this = do
    jset this.imageColorRangeResults (javaNull)
    jset this.imageColorResults (javaNull)
    jset this.averageAmbientLevel (0.0)
    pure ()

new_ :: IO ImageAnalysisResults
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageAnalysisResults -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (ImageColorRangeResults.new_)
        jset (this).imageColorRangeResults (assignedValue)
        assignedValue <- (ImageColorResults.new_)
        jset (this).imageColorResults (assignedValue)
        pure ()


getImageColorRangeResults :: (JavaObjectClass this_) => this_ -> IO (ImageColorRangeResults.ImageColorRangeResults)
getImageColorRangeResults object_ = jmethod object_ "getImageColorRangeResults" (\() -> (getImageColorRangeResults_impl (javaCast object_ :: ImageAnalysisResults))) ()

getImageColorRangeResults_super :: (JavaObjectClass this_) => this_ -> IO (ImageColorRangeResults.ImageColorRangeResults)
getImageColorRangeResults_super object_ = (getImageColorRangeResults_impl (javaCast object_ :: ImageAnalysisResults))

getImageColorRangeResults_impl :: ImageAnalysisResults -> IO (ImageColorRangeResults.ImageColorRangeResults)
getImageColorRangeResults_impl this = do
        pure ((jget (this).imageColorRangeResults))


setImageColorRangeResults :: (JavaObjectClass this_) => this_ -> ImageColorRangeResults.ImageColorRangeResults -> IO (())
setImageColorRangeResults object_ a1 = jmethod object_ "setImageColorRangeResults" (\() -> (setImageColorRangeResults_impl (javaCast object_ :: ImageAnalysisResults))) () a1

setImageColorRangeResults_super :: (JavaObjectClass this_) => this_ -> ImageColorRangeResults.ImageColorRangeResults -> IO (())
setImageColorRangeResults_super object_ a1 = (setImageColorRangeResults_impl (javaCast object_ :: ImageAnalysisResults)) a1

setImageColorRangeResults_impl :: ImageAnalysisResults -> ImageColorRangeResults.ImageColorRangeResults -> IO (())
setImageColorRangeResults_impl this imageColorRangeResults = do
        jset (this).imageColorRangeResults (imageColorRangeResults)
        pure ()


getAverageAmbientLevel :: (JavaObjectClass this_) => this_ -> IO (Float)
getAverageAmbientLevel object_ = jmethod object_ "getAverageAmbientLevel" (\() -> (getAverageAmbientLevel_impl (javaCast object_ :: ImageAnalysisResults))) ()

getAverageAmbientLevel_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getAverageAmbientLevel_super object_ = (getAverageAmbientLevel_impl (javaCast object_ :: ImageAnalysisResults))

getAverageAmbientLevel_impl :: ImageAnalysisResults -> IO (Float)
getAverageAmbientLevel_impl this = do
        pure ((jget (this).averageAmbientLevel))


setAverageAmbientLevel :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setAverageAmbientLevel object_ a1 = jmethod object_ "setAverageAmbientLevel" (\() -> (setAverageAmbientLevel_impl (javaCast object_ :: ImageAnalysisResults))) () a1

setAverageAmbientLevel_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setAverageAmbientLevel_super object_ a1 = (setAverageAmbientLevel_impl (javaCast object_ :: ImageAnalysisResults)) a1

setAverageAmbientLevel_impl :: ImageAnalysisResults -> Float -> IO (())
setAverageAmbientLevel_impl this averageAmbientLevel = do
        jset (this).averageAmbientLevel (averageAmbientLevel)
        pure ()


getImageColorResults :: (JavaObjectClass this_) => this_ -> IO (ImageColorResults.ImageColorResults)
getImageColorResults object_ = jmethod object_ "getImageColorResults" (\() -> (getImageColorResults_impl (javaCast object_ :: ImageAnalysisResults))) ()

getImageColorResults_super :: (JavaObjectClass this_) => this_ -> IO (ImageColorResults.ImageColorResults)
getImageColorResults_super object_ = (getImageColorResults_impl (javaCast object_ :: ImageAnalysisResults))

getImageColorResults_impl :: ImageAnalysisResults -> IO (ImageColorResults.ImageColorResults)
getImageColorResults_impl this = do
        pure ((jget (this).imageColorResults))


setImageColorResults :: (JavaObjectClass this_) => this_ -> ImageColorResults.ImageColorResults -> IO (())
setImageColorResults object_ a1 = jmethod object_ "setImageColorResults" (\() -> (setImageColorResults_impl (javaCast object_ :: ImageAnalysisResults))) () a1

setImageColorResults_super :: (JavaObjectClass this_) => this_ -> ImageColorResults.ImageColorResults -> IO (())
setImageColorResults_super object_ a1 = (setImageColorResults_impl (javaCast object_ :: ImageAnalysisResults)) a1

setImageColorResults_impl :: ImageAnalysisResults -> ImageColorResults.ImageColorResults -> IO (())
setImageColorResults_impl this imageColorResults = do
        jset (this).imageColorResults (imageColorResults)
        pure ()


