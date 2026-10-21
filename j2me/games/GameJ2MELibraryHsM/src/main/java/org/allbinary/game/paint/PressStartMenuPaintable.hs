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
-- package org.allbinary.game.paint
module PressStartMenuPaintable (module PressStartMenuPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, paint, paint_super, paint_impl, setFlash, setFlash_super, setFlash_impl, isFlash, isFlash_super, isFlash_impl, displayInfo, pRESS_START, kEY_START, mENU_START, myFontProcessor, startString, timeDelayHelper, flash, anchor, beginWidth, line)
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
import qualified AppletUtil -- org.allbinary.AppletUtil
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified TouchScreenFactory -- org.allbinary.input.motion.button.TouchScreenFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- implements UpdateMyFontInterface
data PressStartMenuPaintable = PressStartMenuPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , displayInfo :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , pRESS_START :: IORef (String)
    , kEY_START :: IORef (String)
    , mENU_START :: IORef (String)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , startString :: IORef (String)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , flash :: IORef (Bool)
    , anchor :: IORef (Int)
    , beginWidth :: IORef (Int)
    , line :: IORef (Int)
    }

instance JavaNull PressStartMenuPaintable where
    javaNull = javaNullRecord "PressStartMenuPaintable"

instance JavaEquals PressStartMenuPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PressStartMenuPaintable where
    (==) = jrecordEquals

instance JavaObjectClass PressStartMenuPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PressStartMenuPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    displayInfo <- newIORef javaNull
    pRESS_START <- newIORef ""
    kEY_START <- newIORef ""
    mENU_START <- newIORef ""
    myFontProcessor <- newIORef javaNull
    startString <- newIORef ""
    timeDelayHelper <- newIORef javaNull
    flash <- newIORef False
    anchor <- newIORef 0
    beginWidth <- newIORef 0
    line <- newIORef 0
    let this = PressStartMenuPaintable header_ base displayInfo pRESS_START kEY_START mENU_START myFontProcessor startString timeDelayHelper flash anchor beginWidth line
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setFlash" (\() -> setFlash_impl this)
    jregisterMethod header_ "isFlash" (\() -> isFlash_impl this)
    pure this

initFields_ :: PressStartMenuPaintable -> IO ()
initFields_ this = do
    jset this.displayInfo =<< (DisplayInfoSingleton.getInstance)
    jset this.pRESS_START ("Press Screen To Start")
    jset this.kEY_START ("Press or Click F2 To Begin")
    jset this.mENU_START ("Press Start From The Menu To Begin")
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.startString ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 1100)
    jset this.flash (False)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.beginWidth (0)
    jset this.line (0)
    pure ()

new_ :: IO PressStartMenuPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PressStartMenuPaintable -> IO ()
init_ this = do
        Paintable.init_ this.base
        initFields_ this
        if (jio (TouchScreenFactory.isTouch ((jio (TouchScreenFactory.getInstance))))) then do
            jset (this).startString ((jget (this).pRESS_START))
        else if (jio (AppletUtil.isAppletLoader this)) then do
            jset (this).startString ((jget (this).kEY_START))
        else do
            jset (this).startString ((jget (this).mENU_START))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: PressStartMenuPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: PressStartMenuPaintable)) a1

updateMeasurement_impl :: PressStartMenuPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).beginWidth ((((jio (Graphics.stringWidth ((jio (Graphics.getFont graphics))) (jget (this).startString))) `Data.Bits.shiftR` 1)))
        jset (this).line ((((4 * (jio (MyFontProcessor.defaultCharWidth font)))) + (((jio (Font.getHeight font)) `Data.Bits.shiftR` 1))))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PressStartMenuPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PressStartMenuPaintable)) a1

paint_impl :: PressStartMenuPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeDelayHelper)))) $ do
            if (jio (PressStartMenuPaintable.isFlash this)) then do
                Control.Monad.void (PressStartMenuPaintable.setFlash this False)
            else do
                Control.Monad.void (PressStartMenuPaintable.setFlash this True)
        when (jio (PressStartMenuPaintable.isFlash this)) $ do
            Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
            Control.Monad.void (Graphics.drawString graphics (jget (this).startString) ((jio (DisplayInfoSingleton.getLastHalfWidth ((jget this.displayInfo)))) - (jget this.beginWidth)) ((jio (DisplayInfoSingleton.getLastHeight ((jget this.displayInfo)))) - (jget this.line)) (jget (this).anchor))
        pure ()


setFlash :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFlash object_ a1 = jmethod object_ "setFlash" (\() -> (setFlash_impl (javaCast object_ :: PressStartMenuPaintable))) () a1

setFlash_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFlash_super object_ a1 = (setFlash_impl (javaCast object_ :: PressStartMenuPaintable)) a1

setFlash_impl :: PressStartMenuPaintable -> Bool -> IO (())
setFlash_impl this flash = do
        jset (this).flash (flash)
        pure ()


isFlash :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFlash object_ = jmethod object_ "isFlash" (\() -> (isFlash_impl (javaCast object_ :: PressStartMenuPaintable))) ()

isFlash_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFlash_super object_ = (isFlash_impl (javaCast object_ :: PressStartMenuPaintable))

isFlash_impl :: PressStartMenuPaintable -> IO (Bool)
isFlash_impl this = do
        pure ((jget (this).flash))


