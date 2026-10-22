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
-- package org.allbinary.input.media.image.capture
module SaveCapturedImageWorker (module SaveCapturedImageWorker, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isRunning, isRunning_super, isRunning_impl, setRunning, setRunning_super, setRunning_impl, onCaptureEvent, onCaptureEvent_super, onCaptureEvent_impl, onEvent, onEvent_super, onEvent_impl, run, run_super, run_impl, logUtil, commonStrings, running, capturedImageWorkerResultsEventVector)
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
import qualified CapturedImageWorkerResultsEvent -- same package or java.lang
import qualified CapturedImageInputOutput -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified CapturedImageWorkerResultsListener

-- implements CapturedImageWorkerResultsListener
data SaveCapturedImageWorker = SaveCapturedImageWorker
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , running :: IORef (Bool)
    , capturedImageWorkerResultsEventVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull SaveCapturedImageWorker where
    javaNull = javaNullRecord "SaveCapturedImageWorker"

instance JavaEquals SaveCapturedImageWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SaveCapturedImageWorker where
    (==) = jrecordEquals

instance JavaObjectClass SaveCapturedImageWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SaveCapturedImageWorker
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    running <- newIORef False
    capturedImageWorkerResultsEventVector <- newIORef javaNull
    let this = SaveCapturedImageWorker header_ base logUtil commonStrings running capturedImageWorkerResultsEventVector
    jregisterLevel header_ this
    CapturedImageWorkerResultsListener.registerInterface_ header_
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "onCaptureEvent" (\() -> onCaptureEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: SaveCapturedImageWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.running (False)
    jset this.capturedImageWorkerResultsEventVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO SaveCapturedImageWorker
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SaveCapturedImageWorker -> IO ()
init_ this = do
        BasicEventHandler.init_ this.base
        initFields_ this
        pure ()
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: SaveCapturedImageWorker))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: SaveCapturedImageWorker))

isRunning_impl :: SaveCapturedImageWorker -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: SaveCapturedImageWorker))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: SaveCapturedImageWorker)) a1

setRunning_impl :: SaveCapturedImageWorker -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


onCaptureEvent :: (JavaObjectClass this_) => this_ -> CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent -> IO (())
onCaptureEvent object_ a1 = jmethod object_ "onCaptureEvent" (\() -> (onCaptureEvent_impl (javaCast object_ :: SaveCapturedImageWorker))) () a1

onCaptureEvent_super :: (JavaObjectClass this_) => this_ -> CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent -> IO (())
onCaptureEvent_super object_ a1 = (onCaptureEvent_impl (javaCast object_ :: SaveCapturedImageWorker)) a1

onCaptureEvent_impl :: SaveCapturedImageWorker -> CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent -> IO (())
onCaptureEvent_impl this capturedImageEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).capturedImageWorkerResultsEventVector)) capturedImageEvent)
        Control.Monad.void (SaveCapturedImageWorker.run this)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: SaveCapturedImageWorker))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: SaveCapturedImageWorker)) a1

onEvent_impl :: SaveCapturedImageWorker -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this allBinaryEventObject = do
        Control.Monad.void (SaveCapturedImageWorker.onCaptureEvent this (javaCast allBinaryEventObject :: CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent))
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: SaveCapturedImageWorker))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: SaveCapturedImageWorker))

run_impl :: SaveCapturedImageWorker -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (SaveCapturedImageWorker.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
            let capturedImageWorkerResultsEvent = ((javaCast (jio (BasicArrayList.get ((jget (this).capturedImageWorkerResultsEventVector)) 0)) :: CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent))
            screenBufferedImage <- (CapturedImageWorkerResultsEvent.getBufferedImage capturedImageWorkerResultsEvent)
            Control.Monad.void (CapturedImageInputOutput.save_2 ((jio (CapturedImageInputOutput.new_))) screenBufferedImage (jio (CapturedImageWorkerResultsEvent.getFrame capturedImageWorkerResultsEvent)))
            Control.Monad.void (BasicArrayList.remove ((jget (this).capturedImageWorkerResultsEventVector)) capturedImageWorkerResultsEvent)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).eLAPSED) + (jio (TimeDelayHelper.getElapsedTNT timeHelper))) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (SaveCapturedImageWorker.setRunning this False)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


