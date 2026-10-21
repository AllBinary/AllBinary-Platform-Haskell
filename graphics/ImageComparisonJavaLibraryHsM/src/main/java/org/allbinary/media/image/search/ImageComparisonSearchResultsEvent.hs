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
-- package org.allbinary.media.image.search
module ImageComparisonSearchResultsEvent (module ImageComparisonSearchResultsEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getImageComparisonSearch, getImageComparisonSearch_super, getImageComparisonSearch_impl, setImageComparisonSearch, setImageComparisonSearch_super, setImageComparisonSearch_impl, imageComparisonSearch)
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
import qualified ImageComparisonSearch -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data ImageComparisonSearchResultsEvent = ImageComparisonSearchResultsEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , imageComparisonSearch :: IORef (ImageComparisonSearch.ImageComparisonSearch)
    }

instance JavaNull ImageComparisonSearchResultsEvent where
    javaNull = javaNullRecord "ImageComparisonSearchResultsEvent"

instance JavaEquals ImageComparisonSearchResultsEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonSearchResultsEvent where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonSearchResultsEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageComparisonSearchResultsEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    imageComparisonSearch <- newIORef javaNull
    let this = ImageComparisonSearchResultsEvent header_ base imageComparisonSearch
    jregisterLevel header_ this
    jregisterMethod header_ "getImageComparisonSearch" (\() -> getImageComparisonSearch_impl this)
    jregisterMethod header_ "setImageComparisonSearch" (\() -> setImageComparisonSearch_impl this)
    pure this

initFields_ :: ImageComparisonSearchResultsEvent -> IO ()
initFields_ this = do
    jset this.imageComparisonSearch (javaNull)
    pure ()

new_2 :: (JavaObjectClass o1) => o1 -> ImageComparisonSearch.ImageComparisonSearch -> IO ImageComparisonSearchResultsEvent
new_2 anyTypeObject_ imageComparisonSearch = do
    this <- newRecord_
    init_2 this anyTypeObject_ imageComparisonSearch
    pure this

init_2 :: (JavaObjectClass o1) => ImageComparisonSearchResultsEvent -> o1 -> ImageComparisonSearch.ImageComparisonSearch -> IO ()
init_2 this anyTypeObject_ imageComparisonSearch = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ImageComparisonSearchResultsEvent.setImageComparisonSearch this imageComparisonSearch)
        pure ()


getImageComparisonSearch :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonSearch.ImageComparisonSearch)
getImageComparisonSearch object_ = jmethod object_ "getImageComparisonSearch" (\() -> (getImageComparisonSearch_impl (javaCast object_ :: ImageComparisonSearchResultsEvent))) ()

getImageComparisonSearch_super :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonSearch.ImageComparisonSearch)
getImageComparisonSearch_super object_ = (getImageComparisonSearch_impl (javaCast object_ :: ImageComparisonSearchResultsEvent))

getImageComparisonSearch_impl :: ImageComparisonSearchResultsEvent -> IO (ImageComparisonSearch.ImageComparisonSearch)
getImageComparisonSearch_impl this = do
        pure ((jget (this).imageComparisonSearch))


setImageComparisonSearch :: (JavaObjectClass this_) => this_ -> ImageComparisonSearch.ImageComparisonSearch -> IO (())
setImageComparisonSearch object_ a1 = jmethod object_ "setImageComparisonSearch" (\() -> (setImageComparisonSearch_impl (javaCast object_ :: ImageComparisonSearchResultsEvent))) () a1

setImageComparisonSearch_super :: (JavaObjectClass this_) => this_ -> ImageComparisonSearch.ImageComparisonSearch -> IO (())
setImageComparisonSearch_super object_ a1 = (setImageComparisonSearch_impl (javaCast object_ :: ImageComparisonSearchResultsEvent)) a1

setImageComparisonSearch_impl :: ImageComparisonSearchResultsEvent -> ImageComparisonSearch.ImageComparisonSearch -> IO (())
setImageComparisonSearch_impl this imageComparisonSearch = do
        jset (this).imageComparisonSearch (imageComparisonSearch)
        pure ()


