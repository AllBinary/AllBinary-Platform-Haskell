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
-- package org.allbinary.game.configuration
module GameConfigurationGauge (module GameConfigurationGauge, module Gauge) where

import Gauge hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified GameConfiguration -- same package or java.lang
import qualified Gauge -- javax.microedition.lcdui.Gauge

data GameConfigurationGauge = GameConfigurationGauge
    { header_ :: JavaHeader
    , base :: Gauge.Gauge
    }

instance JavaNull GameConfigurationGauge where
    javaNull = javaNullRecord "GameConfigurationGauge"

instance JavaEquals GameConfigurationGauge where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameConfigurationGauge where
    (==) = jrecordEquals

instance JavaObjectClass GameConfigurationGauge where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameConfigurationGauge
newRecord_ = do
    base <- Gauge.newRecord_
    let header_ = base.header_
    let this = GameConfigurationGauge header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: GameConfigurationGauge -> IO ()
initFields_ this = do
    pure ()

new_1 :: GameConfiguration.GameConfiguration -> IO GameConfigurationGauge
new_1 gameConfiguration = do
    this <- newRecord_
    init_1 this gameConfiguration
    pure this

init_1 :: GameConfigurationGauge -> GameConfiguration.GameConfiguration -> IO ()
init_1 this gameConfiguration = do
        Gauge.init_4 this.base (jio (GameConfiguration.getName gameConfiguration)) (jio (GameConfiguration.isModifiable gameConfiguration)) ((jio (GameConfiguration.getMaxValue gameConfiguration)) - (jio (GameConfiguration.getMinValue gameConfiguration))) ((jio (GameConfiguration.getValue gameConfiguration)) - (jio (GameConfiguration.getMinValue gameConfiguration)))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


