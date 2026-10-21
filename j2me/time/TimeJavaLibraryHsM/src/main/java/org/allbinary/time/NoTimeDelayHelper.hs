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
-- package org.allbinary.time
module NoTimeDelayHelper (module NoTimeDelayHelper, module TimeDelayHelper) where

import TimeDelayHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isTimeTNT, isTimeTNT_super, isTimeTNT_impl, isTimeSinceTNT, isTimeSinceTNT_super, isTimeSinceTNT_impl, isTime, isTime_super, isTime_impl, isTimeSince, isTimeSince_super, isTimeSince_impl, sINGLETON)
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
import qualified TimeDelayHelper

data NoTimeDelayHelper = NoTimeDelayHelper
    { header_ :: JavaHeader
    , base :: TimeDelayHelper.TimeDelayHelper
    }

instance JavaNull NoTimeDelayHelper where
    javaNull = javaNullRecord "NoTimeDelayHelper"

instance JavaEquals NoTimeDelayHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoTimeDelayHelper where
    (==) = jrecordEquals

instance JavaObjectClass NoTimeDelayHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO NoTimeDelayHelper
newRecord_ = do
    base <- TimeDelayHelper.newRecord_
    let header_ = base.header_
    let this = NoTimeDelayHelper header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isTimeTNT" (\() -> isTimeTNT_impl this)
    jregisterMethod header_ "isTimeSinceTNT" (\() -> isTimeSinceTNT_impl this)
    jregisterMethod header_ "isTime" (\() -> isTime_impl this)
    jregisterMethod header_ "isTimeSince" (\() -> isTimeSince_impl this)
    pure this

initFields_ :: NoTimeDelayHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoTimeDelayHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoTimeDelayHelper -> IO ()
init_ this = do
        TimeDelayHelper.init_1 this.base (0)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isTimeTNT :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTimeTNT object_ = jmethod object_ "isTimeTNT" (\() -> (isTimeTNT_impl (javaCast object_ :: NoTimeDelayHelper))) ()

isTimeTNT_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTimeTNT_super object_ = (isTimeTNT_impl (javaCast object_ :: NoTimeDelayHelper))

isTimeTNT_impl :: NoTimeDelayHelper -> IO (Bool)
isTimeTNT_impl this = do
        pure (True)


isTimeSinceTNT :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isTimeSinceTNT object_ a1 = jmethod object_ "isTimeSinceTNT" (\() -> (isTimeSinceTNT_impl (javaCast object_ :: NoTimeDelayHelper))) () a1

isTimeSinceTNT_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isTimeSinceTNT_super object_ a1 = (isTimeSinceTNT_impl (javaCast object_ :: NoTimeDelayHelper)) a1

isTimeSinceTNT_impl :: NoTimeDelayHelper -> Int -> IO (Bool)
isTimeSinceTNT_impl this delay = do
        pure (True)


isTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isTime object_ a1 = jmethod object_ "isTime" (\() -> (isTime_impl (javaCast object_ :: NoTimeDelayHelper))) () a1

isTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isTime_super object_ a1 = (isTime_impl (javaCast object_ :: NoTimeDelayHelper)) a1

isTime_impl :: NoTimeDelayHelper -> Int64 -> IO (Bool)
isTime_impl this currentTime = do
        pure (True)


isTimeSince :: (JavaObjectClass this_) => this_ -> Int -> Int64 -> IO (Bool)
isTimeSince object_ a1 a2 = jmethod object_ "isTimeSince" (\() -> (isTimeSince_impl (javaCast object_ :: NoTimeDelayHelper))) () a1 a2

isTimeSince_super :: (JavaObjectClass this_) => this_ -> Int -> Int64 -> IO (Bool)
isTimeSince_super object_ a1 a2 = (isTimeSince_impl (javaCast object_ :: NoTimeDelayHelper)) a1 a2

isTimeSince_impl :: NoTimeDelayHelper -> Int -> Int64 -> IO (Bool)
isTimeSince_impl this delay currentTime = do
        pure (True)


