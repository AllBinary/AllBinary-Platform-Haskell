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
-- package org.allbinary.media.image.comparison.motion
module SaveMotionRectanglesResultsWorker where

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
import qualified MotionRectanglesResultsEvent -- same package or java.lang
import qualified MotionRectangles -- same package or java.lang
import qualified MotionRectanglesImageInputOutput -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified MotionRectanglesResultsListener

-- implements MotionRectanglesResultsListener
data SaveMotionRectanglesResultsWorker = SaveMotionRectanglesResultsWorker
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , running :: IORef (Bool)
    , motionRectanglesVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull SaveMotionRectanglesResultsWorker where
    javaNull = javaNullRecord "SaveMotionRectanglesResultsWorker"

instance JavaEquals SaveMotionRectanglesResultsWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SaveMotionRectanglesResultsWorker where
    (==) = jrecordEquals

instance JavaObjectClass SaveMotionRectanglesResultsWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SaveMotionRectanglesResultsWorker
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    running <- newIORef False
    motionRectanglesVector <- newIORef javaNull
    let this = SaveMotionRectanglesResultsWorker header_ logUtil commonStrings running motionRectanglesVector
    jregisterLevel header_ this
    MotionRectanglesResultsListener.registerInterface_ header_
    jregisterMethod header_ "getMotionRectanglesVector" (\() -> getMotionRectanglesVector_impl this)
    jregisterMethod header_ "onMotionRectanglesImageComparisonResultsEvent" (\() -> onMotionRectanglesImageComparisonResultsEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: SaveMotionRectanglesResultsWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.running (False)
    jset this.motionRectanglesVector (javaNull)
    pure ()

new_ :: IO SaveMotionRectanglesResultsWorker
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SaveMotionRectanglesResultsWorker -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).motionRectanglesVector (assignedValue)
        pure ()


getMotionRectanglesVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getMotionRectanglesVector object_ = jmethod object_ "getMotionRectanglesVector" (\() -> (getMotionRectanglesVector_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))) ()

getMotionRectanglesVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getMotionRectanglesVector_super object_ = (getMotionRectanglesVector_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))

getMotionRectanglesVector_impl :: SaveMotionRectanglesResultsWorker -> IO (BasicArrayList.BasicArrayList)
getMotionRectanglesVector_impl this = do
        pure ((jget (this).motionRectanglesVector))


onMotionRectanglesImageComparisonResultsEvent :: (JavaObjectClass this_) => this_ -> MotionRectanglesResultsEvent.MotionRectanglesResultsEvent -> IO (())
onMotionRectanglesImageComparisonResultsEvent object_ a1 = jmethod object_ "onMotionRectanglesImageComparisonResultsEvent" (\() -> (onMotionRectanglesImageComparisonResultsEvent_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))) () a1

onMotionRectanglesImageComparisonResultsEvent_super :: (JavaObjectClass this_) => this_ -> MotionRectanglesResultsEvent.MotionRectanglesResultsEvent -> IO (())
onMotionRectanglesImageComparisonResultsEvent_super object_ a1 = (onMotionRectanglesImageComparisonResultsEvent_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker)) a1

onMotionRectanglesImageComparisonResultsEvent_impl :: SaveMotionRectanglesResultsWorker -> MotionRectanglesResultsEvent.MotionRectanglesResultsEvent -> IO (())
onMotionRectanglesImageComparisonResultsEvent_impl this motionRectanglesResultsEvent = do
        Control.Monad.void (BasicArrayList.add ((jio (SaveMotionRectanglesResultsWorker.getMotionRectanglesVector this))) motionRectanglesResultsEvent)
        Control.Monad.void (SaveMotionRectanglesResultsWorker.run this)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker)) a1

onEvent_impl :: SaveMotionRectanglesResultsWorker -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this allBinaryEventObject = do
        Control.Monad.void (SaveMotionRectanglesResultsWorker.onMotionRectanglesImageComparisonResultsEvent this (javaCast allBinaryEventObject :: MotionRectanglesResultsEvent.MotionRectanglesResultsEvent))
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))

isRunning_impl :: SaveMotionRectanglesResultsWorker -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker)) a1

setRunning_impl :: SaveMotionRectanglesResultsWorker -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: SaveMotionRectanglesResultsWorker))

run_impl :: SaveMotionRectanglesResultsWorker -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (SaveMotionRectanglesResultsWorker.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
            let motionRectanglesResultsEvent = (javaCast (jio (BasicArrayList.get ((jio (SaveMotionRectanglesResultsWorker.getMotionRectanglesVector this))) 0)) :: MotionRectanglesResultsEvent.MotionRectanglesResultsEvent)
            motionRectangles <- (MotionRectanglesResultsEvent.getMotionRectangles motionRectanglesResultsEvent)
            Control.Monad.void (MotionRectanglesImageInputOutput.save ((jio (MotionRectanglesImageInputOutput.new_))) motionRectangles (jio (MotionRectanglesResultsEvent.getFrame motionRectanglesResultsEvent)))
            Control.Monad.void (BasicArrayList.remove ((jio (SaveMotionRectanglesResultsWorker.getMotionRectanglesVector this))) motionRectangles)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).eLAPSED) + (jio (TimeDelayHelper.getElapsedTNT timeHelper))) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


