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
-- package org.allbinary.media.image.comparison
module ImageComparisonResultFrameCacheable where

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
import qualified ImageComparisonResult -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface

-- implements CacheableInterface
data ImageComparisonResultFrameCacheable = ImageComparisonResultFrameCacheable
    { header_ :: JavaHeader
    , frame :: IORef (Int64)
    , imageComparisonResult :: IORef (ImageComparisonResult.ImageComparisonResult)
    }

instance JavaNull ImageComparisonResultFrameCacheable where
    javaNull = javaNullRecord "ImageComparisonResultFrameCacheable"

instance JavaEquals ImageComparisonResultFrameCacheable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonResultFrameCacheable where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonResultFrameCacheable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageComparisonResultFrameCacheable
newRecord_ = do
    header_ <- newJavaHeader
    frame <- newIORef javaNull
    imageComparisonResult <- newIORef javaNull
    let this = ImageComparisonResultFrameCacheable header_ frame imageComparisonResult
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getImageComparisonResult" (\() -> getImageComparisonResult_impl this)
    jregisterMethod header_ "setImageComparisonResult" (\() -> setImageComparisonResult_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ImageComparisonResultFrameCacheable -> IO ()
initFields_ this = do
    jset this.frame (javaNull)
    jset this.imageComparisonResult (javaNull)
    pure ()

new_2 :: ImageComparisonResult.ImageComparisonResult -> Int64 -> IO ImageComparisonResultFrameCacheable
new_2 imageComparisonResult frame = do
    this <- newRecord_
    init_2 this imageComparisonResult frame
    pure this

init_2 :: ImageComparisonResultFrameCacheable -> ImageComparisonResult.ImageComparisonResult -> Int64 -> IO ()
init_2 this imageComparisonResult frame = do
        initFields_ this
        Control.Monad.void (ImageComparisonResultFrameCacheable.setImageComparisonResult this imageComparisonResult)
        jset (this).frame (frame)
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))

getKey_impl :: ImageComparisonResultFrameCacheable -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).frame)))


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))

getFrame_impl :: ImageComparisonResultFrameCacheable -> IO (Int64)
getFrame_impl this = do
        pure ((jget (this).frame))


setFrame :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: ImageComparisonResultFrameCacheable)) a1

setFrame_impl :: ImageComparisonResultFrameCacheable -> Int64 -> IO (())
setFrame_impl this frame = do
        jset (this).frame (frame)
        pure ()


getImageComparisonResult :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult object_ = jmethod object_ "getImageComparisonResult" (\() -> (getImageComparisonResult_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))) ()

getImageComparisonResult_super :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult_super object_ = (getImageComparisonResult_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))

getImageComparisonResult_impl :: ImageComparisonResultFrameCacheable -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult_impl this = do
        pure ((jget (this).imageComparisonResult))


setImageComparisonResult :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult object_ a1 = jmethod object_ "setImageComparisonResult" (\() -> (setImageComparisonResult_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))) () a1

setImageComparisonResult_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult_super object_ a1 = (setImageComparisonResult_impl (javaCast object_ :: ImageComparisonResultFrameCacheable)) a1

setImageComparisonResult_impl :: ImageComparisonResultFrameCacheable -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult_impl this imageComparisonResult = do
        jset (this).imageComparisonResult (imageComparisonResult)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ImageComparisonResultFrameCacheable))

toString_impl :: ImageComparisonResultFrameCacheable -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Frame: ")
        Control.Monad.void (StringMaker.appendlong stringBuffer (jio (ImageComparisonResultFrameCacheable.getFrame this)))
        (StringMaker.toString stringBuffer)


