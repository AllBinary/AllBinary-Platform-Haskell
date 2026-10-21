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
-- package org.allbinary.media.image
module ImageUnifierCell where

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

data ImageUnifierCell = ImageUnifierCell
    { header_ :: JavaHeader
    , width :: IORef (Int)
    , height :: IORef (Int)
    }

instance JavaNull ImageUnifierCell where
    javaNull = javaNullRecord "ImageUnifierCell"

instance JavaEquals ImageUnifierCell where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageUnifierCell where
    (==) = jrecordEquals

instance JavaObjectClass ImageUnifierCell where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageUnifierCell
newRecord_ = do
    header_ <- newJavaHeader
    width <- newIORef javaNull
    height <- newIORef javaNull
    let this = ImageUnifierCell header_ width height
    jregisterLevel header_ this
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    pure this

initFields_ :: ImageUnifierCell -> IO ()
initFields_ this = do
    jset this.width (javaNull)
    jset this.height (javaNull)
    pure ()

new_2 :: Int -> Int -> IO ImageUnifierCell
new_2 width height = do
    this <- newRecord_
    init_2 this width height
    pure this

init_2 :: ImageUnifierCell -> Int -> Int -> IO ()
init_2 this width height = do
        initFields_ this
        Control.Monad.void (ImageUnifierCell.setWidth this width)
        Control.Monad.void (ImageUnifierCell.setHeight this height)
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: ImageUnifierCell))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: ImageUnifierCell))

getWidth_impl :: ImageUnifierCell -> IO (Int)
getWidth_impl this = do
        pure ((jget (this).width))


setWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: ImageUnifierCell))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: ImageUnifierCell)) a1

setWidth_impl :: ImageUnifierCell -> Int -> IO (())
setWidth_impl this width = do
        jset (this).width (width)
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: ImageUnifierCell))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: ImageUnifierCell))

getHeight_impl :: ImageUnifierCell -> IO (Int)
getHeight_impl this = do
        pure ((jget (this).height))


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: ImageUnifierCell))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: ImageUnifierCell)) a1

setHeight_impl :: ImageUnifierCell -> Int -> IO (())
setHeight_impl this height = do
        jset (this).height (height)
        pure ()


