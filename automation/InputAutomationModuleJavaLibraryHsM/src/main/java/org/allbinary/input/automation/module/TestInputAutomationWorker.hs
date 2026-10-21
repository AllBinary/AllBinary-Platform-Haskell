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
module TestInputAutomationWorker where

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
import qualified ScreenCaptureImagesWorker -- org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker
import qualified ImageComparisonWorker -- org.allbinary.media.image.comparison.ImageComparisonWorker
import qualified SaveImageComparisonWorker -- org.allbinary.media.image.comparison.SaveImageComparisonWorker
import qualified MotionRectanglesWorker -- org.allbinary.media.image.comparison.motion.MotionRectanglesWorker
import qualified SaveMotionRectanglesResultsWorker -- org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker
import qualified TestInputForMotionRectanglesResultsWorker -- org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker

data TestInputAutomationWorker = TestInputAutomationWorker
    { header_ :: JavaHeader
    , captureWorker :: IORef (ScreenCaptureImagesWorker.ScreenCaptureImagesWorker)
    , imageComparisonWorker :: IORef (ImageComparisonWorker.ImageComparisonWorker)
    , motionRectanglesWorker :: IORef (MotionRectanglesWorker.MotionRectanglesWorker)
    , changedPixelsImageComparisonResultsWorker :: IORef (SaveImageComparisonWorker.SaveImageComparisonWorker)
    , saveMotionRectanglesAsImagesWorker :: IORef (SaveMotionRectanglesResultsWorker.SaveMotionRectanglesResultsWorker)
    , moveMouseToFirstMotionRectanglesResultsWorker :: IORef (TestInputForMotionRectanglesResultsWorker.TestInputForMotionRectanglesResultsWorker)
    }

instance JavaNull TestInputAutomationWorker where
    javaNull = javaNullRecord "TestInputAutomationWorker"

instance JavaEquals TestInputAutomationWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TestInputAutomationWorker where
    (==) = jrecordEquals

instance JavaObjectClass TestInputAutomationWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TestInputAutomationWorker
newRecord_ = do
    header_ <- newJavaHeader
    captureWorker <- newIORef javaNull
    imageComparisonWorker <- newIORef javaNull
    motionRectanglesWorker <- newIORef javaNull
    changedPixelsImageComparisonResultsWorker <- newIORef javaNull
    saveMotionRectanglesAsImagesWorker <- newIORef javaNull
    moveMouseToFirstMotionRectanglesResultsWorker <- newIORef javaNull
    let this = TestInputAutomationWorker header_ captureWorker imageComparisonWorker motionRectanglesWorker changedPixelsImageComparisonResultsWorker saveMotionRectanglesAsImagesWorker moveMouseToFirstMotionRectanglesResultsWorker
    jregisterLevel header_ this
    pure this

initFields_ :: TestInputAutomationWorker -> IO ()
initFields_ this = do
    jset this.captureWorker (javaNull)
    jset this.imageComparisonWorker (javaNull)
    jset this.motionRectanglesWorker (javaNull)
    jset this.changedPixelsImageComparisonResultsWorker (javaNull)
    jset this.saveMotionRectanglesAsImagesWorker (javaNull)
    jset this.moveMouseToFirstMotionRectanglesResultsWorker (javaNull)
    pure ()

new_ :: IO TestInputAutomationWorker
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TestInputAutomationWorker -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (ScreenCaptureImagesWorker.new_)
        jset (this).captureWorker (assignedValue)
        assignedValue <- (SaveImageComparisonWorker.new_)
        jset (this).changedPixelsImageComparisonResultsWorker (assignedValue)
        assignedValue <- (SaveMotionRectanglesResultsWorker.new_)
        jset (this).saveMotionRectanglesAsImagesWorker (assignedValue)
        assignedValue <- (TestInputForMotionRectanglesResultsWorker.new_)
        jset (this).moveMouseToFirstMotionRectanglesResultsWorker (assignedValue)
        Control.Monad.void (MotionRectanglesWorker.addListenerInterface ((jget (this).motionRectanglesWorker)) (jget (this).saveMotionRectanglesAsImagesWorker))
        Control.Monad.void (MotionRectanglesWorker.addListenerInterface ((jget (this).motionRectanglesWorker)) (jget (this).moveMouseToFirstMotionRectanglesResultsWorker))
        Control.Monad.void (ImageComparisonWorker.addListenerInterface ((jget (this).imageComparisonWorker)) (jget (this).changedPixelsImageComparisonResultsWorker))
        Control.Monad.void (ImageComparisonWorker.addListenerInterface ((jget (this).imageComparisonWorker)) (jget (this).motionRectanglesWorker))
        Control.Monad.void (ScreenCaptureImagesWorker.addListenerInterface ((jget (this).captureWorker)) (jget (this).imageComparisonWorker))
        pure ()


