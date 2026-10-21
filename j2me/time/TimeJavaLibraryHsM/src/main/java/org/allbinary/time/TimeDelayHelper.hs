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
module TimeDelayHelper where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data TimeDelayHelper = TimeDelayHelper
    { header_ :: JavaHeader
    , startTime :: IORef (Int64)
    , elapsedTimeAtPause :: IORef (Int64)
    , delay :: IORef (Int)
    }

instance JavaNull TimeDelayHelper where
    javaNull = javaNullRecord "TimeDelayHelper"

instance JavaEquals TimeDelayHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeDelayHelper where
    (==) = jrecordEquals

instance JavaObjectClass TimeDelayHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TimeDelayHelper
newRecord_ = do
    header_ <- newJavaHeader
    startTime <- newIORef 0
    elapsedTimeAtPause <- newIORef 0
    delay <- newIORef 0
    let this = TimeDelayHelper header_ startTime elapsedTimeAtPause delay
    jregisterLevel header_ this
    jregisterMethod header_ "isTimeTNT" (\() -> isTimeTNT_impl this)
    jregisterMethod header_ "isTimeSinceTNT" (\() -> isTimeSinceTNT_impl this)
    jregisterMethod header_ "isTime" (\() -> isTime_impl this)
    jregisterMethod header_ "isTimeWithoutReset" (\() -> isTimeWithoutReset_impl this)
    jregisterMethod header_ "isTimeSince" (\() -> isTimeSince_impl this)
    jregisterMethod header_ "getElapsedTNT" (\() -> getElapsedTNT_impl this)
    jregisterMethod header_ "getElapsed" (\() -> getElapsed_impl this)
    jregisterMethod header_ "isElapsed" (\() -> isElapsed_impl this)
    jregisterMethod header_ "isElapsedTNT" (\() -> isElapsedTNT_impl this)
    jregisterMethod header_ "setStartTime" (\() -> setStartTime_impl this)
    jregisterMethod header_ "getStartTime" (\() -> getStartTime_impl this)
    jregisterMethod header_ "setStartTimeTNT" (\() -> setStartTimeTNT_impl this)
    jregisterMethod header_ "pause" (\() -> pause_impl this)
    jregisterMethod header_ "resume" (\() -> resume_impl this)
    jregisterMethod header_ "toStringAt" (\() -> toStringAt_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TimeDelayHelper -> IO ()
initFields_ this = do
    jset this.startTime ((Prelude.fromIntegral ((Prelude.negate 1) :: Int)))
    jset this.elapsedTimeAtPause ((Prelude.minBound :: Int64))
    jset this.delay (0)
    pure ()

new_1 :: Int -> IO TimeDelayHelper
new_1 delay = do
    this <- newRecord_
    init_1 this delay
    pure this

init_1 :: TimeDelayHelper -> Int -> IO ()
init_1 this delay = do
        initFields_ this
        jset (this).delay (delay)
        Control.Monad.void (TimeDelayHelper.setStartTimeTNT this)
        pure ()


isTimeTNT :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTimeTNT object_ = jmethod object_ "isTimeTNT" (\() -> (isTimeTNT_impl (javaCast object_ :: TimeDelayHelper))) ()

isTimeTNT_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTimeTNT_super object_ = (isTimeTNT_impl (javaCast object_ :: TimeDelayHelper))

isTimeTNT_impl :: TimeDelayHelper -> IO (Bool)
isTimeTNT_impl this = do
    javaCatchReturn $ do
        currentTime <- jcurrentTimeMillis
        when ((currentTime - (jget (this).startTime)) > (Prelude.fromIntegral (jget (this).delay))) $ do
            jset (this).startTime (currentTime)
            javaReturn (True)
        pure (False)


isTimeSinceTNT :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isTimeSinceTNT object_ a1 = jmethod object_ "isTimeSinceTNT" (\() -> (isTimeSinceTNT_impl (javaCast object_ :: TimeDelayHelper))) () a1

isTimeSinceTNT_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isTimeSinceTNT_super object_ a1 = (isTimeSinceTNT_impl (javaCast object_ :: TimeDelayHelper)) a1

isTimeSinceTNT_impl :: TimeDelayHelper -> Int -> IO (Bool)
isTimeSinceTNT_impl this delay = do
    javaCatchReturn $ do
        currentTime <- jcurrentTimeMillis
        when ((currentTime - (jget (this).startTime)) > (Prelude.fromIntegral delay)) $ do
            jset (this).startTime (currentTime)
            javaReturn (True)
        pure (False)


isTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isTime object_ a1 = jmethod object_ "isTime" (\() -> (isTime_impl (javaCast object_ :: TimeDelayHelper))) () a1

isTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isTime_super object_ a1 = (isTime_impl (javaCast object_ :: TimeDelayHelper)) a1

isTime_impl :: TimeDelayHelper -> Int64 -> IO (Bool)
isTime_impl this currentTime = do
    javaCatchReturn $ do
        when ((currentTime - (jget (this).startTime)) > (Prelude.fromIntegral (jget (this).delay))) $ do
            jset (this).startTime (currentTime)
            javaReturn (True)
        pure (False)


isTimeWithoutReset :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isTimeWithoutReset object_ a1 = jmethod object_ "isTimeWithoutReset" (\() -> (isTimeWithoutReset_impl (javaCast object_ :: TimeDelayHelper))) () a1

isTimeWithoutReset_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isTimeWithoutReset_super object_ a1 = (isTimeWithoutReset_impl (javaCast object_ :: TimeDelayHelper)) a1

isTimeWithoutReset_impl :: TimeDelayHelper -> Int64 -> IO (Bool)
isTimeWithoutReset_impl this currentTime = do
    javaCatchReturn $ do
        when ((currentTime - (jget (this).startTime)) > (Prelude.fromIntegral (jget (this).delay))) $ do
            javaReturn (True)
        pure (False)


isTimeSince :: (JavaObjectClass this_) => this_ -> Int -> Int64 -> IO (Bool)
isTimeSince object_ a1 a2 = jmethod object_ "isTimeSince" (\() -> (isTimeSince_impl (javaCast object_ :: TimeDelayHelper))) () a1 a2

isTimeSince_super :: (JavaObjectClass this_) => this_ -> Int -> Int64 -> IO (Bool)
isTimeSince_super object_ a1 a2 = (isTimeSince_impl (javaCast object_ :: TimeDelayHelper)) a1 a2

isTimeSince_impl :: TimeDelayHelper -> Int -> Int64 -> IO (Bool)
isTimeSince_impl this delay currentTime = do
    javaCatchReturn $ do
        when ((currentTime - (jget (this).startTime)) > (Prelude.fromIntegral (jget (this).delay))) $ do
            jset (this).startTime (currentTime)
            javaReturn (True)
        pure (False)


getElapsedTNT :: (JavaObjectClass this_) => this_ -> IO (Int64)
getElapsedTNT object_ = jmethod object_ "getElapsedTNT" (\() -> (getElapsedTNT_impl (javaCast object_ :: TimeDelayHelper))) ()

getElapsedTNT_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getElapsedTNT_super object_ = (getElapsedTNT_impl (javaCast object_ :: TimeDelayHelper))

getElapsedTNT_impl :: TimeDelayHelper -> IO (Int64)
getElapsedTNT_impl this = do
        pure (((jio jcurrentTimeMillis) - (jget (this).startTime)))


getElapsed :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
getElapsed object_ a1 = jmethod object_ "getElapsed" (\() -> (getElapsed_impl (javaCast object_ :: TimeDelayHelper))) () a1

getElapsed_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
getElapsed_super object_ a1 = (getElapsed_impl (javaCast object_ :: TimeDelayHelper)) a1

getElapsed_impl :: TimeDelayHelper -> Int64 -> IO (Int64)
getElapsed_impl this currentTime = do
        pure ((currentTime - (jget (this).startTime)))


isElapsed :: (JavaObjectClass this_) => this_ -> Int64 -> Int64 -> IO (Bool)
isElapsed object_ a1 a2 = jmethod object_ "isElapsed" (\() -> (isElapsed_impl (javaCast object_ :: TimeDelayHelper))) () a1 a2

isElapsed_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int64 -> IO (Bool)
isElapsed_super object_ a1 a2 = (isElapsed_impl (javaCast object_ :: TimeDelayHelper)) a1 a2

isElapsed_impl :: TimeDelayHelper -> Int64 -> Int64 -> IO (Bool)
isElapsed_impl this currentTime time = do
    javaCatchReturn $ do
        if ((jio (TimeDelayHelper.getElapsed this currentTime)) > time) then do
            javaReturn (True)
        else do
            javaReturn (False)


isElapsedTNT :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isElapsedTNT object_ a1 = jmethod object_ "isElapsedTNT" (\() -> (isElapsedTNT_impl (javaCast object_ :: TimeDelayHelper))) () a1

isElapsedTNT_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
isElapsedTNT_super object_ a1 = (isElapsedTNT_impl (javaCast object_ :: TimeDelayHelper)) a1

isElapsedTNT_impl :: TimeDelayHelper -> Int64 -> IO (Bool)
isElapsedTNT_impl this time = do
    javaCatchReturn $ do
        if ((jio (TimeDelayHelper.getElapsedTNT this)) > time) then do
            javaReturn (True)
        else do
            javaReturn (False)


setStartTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setStartTime object_ a1 = jmethod object_ "setStartTime" (\() -> (setStartTime_impl (javaCast object_ :: TimeDelayHelper))) () a1

setStartTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setStartTime_super object_ a1 = (setStartTime_impl (javaCast object_ :: TimeDelayHelper)) a1

setStartTime_impl :: TimeDelayHelper -> Int64 -> IO (())
setStartTime_impl this startTime = do
        jset (this).startTime (startTime)
        pure ()


getStartTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getStartTime object_ = jmethod object_ "getStartTime" (\() -> (getStartTime_impl (javaCast object_ :: TimeDelayHelper))) ()

getStartTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getStartTime_super object_ = (getStartTime_impl (javaCast object_ :: TimeDelayHelper))

getStartTime_impl :: TimeDelayHelper -> IO (Int64)
getStartTime_impl this = do
        pure ((jget (this).startTime))


setStartTimeTNT :: (JavaObjectClass this_) => this_ -> IO (())
setStartTimeTNT object_ = jmethod object_ "setStartTimeTNT" (\() -> (setStartTimeTNT_impl (javaCast object_ :: TimeDelayHelper))) ()

setStartTimeTNT_super :: (JavaObjectClass this_) => this_ -> IO (())
setStartTimeTNT_super object_ = (setStartTimeTNT_impl (javaCast object_ :: TimeDelayHelper))

setStartTimeTNT_impl :: TimeDelayHelper -> IO (())
setStartTimeTNT_impl this = do
        assignedValue <- jcurrentTimeMillis
        jset (this).startTime (assignedValue)
        pure ()


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: TimeDelayHelper))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: TimeDelayHelper))

