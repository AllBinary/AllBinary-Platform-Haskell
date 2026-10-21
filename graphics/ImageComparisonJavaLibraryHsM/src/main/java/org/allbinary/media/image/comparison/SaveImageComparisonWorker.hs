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
module SaveImageComparisonWorker where

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
import qualified ImageComparisonResultsEvent -- same package or java.lang
import qualified ImageComparisonResult -- same package or java.lang
import qualified ComparisonImageInputOutput -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ImageComparisonResultsListener

-- implements ImageComparisonResultsListener
data SaveImageComparisonWorker = SaveImageComparisonWorker
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , running :: IORef (Bool)
    , imageComparisonInfoVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull SaveImageComparisonWorker where
    javaNull = javaNullRecord "SaveImageComparisonWorker"

instance JavaEquals SaveImageComparisonWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SaveImageComparisonWorker where
    (==) = jrecordEquals

instance JavaObjectClass SaveImageComparisonWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SaveImageComparisonWorker
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    running <- newIORef False
    imageComparisonInfoVector <- newIORef javaNull
    let this = SaveImageComparisonWorker header_ logUtil commonStrings running imageComparisonInfoVector
    jregisterLevel header_ this
    ImageComparisonResultsListener.registerInterface_ header_
    jregisterMethod header_ "onImageComparisonResultsEvent" (\() -> onImageComparisonResultsEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: SaveImageComparisonWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.running (False)
    jset this.imageComparisonInfoVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO SaveImageComparisonWorker
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SaveImageComparisonWorker -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


onImageComparisonResultsEvent :: (JavaObjectClass this_) => this_ -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent object_ a1 = jmethod object_ "onImageComparisonResultsEvent" (\() -> (onImageComparisonResultsEvent_impl (javaCast object_ :: SaveImageComparisonWorker))) () a1

onImageComparisonResultsEvent_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent_super object_ a1 = (onImageComparisonResultsEvent_impl (javaCast object_ :: SaveImageComparisonWorker)) a1

onImageComparisonResultsEvent_impl :: SaveImageComparisonWorker -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent_impl this imageComparisonResultsEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).imageComparisonInfoVector)) imageComparisonResultsEvent)
        Control.Monad.void (SaveImageComparisonWorker.run this)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: SaveImageComparisonWorker))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: SaveImageComparisonWorker)) a1

onEvent_impl :: SaveImageComparisonWorker -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this allBinaryEventObject = do
        Control.Monad.void (SaveImageComparisonWorker.onImageComparisonResultsEvent this (javaCast allBinaryEventObject :: ImageComparisonResultsEvent.ImageComparisonResultsEvent))
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: SaveImageComparisonWorker))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: SaveImageComparisonWorker))

isRunning_impl :: SaveImageComparisonWorker -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: SaveImageComparisonWorker))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: SaveImageComparisonWorker)) a1

setRunning_impl :: SaveImageComparisonWorker -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: SaveImageComparisonWorker))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: SaveImageComparisonWorker))

run_impl :: SaveImageComparisonWorker -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (SaveImageComparisonWorker.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
            let imageComparisonResultsEvent = (javaCast (jio (BasicArrayList.get ((jget (this).imageComparisonInfoVector)) 0)) :: ImageComparisonResultsEvent.ImageComparisonResultsEvent)
            imageComparisonInfo <- (ImageComparisonResultsEvent.getImageComparisonResult imageComparisonResultsEvent)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (ImageComparisonResult.toString imageComparisonInfo)) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (ComparisonImageInputOutput.save ((jio (ComparisonImageInputOutput.new_))) imageComparisonInfo (jio (ImageComparisonResult.getFrameTwo imageComparisonInfo)))
            Control.Monad.void (BasicArrayList.remove ((jget (this).imageComparisonInfoVector)) imageComparisonInfo)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).eLAPSED) + (jio (TimeDelayHelper.getElapsedTNT timeHelper))) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


