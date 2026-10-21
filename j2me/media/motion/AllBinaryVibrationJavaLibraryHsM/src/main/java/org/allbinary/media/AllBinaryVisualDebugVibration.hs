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
-- package org.allbinary.media
module AllBinaryVisualDebugVibration (module AllBinaryVisualDebugVibration, module AllBinaryVibrationME) where

import AllBinaryVibrationME hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, vibrate, vibrate_super, vibrate_impl, paint, paint_super, paint_impl, displayInfoSingleton, timeDelayHelper, vIBRATING, myFontProcessor, anchor, width)
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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified AllBinaryVibrationME

-- implements UpdateMyFontInterface
data AllBinaryVisualDebugVibration = AllBinaryVisualDebugVibration
    { header_ :: JavaHeader
    , base :: AllBinaryVibrationME.AllBinaryVibrationME
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , vIBRATING :: IORef (String)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , anchor :: IORef (Int)
    , width :: IORef (Int)
    }

instance JavaNull AllBinaryVisualDebugVibration where
    javaNull = javaNullRecord "AllBinaryVisualDebugVibration"

instance JavaEquals AllBinaryVisualDebugVibration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryVisualDebugVibration where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryVisualDebugVibration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryVisualDebugVibration
newRecord_ = do
    base <- AllBinaryVibrationME.newRecord_
    let header_ = base.header_
    displayInfoSingleton <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    vIBRATING <- newIORef ""
    myFontProcessor <- newIORef javaNull
    anchor <- newIORef 0
    width <- newIORef 0
    let this = AllBinaryVisualDebugVibration header_ base displayInfoSingleton timeDelayHelper vIBRATING myFontProcessor anchor width
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "vibrate" (\() -> vibrate_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: AllBinaryVisualDebugVibration -> IO ()
initFields_ this = do
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 (2147483647 :: Int))
    jset this.vIBRATING ("Vibrating")
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.width (0)
    pure ()

new_ :: IO AllBinaryVisualDebugVibration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryVisualDebugVibration -> IO ()
init_ this = do
    AllBinaryVibrationME.init_ this.base
    initFields_ this


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: AllBinaryVisualDebugVibration))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: AllBinaryVisualDebugVibration)) a1

updateMeasurement_impl :: AllBinaryVisualDebugVibration -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.stringWidth font (jget (this).vIBRATING))
        jset (this).width (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


vibrate :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
vibrate object_ a1 a2 a3 = jmethod object_ "vibrate" (\() -> (vibrate_impl (javaCast object_ :: AllBinaryVisualDebugVibration))) () a1 a2 a3

vibrate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
vibrate_super object_ a1 a2 a3 = (vibrate_impl (javaCast object_ :: AllBinaryVisualDebugVibration)) a1 a2 a3

vibrate_impl :: AllBinaryVisualDebugVibration -> Int -> Int -> Int -> IO (())
vibrate_impl this duration type_ volume = do
        jset ((jget (this).timeDelayHelper)).delay (duration)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AllBinaryVisualDebugVibration))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AllBinaryVisualDebugVibration)) a1

paint_impl :: AllBinaryVisualDebugVibration -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeDelayHelper)))) $ do
            jset ((jget (this).timeDelayHelper)).delay ((2147483647 :: Int))
            Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
            Control.Monad.void (Graphics.drawString graphics (jget (this).vIBRATING) ((jio (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfoSingleton)))) - (((jget this.width) `Data.Bits.shiftR` 1))) 0 (jget (this).anchor))
        pure ()


