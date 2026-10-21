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
module ImageUnifierProperties where

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
import qualified ImageUnifierCell -- same package or java.lang

data ImageUnifierProperties = ImageUnifierProperties
    { header_ :: JavaHeader
    , rows :: IORef (Int)
    , columns :: IORef (Int)
    , imageUnifierCell :: IORef (ImageUnifierCell.ImageUnifierCell)
    }

instance JavaNull ImageUnifierProperties where
    javaNull = javaNullRecord "ImageUnifierProperties"

instance JavaEquals ImageUnifierProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageUnifierProperties where
    (==) = jrecordEquals

instance JavaObjectClass ImageUnifierProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageUnifierProperties
newRecord_ = do
    header_ <- newJavaHeader
    rows <- newIORef javaNull
    columns <- newIORef javaNull
    imageUnifierCell <- newIORef javaNull
    let this = ImageUnifierProperties header_ rows columns imageUnifierCell
    jregisterLevel header_ this
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getRows" (\() -> getRows_impl this)
    jregisterMethod header_ "setRows" (\() -> setRows_impl this)
    jregisterMethod header_ "getColumns" (\() -> getColumns_impl this)
    jregisterMethod header_ "setColumns" (\() -> setColumns_impl this)
    jregisterMethod header_ "getImageUnifierCell" (\() -> getImageUnifierCell_impl this)
    jregisterMethod header_ "setImageUnifierCell" (\() -> setImageUnifierCell_impl this)
    pure this

initFields_ :: ImageUnifierProperties -> IO ()
initFields_ this = do
    jset this.rows (javaNull)
    jset this.columns (javaNull)
    jset this.imageUnifierCell (javaNull)
    pure ()

new_ :: IO ImageUnifierProperties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageUnifierProperties -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: ImageUnifierProperties))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: ImageUnifierProperties))

getWidth_impl :: ImageUnifierProperties -> IO (Int)
getWidth_impl this = do
        pure (((jio (ImageUnifierProperties.getColumns this)) * (jio (ImageUnifierCell.getWidth ((jio (ImageUnifierProperties.getImageUnifierCell this)))))))


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: ImageUnifierProperties))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: ImageUnifierProperties))

getHeight_impl :: ImageUnifierProperties -> IO (Int)
getHeight_impl this = do
        pure (((jio (ImageUnifierProperties.getRows this)) * (jio (ImageUnifierCell.getHeight ((jio (ImageUnifierProperties.getImageUnifierCell this)))))))


getRows :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows object_ = jmethod object_ "getRows" (\() -> (getRows_impl (javaCast object_ :: ImageUnifierProperties))) ()

getRows_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows_super object_ = (getRows_impl (javaCast object_ :: ImageUnifierProperties))

getRows_impl :: ImageUnifierProperties -> IO (Int)
getRows_impl this = do
        pure ((jget (this).rows))


setRows :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRows object_ a1 = jmethod object_ "setRows" (\() -> (setRows_impl (javaCast object_ :: ImageUnifierProperties))) () a1

setRows_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRows_super object_ a1 = (setRows_impl (javaCast object_ :: ImageUnifierProperties)) a1

setRows_impl :: ImageUnifierProperties -> Int -> IO (())
setRows_impl this rows = do
        jset (this).rows (rows)
        pure ()


getColumns :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns object_ = jmethod object_ "getColumns" (\() -> (getColumns_impl (javaCast object_ :: ImageUnifierProperties))) ()

getColumns_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns_super object_ = (getColumns_impl (javaCast object_ :: ImageUnifierProperties))

getColumns_impl :: ImageUnifierProperties -> IO (Int)
getColumns_impl this = do
        pure ((jget (this).columns))


setColumns :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setColumns object_ a1 = jmethod object_ "setColumns" (\() -> (setColumns_impl (javaCast object_ :: ImageUnifierProperties))) () a1

setColumns_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setColumns_super object_ a1 = (setColumns_impl (javaCast object_ :: ImageUnifierProperties)) a1

setColumns_impl :: ImageUnifierProperties -> Int -> IO (())
setColumns_impl this columns = do
        jset (this).columns (columns)
        pure ()


getImageUnifierCell :: (JavaObjectClass this_) => this_ -> IO (ImageUnifierCell.ImageUnifierCell)
getImageUnifierCell object_ = jmethod object_ "getImageUnifierCell" (\() -> (getImageUnifierCell_impl (javaCast object_ :: ImageUnifierProperties))) ()

getImageUnifierCell_super :: (JavaObjectClass this_) => this_ -> IO (ImageUnifierCell.ImageUnifierCell)
getImageUnifierCell_super object_ = (getImageUnifierCell_impl (javaCast object_ :: ImageUnifierProperties))

getImageUnifierCell_impl :: ImageUnifierProperties -> IO (ImageUnifierCell.ImageUnifierCell)
getImageUnifierCell_impl this = do
        pure ((jget (this).imageUnifierCell))


setImageUnifierCell :: (JavaObjectClass this_) => this_ -> ImageUnifierCell.ImageUnifierCell -> IO (())
setImageUnifierCell object_ a1 = jmethod object_ "setImageUnifierCell" (\() -> (setImageUnifierCell_impl (javaCast object_ :: ImageUnifierProperties))) () a1

setImageUnifierCell_super :: (JavaObjectClass this_) => this_ -> ImageUnifierCell.ImageUnifierCell -> IO (())
setImageUnifierCell_super object_ a1 = (setImageUnifierCell_impl (javaCast object_ :: ImageUnifierProperties)) a1

setImageUnifierCell_impl :: ImageUnifierProperties -> ImageUnifierCell.ImageUnifierCell -> IO (())
setImageUnifierCell_impl this imageUnifierCell = do
        jset (this).imageUnifierCell (imageUnifierCell)
        pure ()


