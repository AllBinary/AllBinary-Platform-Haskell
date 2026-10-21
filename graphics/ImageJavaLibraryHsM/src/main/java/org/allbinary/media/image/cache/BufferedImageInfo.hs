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
-- package org.allbinary.media.image.cache
module BufferedImageInfo where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data BufferedImageInfo = BufferedImageInfo
    { header_ :: JavaHeader
    , width :: IORef (Int)
    , height :: IORef (Int)
    , type_ :: IORef (Int)
    }

instance JavaNull BufferedImageInfo where
    javaNull = javaNullRecord "BufferedImageInfo"

instance JavaEquals BufferedImageInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedImageInfo where
    (==) = jrecordEquals

instance JavaObjectClass BufferedImageInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BufferedImageInfo
newRecord_ = do
    header_ <- newJavaHeader
    width <- newIORef 0
    height <- newIORef 0
    type_ <- newIORef 0
    let this = BufferedImageInfo header_ width height type_
    jregisterLevel header_ this
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "setType" (\() -> setType_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BufferedImageInfo -> IO ()
initFields_ this = do
    jset this.width (0)
    jset this.height (0)
    jset this.type_ (0)
    pure ()

new_3 :: Int -> Int -> Int -> IO BufferedImageInfo
new_3 width height type_ = do
    this <- newRecord_
    init_3 this width height type_
    pure this

init_3 :: BufferedImageInfo -> Int -> Int -> Int -> IO ()
init_3 this width height type_ = do
        initFields_ this
        jset (this).width (width)
        jset (this).height (height)
        jset (this).type_ (type_)
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: BufferedImageInfo))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: BufferedImageInfo))

getWidth_impl :: BufferedImageInfo -> IO (Int)
getWidth_impl this = do
        pure ((jget (this).width))


setWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: BufferedImageInfo))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: BufferedImageInfo)) a1

setWidth_impl :: BufferedImageInfo -> Int -> IO (())
setWidth_impl this width = do
        jset (this).width (width)
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: BufferedImageInfo))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: BufferedImageInfo))

getHeight_impl :: BufferedImageInfo -> IO (Int)
getHeight_impl this = do
        pure ((jget (this).height))


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: BufferedImageInfo))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: BufferedImageInfo)) a1

setHeight_impl :: BufferedImageInfo -> Int -> IO (())
setHeight_impl this height = do
        jset (this).height (height)
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: BufferedImageInfo))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: BufferedImageInfo))

getType_impl :: BufferedImageInfo -> IO (Int)
getType_impl this = do
        pure ((jget (this).type_))


setType :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setType object_ a1 = jmethod object_ "setType" (\() -> (setType_impl (javaCast object_ :: BufferedImageInfo))) () a1

setType_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setType_super object_ a1 = (setType_impl (javaCast object_ :: BufferedImageInfo)) a1

setType_impl :: BufferedImageInfo -> Int -> IO (())
setType_impl this type_ = do
        jset (this).type_ (type_)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BufferedImageInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BufferedImageInfo))

toString_impl :: BufferedImageInfo -> IO (String)
toString_impl this = do
        commonLabels <- (CommonLabels.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "BufferedImageInfo -")
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BufferedImageInfo.getWidth this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BufferedImageInfo.getHeight this)))
        Control.Monad.void (StringMaker.append stringBuffer " Type: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BufferedImageInfo.getType this)))
        (StringMaker.toString stringBuffer)


