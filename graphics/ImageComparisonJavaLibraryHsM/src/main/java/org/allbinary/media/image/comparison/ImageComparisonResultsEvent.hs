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
module ImageComparisonResultsEvent (module ImageComparisonResultsEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getImageComparisonResult, getImageComparisonResult_super, getImageComparisonResult_impl, setImageComparisonResult, setImageComparisonResult_super, setImageComparisonResult_impl, imageComparisonResult)
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
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data ImageComparisonResultsEvent = ImageComparisonResultsEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , imageComparisonResult :: IORef (ImageComparisonResult.ImageComparisonResult)
    }

instance JavaNull ImageComparisonResultsEvent where
    javaNull = javaNullRecord "ImageComparisonResultsEvent"

instance JavaEquals ImageComparisonResultsEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonResultsEvent where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonResultsEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageComparisonResultsEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    imageComparisonResult <- newIORef javaNull
    let this = ImageComparisonResultsEvent header_ base imageComparisonResult
    jregisterLevel header_ this
    jregisterMethod header_ "getImageComparisonResult" (\() -> getImageComparisonResult_impl this)
    jregisterMethod header_ "setImageComparisonResult" (\() -> setImageComparisonResult_impl this)
    pure this

initFields_ :: ImageComparisonResultsEvent -> IO ()
initFields_ this = do
    jset this.imageComparisonResult (javaNull)
    pure ()

new_2 :: (JavaObjectClass o1) => o1 -> ImageComparisonResult.ImageComparisonResult -> IO ImageComparisonResultsEvent
new_2 anyTypeObject_ imageComparisonInfo = do
    this <- newRecord_
    init_2 this anyTypeObject_ imageComparisonInfo
    pure this

init_2 :: (JavaObjectClass o1) => ImageComparisonResultsEvent -> o1 -> ImageComparisonResult.ImageComparisonResult -> IO ()
init_2 this anyTypeObject_ imageComparisonInfo = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ImageComparisonResultsEvent.setImageComparisonResult this imageComparisonInfo)
        pure ()


getImageComparisonResult :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult object_ = jmethod object_ "getImageComparisonResult" (\() -> (getImageComparisonResult_impl (javaCast object_ :: ImageComparisonResultsEvent))) ()

getImageComparisonResult_super :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult_super object_ = (getImageComparisonResult_impl (javaCast object_ :: ImageComparisonResultsEvent))

getImageComparisonResult_impl :: ImageComparisonResultsEvent -> IO (ImageComparisonResult.ImageComparisonResult)
getImageComparisonResult_impl this = do
        pure ((jget (this).imageComparisonResult))


setImageComparisonResult :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult object_ a1 = jmethod object_ "setImageComparisonResult" (\() -> (setImageComparisonResult_impl (javaCast object_ :: ImageComparisonResultsEvent))) () a1

setImageComparisonResult_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult_super object_ a1 = (setImageComparisonResult_impl (javaCast object_ :: ImageComparisonResultsEvent)) a1

setImageComparisonResult_impl :: ImageComparisonResultsEvent -> ImageComparisonResult.ImageComparisonResult -> IO (())
setImageComparisonResult_impl this imageComparisonResult = do
        jset (this).imageComparisonResult (imageComparisonResult)
        pure ()


