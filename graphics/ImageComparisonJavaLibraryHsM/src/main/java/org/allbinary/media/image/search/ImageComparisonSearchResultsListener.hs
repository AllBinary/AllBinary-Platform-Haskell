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
module ImageComparisonSearchResultsListener (module ImageComparisonSearchResultsListener, module BasicEventListenerInterface) where

import BasicEventListenerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onImageComparisonResultsEvent, onImageComparisonResultsEvent_super, onImageComparisonResultsEvent_impl, toString)
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
import qualified ImageComparisonSearchResultsEvent -- same package or java.lang
import qualified BasicEventListenerInterface -- org.allbinary.logic.util.event.BasicEventListenerInterface

-- Java interface: the classes that implement it have these functions
data ImageComparisonSearchResultsListener = ImageComparisonSearchResultsListener
    { header_ :: JavaHeader
    }

instance JavaNull ImageComparisonSearchResultsListener where
    javaNull = javaNullRecord "ImageComparisonSearchResultsListener"

instance JavaEquals ImageComparisonSearchResultsListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonSearchResultsListener where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonSearchResultsListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ImageComparisonSearchResultsListener
fromHeader_ header = ImageComparisonSearchResultsListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ImageComparisonSearchResultsListener header)
    BasicEventListenerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onImageComparisonResultsEvent :: (JavaObjectClass this_) => this_ -> ImageComparisonSearchResultsEvent.ImageComparisonSearchResultsEvent -> IO (())
onImageComparisonResultsEvent object_ a1 = jmethod object_ "onImageComparisonResultsEvent" (\() -> (onImageComparisonResultsEvent_impl (javaCast object_ :: ImageComparisonSearchResultsListener))) () a1

onImageComparisonResultsEvent_super :: (JavaObjectClass this_) => this_ -> ImageComparisonSearchResultsEvent.ImageComparisonSearchResultsEvent -> IO (())
onImageComparisonResultsEvent_super object_ a1 = (onImageComparisonResultsEvent_impl (javaCast object_ :: ImageComparisonSearchResultsListener)) a1

onImageComparisonResultsEvent_impl :: ImageComparisonSearchResultsListener -> ImageComparisonSearchResultsEvent.ImageComparisonSearchResultsEvent -> IO (())
onImageComparisonResultsEvent_impl this imageComparisonSearchResultsEvent = javaAbstractMethod "onImageComparisonResultsEvent"


