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
-- package org.allbinary.media.image.comparison
module ImageComparisonWorker (module ImageComparisonWorker, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isRunning, isRunning_super, isRunning_impl, setRunning, setRunning_super, setRunning_impl, onCaptureEvent, onCaptureEvent_super, onCaptureEvent_impl, onEvent, onEvent_super, onEvent_impl, run, run_super, run_impl, logUtil, commonStrings, bufferedImageVector, imageComparatorConstraintsInterface, imageComparator, running, index2)
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
import qualified ImageComparatorConstraintsInterface -- same package or java.lang
import qualified ImageComparator -- same package or java.lang
import qualified ImageComparisonResult -- same package or java.lang
import qualified ImageComparisonResultFrameCacheable -- same package or java.lang
import qualified ImageComparisonResultCacheSingleton -- same package or java.lang
import qualified ImageComparisonResultsEvent -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CapturedImageWorkerResultsEvent -- org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent
import qualified CapturedImageWorkerResultsListener -- org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- implements CapturedImageWorkerResultsListener
data ImageComparisonWorker = ImageComparisonWorker
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , bufferedImageVector :: IORef (BasicArrayList.BasicArrayList)
    , imageComparatorConstraintsInterface :: IORef (ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface)
    , imageComparator :: IORef (ImageComparator.ImageComparator)
    , running :: IORef (Bool)
    , index2 :: IORef (Int)
    }

instance JavaNull ImageComparisonWorker where
    javaNull = javaNullRecord "ImageComparisonWorker"

instance JavaEquals ImageComparisonWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonWorker where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageComparisonWorker
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    bufferedImageVector <- newIORef javaNull
    imageComparatorConstraintsInterface <- newIORef javaNull
    imageComparator <- newIORef javaNull
    running <- newIORef False
    index2 <- newIORef 0
    let this = ImageComparisonWorker header_ base logUtil commonStrings bufferedImageVector imageComparatorConstraintsInterface imageComparator running index2
    jregisterLevel header_ this
    CapturedImageWorkerResultsListener.registerInterface_ header_
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "onCaptureEvent" (\() -> onCaptureEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: ImageComparisonWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.bufferedImageVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.imageComparatorConstraintsInterface (javaNull)
    jset this.imageComparator (javaNull)
    jset this.running (False)
    jset this.index2 (0)
    pure ()

new_1 :: ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> IO ImageComparisonWorker
new_1 imageComparatorConstraintsInterface = do
    this <- newRecord_
    init_1 this imageComparatorConstraintsInterface
    pure this

init_1 :: ImageComparisonWorker -> ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> IO ()
init_1 this imageComparatorConstraintsInterface = do
        BasicEventHandler.init_ this.base
        initFields_ this
        jset (this).imageComparatorConstraintsInterface (imageComparatorConstraintsInterface)
        assignedValue <- (ImageComparator.new_1 imageComparatorConstraintsInterface)
        jset (this).imageComparator (assignedValue)
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: ImageComparisonWorker))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: ImageComparisonWorker))

isRunning_impl :: ImageComparisonWorker -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: ImageComparisonWorker))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: ImageComparisonWorker)) a1

setRunning_impl :: ImageComparisonWorker -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


onCaptureEvent :: (JavaObjectClass this_) => this_ -> CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent -> IO (())
onCaptureEvent object_ a1 = jmethod object_ "onCaptureEvent" (\() -> (onCaptureEvent_impl (javaCast object_ :: ImageComparisonWorker))) () a1

onCaptureEvent_super :: (JavaObjectClass this_) => this_ -> CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent -> IO (())
onCaptureEvent_super object_ a1 = (onCaptureEvent_impl (javaCast object_ :: ImageComparisonWorker)) a1

onCaptureEvent_impl :: ImageComparisonWorker -> CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent -> IO (())
onCaptureEvent_impl this capturedImageWorkerResultsEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).bufferedImageVector)) capturedImageWorkerResultsEvent)
        when ((jio (BasicArrayList.size ((jget (this).bufferedImageVector)))) > 1) $ do
            Control.Monad.void (ImageComparisonWorker.run this)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: ImageComparisonWorker))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: ImageComparisonWorker)) a1

onEvent_impl :: ImageComparisonWorker -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this allBinaryEventObject = do
        Control.Monad.void (ImageComparisonWorker.onCaptureEvent this (javaCast allBinaryEventObject :: CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent))
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: ImageComparisonWorker))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: ImageComparisonWorker))

run_impl :: ImageComparisonWorker -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (ImageComparisonWorker.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
            when (jio (ImageComparatorConstraintsInterface.isFrameAllowed ((jget (this).imageComparatorConstraintsInterface)) (jget (this).index2))) $ do
                let capturedImageWorkerResultsEvent = (jnewArray (2) javaNull)
                jsetIndex capturedImageWorkerResultsEvent (0) ((javaCast (jio (BasicArrayList.get ((jget (this).bufferedImageVector)) 0)) :: CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent))
                jsetIndex capturedImageWorkerResultsEvent (1) ((javaCast (jio (BasicArrayList.get ((jget (this).bufferedImageVector)) 1)) :: CapturedImageWorkerResultsEvent.CapturedImageWorkerResultsEvent))
                if ((jio (ImageComparatorConstraintsInterface.isImageValid ((jget (this).imageComparatorConstraintsInterface)) (jio (getBufferedImage ((jindex capturedImageWorkerResultsEvent (0))))))) && (jio (ImageComparatorConstraintsInterface.isImageValid ((jget (this).imageComparatorConstraintsInterface)) (jio (getBufferedImage ((jindex capturedImageWorkerResultsEvent (1)))))))) then do
                    imageComparisonResult <- (ImageComparator.compare ((jget (this).imageComparator)) (jio (getBufferedImage ((jindex capturedImageWorkerResultsEvent (0))))) (jio (getBufferedImage ((jindex capturedImageWorkerResultsEvent (1))))) (jio (getFrame ((jindex capturedImageWorkerResultsEvent (0))))) (jio (getFrame ((jindex capturedImageWorkerResultsEvent (1))))) 0)
                    frame <- (getFrame ((jindex capturedImageWorkerResultsEvent (1))))
                    imageComparisonResultFrameCacheable <- (ImageComparisonResultFrameCacheable.new_2 imageComparisonResult frame)
                    Control.Monad.void (CacheInterface.add ((jio (ImageComparisonResultCacheSingleton.getInstance))) imageComparisonResultFrameCacheable)
                    Control.Monad.void (BasicEventHandler.fireEvent this (javaCast (jio (ImageComparisonResultsEvent.new_2 this imageComparisonResult))))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Image Comparison Result: "))) (jio (ImageComparisonResult.toString imageComparisonResult))))) " for frame: "))) frame))))) this (jget ((jget (this).commonStrings)).rUN))
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "An Image Was Not Valid: Image Worker Event Processing terminated" this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (BasicArrayList.remove ((jget (this).bufferedImageVector)) 0)
            jset (this).index2 ((jget (this).index2) + 1)
            message <- (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Frame: "))) (jget (this).index2)))) (jget ((jio (CommonLabels.getInstance))).eLAPSED)))) (jio (TimeDelayHelper.getElapsedTNT timeHelper))))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) message this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (ImageComparisonWorker.setRunning this False)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


