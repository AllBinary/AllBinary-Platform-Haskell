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
module GameCanvasInputProcessor (module GameCanvasInputProcessor, module InputProcessor) where

import InputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, keyPressedByDevice, keyPressedByDevice_super, keyPressedByDevice_impl, keyReleasedByDevice, keyReleasedByDevice_super, keyReleasedByDevice_impl, removeGameKeyEvent, removeGameKeyEvent_super, removeGameKeyEvent_impl, logUtil, allBinaryGameCanvas, downGameKeyEventHandler, upGameKeyEventHandler, downKeyEventHandler, smallIntegerSingletonFactory, inputToGameKeyMapping, nONE, gameKeyEventFactory)
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
import qualified InputProcessor -- org.allbinary.game.input.InputProcessor
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified DownGameKeyEventHandler -- org.allbinary.game.input.event.DownGameKeyEventHandler
import qualified DownKeyEventHandler -- org.allbinary.game.input.event.DownKeyEventHandler
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified UpGameKeyEventHandler -- org.allbinary.game.input.event.UpGameKeyEventHandler
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data GameCanvasInputProcessor = GameCanvasInputProcessor
    { header_ :: JavaHeader
    , base :: InputProcessor.InputProcessor
    , logUtil :: IORef (LogUtil.LogUtil)
    , allBinaryGameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    , downGameKeyEventHandler :: IORef (DownGameKeyEventHandler.DownGameKeyEventHandler)
    , upGameKeyEventHandler :: IORef (UpGameKeyEventHandler.UpGameKeyEventHandler)
    , downKeyEventHandler :: IORef (DownKeyEventHandler.DownKeyEventHandler)
    , smallIntegerSingletonFactory :: IORef (SmallIntegerSingletonFactory.SmallIntegerSingletonFactory)
    , inputToGameKeyMapping :: IORef (InputToGameKeyMapping.InputToGameKeyMapping)
    , nONE :: IORef (GameKey.GameKey)
    , gameKeyEventFactory :: IORef (GameKeyEventFactory.GameKeyEventFactory)
    }

instance JavaNull GameCanvasInputProcessor where
    javaNull = javaNullRecord "GameCanvasInputProcessor"

instance JavaEquals GameCanvasInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameCanvasInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass GameCanvasInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameCanvasInputProcessor
newRecord_ = do
    base <- InputProcessor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    allBinaryGameCanvas <- newIORef javaNull
    downGameKeyEventHandler <- newIORef javaNull
    upGameKeyEventHandler <- newIORef javaNull
    downKeyEventHandler <- newIORef javaNull
    smallIntegerSingletonFactory <- newIORef javaNull
    inputToGameKeyMapping <- newIORef javaNull
    nONE <- newIORef javaNull
    gameKeyEventFactory <- newIORef javaNull
    let this = GameCanvasInputProcessor header_ base logUtil allBinaryGameCanvas downGameKeyEventHandler upGameKeyEventHandler downKeyEventHandler smallIntegerSingletonFactory inputToGameKeyMapping nONE gameKeyEventFactory
    jregisterLevel header_ this
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "keyReleasedByDevice" (\() -> keyReleasedByDevice_impl this)
    jregisterMethod header_ "removeGameKeyEvent" (\() -> removeGameKeyEvent_impl this)
    pure this

initFields_ :: GameCanvasInputProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.allBinaryGameCanvas (javaNull)
    jset this.downGameKeyEventHandler =<< (DownGameKeyEventHandler.getInstance)
    jset this.upGameKeyEventHandler =<< (UpGameKeyEventHandler.getInstance)
    jset this.downKeyEventHandler =<< (DownKeyEventHandler.getInstance)
    jset this.smallIntegerSingletonFactory =<< (SmallIntegerSingletonFactory.getInstance)
    jset this.inputToGameKeyMapping =<< (PlatformInputMappingFactory.getInputMapping ((jio (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance)))))))
    jset this.nONE ((jget ((jio (GameKeyFactory.getInstance))).nONE))
    jset this.gameKeyEventFactory =<< (GameKeyEventFactory.getInstance)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO GameCanvasInputProcessor
new_1 allBinaryGameCanvas = do
    this <- newRecord_
    init_1 this allBinaryGameCanvas
    pure this

