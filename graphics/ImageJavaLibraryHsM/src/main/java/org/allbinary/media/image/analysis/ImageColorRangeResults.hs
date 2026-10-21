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
module ImageColorRangeResults where

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
import qualified ColorRangeInterface -- same package or java.lang
import qualified ColorRange -- same package or java.lang

data ImageColorRangeResults = ImageColorRangeResults
    { header_ :: JavaHeader
    , colorRangeInterface :: IORef (ColorRangeInterface.ColorRangeInterface)
    , matchingPixelsChecked :: IORef (Int64)
    , totalPixelsChecked :: IORef (Int64)
    }

instance JavaNull ImageColorRangeResults where
    javaNull = javaNullRecord "ImageColorRangeResults"

instance JavaEquals ImageColorRangeResults where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageColorRangeResults where
    (==) = jrecordEquals

instance JavaObjectClass ImageColorRangeResults where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageColorRangeResults
newRecord_ = do
    header_ <- newJavaHeader
    colorRangeInterface <- newIORef javaNull
    matchingPixelsChecked <- newIORef 0
    totalPixelsChecked <- newIORef 0
    let this = ImageColorRangeResults header_ colorRangeInterface matchingPixelsChecked totalPixelsChecked
    jregisterLevel header_ this
    jregisterMethod header_ "getColorRangeInterface" (\() -> getColorRangeInterface_impl this)
    jregisterMethod header_ "setColorRangeInterface" (\() -> setColorRangeInterface_impl this)
    jregisterMethod header_ "getMatchingPixelsChecked" (\() -> getMatchingPixelsChecked_impl this)
    jregisterMethod header_ "setMatchingPixelsChecked" (\() -> setMatchingPixelsChecked_impl this)
    jregisterMethod header_ "addMatchingPixelsChecked" (\() -> addMatchingPixelsChecked_impl this)
    jregisterMethod header_ "getTotalPixelsChecked" (\() -> getTotalPixelsChecked_impl this)
    jregisterMethod header_ "addTotalPixelsChecked" (\() -> addTotalPixelsChecked_impl this)
    jregisterMethod header_ "setTotalPixelsChecked" (\() -> setTotalPixelsChecked_impl this)
    jregisterMethod header_ "getPercent" (\() -> getPercent_impl this)
    pure this

initFields_ :: ImageColorRangeResults -> IO ()
initFields_ this = do
    jset this.colorRangeInterface (javaNull)
    jset this.matchingPixelsChecked (0)
    jset this.totalPixelsChecked (0)
    pure ()

new_ :: IO ImageColorRangeResults
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageColorRangeResults -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (ImageColorRangeResults.setColorRangeInterface this (javaCast (jio (ColorRange.new_)) :: ColorRangeInterface.ColorRangeInterface))
        pure ()


getColorRangeInterface :: (JavaObjectClass this_) => this_ -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface object_ = jmethod object_ "getColorRangeInterface" (\() -> (getColorRangeInterface_impl (javaCast object_ :: ImageColorRangeResults))) ()

getColorRangeInterface_super :: (JavaObjectClass this_) => this_ -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface_super object_ = (getColorRangeInterface_impl (javaCast object_ :: ImageColorRangeResults))

getColorRangeInterface_impl :: ImageColorRangeResults -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface_impl this = do
        pure ((jget (this).colorRangeInterface))


setColorRangeInterface :: (JavaObjectClass this_) => this_ -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface object_ a1 = jmethod object_ "setColorRangeInterface" (\() -> (setColorRangeInterface_impl (javaCast object_ :: ImageColorRangeResults))) () a1

setColorRangeInterface_super :: (JavaObjectClass this_) => this_ -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface_super object_ a1 = (setColorRangeInterface_impl (javaCast object_ :: ImageColorRangeResults)) a1

setColorRangeInterface_impl :: ImageColorRangeResults -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface_impl this colorRangeInterface = do
        jset (this).colorRangeInterface (colorRangeInterface)
        pure ()


