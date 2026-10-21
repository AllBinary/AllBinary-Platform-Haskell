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
-- package org.allbinary.game.input.motion.action
module GameKeyCompleteMotionGestureInputEvent (module GameKeyCompleteMotionGestureInputEvent, module CompleteMotionGestureInputEvent) where

import CompleteMotionGestureInputEvent hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getSourceId, getSourceId_super, getSourceId_impl, update, update_super, update_impl, setGameKeyEvent, setGameKeyEvent_super, setGameKeyEvent_impl, getGameKeyEvent, getGameKeyEvent_super, getGameKeyEvent_impl, setGameKey, setGameKey_super, setGameKey_impl, getGameKey, getGameKey_super, getGameKey_impl, gameKeyEventFactory, sOURCE_ID, gameKey, gameKeyEvent, inputToGameKeyMapping)
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
import qualified GameKeyCompleteMotionGestureInputEventFactory -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CompleteMotionGestureInputEvent -- org.allbinary.game.input.CompleteMotionGestureInputEvent
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyEventSourceInterface -- org.allbinary.game.input.GameKeyEventSourceInterface
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements GameKeyEventSourceInterface
data GameKeyCompleteMotionGestureInputEvent = GameKeyCompleteMotionGestureInputEvent
    { header_ :: JavaHeader
    , base :: CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent
    , gameKeyEventFactory :: IORef (GameKeyEventFactory.GameKeyEventFactory)
    , sOURCE_ID :: IORef (Int)
    , gameKey :: IORef (GameKey.GameKey)
    , gameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    , inputToGameKeyMapping :: IORef (InputToGameKeyMapping.InputToGameKeyMapping)
    }

instance JavaNull GameKeyCompleteMotionGestureInputEvent where
    javaNull = javaNullRecord "GameKeyCompleteMotionGestureInputEvent"

instance JavaEquals GameKeyCompleteMotionGestureInputEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyCompleteMotionGestureInputEvent where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyCompleteMotionGestureInputEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameKeyCompleteMotionGestureInputEvent
newRecord_ = do
    base <- CompleteMotionGestureInputEvent.newRecord_
    let header_ = base.header_
    gameKeyEventFactory <- newIORef javaNull
    sOURCE_ID <- newIORef 0
    gameKey <- newIORef javaNull
    gameKeyEvent <- newIORef javaNull
    inputToGameKeyMapping <- newIORef javaNull
    let this = GameKeyCompleteMotionGestureInputEvent header_ base gameKeyEventFactory sOURCE_ID gameKey gameKeyEvent inputToGameKeyMapping
    jregisterLevel header_ this
    GameKeyEventSourceInterface.registerInterface_ header_
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setGameKeyEvent" (\() -> setGameKeyEvent_impl this)
    jregisterMethod header_ "getGameKeyEvent" (\() -> getGameKeyEvent_impl this)
    jregisterMethod header_ "setGameKey" (\() -> setGameKey_impl this)
    jregisterMethod header_ "getGameKey" (\() -> getGameKey_impl this)
    pure this

initFields_ :: GameKeyCompleteMotionGestureInputEvent -> IO ()
initFields_ this = do
    jset this.gameKeyEventFactory =<< (GameKeyEventFactory.getInstance)
    jset this.sOURCE_ID ((jget ((jget (this).gameKeyEventFactory)).mOTION_GESTURE_SOURCE_ID))
    jset this.gameKey (GameKey.nULL_GAME_KEY)
    jset this.gameKeyEvent (GameKeyEvent.nONE)
    jset this.inputToGameKeyMapping (javaNull)
    pure ()

new_3 :: String -> MotionGestureInput.MotionGestureInput -> InputToGameKeyMapping.InputToGameKeyMapping -> IO GameKeyCompleteMotionGestureInputEvent
new_3 name motionGestureInput inputToGameKeyMapping = do
    this <- newRecord_
    init_3 this name motionGestureInput inputToGameKeyMapping
    pure this

init_3 :: GameKeyCompleteMotionGestureInputEvent -> String -> MotionGestureInput.MotionGestureInput -> InputToGameKeyMapping.InputToGameKeyMapping -> IO ()
init_3 this name motionGestureInput inputToGameKeyMapping = do
        CompleteMotionGestureInputEvent.init_2 this.base (name) (motionGestureInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).inputToGameKeyMapping (inputToGameKeyMapping)
        Control.Monad.void (GameKeyCompleteMotionGestureInputEventFactory.add ((jio (GameKeyCompleteMotionGestureInputEventFactory.getInstance))) this)
        Control.Monad.void (GameKeyCompleteMotionGestureInputEvent.update this)
        pure ()


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))

getSourceId_impl :: GameKeyCompleteMotionGestureInputEvent -> IO (Int)
getSourceId_impl this = do
        pure ((jget (this).sOURCE_ID))


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))

update_impl :: GameKeyCompleteMotionGestureInputEvent -> IO (())
update_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).uPDATE) e)
            ) $ do
            Control.Monad.void (GameKeyCompleteMotionGestureInputEvent.setGameKey this (jio (InputToGameKeyMapping.getInstance ((jget (this).inputToGameKeyMapping)) (jio (MotionGestureInput.getId ((jio (CompleteMotionGestureInputEvent.getMotionGestureInput this))))))))
            Control.Monad.void (GameKeyCompleteMotionGestureInputEvent.setGameKeyEvent this (jio (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) this (jio (GameKeyCompleteMotionGestureInputEvent.getGameKey this)))))
        pure ()


setGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
setGameKeyEvent object_ a1 = jmethod object_ "setGameKeyEvent" (\() -> (setGameKeyEvent_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))) () a1

setGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
setGameKeyEvent_super object_ a1 = (setGameKeyEvent_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent)) a1

setGameKeyEvent_impl :: GameKeyCompleteMotionGestureInputEvent -> GameKeyEvent.GameKeyEvent -> IO (())
setGameKeyEvent_impl this gameKeyEvent = do
        jset (this).gameKeyEvent (gameKeyEvent)
        pure ()


getGameKeyEvent :: (JavaObjectClass this_) => this_ -> IO (GameKeyEvent.GameKeyEvent)
getGameKeyEvent object_ = jmethod object_ "getGameKeyEvent" (\() -> (getGameKeyEvent_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))) ()

getGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> IO (GameKeyEvent.GameKeyEvent)
getGameKeyEvent_super object_ = (getGameKeyEvent_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))

getGameKeyEvent_impl :: GameKeyCompleteMotionGestureInputEvent -> IO (GameKeyEvent.GameKeyEvent)
getGameKeyEvent_impl this = do
        pure ((jget (this).gameKeyEvent))


setGameKey :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> IO (())
setGameKey object_ a1 = jmethod object_ "setGameKey" (\() -> (setGameKey_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))) () a1

setGameKey_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> IO (())
setGameKey_super object_ a1 = (setGameKey_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent)) a1

setGameKey_impl :: GameKeyCompleteMotionGestureInputEvent -> GameKey.GameKey -> IO (())
setGameKey_impl this gameKey = do
        jset (this).gameKey (gameKey)
        pure ()


getGameKey :: (JavaObjectClass this_) => this_ -> IO (GameKey.GameKey)
getGameKey object_ = jmethod object_ "getGameKey" (\() -> (getGameKey_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))) ()

getGameKey_super :: (JavaObjectClass this_) => this_ -> IO (GameKey.GameKey)
getGameKey_super object_ = (getGameKey_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEvent))

getGameKey_impl :: GameKeyCompleteMotionGestureInputEvent -> IO (GameKey.GameKey)
getGameKey_impl this = do
        pure ((jget (this).gameKey))