pause_impl :: TimeDelayHelper -> IO (())
pause_impl this = do
        assignedValue <- (TimeDelayHelper.getElapsedTNT this)
        jset (this).elapsedTimeAtPause (assignedValue)
        jset (this).startTime ((Prelude.maxBound :: Int64))
        pure ()


resume :: (JavaObjectClass this_) => this_ -> IO (Bool)
resume object_ = jmethod object_ "resume" (\() -> (resume_impl (javaCast object_ :: TimeDelayHelper))) ()

resume_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
resume_super object_ = (resume_impl (javaCast object_ :: TimeDelayHelper))

resume_impl :: TimeDelayHelper -> IO (Bool)
resume_impl this = do
    javaCatchReturn $ do
        when ((jget (this).elapsedTimeAtPause) /= (Prelude.minBound :: Int64)) $ do
            jset (this).startTime (((jio jcurrentTimeMillis) + (jget (this).elapsedTimeAtPause)))
            jset (this).elapsedTimeAtPause ((Prelude.minBound :: Int64))
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT this)
            javaReturn (True)
        pure (False)


toStringAt :: (JavaObjectClass this_) => this_ -> Int64 -> IO (String)
toStringAt object_ a1 = jmethod object_ "toStringAt" (\() -> (toStringAt_impl (javaCast object_ :: TimeDelayHelper))) () a1

