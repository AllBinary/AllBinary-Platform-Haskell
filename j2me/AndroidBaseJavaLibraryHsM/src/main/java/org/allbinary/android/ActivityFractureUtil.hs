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
-- package org.allbinary.android
module ActivityFractureUtil where

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
import qualified Activity -- android.app.Activity

data ActivityFractureUtil = ActivityFractureUtil
    { header_ :: JavaHeader
    }

instance JavaNull ActivityFractureUtil where
    javaNull = javaNullRecord "ActivityFractureUtil"

instance JavaEquals ActivityFractureUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ActivityFractureUtil where
    (==) = jrecordEquals

instance JavaObjectClass ActivityFractureUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ActivityFractureUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ActivityFractureUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "setFullScreen" (\() -> setFullScreen_impl this)
    pure this

initFields_ :: ActivityFractureUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ActivityFractureUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ActivityFractureUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ActivityFractureUtil))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: ActivityFractureUtil)) a1

process_impl :: ActivityFractureUtil -> Activity.Activity -> IO (())
process_impl this activity = do
        pure ()


setFullScreen :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
setFullScreen object_ a1 = jmethod object_ "setFullScreen" (\() -> (setFullScreen_impl (javaCast object_ :: ActivityFractureUtil))) () a1

setFullScreen_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
setFullScreen_super object_ a1 = (setFullScreen_impl (javaCast object_ :: ActivityFractureUtil)) a1

setFullScreen_impl :: ActivityFractureUtil -> Activity.Activity -> IO (())
setFullScreen_impl this activity = do
        pure ()


