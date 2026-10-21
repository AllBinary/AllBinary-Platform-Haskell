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
module ScreenScavangerRobot where

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
import qualified Any -- same package or java.lang
import qualified Dimension -- java.awt.Dimension
import qualified Rectangle -- java.awt.Rectangle
import qualified Toolkit -- java.awt.Toolkit
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified InputRobotFactory -- org.allbinary.input.automation.robot.InputRobotFactory
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data ScreenScavangerRobot = ScreenScavangerRobot
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull ScreenScavangerRobot where
    javaNull = javaNullRecord "ScreenScavangerRobot"

instance JavaEquals ScreenScavangerRobot where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScreenScavangerRobot where
    (==) = jrecordEquals

instance JavaObjectClass ScreenScavangerRobot where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScreenScavangerRobot
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = ScreenScavangerRobot header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getScreenAsBufferedImages" (\() -> getScreenAsBufferedImages_impl this)
    pure this

initFields_ :: ScreenScavangerRobot -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO ScreenScavangerRobot
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScreenScavangerRobot -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getScreenAsBufferedImages :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BufferedImage.BufferedImage))
getScreenAsBufferedImages object_ = jmethod object_ "getScreenAsBufferedImages" (\() -> (getScreenAsBufferedImages_impl (javaCast object_ :: ScreenScavangerRobot))) ()

getScreenAsBufferedImages_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BufferedImage.BufferedImage))
getScreenAsBufferedImages_super object_ = (getScreenAsBufferedImages_impl (javaCast object_ :: ScreenScavangerRobot))

getScreenAsBufferedImages_impl :: ScreenScavangerRobot -> IO (JavaArray (BufferedImage.BufferedImage))
getScreenAsBufferedImages_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getScreenAsBufferedImages")
        dimScreenSize <- (Toolkit.getScreenSize ((jio (Toolkit.getDefaultToolkit))))
        rectScreenSize <- (Rectangle.new_1 dimScreenSize)
        robotHashtable <- (InputRobotFactory.get ((jio (InputRobotFactory.getInstance))))
        let bufferedImageArray = (jnewArray (1) javaNull)
        let index = 0
        let inputRobotInterface = (javaCast (jio (ABHashtable.get robotHashtable "Java Robot")) :: InputRobotInterface.InputRobotInterface)
        assignedValue <- (InputRobotInterface.createScreenCapture inputRobotInterface rectScreenSize)
        jsetIndex bufferedImageArray (index) (assignedValue)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Finish" this "getScreenAsBufferedImages")
        pure (bufferedImageArray)


