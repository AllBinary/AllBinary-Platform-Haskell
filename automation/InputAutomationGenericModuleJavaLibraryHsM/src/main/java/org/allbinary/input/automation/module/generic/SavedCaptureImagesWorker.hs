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
-- package org.allbinary.input.automation.module.generic
module SavedCaptureImagesWorker (module SavedCaptureImagesWorker, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setThread, setThread_super, setThread_impl, isRunning, isRunning_super, isRunning_impl, setRunning, setRunning_super, setRunning_impl, run, run_super, run_impl, logUtil, commonStrings, index, running, screenScavangerRobot, savedCaptureGenericProfileDataWorkerType)
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
import qualified Thread -- same package or java.lang
import qualified MediaData -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified File -- java.io.File
import qualified ImageIO -- javax.imageio.ImageIO
import qualified SavedCaptureGenericProfileDataWorkerType -- org.allbinary.input.automation.module.generic.configuration.profile.SavedCaptureGenericProfileDataWorkerType
import qualified CaptureWorkerInterface -- org.allbinary.input.media.image.capture.CaptureWorkerInterface
import qualified CapturedBufferedImagesCacheSingleton -- org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton
import qualified CapturedImageWorkerResultsEvent -- org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent
import qualified ProcessingFrameIndexFactory -- org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory
import qualified ScreenScavangerRobot -- org.allbinary.input.media.image.capture.ScreenScavangerRobot
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LongUtil -- org.allbinary.logic.java.number.LongUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified MediaDataFactory -- org.allbinary.logic.visual.media.MediaDataFactory
import qualified BufferedImageFrameCacheable -- org.allbinary.media.image.cache.BufferedImageFrameCacheable
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- implements CaptureWorkerInterface
data SavedCaptureImagesWorker = SavedCaptureImagesWorker
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , running :: IORef (Bool)
    , screenScavangerRobot :: IORef (ScreenScavangerRobot.ScreenScavangerRobot)
    , savedCaptureGenericProfileDataWorkerType :: IORef (SavedCaptureGenericProfileDataWorkerType.SavedCaptureGenericProfileDataWorkerType)
    }

instance JavaNull SavedCaptureImagesWorker where
    javaNull = javaNullRecord "SavedCaptureImagesWorker"

instance JavaEquals SavedCaptureImagesWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SavedCaptureImagesWorker where
    (==) = jrecordEquals

instance JavaObjectClass SavedCaptureImagesWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE index #-}
index = unsafePerformIO (newIORef (0))

newRecord_ :: IO SavedCaptureImagesWorker
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    running <- newIORef False
    screenScavangerRobot <- newIORef javaNull
    savedCaptureGenericProfileDataWorkerType <- newIORef javaNull
    let this = SavedCaptureImagesWorker header_ base logUtil commonStrings running screenScavangerRobot savedCaptureGenericProfileDataWorkerType
    jregisterLevel header_ this
    CaptureWorkerInterface.registerInterface_ header_
    jregisterMethod header_ "setThread" (\() -> setThread_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: SavedCaptureImagesWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.running (False)
    jset this.screenScavangerRobot (javaNull)
    jset this.savedCaptureGenericProfileDataWorkerType (javaNull)
    pure ()

new_1 :: SavedCaptureGenericProfileDataWorkerType.SavedCaptureGenericProfileDataWorkerType -> IO SavedCaptureImagesWorker
new_1 savedCaptureGenericProfileDataWorkerType = do
    this <- newRecord_
    init_1 this savedCaptureGenericProfileDataWorkerType
    pure this

init_1 :: SavedCaptureImagesWorker -> SavedCaptureGenericProfileDataWorkerType.SavedCaptureGenericProfileDataWorkerType -> IO ()
init_1 this savedCaptureGenericProfileDataWorkerType = do
        BasicEventHandler.init_ this.base
        initFields_ this
        jset (this).savedCaptureGenericProfileDataWorkerType (savedCaptureGenericProfileDataWorkerType)
        assignedValue <- (ScreenScavangerRobot.new_)
        jset (this).screenScavangerRobot (assignedValue)
        assignedValue <- (ProcessingFrameIndexFactory.next)
        jset SavedCaptureImagesWorker.index (assignedValue)
        pure ()


-- throws Exception
setThread :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread object_ a1 = jmethod object_ "setThread" (\() -> (setThread_impl (javaCast object_ :: SavedCaptureImagesWorker))) () a1

setThread_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread_super object_ a1 = (setThread_impl (javaCast object_ :: SavedCaptureImagesWorker)) a1

setThread_impl :: SavedCaptureImagesWorker -> Thread.Thread -> IO (())
setThread_impl this thread = do
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: SavedCaptureImagesWorker))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: SavedCaptureImagesWorker))

isRunning_impl :: SavedCaptureImagesWorker -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).running))


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: SavedCaptureImagesWorker))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: SavedCaptureImagesWorker)) a1

setRunning_impl :: SavedCaptureImagesWorker -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: SavedCaptureImagesWorker))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: SavedCaptureImagesWorker))

run_impl :: SavedCaptureImagesWorker -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rUN))
            Control.Monad.void (SavedCaptureImagesWorker.setRunning this True)
            timeHelper <- (TimeDelayHelper.new_1 1000)
            fix $ \loop -> when (jio (SavedCaptureImagesWorker.isRunning this)) $ javaIteration (loop) $ do
                Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
                let frame = (Prelude.fromIntegral ((jget index)) :: Int64)
                filePathStringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append filePathStringBuffer (jio (SavedCaptureGenericProfileDataWorkerType.getPath ((jget (this).savedCaptureGenericProfileDataWorkerType)))))
                Control.Monad.void (StringMaker.append filePathStringBuffer (jio (LongUtil.fillIn (javaToString frame))))
                Control.Monad.void (StringMaker.append filePathStringBuffer (jio (MediaData.getExtension ((jget ((jio (MediaDataFactory.getInstance))).jPG)))))
                filePath <- (StringMaker.toString filePathStringBuffer)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Loading Image File Path: " ++ filePath) this (jget ((jget (this).commonStrings)).rUN))
                file <- (File.new_1 filePath)
                if (jio (File.isFile file)) then do
                    bufferedImage <- (ImageIO.read file)
                    jset SavedCaptureImagesWorker.index ((jget SavedCaptureImagesWorker.index) + 1)
                    Control.Monad.void (CacheInterface.add ((jio (CapturedBufferedImagesCacheSingleton.getInstance))) (jio (BufferedImageFrameCacheable.new_2 bufferedImage frame)))
                    capturedImageEvent <- (CapturedImageWorkerResultsEvent.new_3 this frame bufferedImage)
                    Control.Monad.void (BasicEventHandler.fireEvent this (javaCast capturedImageEvent))
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Could Not Load File: " ++ filePath) this (jget ((jget (this).commonStrings)).rUN))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).eLAPSED) + (jio (TimeDelayHelper.getElapsedTNT timeHelper))) this (jget ((jget (this).commonStrings)).rUN))
                Control.Monad.void (SavedCaptureImagesWorker.setRunning this False)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).rUN))
        pure ()


