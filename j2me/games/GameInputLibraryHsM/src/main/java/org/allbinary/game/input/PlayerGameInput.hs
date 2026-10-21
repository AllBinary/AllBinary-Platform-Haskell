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
-- package org.allbinary.game.input
module PlayerGameInput (module PlayerGameInput, module GameInput) where

import GameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onPressGameKeyEvent, onPressGameKeyEvent_super, onPressGameKeyEvent_impl, onDownGameKeyEvent, onDownGameKeyEvent_super, onDownGameKeyEvent_impl, onDownKeyEvent, onDownKeyEvent_super, onDownKeyEvent_impl, onDownKey, onDownKey_super, onDownKey_impl, onUpGameKeyEvent, onUpGameKeyEvent_super, onUpGameKeyEvent_impl, onUpKeyEvent, onUpKeyEvent_super, onUpKeyEvent_impl, onEvent, onEvent_super, onEvent_impl, getPlayerInputId, getPlayerInputId_super, getPlayerInputId_impl, gameInputStrings, playerInputId)
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
import qualified GameInputStrings -- same package or java.lang
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventListenerInterface -- org.allbinary.game.input.event.GameKeyEventListenerInterface
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified GameInput

-- implements GameKeyEventListenerInterface
data PlayerGameInput = PlayerGameInput
    { header_ :: JavaHeader
    , base :: GameInput.GameInput
    , gameInputStrings :: IORef (GameInputStrings.GameInputStrings)
    , playerInputId :: IORef (Int)
    }

instance JavaNull PlayerGameInput where
    javaNull = javaNullRecord "PlayerGameInput"

instance JavaEquals PlayerGameInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerGameInput where
    (==) = jrecordEquals

instance JavaObjectClass PlayerGameInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PlayerGameInput
newRecord_ = do
    base <- GameInput.newRecord_
    let header_ = base.header_
    gameInputStrings <- newIORef javaNull
    playerInputId <- newIORef 0
    let this = PlayerGameInput header_ base gameInputStrings playerInputId
    jregisterLevel header_ this
    GameKeyEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onPressGameKeyEvent" (\() -> onPressGameKeyEvent_impl this)
    jregisterMethod header_ "onDownGameKeyEvent" (\() -> onDownGameKeyEvent_impl this)
    jregisterMethod header_ "onDownKeyEvent" (\() -> onDownKeyEvent_impl this)
    jregisterMethod header_ "onDownKey" (\() -> onDownKey_impl this)
    jregisterMethod header_ "onUpGameKeyEvent" (\() -> onUpGameKeyEvent_impl this)
    jregisterMethod header_ "onUpKeyEvent" (\() -> onUpKeyEvent_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "getPlayerInputId" (\() -> getPlayerInputId_impl this)
    pure this

initFields_ :: PlayerGameInput -> IO ()
initFields_ this = do
    jset this.gameInputStrings =<< (GameInputStrings.getInstance)
    jset this.playerInputId (0)
    pure ()

new_3 :: BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> IO PlayerGameInput
new_3 gameKeyEventList removalGameKeyEventList playerInputId = do
    this <- newRecord_
    init_3 this gameKeyEventList removalGameKeyEventList playerInputId
    pure this

init_3 :: PlayerGameInput -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> IO ()
init_3 this gameKeyEventList removalGameKeyEventList playerInputId = do
        GameInput.init_2 this.base (gameKeyEventList) (removalGameKeyEventList)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).playerInputId (playerInputId)
        pure ()


onPressGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent object_ a1 = jmethod object_ "onPressGameKeyEvent" (\() -> (onPressGameKeyEvent_impl (javaCast object_ :: PlayerGameInput))) () a1

onPressGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent_super object_ a1 = (onPressGameKeyEvent_impl (javaCast object_ :: PlayerGameInput)) a1

onPressGameKeyEvent_impl :: PlayerGameInput -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent_impl this gameKeyEvent = do
        Control.Monad.void (GameInput.add this gameKeyEvent)
        Control.Monad.void (GameInput.addForRemoval this gameKeyEvent)
        pure ()


onDownGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent object_ a1 = jmethod object_ "onDownGameKeyEvent" (\() -> (onDownGameKeyEvent_impl (javaCast object_ :: PlayerGameInput))) () a1

onDownGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_super object_ a1 = (onDownGameKeyEvent_impl (javaCast object_ :: PlayerGameInput)) a1

onDownGameKeyEvent_impl :: PlayerGameInput -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_impl this gameKeyEvent = do
        Control.Monad.void (GameInput.add this gameKeyEvent)
        pure ()


onDownKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownKeyEvent object_ a1 = jmethod object_ "onDownKeyEvent" (\() -> (onDownKeyEvent_impl (javaCast object_ :: PlayerGameInput))) () a1

onDownKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownKeyEvent_super object_ a1 = (onDownKeyEvent_impl (javaCast object_ :: PlayerGameInput)) a1

onDownKeyEvent_impl :: PlayerGameInput -> GameKeyEvent.GameKeyEvent -> IO (())
onDownKeyEvent_impl this gameKeyEvent = do
        Control.Monad.void (GameInput.add this gameKeyEvent)
        Control.Monad.void (GameInput.addForRemoval this gameKeyEvent)
        pure ()


onDownKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onDownKey object_ a1 = jmethod object_ "onDownKey" (\() -> (onDownKey_impl (javaCast object_ :: PlayerGameInput))) () a1

onDownKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onDownKey_super object_ a1 = (onDownKey_impl (javaCast object_ :: PlayerGameInput)) a1

onDownKey_impl :: PlayerGameInput -> Int -> IO (())
onDownKey_impl this gameKeyEvent = do
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) (javaToString gameKeyEvent)))))) this (jget ((jget (this).gameInputStrings)).oN_DOWN_GAME_KEY))
        pure ()


onUpGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent object_ a1 = jmethod object_ "onUpGameKeyEvent" (\() -> (onUpGameKeyEvent_impl (javaCast object_ :: PlayerGameInput))) () a1

onUpGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_super object_ a1 = (onUpGameKeyEvent_impl (javaCast object_ :: PlayerGameInput)) a1

onUpGameKeyEvent_impl :: PlayerGameInput -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_impl this gameKeyEvent = do
        Control.Monad.void (GameInput.addForRemoval this gameKeyEvent)
        pure ()


onUpKeyEvent :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onUpKeyEvent object_ a1 = jmethod object_ "onUpKeyEvent" (\() -> (onUpKeyEvent_impl (javaCast object_ :: PlayerGameInput))) () a1

onUpKeyEvent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onUpKeyEvent_super object_ a1 = (onUpKeyEvent_impl (javaCast object_ :: PlayerGameInput)) a1

onUpKeyEvent_impl :: PlayerGameInput -> Int -> IO (())
onUpKeyEvent_impl this gameKeyEvent = do
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: PlayerGameInput))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: PlayerGameInput)) a1

onEvent_impl :: PlayerGameInput -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


getPlayerInputId :: (JavaObjectClass this_) => this_ -> IO (Int)
getPlayerInputId object_ = jmethod object_ "getPlayerInputId" (\() -> (getPlayerInputId_impl (javaCast object_ :: PlayerGameInput))) ()

getPlayerInputId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPlayerInputId_super object_ = (getPlayerInputId_impl (javaCast object_ :: PlayerGameInput))

getPlayerInputId_impl :: PlayerGameInput -> IO (Int)
getPlayerInputId_impl this = do
        pure ((jget (this).playerInputId))


