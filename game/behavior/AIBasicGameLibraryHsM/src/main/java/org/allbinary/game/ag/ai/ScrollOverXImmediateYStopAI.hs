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
-- package org.allbinary.game.ag.ai
module ScrollOverXImmediateYStopAI (module ScrollOverXImmediateYStopAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl)
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
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

data ScrollOverXImmediateYStopAI = ScrollOverXImmediateYStopAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    }

instance JavaNull ScrollOverXImmediateYStopAI where
    javaNull = javaNullRecord "ScrollOverXImmediateYStopAI"

instance JavaEquals ScrollOverXImmediateYStopAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScrollOverXImmediateYStopAI where
    (==) = jrecordEquals

instance JavaObjectClass ScrollOverXImmediateYStopAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScrollOverXImmediateYStopAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    let this = ScrollOverXImmediateYStopAI header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    pure this

initFields_ :: ScrollOverXImmediateYStopAI -> IO ()
initFields_ this = do
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ScrollOverXImmediateYStopAI
new_2 ownerLayerInterface gameInput = do
    this <- newRecord_
    init_2 this ownerLayerInterface gameInput
    pure this

init_2 :: ScrollOverXImmediateYStopAI -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_2 this ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: ScrollOverXImmediateYStopAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: ScrollOverXImmediateYStopAI)) a1

processAI_impl :: ScrollOverXImmediateYStopAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        x <- (AllBinaryLayer.getXP ownerLayerInterface)
        y <- (AllBinaryLayer.getYP ownerLayerInterface)
        x2 <- (AllBinaryLayer.getX2 ownerLayerInterface)
        y2 <- (AllBinaryLayer.getY2 ownerLayerInterface)
        width <- (AllBinaryLayer.getWidth ownerLayerInterface)
        height <- (AllBinaryLayer.getHeight ownerLayerInterface)
        displayInfo <- (DisplayInfoSingleton.getInstance)
        when (x2 > (jio (DisplayInfoSingleton.getLastWidth displayInfo))) $ do
            Control.Monad.void (AllBinaryLayer.setPosition ownerLayerInterface 0 y (jio (AllBinaryLayer.getZP ownerLayerInterface)))
        when (y2 > (jio (DisplayInfoSingleton.getLastHeight displayInfo))) $ do
            Control.Monad.void (AllBinaryLayer.setPosition ownerLayerInterface x ((jio (DisplayInfoSingleton.getLastHeight displayInfo)) - height) (jio (AllBinaryLayer.getZP ownerLayerInterface)))
        when (x < 0) $ do
            Control.Monad.void (AllBinaryLayer.setPosition ownerLayerInterface ((jio (DisplayInfoSingleton.getLastWidth displayInfo)) - width) y (jio (AllBinaryLayer.getZP ownerLayerInterface)))
        when (y < 0) $ do
            Control.Monad.void (AllBinaryLayer.setPosition ownerLayerInterface x 0 (jio (AllBinaryLayer.getZP ownerLayerInterface)))
        pure ()


