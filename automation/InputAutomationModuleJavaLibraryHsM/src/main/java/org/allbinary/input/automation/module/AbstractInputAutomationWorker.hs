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
-- package org.allbinary.input.automation.module
module AbstractInputAutomationWorker where

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
import qualified InputAutomationActionInterface -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified CaptureWorkerInterface -- org.allbinary.input.media.image.capture.CaptureWorkerInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ImageComparisonWorker -- org.allbinary.media.image.comparison.ImageComparisonWorker
import qualified MotionRectanglesWorker -- org.allbinary.media.image.comparison.motion.MotionRectanglesWorker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- implements RunnableInterface
data AbstractInputAutomationWorker = AbstractInputAutomationWorker
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , index :: IORef (Int64)
    , running :: IORef (Bool)
    , inputAutomationActionInterface :: IORef (InputAutomationActionInterface.InputAutomationActionInterface)
    , captureWorkerInterface :: IORef (CaptureWorkerInterface.CaptureWorkerInterface)
    , imageComparisonWorker :: IORef (ImageComparisonWorker.ImageComparisonWorker)
    , motionRectanglesWorker :: IORef (MotionRectanglesWorker.MotionRectanglesWorker)
    , captureThread :: IORef (Thread.Thread)
    }

instance JavaNull AbstractInputAutomationWorker where
    javaNull = javaNullRecord "AbstractInputAutomationWorker"

instance JavaEquals AbstractInputAutomationWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbstractInputAutomationWorker where
    (==) = jrecordEquals

instance JavaObjectClass AbstractInputAutomationWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbstractInputAutomationWorker
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    index <- newIORef 0
    running <- newIORef False
    inputAutomationActionInterface <- newIORef javaNull
    captureWorkerInterface <- newIORef javaNull
    imageComparisonWorker <- newIORef javaNull
    motionRectanglesWorker <- newIORef javaNull
    captureThread <- newIORef javaNull
    let this = AbstractInputAutomationWorker header_ logUtil commonStrings index running inputAutomationActionInterface captureWorkerInterface imageComparisonWorker motionRectanglesWorker captureThread
    jregisterLevel header_ this
    RunnableInterface.registerInterface_ header_
    jregisterMethod header_ "setThread" (\() -> setThread_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "isAnyDataWorkerRunning" (\() -> isAnyDataWorkerRunning_impl this)
    jregisterMethod header_ "startDataWorkers" (\() -> startDataWorkers_impl this)
    jregisterMethod header_ "waitForDataWorkers" (\() -> waitForDataWorkers_impl this)
    jregisterMethod header_ "stopDataWorkers" (\() -> stopDataWorkers_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "getInputAutomationActionInterface" (\() -> getInputAutomationActionInterface_impl this)
    jregisterMethod header_ "setInputAutomationActionInterface" (\() -> setInputAutomationActionInterface_impl this)
    jregisterMethod header_ "getCaptureWorker" (\() -> getCaptureWorker_impl this)
    jregisterMethod header_ "setCaptureWorker" (\() -> setCaptureWorker_impl this)
    jregisterMethod header_ "getImageComparisonWorker" (\() -> getImageComparisonWorker_impl this)
    jregisterMethod header_ "setImageComparisonWorker" (\() -> setImageComparisonWorker_impl this)
    jregisterMethod header_ "getMotionRectanglesWorker" (\() -> getMotionRectanglesWorker_impl this)
    jregisterMethod header_ "setMotionRectanglesWorker" (\() -> setMotionRectanglesWorker_impl this)
    pure this

initFields_ :: AbstractInputAutomationWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.index (0)
    jset this.running (False)
    jset this.inputAutomationActionInterface (javaNull)
    jset this.captureWorkerInterface (javaNull)
    jset this.imageComparisonWorker (javaNull)
    jset this.motionRectanglesWorker (javaNull)
    jset this.captureThread (javaNull)
    pure ()

new_1 :: InputAutomationActionInterface.InputAutomationActionInterface -> IO AbstractInputAutomationWorker
new_1 inputAutomationActionInterface = do
    this <- newRecord_
    init_1 this inputAutomationActionInterface
    pure this

init_1 :: AbstractInputAutomationWorker -> InputAutomationActionInterface.InputAutomationActionInterface -> IO ()
init_1 this inputAutomationActionInterface = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
setThread :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread object_ a1 = jmethod object_ "setThread" (\() -> (setThread_impl (javaCast object_ :: AbstractInputAutomationWorker))) () a1

setThread_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread_super object_ a1 = (setThread_impl (javaCast object_ :: AbstractInputAutomationWorker)) a1

setThread_impl :: AbstractInputAutomationWorker -> Thread.Thread -> IO (())
setThread_impl this thread = do
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: AbstractInputAutomationWorker))

