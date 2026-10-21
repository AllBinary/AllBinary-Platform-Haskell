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
-- package org.allbinary.game.ag.layer.hud.basic.time
module TimeHudWidget (module TimeHudWidget, module BasicHud) where

import BasicHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, update, update_super, update_impl, set, set_super, set_impl, getTimer, getTimer_super, getTimer_impl, paint, paint_super, paint_impl, tIME_STRING, tIME_CHAR_ARRAY, offset, string, totalDigits, timer)
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
import qualified Timer -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicHud -- org.allbinary.game.graphics.hud.BasicHud
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified PrimitiveLongSingleton -- org.allbinary.logic.math.PrimitiveLongSingleton

data TimeHudWidget = TimeHudWidget
    { header_ :: JavaHeader
    , base :: BasicHud.BasicHud
    , tIME_STRING :: IORef (String)
    , tIME_CHAR_ARRAY :: IORef (JavaArray (Char))
    , offset :: IORef (Int)
    , string :: IORef (JavaArray (Char))
    , totalDigits :: IORef (Int)
    , timer :: IORef (Timer.Timer)
    }

instance JavaNull TimeHudWidget where
    javaNull = javaNullRecord "TimeHudWidget"

instance JavaEquals TimeHudWidget where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeHudWidget where
    (==) = jrecordEquals

instance JavaObjectClass TimeHudWidget where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TimeHudWidget
newRecord_ = do
    base <- BasicHud.newRecord_
    let header_ = base.header_
    tIME_STRING <- newIORef ""
    tIME_CHAR_ARRAY <- newIORef javaNull
    offset <- newIORef 0
    string <- newIORef javaNull
    totalDigits <- newIORef 0
    timer <- newIORef javaNull
    let this = TimeHudWidget header_ base tIME_STRING tIME_CHAR_ARRAY offset string totalDigits timer
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "getTimer" (\() -> getTimer_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: TimeHudWidget -> IO ()
initFields_ this = do
    jset this.tIME_STRING ("Time ")
    jset this.tIME_CHAR_ARRAY ((jarrayFromList ['T', 'i', 'm', 'e', ' ']))
    jset this.offset (0)
    jset this.string ((jget ((jio (PrimitiveLongSingleton.getInstance))).zERO))
    jset this.totalDigits (1)
    jset this.timer (javaNull)
    pure ()


-- throws Exception
getInstance :: Int -> Int -> BasicColor.BasicColor -> Timer.Timer -> IO (TimeHudWidget)
getInstance location direction basicColor timer = do
        (new_5 location direction 2 basicColor timer)

new_5 :: Int -> Int -> Int -> BasicColor.BasicColor -> Timer.Timer -> IO TimeHudWidget
new_5 location direction bufferZone basicColor timer = do
    this <- newRecord_
    init_5 this location direction bufferZone basicColor timer
    pure this

init_5 :: TimeHudWidget -> Int -> Int -> Int -> BasicColor.BasicColor -> Timer.Timer -> IO ()
init_5 this location direction bufferZone basicColor timer = do
        BasicHud.init_4 this.base (location) (direction) (bufferZone) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).timer (timer)
        Control.Monad.void (TimeHudWidget.set this)
        jset (this).base.updateMaxHeight (14)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: TimeHudWidget))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: TimeHudWidget)) a1

updateMeasurement_impl :: TimeHudWidget -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).base.updateMaxWidth (((jio (Font.getSize font)) * 5))
        jset (this).offset (((jio (Font.stringWidth font (jget (this).tIME_STRING))) + (jio (MyFontProcessor.defaultStringWidth font 3))))
        Control.Monad.void (BasicHud.updateMeasurement_super this.base graphics)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TimeHudWidget))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: TimeHudWidget))

update_impl :: TimeHudWidget -> IO (())
update_impl this = do
        Control.Monad.void (Timer.update ((jget (this).timer)))
        Control.Monad.void (TimeHudWidget.set this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: TimeHudWidget))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: TimeHudWidget))

set_impl :: TimeHudWidget -> IO (())
set_impl this = do
        assignedValue <- (Timer.getTimeChars ((jget (this).timer)))
        jset (this).string (assignedValue)
        assignedValue <- (Timer.getCurrentTotalDigits ((jget (this).timer)))
        jset (this).totalDigits (assignedValue)
        pure ()


getTimer :: (JavaObjectClass this_) => this_ -> IO (Timer.Timer)
getTimer object_ = jmethod object_ "getTimer" (\() -> (getTimer_impl (javaCast object_ :: TimeHudWidget))) ()

getTimer_super :: (JavaObjectClass this_) => this_ -> IO (Timer.Timer)
getTimer_super object_ = (getTimer_impl (javaCast object_ :: TimeHudWidget))

getTimer_impl :: TimeHudWidget -> IO (Timer.Timer)
getTimer_impl this = do
        pure ((jget (this).timer))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: TimeHudWidget))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: TimeHudWidget)) a1

paint_impl :: TimeHudWidget -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (BasicHud.paintDX_super this.base graphics (jget (this).tIME_CHAR_ARRAY) 0 (jlength (jget (this).tIME_CHAR_ARRAY)) (jget (this).string) 0 (jget (this).totalDigits) (jget (this).offset))
        pure ()


