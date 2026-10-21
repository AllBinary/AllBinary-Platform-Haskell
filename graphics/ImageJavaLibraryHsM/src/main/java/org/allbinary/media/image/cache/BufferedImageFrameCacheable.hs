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
module BufferedImageFrameCacheable where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface

-- implements CacheableInterface
data BufferedImageFrameCacheable = BufferedImageFrameCacheable
    { header_ :: JavaHeader
    , frame :: IORef (Int64)
    , bufferedImage :: IORef (BufferedImage.BufferedImage)
    }

instance JavaNull BufferedImageFrameCacheable where
    javaNull = javaNullRecord "BufferedImageFrameCacheable"

instance JavaEquals BufferedImageFrameCacheable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedImageFrameCacheable where
    (==) = jrecordEquals

instance JavaObjectClass BufferedImageFrameCacheable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BufferedImageFrameCacheable
newRecord_ = do
    header_ <- newJavaHeader
    frame <- newIORef javaNull
    bufferedImage <- newIORef javaNull
    let this = BufferedImageFrameCacheable header_ frame bufferedImage
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getBufferedImage" (\() -> getBufferedImage_impl this)
    jregisterMethod header_ "setBufferedImage" (\() -> setBufferedImage_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BufferedImageFrameCacheable -> IO ()
initFields_ this = do
    jset this.frame (javaNull)
    jset this.bufferedImage (javaNull)
    pure ()

new_2 :: BufferedImage.BufferedImage -> Int64 -> IO BufferedImageFrameCacheable
new_2 bufferedImage frame = do
    this <- newRecord_
    init_2 this bufferedImage frame
    pure this

init_2 :: BufferedImageFrameCacheable -> BufferedImage.BufferedImage -> Int64 -> IO ()
init_2 this bufferedImage frame = do
        initFields_ this
        jset (this).frame (frame)
        Control.Monad.void (BufferedImageFrameCacheable.setBufferedImage this bufferedImage)
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: BufferedImageFrameCacheable))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: BufferedImageFrameCacheable))

getKey_impl :: BufferedImageFrameCacheable -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).frame)))


getBufferedImage :: (JavaObjectClass this_) => this_ -> IO (BufferedImage.BufferedImage)
getBufferedImage object_ = jmethod object_ "getBufferedImage" (\() -> (getBufferedImage_impl (javaCast object_ :: BufferedImageFrameCacheable))) ()

getBufferedImage_super :: (JavaObjectClass this_) => this_ -> IO (BufferedImage.BufferedImage)
getBufferedImage_super object_ = (getBufferedImage_impl (javaCast object_ :: BufferedImageFrameCacheable))

getBufferedImage_impl :: BufferedImageFrameCacheable -> IO (BufferedImage.BufferedImage)
getBufferedImage_impl this = do
        pure ((jget (this).bufferedImage))


setBufferedImage :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (())
setBufferedImage object_ a1 = jmethod object_ "setBufferedImage" (\() -> (setBufferedImage_impl (javaCast object_ :: BufferedImageFrameCacheable))) () a1

setBufferedImage_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (())
setBufferedImage_super object_ a1 = (setBufferedImage_impl (javaCast object_ :: BufferedImageFrameCacheable)) a1

setBufferedImage_impl :: BufferedImageFrameCacheable -> BufferedImage.BufferedImage -> IO (())
setBufferedImage_impl this bufferedImage = do
        jset (this).bufferedImage (bufferedImage)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: BufferedImageFrameCacheable))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: BufferedImageFrameCacheable))

getFrame_impl :: BufferedImageFrameCacheable -> IO (Int64)
getFrame_impl this = do
        pure ((jget (this).frame))


setFrame :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: BufferedImageFrameCacheable))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: BufferedImageFrameCacheable)) a1

setFrame_impl :: BufferedImageFrameCacheable -> Int64 -> IO (())
setFrame_impl this frame = do
        jset (this).frame (frame)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BufferedImageFrameCacheable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BufferedImageFrameCacheable))

toString_impl :: BufferedImageFrameCacheable -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Frame: ")
        Control.Monad.void (StringMaker.appendlong stringBuffer (jio (BufferedImageFrameCacheable.getFrame this)))
        (StringMaker.toString stringBuffer)