isRunning_impl :: AbstractInputAutomationWorker -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: AbstractInputAutomationWorker))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: AbstractInputAutomationWorker)) a1

setRunning_impl :: AbstractInputAutomationWorker -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


isAnyDataWorkerRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyDataWorkerRunning object_ = jmethod object_ "isAnyDataWorkerRunning" (\() -> (isAnyDataWorkerRunning_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

isAnyDataWorkerRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyDataWorkerRunning_super object_ = (isAnyDataWorkerRunning_impl (javaCast object_ :: AbstractInputAutomationWorker))

isAnyDataWorkerRunning_impl :: AbstractInputAutomationWorker -> IO (Bool)
isAnyDataWorkerRunning_impl this = do
    javaCatchReturn $ do
        when (((jget (this).captureThread) /= javaNull) && (((((jio (Thread.isAlive ((jget (this).captureThread)))) || (jio (CaptureWorkerInterface.isRunning ((jio (AbstractInputAutomationWorker.getCaptureWorker this)))))) || (jio (MotionRectanglesWorker.isRunning ((jio (AbstractInputAutomationWorker.getMotionRectanglesWorker this)))))) || (jio (ImageComparisonWorker.isRunning ((jio (AbstractInputAutomationWorker.getImageComparisonWorker this)))))))) $ do
            javaReturn (True)
        pure (False)


-- throws Exception
startDataWorkers :: (JavaObjectClass this_) => this_ -> IO (())
startDataWorkers object_ = jmethod object_ "startDataWorkers" (\() -> (startDataWorkers_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

startDataWorkers_super :: (JavaObjectClass this_) => this_ -> IO (())
startDataWorkers_super object_ = (startDataWorkers_impl (javaCast object_ :: AbstractInputAutomationWorker))

startDataWorkers_impl :: AbstractInputAutomationWorker -> IO (())
startDataWorkers_impl this = do
        when (Prelude.not (jio (AbstractInputAutomationWorker.isAnyDataWorkerRunning this))) $ do
            assignedValue <- (Thread.new_1 (jio (AbstractInputAutomationWorker.getCaptureWorker this)))
            jset (this).captureThread (assignedValue)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Starting CaptureWorkers - Need more images - Thread State: " ++ (jio (Thread.toString ((jio (Thread.getState ((jget (this).captureThread)))))))) this "startCaptureWorkers")
            Control.Monad.void (Thread.start ((jget (this).captureThread)))
        pure ()


-- throws Exception
waitForDataWorkers :: (JavaObjectClass this_) => this_ -> IO (())
waitForDataWorkers object_ = jmethod object_ "waitForDataWorkers" (\() -> (waitForDataWorkers_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

waitForDataWorkers_super :: (JavaObjectClass this_) => this_ -> IO (())
waitForDataWorkers_super object_ = (waitForDataWorkers_impl (javaCast object_ :: AbstractInputAutomationWorker))

waitForDataWorkers_impl :: AbstractInputAutomationWorker -> IO (())
waitForDataWorkers_impl this = do
        fix $ \loop -> when (jio (AbstractInputAutomationWorker.isAnyDataWorkerRunning this)) $ javaIteration (loop) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Waiting" this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (threadDelay (Prelude.fromIntegral 250 * 1000))
        pure ()


-- throws Exception
stopDataWorkers :: (JavaObjectClass this_) => this_ -> IO (())
stopDataWorkers object_ = jmethod object_ "stopDataWorkers" (\() -> (stopDataWorkers_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

stopDataWorkers_super :: (JavaObjectClass this_) => this_ -> IO (())
stopDataWorkers_super object_ = (stopDataWorkers_impl (javaCast object_ :: AbstractInputAutomationWorker))

stopDataWorkers_impl :: AbstractInputAutomationWorker -> IO (())
stopDataWorkers_impl this = do
        Control.Monad.void (CaptureWorkerInterface.setRunning ((jio (AbstractInputAutomationWorker.getCaptureWorker this))) False)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: AbstractInputAutomationWorker))

process_impl :: AbstractInputAutomationWorker -> IO (())
process_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: AbstractInputAutomationWorker))

run_impl :: AbstractInputAutomationWorker -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (AbstractInputAutomationWorker.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            fix $ \loop -> when (jio (AbstractInputAutomationWorker.isRunning this)) $ javaIteration (loop) $ do
                Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
                Control.Monad.void (AbstractInputAutomationWorker.process this)
                jset (this).index ((jget (this).index) + 1)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((javaToString ((jget ((jio (CommonLabels.getInstance))).eLAPSED) + (jio (TimeDelayHelper.getElapsedTNT timeHelper))) ++ " Index: ") ++ javaToString (jget (this).index)) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (AbstractInputAutomationWorker.stopDataWorkers this)
            Control.Monad.void (AbstractInputAutomationWorker.waitForDataWorkers this)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


getInputAutomationActionInterface :: (JavaObjectClass this_) => this_ -> IO (InputAutomationActionInterface.InputAutomationActionInterface)
getInputAutomationActionInterface object_ = jmethod object_ "getInputAutomationActionInterface" (\() -> (getInputAutomationActionInterface_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

getInputAutomationActionInterface_super :: (JavaObjectClass this_) => this_ -> IO (InputAutomationActionInterface.InputAutomationActionInterface)
getInputAutomationActionInterface_super object_ = (getInputAutomationActionInterface_impl (javaCast object_ :: AbstractInputAutomationWorker))

getInputAutomationActionInterface_impl :: AbstractInputAutomationWorker -> IO (InputAutomationActionInterface.InputAutomationActionInterface)
getInputAutomationActionInterface_impl this = do
        pure ((jget (this).inputAutomationActionInterface))


setInputAutomationActionInterface :: (JavaObjectClass this_) => this_ -> InputAutomationActionInterface.InputAutomationActionInterface -> IO (())
setInputAutomationActionInterface object_ a1 = jmethod object_ "setInputAutomationActionInterface" (\() -> (setInputAutomationActionInterface_impl (javaCast object_ :: AbstractInputAutomationWorker))) () a1

setInputAutomationActionInterface_super :: (JavaObjectClass this_) => this_ -> InputAutomationActionInterface.InputAutomationActionInterface -> IO (())
setInputAutomationActionInterface_super object_ a1 = (setInputAutomationActionInterface_impl (javaCast object_ :: AbstractInputAutomationWorker)) a1

setInputAutomationActionInterface_impl :: AbstractInputAutomationWorker -> InputAutomationActionInterface.InputAutomationActionInterface -> IO (())
setInputAutomationActionInterface_impl this inputAutomationActionInterface = do
        jset (this).inputAutomationActionInterface (inputAutomationActionInterface)
        pure ()


getCaptureWorker :: (JavaObjectClass this_) => this_ -> IO (CaptureWorkerInterface.CaptureWorkerInterface)
getCaptureWorker object_ = jmethod object_ "getCaptureWorker" (\() -> (getCaptureWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

getCaptureWorker_super :: (JavaObjectClass this_) => this_ -> IO (CaptureWorkerInterface.CaptureWorkerInterface)
getCaptureWorker_super object_ = (getCaptureWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))

getCaptureWorker_impl :: AbstractInputAutomationWorker -> IO (CaptureWorkerInterface.CaptureWorkerInterface)
getCaptureWorker_impl this = do
        pure ((jget (this).captureWorkerInterface))


setCaptureWorker :: (JavaObjectClass this_) => this_ -> CaptureWorkerInterface.CaptureWorkerInterface -> IO (())
setCaptureWorker object_ a1 = jmethod object_ "setCaptureWorker" (\() -> (setCaptureWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))) () a1

setCaptureWorker_super :: (JavaObjectClass this_) => this_ -> CaptureWorkerInterface.CaptureWorkerInterface -> IO (())
setCaptureWorker_super object_ a1 = (setCaptureWorker_impl (javaCast object_ :: AbstractInputAutomationWorker)) a1

setCaptureWorker_impl :: AbstractInputAutomationWorker -> CaptureWorkerInterface.CaptureWorkerInterface -> IO (())
setCaptureWorker_impl this captureWorkerInterface = do
        jset (this).captureWorkerInterface (captureWorkerInterface)
        pure ()


getImageComparisonWorker :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonWorker.ImageComparisonWorker)
getImageComparisonWorker object_ = jmethod object_ "getImageComparisonWorker" (\() -> (getImageComparisonWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

getImageComparisonWorker_super :: (JavaObjectClass this_) => this_ -> IO (ImageComparisonWorker.ImageComparisonWorker)
getImageComparisonWorker_super object_ = (getImageComparisonWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))

getImageComparisonWorker_impl :: AbstractInputAutomationWorker -> IO (ImageComparisonWorker.ImageComparisonWorker)
getImageComparisonWorker_impl this = do
        pure ((jget (this).imageComparisonWorker))


setImageComparisonWorker :: (JavaObjectClass this_) => this_ -> ImageComparisonWorker.ImageComparisonWorker -> IO (())
setImageComparisonWorker object_ a1 = jmethod object_ "setImageComparisonWorker" (\() -> (setImageComparisonWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))) () a1

setImageComparisonWorker_super :: (JavaObjectClass this_) => this_ -> ImageComparisonWorker.ImageComparisonWorker -> IO (())
setImageComparisonWorker_super object_ a1 = (setImageComparisonWorker_impl (javaCast object_ :: AbstractInputAutomationWorker)) a1

setImageComparisonWorker_impl :: AbstractInputAutomationWorker -> ImageComparisonWorker.ImageComparisonWorker -> IO (())
setImageComparisonWorker_impl this imageComparisonWorker = do
        jset (this).imageComparisonWorker (imageComparisonWorker)
        pure ()


getMotionRectanglesWorker :: (JavaObjectClass this_) => this_ -> IO (MotionRectanglesWorker.MotionRectanglesWorker)
getMotionRectanglesWorker object_ = jmethod object_ "getMotionRectanglesWorker" (\() -> (getMotionRectanglesWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))) ()

getMotionRectanglesWorker_super :: (JavaObjectClass this_) => this_ -> IO (MotionRectanglesWorker.MotionRectanglesWorker)
getMotionRectanglesWorker_super object_ = (getMotionRectanglesWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))

getMotionRectanglesWorker_impl :: AbstractInputAutomationWorker -> IO (MotionRectanglesWorker.MotionRectanglesWorker)
getMotionRectanglesWorker_impl this = do
        pure ((jget (this).motionRectanglesWorker))


setMotionRectanglesWorker :: (JavaObjectClass this_) => this_ -> MotionRectanglesWorker.MotionRectanglesWorker -> IO (())
setMotionRectanglesWorker object_ a1 = jmethod object_ "setMotionRectanglesWorker" (\() -> (setMotionRectanglesWorker_impl (javaCast object_ :: AbstractInputAutomationWorker))) () a1

setMotionRectanglesWorker_super :: (JavaObjectClass this_) => this_ -> MotionRectanglesWorker.MotionRectanglesWorker -> IO (())
setMotionRectanglesWorker_super object_ a1 = (setMotionRectanglesWorker_impl (javaCast object_ :: AbstractInputAutomationWorker)) a1

setMotionRectanglesWorker_impl :: AbstractInputAutomationWorker -> MotionRectanglesWorker.MotionRectanglesWorker -> IO (())
setMotionRectanglesWorker_impl this motionRectanglesWorker = do
        jset (this).motionRectanglesWorker (motionRectanglesWorker)
        pure ()


