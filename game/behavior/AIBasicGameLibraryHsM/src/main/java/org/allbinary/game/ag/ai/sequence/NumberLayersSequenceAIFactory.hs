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
module NumberLayersSequenceAIFactory where

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
import qualified NumberLayersSequenceAI -- same package or java.lang
import qualified ArtificialIntelligenceInterface -- org.allbinary.ai.ArtificialIntelligenceInterface
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data NumberLayersSequenceAIFactory = NumberLayersSequenceAIFactory
    { header_ :: JavaHeader
    }

instance JavaNull NumberLayersSequenceAIFactory where
    javaNull = javaNullRecord "NumberLayersSequenceAIFactory"

instance JavaEquals NumberLayersSequenceAIFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NumberLayersSequenceAIFactory where
    (==) = jrecordEquals

instance JavaObjectClass NumberLayersSequenceAIFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NumberLayersSequenceAIFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = NumberLayersSequenceAIFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: NumberLayersSequenceAIFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NumberLayersSequenceAIFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NumberLayersSequenceAIFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance object_ a1 a2 a3 a4 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: NumberLayersSequenceAIFactory))) () a1 a2 a3 a4

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance_super object_ a1 a2 a3 a4 = (getInstance_impl (javaCast object_ :: NumberLayersSequenceAIFactory)) a1 a2 a3 a4

getInstance_impl :: NumberLayersSequenceAIFactory -> Int -> JavaArray (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance_impl this numberOfEnemiesLeft artificialIntelligenceInterface ownerLayerInterface gameInput = do
        (fmap (\value_ -> javaCast value_ :: ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) (NumberLayersSequenceAI.new_4 numberOfEnemiesLeft artificialIntelligenceInterface ownerLayerInterface gameInput))


