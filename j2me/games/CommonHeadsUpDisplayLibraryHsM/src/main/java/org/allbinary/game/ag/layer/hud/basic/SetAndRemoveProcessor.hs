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
-- package org.allbinary.game.ag.layer.hud.basic
module SetAndRemoveProcessor (module SetAndRemoveProcessor, module Processor) where

import Processor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, updateMeasurementProcessor)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified PlayerGameNotificationHud -- same package or java.lang
import qualified Processor -- org.allbinary.canvas.Processor

data SetAndRemoveProcessor = SetAndRemoveProcessor
    { header_ :: JavaHeader
    , base :: Processor.Processor
    , updateMeasurementProcessor :: IORef (PlayerGameNotificationHud.PlayerGameNotificationHud)
    }

instance JavaNull SetAndRemoveProcessor where
    javaNull = javaNullRecord "SetAndRemoveProcessor"

instance JavaEquals SetAndRemoveProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SetAndRemoveProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SetAndRemoveProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SetAndRemoveProcessor
newRecord_ = do
    base <- Processor.newRecord_
    let header_ = base.header_
    updateMeasurementProcessor <- newIORef javaNull
    let this = SetAndRemoveProcessor header_ base updateMeasurementProcessor
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: SetAndRemoveProcessor -> IO ()
initFields_ this = do
    jset this.updateMeasurementProcessor (javaNull)
    pure ()

new_1 :: PlayerGameNotificationHud.PlayerGameNotificationHud -> IO SetAndRemoveProcessor
new_1 updateMeasurementProcessor = do
    this <- newRecord_
    init_1 this updateMeasurementProcessor
    pure this

init_1 :: SetAndRemoveProcessor -> PlayerGameNotificationHud.PlayerGameNotificationHud -> IO ()
init_1 this updateMeasurementProcessor = do
        Processor.init_ this.base
        initFields_ this
        jset (this).updateMeasurementProcessor (updateMeasurementProcessor)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SetAndRemoveProcessor))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: SetAndRemoveProcessor))

process_impl :: SetAndRemoveProcessor -> IO (())
process_impl this = do
        Control.Monad.void (PlayerGameNotificationHud.setAndRemoveProcess ((jget (this).updateMeasurementProcessor)))
        pure ()


