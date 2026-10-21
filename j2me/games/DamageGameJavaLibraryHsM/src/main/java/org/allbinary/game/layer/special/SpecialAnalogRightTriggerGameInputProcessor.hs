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
-- package org.allbinary.game.layer.special
module SpecialAnalogRightTriggerGameInputProcessor (module SpecialAnalogRightTriggerGameInputProcessor, module SpecialGameInputProcessor) where

import SpecialGameInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAnalog, processAnalog_super, processAnalog_impl)
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
import qualified CollidableDestroyableDamageableLayer -- same package or java.lang
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SpecialGameInputProcessor

data SpecialAnalogRightTriggerGameInputProcessor = SpecialAnalogRightTriggerGameInputProcessor
    { header_ :: JavaHeader
    , base :: SpecialGameInputProcessor.SpecialGameInputProcessor
    }

instance JavaNull SpecialAnalogRightTriggerGameInputProcessor where
    javaNull = javaNullRecord "SpecialAnalogRightTriggerGameInputProcessor"

instance JavaEquals SpecialAnalogRightTriggerGameInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialAnalogRightTriggerGameInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SpecialAnalogRightTriggerGameInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SpecialAnalogRightTriggerGameInputProcessor
newRecord_ = do
    base <- SpecialGameInputProcessor.newRecord_
    let header_ = base.header_
    let this = SpecialAnalogRightTriggerGameInputProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "processAnalog" (\() -> processAnalog_impl this)
    pure this

initFields_ :: SpecialAnalogRightTriggerGameInputProcessor -> IO ()
initFields_ this = do
    pure ()

new_1 :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO SpecialAnalogRightTriggerGameInputProcessor
new_1 collidableDestroyableDamageableLayer = do
    this <- newRecord_
    init_1 this collidableDestroyableDamageableLayer
    pure this

init_1 :: SpecialAnalogRightTriggerGameInputProcessor -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> IO ()
init_1 this collidableDestroyableDamageableLayer = do
        SpecialGameInputProcessor.init_1 this.base (collidableDestroyableDamageableLayer)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processAnalog :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
processAnalog object_ a1 a2 a3 = jmethod object_ "processAnalog" (\() -> (processAnalog_impl (javaCast object_ :: SpecialAnalogRightTriggerGameInputProcessor))) () a1 a2 a3

processAnalog_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
processAnalog_super object_ a1 a2 a3 = (processAnalog_impl (javaCast object_ :: SpecialAnalogRightTriggerGameInputProcessor)) a1 a2 a3

processAnalog_impl :: SpecialAnalogRightTriggerGameInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
processAnalog_impl this allbinaryLayerManager gameKeyEvent yAnalogValue = do
        Control.Monad.void (CollidableDestroyableDamageableLayer.rightTrigger ((jget (this).base.collidableDestroyableDamageableLayer)) allbinaryLayerManager gameKeyEvent yAnalogValue)
        pure ()


