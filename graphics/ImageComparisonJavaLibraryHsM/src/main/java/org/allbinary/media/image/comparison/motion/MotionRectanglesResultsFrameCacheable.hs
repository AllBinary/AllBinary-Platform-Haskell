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
-- package org.allbinary.media.image.comparison.motion
module MotionRectanglesResultsFrameCacheable where

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
import qualified MotionRectangles -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface

-- implements CacheableInterface
data MotionRectanglesResultsFrameCacheable = MotionRectanglesResultsFrameCacheable
    { header_ :: JavaHeader
    , motionRectangles :: IORef (MotionRectangles.MotionRectangles)
    , frame :: IORef (Int64)
    }

instance JavaNull MotionRectanglesResultsFrameCacheable where
    javaNull = javaNullRecord "MotionRectanglesResultsFrameCacheable"

instance JavaEquals MotionRectanglesResultsFrameCacheable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRectanglesResultsFrameCacheable where
    (==) = jrecordEquals

instance JavaObjectClass MotionRectanglesResultsFrameCacheable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MotionRectanglesResultsFrameCacheable
newRecord_ = do
    header_ <- newJavaHeader
    motionRectangles <- newIORef javaNull
    frame <- newIORef javaNull
    let this = MotionRectanglesResultsFrameCacheable header_ motionRectangles frame
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getMotionRectangles" (\() -> getMotionRectangles_impl this)
    jregisterMethod header_ "setMotionRectangles" (\() -> setMotionRectangles_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: MotionRectanglesResultsFrameCacheable -> IO ()
initFields_ this = do
    jset this.motionRectangles (javaNull)
    jset this.frame (javaNull)
    pure ()

new_2 :: MotionRectangles.MotionRectangles -> Int64 -> IO MotionRectanglesResultsFrameCacheable
new_2 motionRectangles frame = do
    this <- newRecord_
    init_2 this motionRectangles frame
    pure this

init_2 :: MotionRectanglesResultsFrameCacheable -> MotionRectangles.MotionRectangles -> Int64 -> IO ()
init_2 this motionRectangles frame = do
        initFields_ this
        jset (this).frame (frame)
        Control.Monad.void (MotionRectanglesResultsFrameCacheable.setMotionRectangles this motionRectangles)
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: MotionRectanglesResultsFrameCacheable))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: MotionRectanglesResultsFrameCacheable))

getKey_impl :: MotionRectanglesResultsFrameCacheable -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).frame)))


getMotionRectangles :: (JavaObjectClass this_) => this_ -> IO (MotionRectangles.MotionRectangles)
getMotionRectangles object_ = jmethod object_ "getMotionRectangles" (\() -> (getMotionRectangles_impl (javaCast object_ :: MotionRectanglesResultsFrameCacheable))) ()

getMotionRectangles_super :: (JavaObjectClass this_) => this_ -> IO (MotionRectangles.MotionRectangles)
getMotionRectangles_super object_ = (getMotionRectangles_impl (javaCast object_ :: MotionRectanglesResultsFrameCacheable))

getMotionRectangles_impl :: MotionRectanglesResultsFrameCacheable -> IO (MotionRectangles.MotionRectangles)
getMotionRectangles_impl this = do
        pure ((jget (this).motionRectangles))


setMotionRectangles :: (JavaObjectClass this_) => this_ -> MotionRectangles.MotionRectangles -> IO (())
setMotionRectangles object_ a1 = jmethod object_ "setMotionRectangles" (\() -> (setMotionRectangles_impl (javaCast object_ :: MotionRectanglesResultsFrameCacheable))) () a1

setMotionRectangles_super :: (JavaObjectClass this_) => this_ -> MotionRectangles.MotionRectangles -> IO (())
setMotionRectangles_super object_ a1 = (setMotionRectangles_impl (javaCast object_ :: MotionRectanglesResultsFrameCacheable)) a1

setMotionRectangles_impl :: MotionRectanglesResultsFrameCacheable -> MotionRectangles.MotionRectangles -> IO (())
setMotionRectangles_impl this motionRectangles = do
        jset (this).motionRectangles (motionRectangles)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: MotionRectanglesResultsFrameCacheable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: MotionRectanglesResultsFrameCacheable))

toString_impl :: MotionRectanglesResultsFrameCacheable -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Frame: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (Any.toString ((jio (MotionRectanglesResultsFrameCacheable.getKey this))))))
        (StringMaker.toString stringBuffer)


