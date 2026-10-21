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
-- package org.allbinary.game.displayable.canvas
module FormInputProcessor (module FormInputProcessor, module InputProcessor) where

import InputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, keyPressedByDevice, keyPressedByDevice_super, keyPressedByDevice_impl, keyReleasedByDevice, keyReleasedByDevice_super, keyReleasedByDevice_impl, logUtil, commonStrings, gameKeyEventFactory, downKeyEventHandler, upGameKeyEventHandler, inputFactory, platformKeyFactory, allBinaryGameCanvas)
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
import qualified AllBinaryGameCanvas -- same package or java.lang
import qualified GameInputStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyEventSourceInterface -- org.allbinary.game.input.GameKeyEventSourceInterface
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified Input -- org.allbinary.game.input.Input
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified InputProcessor -- org.allbinary.game.input.InputProcessor
import qualified PlatformKeyFactory -- org.allbinary.game.input.PlatformKeyFactory
import qualified DownKeyEventHandler -- org.allbinary.game.input.event.DownKeyEventHandler
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified UpGameKeyEventHandler -- org.allbinary.game.input.event.UpGameKeyEventHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data FormInputProcessor = FormInputProcessor
    { header_ :: JavaHeader
    , base :: InputProcessor.InputProcessor
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gameKeyEventFactory :: IORef (GameKeyEventFactory.GameKeyEventFactory)
    , downKeyEventHandler :: IORef (DownKeyEventHandler.DownKeyEventHandler)
    , upGameKeyEventHandler :: IORef (UpGameKeyEventHandler.UpGameKeyEventHandler)
    , inputFactory :: IORef (InputFactory.InputFactory)
    , platformKeyFactory :: IORef (PlatformKeyFactory.PlatformKeyFactory)
    , allBinaryGameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    }

instance JavaNull FormInputProcessor where
    javaNull = javaNullRecord "FormInputProcessor"

instance JavaEquals FormInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FormInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass FormInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FormInputProcessor
newRecord_ = do
    base <- InputProcessor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    gameKeyEventFactory <- newIORef javaNull
    downKeyEventHandler <- newIORef javaNull
    upGameKeyEventHandler <- newIORef javaNull
    inputFactory <- newIORef javaNull
    platformKeyFactory <- newIORef javaNull
    allBinaryGameCanvas <- newIORef javaNull
    let this = FormInputProcessor header_ base logUtil commonStrings gameKeyEventFactory downKeyEventHandler upGameKeyEventHandler inputFactory platformKeyFactory allBinaryGameCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "keyReleasedByDevice" (\() -> keyReleasedByDevice_impl this)
    pure this

initFields_ :: FormInputProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gameKeyEventFactory =<< (GameKeyEventFactory.getInstance)
    jset this.downKeyEventHandler =<< (DownKeyEventHandler.getInstance)
    jset this.upGameKeyEventHandler =<< (UpGameKeyEventHandler.getInstance)
    jset this.inputFactory =<< (InputFactory.getInstance)
    jset this.platformKeyFactory =<< (PlatformKeyFactory.getInstance)
    jset this.allBinaryGameCanvas (javaNull)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO FormInputProcessor
new_1 allBinaryGameCanvas = do
    this <- newRecord_
    init_1 this allBinaryGameCanvas
    pure this

init_1 :: FormInputProcessor -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this allBinaryGameCanvas = do
        InputProcessor.init_ this.base
        initFields_ this
        jset (this).allBinaryGameCanvas (allBinaryGameCanvas)
        pure ()


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: FormInputProcessor))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: FormInputProcessor)) a1 a2

keyPressedByDevice_impl :: FormInputProcessor -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).base.gameInputStrings)).aDD_KEY_EVENT) e)
            ) $ do
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).inputFactory)).kEY_CODE_LABEL)))) keyCode))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget ((jget (this).inputFactory)).dEVICE_ID_LABEL)))) deviceId))))) this (jget ((jget (this).base.gameInputStrings)).kEY_PRESSED))
            input <- (InputFactory.getInstanceById ((jget (this).inputFactory)) keyCode)
            gameKeyEvent <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) (jget (this).allBinaryGameCanvas) input)
            Control.Monad.void (DownKeyEventHandler.fireEventForGameKeyEvent ((jget (this).downKeyEventHandler)) gameKeyEvent)
        pure ()


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 a3 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: FormInputProcessor))) () a1 a2 a3

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 a3 = (keyReleasedByDevice_impl (javaCast object_ :: FormInputProcessor)) a1 a2 a3

keyReleasedByDevice_impl :: FormInputProcessor -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice_impl this canvas keyCode deviceId = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).base.gameInputStrings)).aDD_KEY_EVENT) e)
            ) $ do
            input <- (InputFactory.getInstanceById ((jget (this).inputFactory)) keyCode)
            when (jio (PlatformKeyFactory.isEnter ((jget (this).platformKeyFactory)) input)) $ do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).inputFactory)).kEY_CODE_LABEL)))) keyCode))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget ((jget (this).inputFactory)).dEVICE_ID_LABEL)))) deviceId))))) this (jget ((jget (this).base.gameInputStrings)).kEY_RELEASED))
                let gameKey = (jget ((jio (GameKeyFactory.getInstance))).kEY_NUM0)
                let gameKeyEventSourceInterface = (javaCast canvas :: GameKeyEventSourceInterface.GameKeyEventSourceInterface)
                gameKeyEvent <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) gameKeyEventSourceInterface gameKey)
                Control.Monad.void (UpGameKeyEventHandler.fireEvent ((jget (this).upGameKeyEventHandler)) gameKeyEvent)
                Control.Monad.void (UpGameKeyEventHandlerBase.fireEvent ((jio (UpGameKeyEventHandler.getInstanceForDevice ((jget (this).upGameKeyEventHandler)) deviceId))) gameKeyEvent)
        pure ()


