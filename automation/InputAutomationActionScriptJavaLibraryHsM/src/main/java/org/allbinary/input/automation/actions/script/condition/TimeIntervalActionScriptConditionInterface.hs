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
-- package org.allbinary.input.automation.actions.script.condition
module TimeIntervalActionScriptConditionInterface where

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
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- Java interface: the classes that implement it have these functions
data TimeIntervalActionScriptConditionInterface = TimeIntervalActionScriptConditionInterface
    { header_ :: JavaHeader
    }

instance JavaNull TimeIntervalActionScriptConditionInterface where
    javaNull = javaNullRecord "TimeIntervalActionScriptConditionInterface"

instance JavaEquals TimeIntervalActionScriptConditionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeIntervalActionScriptConditionInterface where
    (==) = jrecordEquals

instance JavaObjectClass TimeIntervalActionScriptConditionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TimeIntervalActionScriptConditionInterface
fromHeader_ header = TimeIntervalActionScriptConditionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TimeIntervalActionScriptConditionInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getTimeDelayHelper :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper object_ = jmethod object_ "getTimeDelayHelper" (\() -> (getTimeDelayHelper_impl (javaCast object_ :: TimeIntervalActionScriptConditionInterface))) ()

getTimeDelayHelper_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_super object_ = (getTimeDelayHelper_impl (javaCast object_ :: TimeIntervalActionScriptConditionInterface))

getTimeDelayHelper_impl :: TimeIntervalActionScriptConditionInterface -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_impl this = javaAbstractMethod "getTimeDelayHelper"


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: TimeIntervalActionScriptConditionInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: TimeIntervalActionScriptConditionInterface))

log_impl :: TimeIntervalActionScriptConditionInterface -> IO (())
log_impl this = javaAbstractMethod "log"


