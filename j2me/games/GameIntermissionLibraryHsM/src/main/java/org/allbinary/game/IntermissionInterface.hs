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
-- package org.allbinary.game
module IntermissionInterface where

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
import qualified IntermissionEnableListenerInterface -- same package or java.lang
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- Java interface: the classes that implement it have these functions
data IntermissionInterface = IntermissionInterface
    { header_ :: JavaHeader
    }

instance JavaNull IntermissionInterface where
    javaNull = javaNullRecord "IntermissionInterface"

instance JavaEquals IntermissionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IntermissionInterface where
    (==) = jrecordEquals

instance JavaObjectClass IntermissionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> IntermissionInterface
fromHeader_ header = IntermissionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (IntermissionInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getTimeDelayHelper :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper object_ = jmethod object_ "getTimeDelayHelper" (\() -> (getTimeDelayHelper_impl (javaCast object_ :: IntermissionInterface))) ()

getTimeDelayHelper_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_super object_ = (getTimeDelayHelper_impl (javaCast object_ :: IntermissionInterface))

getTimeDelayHelper_impl :: IntermissionInterface -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_impl this = javaAbstractMethod "getTimeDelayHelper"


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: IntermissionInterface))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: IntermissionInterface))

isEnabled_impl :: IntermissionInterface -> IO (Bool)
isEnabled_impl this = javaAbstractMethod "isEnabled"


setEnabled :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setEnabled object_ a1 = jmethod object_ "setEnabled" (\() -> (setEnabled_impl (javaCast object_ :: IntermissionInterface))) () a1

setEnabled_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setEnabled_super object_ a1 = (setEnabled_impl (javaCast object_ :: IntermissionInterface)) a1

setEnabled_impl :: IntermissionInterface -> Bool -> IO (())
setEnabled_impl this value = javaAbstractMethod "setEnabled"


setListener :: (JavaObjectClass this_) => this_ -> IntermissionEnableListenerInterface.IntermissionEnableListenerInterface -> IO (())
setListener object_ a1 = jmethod object_ "setListener" (\() -> (setListener_impl (javaCast object_ :: IntermissionInterface))) () a1

setListener_super :: (JavaObjectClass this_) => this_ -> IntermissionEnableListenerInterface.IntermissionEnableListenerInterface -> IO (())
setListener_super object_ a1 = (setListener_impl (javaCast object_ :: IntermissionInterface)) a1

setListener_impl :: IntermissionInterface -> IntermissionEnableListenerInterface.IntermissionEnableListenerInterface -> IO (())
setListener_impl this enableListener = javaAbstractMethod "setListener"


