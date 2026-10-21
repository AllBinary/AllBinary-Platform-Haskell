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
-- package org.allbinary.game.ag.layer.hud.basic.notification
module GameNotificationHud (module GameNotificationHud, module BasicHud) where

import BasicHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onEvent, onEvent_super, onEvent_impl, onGameNotificationEvent, onGameNotificationEvent_super, onGameNotificationEvent_impl, add, add_super, add_impl, processTick, processTick_super, processTick_impl, paint, paint_super, paint_impl, clear, clear_super, clear_impl, nULL_GAME_NOTIFICATION, mETHOD_NAME, lastGameNotificationEvent)
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
import qualified GameNotification -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicHud -- org.allbinary.game.graphics.hud.BasicHud
import qualified BasicHudFactory -- org.allbinary.game.graphics.hud.BasicHudFactory
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationListenerInterface -- org.allbinary.game.layer.hud.event.GameNotificationListenerInterface
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

-- implements GameNotificationListenerInterface
data GameNotificationHud = GameNotificationHud
    { header_ :: JavaHeader
    , base :: BasicHud.BasicHud
    , mETHOD_NAME :: IORef (String)
    , lastGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    }

instance JavaNull GameNotificationHud where
    javaNull = javaNullRecord "GameNotificationHud"

instance JavaEquals GameNotificationHud where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameNotificationHud where
    (==) = jrecordEquals

instance JavaObjectClass GameNotificationHud where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GAME_NOTIFICATION #-}
nULL_GAME_NOTIFICATION = unsafePerformIO ((new_4 (jget ((jio (BasicHudFactory.getInstance))).tOPCENTER) (jget ((jio (BasicHudFactory.getInstance))).hORIZONTAL) 0 (jget ((jio (BasicColorFactory.getInstance))).rED)))

newRecord_ :: IO GameNotificationHud
newRecord_ = do
    base <- BasicHud.newRecord_
    let header_ = base.header_
    mETHOD_NAME <- newIORef ""
    lastGameNotificationEvent <- newIORef javaNull
    let this = GameNotificationHud header_ base mETHOD_NAME lastGameNotificationEvent
    jregisterLevel header_ this
    GameNotificationListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onGameNotificationEvent" (\() -> onGameNotificationEvent_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    pure this

initFields_ :: GameNotificationHud -> IO ()
initFields_ this = do
    jset this.mETHOD_NAME ("onGameNotificationEvent")
    jset this.lastGameNotificationEvent (GameNotification.nULL_GAME_NOTIFICATION_EVENT)
    pure ()

new_4 :: Int -> Int -> Int -> BasicColor.BasicColor -> IO GameNotificationHud
new_4 location direction bufferZone basicColor = do
    this <- newRecord_
    init_4 this location direction bufferZone basicColor
    pure this

init_4 :: GameNotificationHud -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_4 this location direction bufferZone basicColor = do
        BasicHud.init_4 this.base (location) (direction) (bufferZone) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: GameNotificationHud))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: GameNotificationHud)) a1

onEvent_impl :: GameNotificationHud -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
onGameNotificationEvent :: (JavaObjectClass this_) => this_ -> GameNotificationEvent.GameNotificationEvent -> IO (())
onGameNotificationEvent object_ a1 = jmethod object_ "onGameNotificationEvent" (\() -> (onGameNotificationEvent_impl (javaCast object_ :: GameNotificationHud))) () a1

onGameNotificationEvent_super :: (JavaObjectClass this_) => this_ -> GameNotificationEvent.GameNotificationEvent -> IO (())
onGameNotificationEvent_super object_ a1 = (onGameNotificationEvent_impl (javaCast object_ :: GameNotificationHud)) a1

onGameNotificationEvent_impl :: GameNotificationHud -> GameNotificationEvent.GameNotificationEvent -> IO (())
onGameNotificationEvent_impl this gameNotificationEvent = do
        when ((jget (this).lastGameNotificationEvent) /= gameNotificationEvent) $ do
            jset (this).lastGameNotificationEvent (gameNotificationEvent)
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (GameNotificationEvent.getString gameNotificationEvent)) this (jget (this).mETHOD_NAME))
        Control.Monad.void (GameNotificationHud.add this (jio (GameNotificationEvent.getString gameNotificationEvent)) (jio (GameNotificationEvent.getSeconds gameNotificationEvent)) (jio (GameNotificationEvent.getBasicColorP gameNotificationEvent)) (jio (GameNotificationEvent.getPermanent gameNotificationEvent)))
        pure ()


add :: (JavaObjectClass this_) => this_ -> String -> Int -> BasicColor.BasicColor -> Bool -> IO (())
add object_ a1 a2 a3 a4 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameNotificationHud))) () a1 a2 a3 a4

add_super :: (JavaObjectClass this_) => this_ -> String -> Int -> BasicColor.BasicColor -> Bool -> IO (())
add_super object_ a1 a2 a3 a4 = (add_impl (javaCast object_ :: GameNotificationHud)) a1 a2 a3 a4

add_impl :: GameNotificationHud -> String -> Int -> BasicColor.BasicColor -> Bool -> IO (())
add_impl this string seconds basicColor permanent = do
        pure ()


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> IO (())
processTick object_ = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: GameNotificationHud))) ()

processTick_super :: (JavaObjectClass this_) => this_ -> IO (())
processTick_super object_ = (processTick_impl (javaCast object_ :: GameNotificationHud))

processTick_impl :: GameNotificationHud -> IO (())
processTick_impl this = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GameNotificationHud))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: GameNotificationHud)) a1

paint_impl :: GameNotificationHud -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: GameNotificationHud))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: GameNotificationHud))

clear_impl :: GameNotificationHud -> IO (())
clear_impl this = do
        pure ()


