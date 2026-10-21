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
-- package org.allbinary.media.image.io
module IIOImageCacheable where

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
import qualified Class -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified IIOImage -- javax.imageio.IIOImage
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface

-- implements CacheableInterface
data IIOImageCacheable = IIOImageCacheable
    { header_ :: JavaHeader
    , key :: IORef (String)
    , iioImage :: IORef (IIOImage.IIOImage)
    }

instance JavaNull IIOImageCacheable where
    javaNull = javaNullRecord "IIOImageCacheable"

instance JavaEquals IIOImageCacheable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IIOImageCacheable where
    (==) = jrecordEquals

instance JavaObjectClass IIOImageCacheable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO IIOImageCacheable
newRecord_ = do
    header_ <- newJavaHeader
    key <- newIORef ""
    iioImage <- newIORef javaNull
    let this = IIOImageCacheable header_ key iioImage
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "setBufferedImage" (\() -> setBufferedImage_impl this)
    jregisterMethod header_ "getIioImage" (\() -> getIioImage_impl this)
    jregisterMethod header_ "setIioImage" (\() -> setIioImage_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: IIOImageCacheable -> IO ()
initFields_ this = do
    jset this.key (javaNull)
    jset this.iioImage (javaNull)
    pure ()

new_1 :: String -> IO IIOImageCacheable
new_1 key = do
    this <- newRecord_
    init_1 this key
    pure this

init_1 :: IIOImageCacheable -> String -> IO ()
init_1 this key = do
        initFields_ this
        jset (this).key (key)
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: IIOImageCacheable))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: IIOImageCacheable))

getKey_impl :: IIOImageCacheable -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).key)))


setBufferedImage :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (())
setBufferedImage object_ a1 = jmethod object_ "setBufferedImage" (\() -> (setBufferedImage_impl (javaCast object_ :: IIOImageCacheable))) () a1

setBufferedImage_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (())
setBufferedImage_super object_ a1 = (setBufferedImage_impl (javaCast object_ :: IIOImageCacheable)) a1

setBufferedImage_impl :: IIOImageCacheable -> BufferedImage.BufferedImage -> IO (())
setBufferedImage_impl this bufferedImage = do
        Control.Monad.void (IIOImageCacheable.setIioImage this (jio (IIOImage.new_3 bufferedImage javaNull javaNull)))
        pure ()


getIioImage :: (JavaObjectClass this_) => this_ -> IO (IIOImage.IIOImage)
getIioImage object_ = jmethod object_ "getIioImage" (\() -> (getIioImage_impl (javaCast object_ :: IIOImageCacheable))) ()

getIioImage_super :: (JavaObjectClass this_) => this_ -> IO (IIOImage.IIOImage)
getIioImage_super object_ = (getIioImage_impl (javaCast object_ :: IIOImageCacheable))

getIioImage_impl :: IIOImageCacheable -> IO (IIOImage.IIOImage)
getIioImage_impl this = do
        pure ((jget (this).iioImage))


setIioImage :: (JavaObjectClass this_) => this_ -> IIOImage.IIOImage -> IO (())
setIioImage object_ a1 = jmethod object_ "setIioImage" (\() -> (setIioImage_impl (javaCast object_ :: IIOImageCacheable))) () a1

setIioImage_super :: (JavaObjectClass this_) => this_ -> IIOImage.IIOImage -> IO (())
setIioImage_super object_ a1 = (setIioImage_impl (javaCast object_ :: IIOImageCacheable)) a1

setIioImage_impl :: IIOImageCacheable -> IIOImage.IIOImage -> IO (())
setIioImage_impl this iioImage = do
        jset (this).iioImage (iioImage)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: IIOImageCacheable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: IIOImageCacheable))

toString_impl :: IIOImageCacheable -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Reusable IIOImage")
        (StringMaker.toString stringBuffer)


