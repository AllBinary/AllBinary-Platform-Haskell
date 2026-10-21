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
-- package org.allbinary.game.ag.ai.sequence
module ComboSequenceAI (module ComboSequenceAI, module SequenceAI) where

import SequenceAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl)
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
import qualified ArtificialIntelligenceInterface -- org.allbinary.ai.ArtificialIntelligenceInterface
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SequenceAI

data ComboSequenceAI = ComboSequenceAI
    { header_ :: JavaHeader
    , base :: SequenceAI.SequenceAI
    }

instance JavaNull ComboSequenceAI where
    javaNull = javaNullRecord "ComboSequenceAI"

instance JavaEquals ComboSequenceAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ComboSequenceAI where
    (==) = jrecordEquals

instance JavaObjectClass ComboSequenceAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ComboSequenceAI
newRecord_ = do
    base <- SequenceAI.newRecord_
    let header_ = base.header_
    let this = ComboSequenceAI header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    pure this

initFields_ :: ComboSequenceAI -> IO ()
initFields_ this = do
    pure ()

new_3 :: JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ComboSequenceAI
new_3 artificialIntelligenceInterface ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this artificialIntelligenceInterface ownerLayerInterface gameInput
    pure this

init_3 :: ComboSequenceAI -> JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this artificialIntelligenceInterface ownerLayerInterface gameInput = do
        SequenceAI.init_3 this.base (artificialIntelligenceInterface) (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: ComboSequenceAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: ComboSequenceAI)) a1

processAI_impl :: ComboSequenceAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        artificialIntelligenceInterfaceArray <- (SequenceAI.getArtificialIntelligenceInterface this)
        let size = (jlength artificialIntelligenceInterfaceArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (SequenceAI.setIndex this index)
            Control.Monad.void (SequenceAI.processAI_super this.base allBinaryLayerManager)
        pure ()


