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
module DiveAndDirectionalTrackingAIFactory where

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
import qualified Any -- same package or java.lang
import qualified ThrustAIVisitorFactory -- same package or java.lang
import qualified BasicProbabilityAIDataFactory -- same package or java.lang
import qualified LastKeyAIVisitorFactory -- same package or java.lang
import qualified DiveAndDirectionalTrackingAI -- same package or java.lang
import qualified ArtificialIntelligenceInterface -- org.allbinary.ai.ArtificialIntelligenceInterface
import qualified BasicRandomAIFactory -- org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory
import qualified ArtificialIntelligenceInterfaceFactoryInterface -- org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- implements ArtificialIntelligenceInterfaceFactoryInterface
data DiveAndDirectionalTrackingAIFactory = DiveAndDirectionalTrackingAIFactory
    { header_ :: JavaHeader
    }

instance JavaNull DiveAndDirectionalTrackingAIFactory where
    javaNull = javaNullRecord "DiveAndDirectionalTrackingAIFactory"

instance JavaEquals DiveAndDirectionalTrackingAIFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DiveAndDirectionalTrackingAIFactory where
    (==) = jrecordEquals

instance JavaObjectClass DiveAndDirectionalTrackingAIFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DiveAndDirectionalTrackingAIFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = DiveAndDirectionalTrackingAIFactory header_
    jregisterLevel header_ this
    ArtificialIntelligenceInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: DiveAndDirectionalTrackingAIFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DiveAndDirectionalTrackingAIFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DiveAndDirectionalTrackingAIFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance object_ a1 a2 a3 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: DiveAndDirectionalTrackingAIFactory))) () a1 a2 a3

getInstance_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance_super object_ a1 a2 a3 = (getInstance_impl (javaCast object_ :: DiveAndDirectionalTrackingAIFactory)) a1 a2 a3

getInstance_impl :: DiveAndDirectionalTrackingAIFactory -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getInstance_impl this hashtable ownerLayerInterface gameInput = do
        visitorCanBeNull <- newIORef =<< (ABHashtable.get hashtable (javaCast BasicAI.aI_VISITOR :: Any.Any))
        when ((jget visitorCanBeNull) == javaNull) $ do
            assignedValue <- (ThrustAIVisitorFactory.getInstance)
            jset visitorCanBeNull (assignedValue)
        hashtable2 <- (BasicProbabilityAIDataFactory.getInstance ((jio (BasicProbabilityAIDataFactory.new_))))
        Control.Monad.void (ABHashtable.put hashtable2 (BasicAI.aI_VISITOR) (jio (LastKeyAIVisitorFactory.getInstance)))
        artificialIntelligenceInterface <- (BasicRandomAIFactory.getInstance ((jio (BasicRandomAIFactory.new_))) hashtable2 ownerLayerInterface gameInput)
        (fmap (\value_ -> javaCast value_ :: ArtificialIntelligenceInterface.ArtificialIntelligenceInterface) (DiveAndDirectionalTrackingAI.new_4 ownerLayerInterface artificialIntelligenceInterface gameInput (javaCast (jget visitorCanBeNull) :: Visitor.Visitor)))