getMatchingPixelsChecked :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMatchingPixelsChecked object_ = jmethod object_ "getMatchingPixelsChecked" (\() -> (getMatchingPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))) ()

getMatchingPixelsChecked_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMatchingPixelsChecked_super object_ = (getMatchingPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))

getMatchingPixelsChecked_impl :: ImageColorRangeResults -> IO (Int64)
getMatchingPixelsChecked_impl this = do
        pure ((jget (this).matchingPixelsChecked))


setMatchingPixelsChecked :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setMatchingPixelsChecked object_ a1 = jmethod object_ "setMatchingPixelsChecked" (\() -> (setMatchingPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))) () a1

setMatchingPixelsChecked_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setMatchingPixelsChecked_super object_ a1 = (setMatchingPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults)) a1

setMatchingPixelsChecked_impl :: ImageColorRangeResults -> Int64 -> IO (())
setMatchingPixelsChecked_impl this matchingPixelsChecked = do
        jset (this).matchingPixelsChecked (matchingPixelsChecked)
        pure ()


addMatchingPixelsChecked :: (JavaObjectClass this_) => this_ -> IO (())
addMatchingPixelsChecked object_ = jmethod object_ "addMatchingPixelsChecked" (\() -> (addMatchingPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))) ()

addMatchingPixelsChecked_super :: (JavaObjectClass this_) => this_ -> IO (())
addMatchingPixelsChecked_super object_ = (addMatchingPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))

addMatchingPixelsChecked_impl :: ImageColorRangeResults -> IO (())
addMatchingPixelsChecked_impl this = do
        jset (this).matchingPixelsChecked ((jget (this).matchingPixelsChecked) + 1)
        pure ()


getTotalPixelsChecked :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalPixelsChecked object_ = jmethod object_ "getTotalPixelsChecked" (\() -> (getTotalPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))) ()

getTotalPixelsChecked_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTotalPixelsChecked_super object_ = (getTotalPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))

getTotalPixelsChecked_impl :: ImageColorRangeResults -> IO (Int64)
getTotalPixelsChecked_impl this = do
        pure ((jget (this).totalPixelsChecked))


addTotalPixelsChecked :: (JavaObjectClass this_) => this_ -> IO (())
addTotalPixelsChecked object_ = jmethod object_ "addTotalPixelsChecked" (\() -> (addTotalPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))) ()

addTotalPixelsChecked_super :: (JavaObjectClass this_) => this_ -> IO (())
addTotalPixelsChecked_super object_ = (addTotalPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))

addTotalPixelsChecked_impl :: ImageColorRangeResults -> IO (())
addTotalPixelsChecked_impl this = do
        jset (this).totalPixelsChecked ((jget (this).totalPixelsChecked) + 1)
        pure ()


setTotalPixelsChecked :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setTotalPixelsChecked object_ a1 = jmethod object_ "setTotalPixelsChecked" (\() -> (setTotalPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults))) () a1

setTotalPixelsChecked_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setTotalPixelsChecked_super object_ a1 = (setTotalPixelsChecked_impl (javaCast object_ :: ImageColorRangeResults)) a1

setTotalPixelsChecked_impl :: ImageColorRangeResults -> Int64 -> IO (())
setTotalPixelsChecked_impl this totalPixelsChecked = do
        jset (this).totalPixelsChecked (totalPixelsChecked)
        pure ()


getPercent :: (JavaObjectClass this_) => this_ -> IO (Float)
getPercent object_ = jmethod object_ "getPercent" (\() -> (getPercent_impl (javaCast object_ :: ImageColorRangeResults))) ()

getPercent_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getPercent_super object_ = (getPercent_impl (javaCast object_ :: ImageColorRangeResults))

getPercent_impl :: ImageColorRangeResults -> IO (Float)
getPercent_impl this = do
        pure ((((Prelude.fromIntegral (jio (ImageColorRangeResults.getMatchingPixelsChecked this))) / (Prelude.fromIntegral (jio (ImageColorRangeResults.getTotalPixelsChecked this))))))