toStringAt_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (String)
toStringAt_super object_ a1 = (toStringAt_impl (javaCast object_ :: TimeDelayHelper)) a1

toStringAt_impl :: TimeDelayHelper -> Int64 -> IO (String)
toStringAt_impl this currentTime = do
    javaCatchReturn $ do
        elapsed <- (TimeDelayHelper.getElapsed this currentTime)
        if (elapsed > 0) then do
            commonLabels <- (CommonLabels.getInstance)
            let elapsedAsString = (javaToString elapsed)
            javaReturn =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (commonLabels).sTART)))) (jget (this).startTime)))) (jget (commonLabels).cURRENT)))) currentTime))) (jget (commonLabels).eLAPSED)))) elapsedAsString))))
        else do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TimeDelayHelper))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TimeDelayHelper))

toString_impl :: TimeDelayHelper -> IO (String)
toString_impl this = do
    javaCatchReturn $ do
        currentTime <- jcurrentTimeMillis
        elapsed <- (TimeDelayHelper.getElapsed this currentTime)
        if (elapsed > 0) then do
            commonLabels <- (CommonLabels.getInstance)
            let elapsedAsString = (javaToString elapsed)
            javaReturn =<< (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (commonLabels).sTART)))) (jget (this).startTime)))) (jget (commonLabels).cURRENT)))) currentTime))) (jget (commonLabels).eLAPSED)))) elapsedAsString))))
        else do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


