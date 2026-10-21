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
-- package org.allbinary.game.input
module ScrollMapUpGameInputProcessor (module ScrollMapUpGameInputProcessor, module ScrollMapGameInputProcessor) where

import ScrollMapGameInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processEvent, processEvent_super, processEvent_impl)
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
import qualified ScrollMapPlayerGameInput -- same package or java.lang
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified ScrollMapGameInputProcessor

data ScrollMapUpGameInputProcessor = ScrollMapUpGameInputProcessor
    { header_ :: JavaHeader
    , base :: ScrollMapGameInputProcessor.ScrollMapGameInputProcessor
    }

instance JavaNull ScrollMapUpGameInputProcessor where
    javaNull = javaNullRecord "ScrollMapUpGameInputProcessor"

instance JavaEquals ScrollMapUpGameInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScrollMapUpGameInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass ScrollMapUpGameInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScrollMapUpGameInputProcessor
newRecord_ = do
    base <- ScrollMapGameInputProcessor.newRecord_
    let header_ = base.header_
    let this = ScrollMapUpGameInputProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "processEvent" (\() -> processEvent_impl this)
    pure this

initFields_ :: ScrollMapUpGameInputProcessor -> IO ()
initFields_ this = do
    pure ()

new_1 :: ScrollMapPlayerGameInput.ScrollMapPlayerGameInput -> IO ScrollMapUpGameInputProcessor
new_1 scrollMapPlayerGameInput = do
    this <- newRecord_
    init_1 this scrollMapPlayerGameInput
    pure this

init_1 :: ScrollMapUpGameInputProcessor -> ScrollMapPlayerGameInput.ScrollMapPlayerGameInput -> IO ()
init_1 this scrollMapPlayerGameInput = do
        ScrollMapGameInputProcessor.init_1 this.base (scrollMapPlayerGameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processEvent :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processEvent object_ a1 a2 = jmethod object_ "processEvent" (\() -> (processEvent_impl (javaCast object_ :: ScrollMapUpGameInputProcessor))) () a1 a2

processEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processEvent_super object_ a1 a2 = (processEvent_impl (javaCast object_ :: ScrollMapUpGameInputProcessor)) a1 a2

processEvent_impl :: ScrollMapUpGameInputProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
processEvent_impl this allbinaryLayerManager gameKeyEvent = do
        Control.Monad.void (ScrollMapPlayerGameInput.up ((jget (this).base.scrollMapPlayerGameInput)))
        pure ()


