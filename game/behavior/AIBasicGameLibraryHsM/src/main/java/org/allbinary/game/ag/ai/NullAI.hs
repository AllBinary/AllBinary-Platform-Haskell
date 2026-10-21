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
module NullAI (module NullAI, module ArtificialIntelligence) where

import ArtificialIntelligence hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl)
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
import qualified ArtificialIntelligence -- org.allbinary.ai.ArtificialIntelligence
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

data NullAI = NullAI
    { header_ :: JavaHeader
    , base :: ArtificialIntelligence.ArtificialIntelligence
    }

instance JavaNull NullAI where
    javaNull = javaNullRecord "NullAI"

instance JavaEquals NullAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullAI where
    (==) = jrecordEquals

instance JavaObjectClass NullAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NullAI
newRecord_ = do
    base <- ArtificialIntelligence.newRecord_
    let header_ = base.header_
    let this = NullAI header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    pure this

initFields_ :: NullAI -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullAI
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullAI -> IO ()
init_ this = do
        ArtificialIntelligence.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: NullAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: NullAI)) a1

processAI_impl :: NullAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        pure ()