init_1 :: GameCanvasInputProcessor -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this allBinaryGameCanvas = do
        InputProcessor.init_ this.base
        initFields_ this
        jset (this).allBinaryGameCanvas (allBinaryGameCanvas)
        Control.Monad.void (InputToGameKeyMapping.init ((jget (this).inputToGameKeyMapping)) (jget (this).allBinaryGameCanvas))
        pure ()


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: GameCanvasInputProcessor))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: GameCanvasInputProcessor)) a1 a2

keyPressedByDevice_impl :: GameCanvasInputProcessor -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Key Event Error" this (jget ((jget (this).base.gameInputStrings)).aDD_KEY_EVENT) e)
            ) $ do
            gameKey <- (InputToGameKeyMapping.getInstanceForCanvas ((jget (this).inputToGameKeyMapping)) (jget (this).allBinaryGameCanvas) keyCode)
            if (gameKey /= (jget (this).nONE)) then do
                gameKeyEvent <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) (jget (this).allBinaryGameCanvas) gameKey)
                Control.Monad.void (DownGameKeyEventHandler.fireEvent ((jget (this).downGameKeyEventHandler)) gameKeyEvent)
                Control.Monad.void (DownGameKeyEventHandlerBase.fireEvent ((jio (DownGameKeyEventHandler.getInstanceForDevice ((jget (this).downGameKeyEventHandler)) deviceId))) gameKeyEvent)
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.gameInputStrings)).nO_KEY)))) keyCode))))) this (jget ((jget (this).base.gameInputStrings)).aDD_KEY_EVENT))
            keyCodeAsInteger <- (SmallIntegerSingletonFactory.getAtNoThrow ((jget (this).smallIntegerSingletonFactory)) keyCode)
            Control.Monad.void (DownKeyEventHandler.fireEventI ((jget (this).downKeyEventHandler)) keyCodeAsInteger)
            Control.Monad.void (DownKeyEventHandlerBase.fireEventI ((jio (DownKeyEventHandler.getInstanceForDevice ((jget (this).downKeyEventHandler)) deviceId))) keyCodeAsInteger)
        pure ()


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 a3 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: GameCanvasInputProcessor))) () a1 a2 a3

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 a3 = (keyReleasedByDevice_impl (javaCast object_ :: GameCanvasInputProcessor)) a1 a2 a3

keyReleasedByDevice_impl :: GameCanvasInputProcessor -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice_impl this canvas keyCode deviceId = do
        Control.Monad.void (GameCanvasInputProcessor.removeGameKeyEvent this canvas keyCode deviceId False)
        pure ()


removeGameKeyEvent :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> Int -> Bool -> IO (())
removeGameKeyEvent object_ a1 a2 a3 a4 = jmethod object_ "removeGameKeyEvent" (\() -> (removeGameKeyEvent_impl (javaCast object_ :: GameCanvasInputProcessor))) () a1 a2 a3 a4

removeGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> Int -> Bool -> IO (())
removeGameKeyEvent_super object_ a1 a2 a3 a4 = (removeGameKeyEvent_impl (javaCast object_ :: GameCanvasInputProcessor)) a1 a2 a3 a4

removeGameKeyEvent_impl :: GameCanvasInputProcessor -> Canvas.Canvas -> Int -> Int -> Bool -> IO (())
removeGameKeyEvent_impl this canvas keyCode deviceId repeated = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Key Event Error" this (jget ((jget (this).base.gameInputStrings)).rEMOVE_KEY_EVENT) e)
            ) $ do
            gameKey <- (InputToGameKeyMapping.getInstanceForCanvas ((jget (this).inputToGameKeyMapping)) canvas keyCode)
            if (gameKey /= (jget (this).nONE)) then do
                let gameKeyEventSourceInterface = (javaCast canvas :: GameKeyEventSourceInterface.GameKeyEventSourceInterface)
                gameKeyEvent <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) gameKeyEventSourceInterface gameKey)
                Control.Monad.void (UpGameKeyEventHandler.fireEvent ((jget (this).upGameKeyEventHandler)) gameKeyEvent)
                Control.Monad.void (UpGameKeyEventHandlerBase.fireEvent ((jio (UpGameKeyEventHandler.getInstanceForDevice ((jget (this).upGameKeyEventHandler)) deviceId))) gameKeyEvent)
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.gameInputStrings)).nO_KEY)))) keyCode))))) this (jget ((jget (this).base.gameInputStrings)).rEMOVE_KEY_EVENT))
        pure ()


