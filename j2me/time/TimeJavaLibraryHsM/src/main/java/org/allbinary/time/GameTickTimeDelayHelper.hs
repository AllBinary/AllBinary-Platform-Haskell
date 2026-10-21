{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module GameTickTimeDelayHelper where

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

data GameTickTimeDelayHelper = GameTickTimeDelayHelper
    { header_ :: JavaHeader
    , timeDelta :: IORef (Int64)
    , startTime :: IORef (Int64)
    , lastStartTime :: IORef (Int64)
    }

instance JavaNull GameTickTimeDelayHelper where
    javaNull = javaNullRecord "GameTickTimeDelayHelper"

instance JavaEquals GameTickTimeDelayHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameTickTimeDelayHelper where
    (==) = jrecordEquals

instance JavaObjectClass GameTickTimeDelayHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameTickTimeDelayHelper
newRecord_ = do
    header_ <- newJavaHeader
    timeDelta <- newIORef 0
    startTime <- newIORef 0
    lastStartTime <- newIORef 0
    let this = GameTickTimeDelayHelper header_ timeDelta startTime lastStartTime
    jregisterLevel header_ this
    jregisterMethod header_ "setStartTime" (\() -> setStartTime_impl this)
    jregisterMethod header_ "loop_" (\() -> loop__impl this)
    jregisterMethod header_ "getTimeFromStart" (\() -> getTimeFromStart_impl this)
    pure this

initFields_ :: GameTickTimeDelayHelper -> IO ()
initFields_ this = do
    jset this.timeDelta (0)
    jset this.startTime (0)
    jset this.lastStartTime (0)
    pure ()

new_1 :: Int64 -> IO GameTickTimeDelayHelper
new_1 startTime = do
    this <- newRecord_
    init_1 this startTime
    pure this

init_1 :: GameTickTimeDelayHelper -> Int64 -> IO ()
init_1 this startTime = do
        initFields_ this
        jset (this).startTime (startTime)
        jset (this).lastStartTime (0)
        pure ()


setStartTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
setStartTime object_ = jmethod object_ "setStartTime" (\() -> (setStartTime_impl (javaCast object_ :: GameTickTimeDelayHelper))) ()

setStartTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
setStartTime_super object_ = (setStartTime_impl (javaCast object_ :: GameTickTimeDelayHelper))

setStartTime_impl :: GameTickTimeDelayHelper -> IO (Int64)
setStartTime_impl this = do
        assignedValue <- jcurrentTimeMillis
        jset (this).startTime (assignedValue)
        pure ((jget (this).startTime))


loop_ :: (JavaObjectClass this_) => this_ -> IO (())
loop_ object_ = jmethod object_ "loop_" (\() -> (loop__impl (javaCast object_ :: GameTickTimeDelayHelper))) ()

loop__super :: (JavaObjectClass this_) => this_ -> IO (())
loop__super object_ = (loop__impl (javaCast object_ :: GameTickTimeDelayHelper))

loop__impl :: GameTickTimeDelayHelper -> IO (())
loop__impl this = do
        if ((jget (this).lastStartTime) == (Prelude.minBound :: Int64)) then do
            jset (this).timeDelta (0)
        else do
            jset (this).timeDelta (((jio jcurrentTimeMillis) - (jget (this).lastStartTime)))
        pure ()


getTimeFromStart :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTimeFromStart object_ = jmethod object_ "getTimeFromStart" (\() -> (getTimeFromStart_impl (javaCast object_ :: GameTickTimeDelayHelper))) ()

getTimeFromStart_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTimeFromStart_super object_ = (getTimeFromStart_impl (javaCast object_ :: GameTickTimeDelayHelper))

getTimeFromStart_impl :: GameTickTimeDelayHelper -> IO (Int64)
getTimeFromStart_impl this = do
        pure (((jget (this).startTime) - (jget (this).lastStartTime)))


