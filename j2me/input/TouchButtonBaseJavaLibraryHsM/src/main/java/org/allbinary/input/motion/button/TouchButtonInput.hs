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
-- package org.allbinary.input.motion.button
module TouchButtonInput (module TouchButtonInput, module Input) where

import Input hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, getSourceId, getSourceId_super, getSourceId_impl, getGameKeyEvent, getGameKeyEvent_super, getGameKeyEvent_impl, logUtil, gameKeyEventFactory, tOUCH_BUTTON_SOURCE_ID, gameKeyEvent)
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
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyEventSourceInterface -- org.allbinary.game.input.GameKeyEventSourceInterface
import qualified Input -- org.allbinary.game.input.Input
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements GameKeyEventSourceInterface
data TouchButtonInput = TouchButtonInput
    { header_ :: JavaHeader
    , base :: Input.Input
    , logUtil :: IORef (LogUtil.LogUtil)
    , gameKeyEventFactory :: IORef (GameKeyEventFactory.GameKeyEventFactory)
    , tOUCH_BUTTON_SOURCE_ID :: IORef (Int)
    , gameKeyEvent :: IORef (GameKeyEvent.GameKeyEvent)
    }

instance JavaNull TouchButtonInput where
    javaNull = javaNullRecord "TouchButtonInput"

instance JavaEquals TouchButtonInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonInput where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonInput
newRecord_ = do
    base <- Input.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    gameKeyEventFactory <- newIORef javaNull
    tOUCH_BUTTON_SOURCE_ID <- newIORef 0
    gameKeyEvent <- newIORef javaNull
    let this = TouchButtonInput header_ base logUtil gameKeyEventFactory tOUCH_BUTTON_SOURCE_ID gameKeyEvent
    jregisterLevel header_ this
    GameKeyEventSourceInterface.registerInterface_ header_
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    jregisterMethod header_ "getGameKeyEvent" (\() -> getGameKeyEvent_impl this)
    pure this

initFields_ :: TouchButtonInput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.gameKeyEventFactory =<< (GameKeyEventFactory.getInstance)
    jset this.tOUCH_BUTTON_SOURCE_ID ((jget ((jget (this).gameKeyEventFactory)).tOUCH_BUTTON_SOURCE_ID))
    jset this.gameKeyEvent (GameKeyEvent.nONE)
    pure ()

new_2 :: Int -> String -> IO TouchButtonInput
new_2 id name = do
    this <- newRecord_
    init_2 this id name
    pure this

init_2 :: TouchButtonInput -> Int -> String -> IO ()
init_2 this id name = do
        Input.init_2 this.base (id) (name)
        initFields_ this
        pure () -- super(...) is in the record above
        inputFactory <- (InputFactory.getInstance)
        Control.Monad.void (InputFactory.add inputFactory (jio (Input.getId this)) this)
        pure ()


update :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TouchButtonInput))) () a1

update_super :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: TouchButtonInput)) a1

update_impl :: TouchButtonInput -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
update_impl this inputToGameKeyMapping = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).uPDATE) e)
            ) $ do
            gameKey <- (InputToGameKeyMapping.getInstance inputToGameKeyMapping (jio (Input.getId this)))
            assignedValue <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) this gameKey)
            jset (this).gameKeyEvent (assignedValue)
        pure ()


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: TouchButtonInput))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: TouchButtonInput))

getSourceId_impl :: TouchButtonInput -> IO (Int)
getSourceId_impl this = do
        pure ((jget (this).tOUCH_BUTTON_SOURCE_ID))


getGameKeyEvent :: (JavaObjectClass this_) => this_ -> IO (GameKeyEvent.GameKeyEvent)
getGameKeyEvent object_ = jmethod object_ "getGameKeyEvent" (\() -> (getGameKeyEvent_impl (javaCast object_ :: TouchButtonInput))) ()

getGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> IO (GameKeyEvent.GameKeyEvent)
getGameKeyEvent_super object_ = (getGameKeyEvent_impl (javaCast object_ :: TouchButtonInput))

getGameKeyEvent_impl :: TouchButtonInput -> IO (GameKeyEvent.GameKeyEvent)
getGameKeyEvent_impl this = do
        pure ((jget (this).gameKeyEvent))


