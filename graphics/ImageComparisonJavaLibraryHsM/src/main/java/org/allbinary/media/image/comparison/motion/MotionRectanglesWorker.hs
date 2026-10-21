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
module MotionRectanglesWorker (module MotionRectanglesWorker, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onImageComparisonResultsEvent, onImageComparisonResultsEvent_super, onImageComparisonResultsEvent_impl, onEvent, onEvent_super, onEvent_impl, isRunning, isRunning_super, isRunning_impl, setRunning, setRunning_super, setRunning_impl, run, run_super, run_impl, logUtil, commonStrings, imageComparisonInfoVector, motionRectangleConstraintsInterface, index, running)
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
import qualified MotionRectangleConstraintsInterface -- same package or java.lang
import qualified AllMotionRectangles -- same package or java.lang
import qualified AllMotionRectanglesResultsCacheSingleton -- same package or java.lang
import qualified MotionRectanglesResultsFrameCacheable -- same package or java.lang
import qualified ConsolidateMotionRectangles -- same package or java.lang
import qualified ConsolidatedMotionRectanglesResultsCacheSingleton -- same package or java.lang
import qualified ConstrainedMotionRectangles -- same package or java.lang
import qualified ConstrainedMotionRectanglesResultsCacheSingleton -- same package or java.lang
import qualified MotionRectanglesResultsEvent -- same package or java.lang
import qualified MotionRectangles -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified ImageComparisonResult -- org.allbinary.media.image.comparison.ImageComparisonResult
import qualified ImageComparisonResultsEvent -- org.allbinary.media.image.comparison.ImageComparisonResultsEvent
import qualified ImageComparisonResultsListener -- org.allbinary.media.image.comparison.ImageComparisonResultsListener
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- implements ImageComparisonResultsListener
data MotionRectanglesWorker = MotionRectanglesWorker
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageComparisonInfoVector :: IORef (BasicArrayList.BasicArrayList)
    , motionRectangleConstraintsInterface :: IORef (MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface)
    , index :: IORef (Int64)
    , running :: IORef (Bool)
    }

instance JavaNull MotionRectanglesWorker where
    javaNull = javaNullRecord "MotionRectanglesWorker"

instance JavaEquals MotionRectanglesWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRectanglesWorker where
    (==) = jrecordEquals

instance JavaObjectClass MotionRectanglesWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MotionRectanglesWorker
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageComparisonInfoVector <- newIORef javaNull
    motionRectangleConstraintsInterface <- newIORef javaNull
    index <- newIORef 0
    running <- newIORef False
    let this = MotionRectanglesWorker header_ base logUtil commonStrings imageComparisonInfoVector motionRectangleConstraintsInterface index running
    jregisterLevel header_ this
    ImageComparisonResultsListener.registerInterface_ header_
    jregisterMethod header_ "onImageComparisonResultsEvent" (\() -> onImageComparisonResultsEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: MotionRectanglesWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageComparisonInfoVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.motionRectangleConstraintsInterface (javaNull)
    jset this.index (0)
    jset this.running (False)
    pure ()

new_1 :: MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO MotionRectanglesWorker
new_1 motionRectangleConstraintsInterface = do
    this <- newRecord_
    init_1 this motionRectangleConstraintsInterface
    pure this

init_1 :: MotionRectanglesWorker -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO ()
init_1 this motionRectangleConstraintsInterface = do
        BasicEventHandler.init_ this.base
        initFields_ this
        jset (this).motionRectangleConstraintsInterface (motionRectangleConstraintsInterface)
        pure ()


onImageComparisonResultsEvent :: (JavaObjectClass this_) => this_ -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent object_ a1 = jmethod object_ "onImageComparisonResultsEvent" (\() -> (onImageComparisonResultsEvent_impl (javaCast object_ :: MotionRectanglesWorker))) () a1

onImageComparisonResultsEvent_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent_super object_ a1 = (onImageComparisonResultsEvent_impl (javaCast object_ :: MotionRectanglesWorker)) a1

onImageComparisonResultsEvent_impl :: MotionRectanglesWorker -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent_impl this imageComparisonResultsEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).imageComparisonInfoVector)) imageComparisonResultsEvent)
        Control.Monad.void (MotionRectanglesWorker.run this)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: MotionRectanglesWorker))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: MotionRectanglesWorker)) a1

onEvent_impl :: MotionRectanglesWorker -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this allBinaryEventObject = do
        Control.Monad.void (MotionRectanglesWorker.onImageComparisonResultsEvent this (javaCast allBinaryEventObject :: ImageComparisonResultsEvent.ImageComparisonResultsEvent))
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: MotionRectanglesWorker))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: MotionRectanglesWorker))

isRunning_impl :: MotionRectanglesWorker -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: MotionRectanglesWorker))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: MotionRectanglesWorker)) a1

setRunning_impl :: MotionRectanglesWorker -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: MotionRectanglesWorker))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: MotionRectanglesWorker))

run_impl :: MotionRectanglesWorker -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (MotionRectanglesWorker.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
            let imageComparisonResultsEvent = (javaCast (jio (BasicArrayList.get ((jget (this).imageComparisonInfoVector)) 0)) :: ImageComparisonResultsEvent.ImageComparisonResultsEvent)
            let imageComparisonInfo = (javaCast (jio (ImageComparisonResultsEvent.getImageComparisonResult imageComparisonResultsEvent)) :: ImageComparisonResult.ImageComparisonResult)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (ImageComparisonResult.toString imageComparisonInfo)) this (jget ((jget (this).commonStrings)).rUN))
            allMotionRectangles <- (AllMotionRectangles.new_1 imageComparisonInfo)
            Control.Monad.void (CacheInterface.add ((jio (AllMotionRectanglesResultsCacheSingleton.getInstance))) (jio (MotionRectanglesResultsFrameCacheable.new_2 allMotionRectangles (jio (ImageComparisonResult.getFrameTwo imageComparisonInfo)))))
            consolidatedMotionRectangles <- (ConsolidateMotionRectangles.new_1 allMotionRectangles)
            Control.Monad.void (CacheInterface.add ((jio (ConsolidatedMotionRectanglesResultsCacheSingleton.getInstance))) (jio (MotionRectanglesResultsFrameCacheable.new_2 consolidatedMotionRectangles (jio (ImageComparisonResult.getFrameTwo imageComparisonInfo)))))
            constrainedMotionRectangles <- (ConstrainedMotionRectangles.new_2 (jget (this).motionRectangleConstraintsInterface) consolidatedMotionRectangles)
            Control.Monad.void (ConstrainedMotionRectangles.applyMotionRectangleConstraints constrainedMotionRectangles consolidatedMotionRectangles)
            Control.Monad.void (CacheInterface.add ((jio (ConstrainedMotionRectanglesResultsCacheSingleton.getInstance))) (jio (MotionRectanglesResultsFrameCacheable.new_2 constrainedMotionRectangles (jio (ImageComparisonResult.getFrameTwo imageComparisonInfo)))))
            Control.Monad.void (BasicEventHandler.fireEvent this (jio (MotionRectanglesResultsEvent.new_3 this (jio (ImageComparisonResult.getFrameTwo imageComparisonInfo)) (javaCast constrainedMotionRectangles :: MotionRectangles.MotionRectangles))))
            Control.Monad.void (BasicArrayList.remove ((jget (this).imageComparisonInfoVector)) imageComparisonResultsEvent)
            jset (this).index ((jget (this).index) + 1)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).eLAPSED) + (jio (TimeDelayHelper.getElapsedTNT timeHelper))) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (MotionRectanglesWorker.setRunning this False)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


