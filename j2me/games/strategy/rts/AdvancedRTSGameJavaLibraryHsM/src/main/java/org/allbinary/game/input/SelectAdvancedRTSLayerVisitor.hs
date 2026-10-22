{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
module SelectAdvancedRTSLayerVisitor (module SelectAdvancedRTSLayerVisitor, module Visitor) where

import Visitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, selectedRTSLayersPlayerGameInput)
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
import qualified SelectedRTSLayersPlayerGameInput -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified AssignWaypointsUtil -- org.allbinary.game.input.form.AssignWaypointsUtil
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified BuildingLayer -- org.allbinary.game.layer.building.BuildingLayer
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified UnitLayer -- org.allbinary.game.layer.unit.UnitLayer
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor

data SelectAdvancedRTSLayerVisitor = SelectAdvancedRTSLayerVisitor
    { header_ :: JavaHeader
    , base :: Visitor.Visitor
    , selectedRTSLayersPlayerGameInput :: IORef (SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput)
    }

instance JavaNull SelectAdvancedRTSLayerVisitor where
    javaNull = javaNullRecord "SelectAdvancedRTSLayerVisitor"

instance JavaEquals SelectAdvancedRTSLayerVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SelectAdvancedRTSLayerVisitor where
    (==) = jrecordEquals

instance JavaObjectClass SelectAdvancedRTSLayerVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SelectAdvancedRTSLayerVisitor
newRecord_ = do
    base <- Visitor.newRecord_
    let header_ = base.header_
    selectedRTSLayersPlayerGameInput <- newIORef javaNull
    let this = SelectAdvancedRTSLayerVisitor header_ base selectedRTSLayersPlayerGameInput
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: SelectAdvancedRTSLayerVisitor -> IO ()
initFields_ this = do
    jset this.selectedRTSLayersPlayerGameInput (javaNull)
    pure ()

new_1 :: SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput -> IO SelectAdvancedRTSLayerVisitor
new_1 selectedRTSLayersPlayerGameInput = do
    this <- newRecord_
    init_1 this selectedRTSLayersPlayerGameInput
    pure this

init_1 :: SelectAdvancedRTSLayerVisitor -> SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput -> IO ()
init_1 this selectedRTSLayersPlayerGameInput = do
        Visitor.init_ this.base
        initFields_ this
        jset (this).selectedRTSLayersPlayerGameInput (selectedRTSLayersPlayerGameInput)
        pure ()


visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: SelectAdvancedRTSLayerVisitor))) () (jtoObject a1)

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_super object_ a1 = (visit_impl (javaCast object_ :: SelectAdvancedRTSLayerVisitor)) (jtoObject a1)

visit_impl :: SelectAdvancedRTSLayerVisitor -> JavaObject -> IO (Any.Any)
visit_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        let selectedLayer = (javaCast anyType :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
        when ((selectedLayer /= (jio (CollidableDestroyableDamageableLayer.getNullInstance))) && ((jio (CollidableDestroyableDamageableLayer.getType selectedLayer)) == (jio (BuildingLayer.getStaticType)))) $ do
            let rtsGameLayer = (javaCast selectedLayer :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
            assignWaypointsUtil <- (AssignWaypointsUtil.getInstance)
            list <- (SelectedRTSLayersPlayerGameInput.getSelectedBasicArrayList ((jget (this).selectedRTSLayersPlayerGameInput)))
            currentRTSLayer <- newIORef (javaNull)
            unitLayer <- newIORef (javaNull)
            forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                jset currentRTSLayer ((javaCast (jio (BasicArrayList.get list index)) :: RTSLayer.RTSLayer))
                when ((jio (RTSLayer.getType ((jget currentRTSLayer)))) == (jio (UnitLayer.getStaticType))) $ do
                    jset unitLayer ((javaCast (jget currentRTSLayer) :: UnitLayer.UnitLayer))
                    Control.Monad.void (UnitLayer.setParentLayer ((jget unitLayer)) (javaCast rtsGameLayer))
                    Control.Monad.void (AssignWaypointsUtil.set assignWaypointsUtil (jget unitLayer) rtsGameLayer)
        pure ((jtoObject (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))


