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
-- package org.allbinary.game.ag.ai.tactical
module LurchAI (module LurchAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, reverse, reverse_super, reverse_impl, accelerate, accelerate_super, accelerate_impl, drop, drop_super, drop_impl, currentRelativeAngle, currentSpeed)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

data LurchAI = LurchAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , currentRelativeAngle :: IORef (Int)
    , currentSpeed :: IORef (Int)
    }

instance JavaNull LurchAI where
    javaNull = javaNullRecord "LurchAI"

instance JavaEquals LurchAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LurchAI where
    (==) = jrecordEquals

instance JavaObjectClass LurchAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LurchAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    currentRelativeAngle <- newIORef 0
    currentSpeed <- newIORef 0
    let this = LurchAI header_ base currentRelativeAngle currentSpeed
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "reverse" (\() -> reverse_impl this)
    jregisterMethod header_ "accelerate" (\() -> accelerate_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    pure this

initFields_ :: LurchAI -> IO ()
initFields_ this = do
    jset this.currentRelativeAngle (0)
    jset this.currentSpeed (0)
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO LurchAI
new_2 ownerLayerInterface gameInput = do
    this <- newRecord_
    init_2 this ownerLayerInterface gameInput
    pure this

init_2 :: LurchAI -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_2 this ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: LurchAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: LurchAI)) a1

processAI_impl :: LurchAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        if ((jget (this).currentSpeed) == (Prelude.negate 1)) then do
            jset (this).currentSpeed (5)
        else do
            jset (this).currentSpeed ((Prelude.negate 1))
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        x <- newIORef =<< (AllBinaryLayer.getXP ownerLayerInterface)
        when (((jio (AllBinaryLayer.getXP ownerLayerInterface)) - (jget (this).currentSpeed)) <= 0) $ do
            Control.Monad.void (LurchAI.reverse this)
            Control.Monad.void (LurchAI.drop this)
        when (((jio (AllBinaryLayer.getX2 ownerLayerInterface)) + (jget (this).currentSpeed)) > (jio (DisplayInfoSingleton.getLastWidth ((jio (DisplayInfoSingleton.getInstance)))))) $ do
            Control.Monad.void (LurchAI.reverse this)
            Control.Monad.void (LurchAI.accelerate this)
            Control.Monad.void (LurchAI.drop this)
        if ((jget (this).currentRelativeAngle) == 0) then do
            jset x (((jget x) + (jget (this).currentSpeed)))
        else when ((jget (this).currentRelativeAngle) == 180) $ do
            jset x (((jget x) - (jget (this).currentSpeed)))
        Control.Monad.void (AllBinaryLayer.setPosition ownerLayerInterface (jget x) (jio (AllBinaryLayer.getYP ownerLayerInterface)) (jio (AllBinaryLayer.getZP ownerLayerInterface)))
        if ((jget (this).currentRelativeAngle) == 0) then do
            Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.kEY_NUM0))
        else when ((jget (this).currentRelativeAngle) == 180) $ do
            Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.kEY_POUND))
        pure ()


reverse :: (JavaObjectClass this_) => this_ -> IO (())
reverse object_ = jmethod object_ "reverse" (\() -> (reverse_impl (javaCast object_ :: LurchAI))) ()

reverse_super :: (JavaObjectClass this_) => this_ -> IO (())
reverse_super object_ = (reverse_impl (javaCast object_ :: LurchAI))

reverse_impl :: LurchAI -> IO (())
reverse_impl this = do
        if ((jget (this).currentRelativeAngle) == 180) then do
            jset (this).currentRelativeAngle (0)
        else when ((jget (this).currentRelativeAngle) == 0) $ do
            jset (this).currentRelativeAngle (180)
        pure ()


accelerate :: (JavaObjectClass this_) => this_ -> IO (())
accelerate object_ = jmethod object_ "accelerate" (\() -> (accelerate_impl (javaCast object_ :: LurchAI))) ()

accelerate_super :: (JavaObjectClass this_) => this_ -> IO (())
accelerate_super object_ = (accelerate_impl (javaCast object_ :: LurchAI))

accelerate_impl :: LurchAI -> IO (())
accelerate_impl this = do
        when ((jget (this).currentSpeed) < 20) $ do
            jset (this).currentSpeed ((jget (this).currentSpeed) + 1)
        pure ()


drop :: (JavaObjectClass this_) => this_ -> IO (())
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: LurchAI))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (())
drop_super object_ = (drop_impl (javaCast object_ :: LurchAI))

drop_impl :: LurchAI -> IO (())
drop_impl this = do
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        y <- newIORef =<< (AllBinaryLayer.getYP ownerLayerInterface)
        if (((jio (AllBinaryLayer.getY2 ownerLayerInterface)) + (jio (AllBinaryLayer.getHeight ownerLayerInterface))) > (jio (DisplayInfoSingleton.getLastHeight ((jio (DisplayInfoSingleton.getInstance)))))) then do
            jset y (0)
        else do
            jset y (((jget y) + ((jio (AllBinaryLayer.getHeight ownerLayerInterface)) + 1)))
        Control.Monad.void (AllBinaryLayer.setPosition ownerLayerInterface (jio (AllBinaryLayer.getXP ownerLayerInterface)) (jget y) (jio (AllBinaryLayer.getZP ownerLayerInterface)))
        pure ()


