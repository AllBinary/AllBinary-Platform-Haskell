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
-- package org.allbinary.media.image.search
module ImageComparisonSearchWorker (module ImageComparisonSearchWorker, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onImageComparisonResultsEvent, onImageComparisonResultsEvent_super, onImageComparisonResultsEvent_impl, onEvent, onEvent_super, onEvent_impl, isRunning, isRunning_super, isRunning_impl, setRunning, setRunning_super, setRunning_impl, run, run_super, run_impl, logUtil, commonStrings, imageComparisonInfoVector, index, running, imageSearchConstraintsInterface)
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
import qualified ImageComparisonSearchConstraintsInterface -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
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
data ImageComparisonSearchWorker = ImageComparisonSearchWorker
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , imageComparisonInfoVector :: IORef (BasicArrayList.BasicArrayList)
    , index :: IORef (Int64)
    , running :: IORef (Bool)
    , imageSearchConstraintsInterface :: IORef (ImageComparisonSearchConstraintsInterface.ImageComparisonSearchConstraintsInterface)
    }

instance JavaNull ImageComparisonSearchWorker where
    javaNull = javaNullRecord "ImageComparisonSearchWorker"

instance JavaEquals ImageComparisonSearchWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonSearchWorker where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonSearchWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageComparisonSearchWorker
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    imageComparisonInfoVector <- newIORef javaNull
    index <- newIORef 0
    running <- newIORef False
    imageSearchConstraintsInterface <- newIORef javaNull
    let this = ImageComparisonSearchWorker header_ base logUtil commonStrings imageComparisonInfoVector index running imageSearchConstraintsInterface
    jregisterLevel header_ this
    ImageComparisonResultsListener.registerInterface_ header_
    jregisterMethod header_ "onImageComparisonResultsEvent" (\() -> onImageComparisonResultsEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: ImageComparisonSearchWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.imageComparisonInfoVector (javaNull)
    jset this.index (0)
    jset this.running (False)
    jset this.imageSearchConstraintsInterface (javaNull)
    pure ()

new_1 :: ImageComparisonSearchConstraintsInterface.ImageComparisonSearchConstraintsInterface -> IO ImageComparisonSearchWorker
new_1 imageSearchConstraintsInterface = do
    this <- newRecord_
    init_1 this imageSearchConstraintsInterface
    pure this

init_1 :: ImageComparisonSearchWorker -> ImageComparisonSearchConstraintsInterface.ImageComparisonSearchConstraintsInterface -> IO ()
init_1 this imageSearchConstraintsInterface = do
        BasicEventHandler.init_ this.base
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).imageComparisonInfoVector (assignedValue)
        jset (this).imageSearchConstraintsInterface (imageSearchConstraintsInterface)
        pure ()


onImageComparisonResultsEvent :: (JavaObjectClass this_) => this_ -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent object_ a1 = jmethod object_ "onImageComparisonResultsEvent" (\() -> (onImageComparisonResultsEvent_impl (javaCast object_ :: ImageComparisonSearchWorker))) () a1

onImageComparisonResultsEvent_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent_super object_ a1 = (onImageComparisonResultsEvent_impl (javaCast object_ :: ImageComparisonSearchWorker)) a1

onImageComparisonResultsEvent_impl :: ImageComparisonSearchWorker -> ImageComparisonResultsEvent.ImageComparisonResultsEvent -> IO (())
onImageComparisonResultsEvent_impl this imageComparisonResultsEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).imageComparisonInfoVector)) (jio (ImageComparisonResultsEvent.getImageComparisonResult imageComparisonResultsEvent)))
        Control.Monad.void (ImageComparisonSearchWorker.run this)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: ImageComparisonSearchWorker))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: ImageComparisonSearchWorker)) a1

onEvent_impl :: ImageComparisonSearchWorker -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this allBinaryEventObject = do
        Control.Monad.void (ImageComparisonSearchWorker.onImageComparisonResultsEvent this (javaCast allBinaryEventObject :: ImageComparisonResultsEvent.ImageComparisonResultsEvent))
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: ImageComparisonSearchWorker))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: ImageComparisonSearchWorker))

isRunning_impl :: ImageComparisonSearchWorker -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: ImageComparisonSearchWorker))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: ImageComparisonSearchWorker)) a1

setRunning_impl :: ImageComparisonSearchWorker -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: ImageComparisonSearchWorker))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: ImageComparisonSearchWorker))

run_impl :: ImageComparisonSearchWorker -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (ImageComparisonSearchWorker.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
            let imageComparisonInfo = (javaCast (jio (BasicArrayList.get ((jget (this).imageComparisonInfoVector)) 0)) :: ImageComparisonResult.ImageComparisonResult)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (ImageComparisonResult.toString imageComparisonInfo)) this (jget ((jget (this).commonStrings)).rUN))
            let latestBufferedImage = (jindex ((jio (ImageComparisonResult.getBufferedImages imageComparisonInfo))) (1))
            Control.Monad.void (BasicArrayList.remove ((jget (this).imageComparisonInfoVector)) imageComparisonInfo)
            jset (this).index ((jget (this).index) + 1)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).eLAPSED) + (jio (TimeDelayHelper.getElapsedTNT timeHelper))) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (ImageComparisonSearchWorker.setRunning this False)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


