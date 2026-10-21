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
-- package org.allbinary.game.layer
module PlayerGameInputGameLayer (module PlayerGameInputGameLayer, module AllBinaryGameLayer) where

import AllBinaryGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPlayerGameInput, getPlayerGameInput_super, getPlayerGameInput_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, processInput, processInput_super, processInput_impl, paint, paint_super, paint_impl, playerGameInput)
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
import qualified LogUtil -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified PlayerGameInput -- org.allbinary.game.input.PlayerGameInput
import qualified PlayerGameInputCompositeInterface -- org.allbinary.game.input.PlayerGameInputCompositeInterface
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StaticViewPosition -- org.allbinary.view.StaticViewPosition
import qualified AllBinaryGameLayer

-- implements PlayerGameInputCompositeInterface
data PlayerGameInputGameLayer = PlayerGameInputGameLayer
    { header_ :: JavaHeader
    , base :: AllBinaryGameLayer.AllBinaryGameLayer
    , playerGameInput :: IORef (PlayerGameInput.PlayerGameInput)
    }

instance JavaNull PlayerGameInputGameLayer where
    javaNull = javaNullRecord "PlayerGameInputGameLayer"

instance JavaEquals PlayerGameInputGameLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerGameInputGameLayer where
    (==) = jrecordEquals

instance JavaObjectClass PlayerGameInputGameLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PlayerGameInputGameLayer
newRecord_ = do
    base <- AllBinaryGameLayer.newRecord_
    let header_ = base.header_
    playerGameInput <- newIORef javaNull
    let this = PlayerGameInputGameLayer header_ base playerGameInput
    jregisterLevel header_ this
    PlayerGameInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "getPlayerGameInput" (\() -> getPlayerGameInput_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: PlayerGameInputGameLayer -> IO ()
initFields_ this = do
    jset this.playerGameInput (javaNull)
    pure ()

new_1 :: Int -> IO PlayerGameInputGameLayer
new_1 playerInputId = do
    this <- newRecord_
    init_1 this playerInputId
    pure this

init_1 :: PlayerGameInputGameLayer -> Int -> IO ()
init_1 this playerInputId = do
        AllBinaryGameLayer.init_3 this.base (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jio (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) 0 0)) (jio (StaticViewPosition.new_3 0 0 0))
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (PlayerGameInput.new_3 (jio (AllBinaryGameLayer.getGameKeyEventList this)) (jio (BasicArrayListD.new_)) playerInputId)
        jset (this).playerGameInput (assignedValue)
        canvasStrings <- (CanvasStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) "Danger Danger Danger: Should Not Be Called Except For Testing Input" this (jget (canvasStrings).pAINT))
        pure ()


getPlayerGameInput :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput object_ = jmethod object_ "getPlayerGameInput" (\() -> (getPlayerGameInput_impl (javaCast object_ :: PlayerGameInputGameLayer))) ()

getPlayerGameInput_super :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput_super object_ = (getPlayerGameInput_impl (javaCast object_ :: PlayerGameInputGameLayer))

getPlayerGameInput_impl :: PlayerGameInputGameLayer -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput_impl this = do
        pure ((jget (this).playerGameInput))


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: PlayerGameInputGameLayer))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: PlayerGameInputGameLayer))

initInputProcessors_impl :: PlayerGameInputGameLayer -> IO (())
initInputProcessors_impl this = do
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: PlayerGameInputGameLayer))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: PlayerGameInputGameLayer)) a1

processInput_impl :: PlayerGameInputGameLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this myManager = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PlayerGameInputGameLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PlayerGameInputGameLayer)) a1

paint_impl :: PlayerGameInputGameLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


