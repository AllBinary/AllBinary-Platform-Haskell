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
module UpDownVectorAI (module UpDownVectorAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, velocityInterface, index)
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
import qualified BasicVelocityProperties -- org.allbinary.game.physics.velocity.BasicVelocityProperties
import qualified VelocityInterfaceCompositeInterface -- org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal

data UpDownVectorAI = UpDownVectorAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , velocityInterface :: IORef (BasicVelocityProperties.BasicVelocityProperties)
    , index :: IORef (Int)
    }

instance JavaNull UpDownVectorAI where
    javaNull = javaNullRecord "UpDownVectorAI"

instance JavaEquals UpDownVectorAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpDownVectorAI where
    (==) = jrecordEquals

instance JavaObjectClass UpDownVectorAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UpDownVectorAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    velocityInterface <- newIORef javaNull
    index <- newIORef 0
    let this = UpDownVectorAI header_ base velocityInterface index
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    pure this

initFields_ :: UpDownVectorAI -> IO ()
initFields_ this = do
    jset this.velocityInterface (javaNull)
    jset this.index (0)
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO UpDownVectorAI
new_2 ownerLayerInterface gameInput = do
    this <- newRecord_
    init_2 this ownerLayerInterface gameInput
    pure this

init_2 :: UpDownVectorAI -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_2 this ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        let velocityInterfaceCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: VelocityInterfaceCompositeInterface.VelocityInterfaceCompositeInterface)
        assignedValue <- (VelocityInterfaceCompositeInterface.getVelocityProperties velocityInterfaceCompositeInterface)
        jset (this).velocityInterface (assignedValue)
        Control.Monad.void (BasicDecimal.setint ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP ((jget (this).velocityInterface))))) 0)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: UpDownVectorAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: UpDownVectorAI)) a1

processAI_impl :: UpDownVectorAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        let y = ((jio (AllBinaryLayer.getHeight ((jio (BasicAI.getOwnerLayerInterface this))))) * 270)
        if ((jget (this).index) < 5) then do
            basicDecimal <- (BasicVelocityProperties.getVelocityYBasicDecimalP ((jget (this).velocityInterface)))
            Control.Monad.void (BasicDecimal.setint basicDecimal 0)
            Control.Monad.void (BasicDecimal.addint basicDecimal y)
            jset (this).index ((jget (this).index) + 1)
        else if ((jget (this).index) < 10) then do
            basicDecimal <- (BasicVelocityProperties.getVelocityYBasicDecimalP ((jget (this).velocityInterface)))
            Control.Monad.void (BasicDecimal.setint basicDecimal 0)
            Control.Monad.void (BasicDecimal.subtractint basicDecimal y)
            jset (this).index ((jget (this).index) + 1)
        else do
            jset (this).index (0)
            Control.Monad.void (UpDownVectorAI.processAI this allBinaryLayerManager)
        pure ()


