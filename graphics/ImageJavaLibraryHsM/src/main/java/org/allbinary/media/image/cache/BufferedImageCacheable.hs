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
module BufferedImageCacheable where

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
import qualified BufferedImageInfo -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface

-- implements CacheableInterface
data BufferedImageCacheable = BufferedImageCacheable
    { header_ :: JavaHeader
    , key :: IORef (BufferedImageInfo.BufferedImageInfo)
    , bufferedImage :: IORef (BufferedImage.BufferedImage)
    }

instance JavaNull BufferedImageCacheable where
    javaNull = javaNullRecord "BufferedImageCacheable"

instance JavaEquals BufferedImageCacheable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedImageCacheable where
    (==) = jrecordEquals

instance JavaObjectClass BufferedImageCacheable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BufferedImageCacheable
newRecord_ = do
    header_ <- newJavaHeader
    key <- newIORef javaNull
    bufferedImage <- newIORef javaNull
    let this = BufferedImageCacheable header_ key bufferedImage
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getBufferedImage" (\() -> getBufferedImage_impl this)
    jregisterMethod header_ "setBufferedImage" (\() -> setBufferedImage_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BufferedImageCacheable -> IO ()
initFields_ this = do
    jset this.key (javaNull)
    jset this.bufferedImage (javaNull)
    pure ()

new_1 :: BufferedImageInfo.BufferedImageInfo -> IO BufferedImageCacheable
new_1 key = do
    this <- newRecord_
    init_1 this key
    pure this

init_1 :: BufferedImageCacheable -> BufferedImageInfo.BufferedImageInfo -> IO ()
init_1 this key = do
        initFields_ this
        jset (this).key (key)
        Control.Monad.void (BufferedImageCacheable.setBufferedImage this (jio (BufferedImage.new_3 (jio (BufferedImageInfo.getWidth key)) (jio (BufferedImageInfo.getHeight key)) (jio (BufferedImageInfo.getType key)))))
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: BufferedImageCacheable))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: BufferedImageCacheable))

getKey_impl :: BufferedImageCacheable -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).key)))


getBufferedImage :: (JavaObjectClass this_) => this_ -> IO (BufferedImage.BufferedImage)
getBufferedImage object_ = jmethod object_ "getBufferedImage" (\() -> (getBufferedImage_impl (javaCast object_ :: BufferedImageCacheable))) ()

getBufferedImage_super :: (JavaObjectClass this_) => this_ -> IO (BufferedImage.BufferedImage)
getBufferedImage_super object_ = (getBufferedImage_impl (javaCast object_ :: BufferedImageCacheable))

getBufferedImage_impl :: BufferedImageCacheable -> IO (BufferedImage.BufferedImage)
getBufferedImage_impl this = do
        pure ((jget (this).bufferedImage))


setBufferedImage :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (())
setBufferedImage object_ a1 = jmethod object_ "setBufferedImage" (\() -> (setBufferedImage_impl (javaCast object_ :: BufferedImageCacheable))) () a1

setBufferedImage_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (())
setBufferedImage_super object_ a1 = (setBufferedImage_impl (javaCast object_ :: BufferedImageCacheable)) a1

setBufferedImage_impl :: BufferedImageCacheable -> BufferedImage.BufferedImage -> IO (())
setBufferedImage_impl this bufferedImage = do
        jset (this).bufferedImage (bufferedImage)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BufferedImageCacheable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BufferedImageCacheable))

toString_impl :: BufferedImageCacheable -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass this))))))
        Control.Monad.void (StringMaker.append stringBuffer " ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (Any.toString ((jio (BufferedImageCacheable.getKey this))))))
        (StringMaker.toString stringBuffer)


