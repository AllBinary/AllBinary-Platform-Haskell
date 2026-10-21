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
-- package org.allbinary.input.media.image.capture
module CapturedImageWorkerResultsEvent (module CapturedImageWorkerResultsEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getBufferedImage, getBufferedImage_super, getBufferedImage_impl, setBufferedImage, setBufferedImage_super, setBufferedImage_impl, getFrame, getFrame_super, getFrame_impl, frame, bufferedImage)
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
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data CapturedImageWorkerResultsEvent = CapturedImageWorkerResultsEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , frame :: IORef (Int64)
    , bufferedImage :: IORef (BufferedImage.BufferedImage)
    }

instance JavaNull CapturedImageWorkerResultsEvent where
    javaNull = javaNullRecord "CapturedImageWorkerResultsEvent"

instance JavaEquals CapturedImageWorkerResultsEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CapturedImageWorkerResultsEvent where
    (==) = jrecordEquals

instance JavaObjectClass CapturedImageWorkerResultsEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CapturedImageWorkerResultsEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    frame <- newIORef javaNull
    bufferedImage <- newIORef javaNull
    let this = CapturedImageWorkerResultsEvent header_ base frame bufferedImage
    jregisterLevel header_ this
    jregisterMethod header_ "getBufferedImage" (\() -> getBufferedImage_impl this)
    jregisterMethod header_ "setBufferedImage" (\() -> setBufferedImage_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    pure this

initFields_ :: CapturedImageWorkerResultsEvent -> IO ()
initFields_ this = do
    jset this.frame (javaNull)
    jset this.bufferedImage (javaNull)
    pure ()

new_3 :: (JavaObjectClass o1) => o1 -> Int64 -> BufferedImage.BufferedImage -> IO CapturedImageWorkerResultsEvent
new_3 anyTypeObject_ frame bufferedImage = do
    this <- newRecord_
    init_3 this anyTypeObject_ frame bufferedImage
    pure this

init_3 :: (JavaObjectClass o1) => CapturedImageWorkerResultsEvent -> o1 -> Int64 -> BufferedImage.BufferedImage -> IO ()
init_3 this anyTypeObject_ frame bufferedImage = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).frame (frame)
        Control.Monad.void (CapturedImageWorkerResultsEvent.setBufferedImage this bufferedImage)
        pure ()


getBufferedImage :: (JavaObjectClass this_) => this_ -> IO (BufferedImage.BufferedImage)
getBufferedImage object_ = jmethod object_ "getBufferedImage" (\() -> (getBufferedImage_impl (javaCast object_ :: CapturedImageWorkerResultsEvent))) ()

getBufferedImage_super :: (JavaObjectClass this_) => this_ -> IO (BufferedImage.BufferedImage)
getBufferedImage_super object_ = (getBufferedImage_impl (javaCast object_ :: CapturedImageWorkerResultsEvent))

getBufferedImage_impl :: CapturedImageWorkerResultsEvent -> IO (BufferedImage.BufferedImage)
getBufferedImage_impl this = do
        pure ((jget (this).bufferedImage))


setBufferedImage :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (())
setBufferedImage object_ a1 = jmethod object_ "setBufferedImage" (\() -> (setBufferedImage_impl (javaCast object_ :: CapturedImageWorkerResultsEvent))) () a1

setBufferedImage_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (())
setBufferedImage_super object_ a1 = (setBufferedImage_impl (javaCast object_ :: CapturedImageWorkerResultsEvent)) a1

setBufferedImage_impl :: CapturedImageWorkerResultsEvent -> BufferedImage.BufferedImage -> IO (())
setBufferedImage_impl this bufferedImage = do
        jset (this).bufferedImage (bufferedImage)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: CapturedImageWorkerResultsEvent))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: CapturedImageWorkerResultsEvent))

getFrame_impl :: CapturedImageWorkerResultsEvent -> IO (Int64)
getFrame_impl this = do
        pure ((jget (this).frame))


