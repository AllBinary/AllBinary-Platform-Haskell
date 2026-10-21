{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.layer.building
module SimulatedBuildingPropertiesFactory (module SimulatedBuildingPropertiesFactory, module BuildingPropertiesFactory) where

import BuildingPropertiesFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getEfficiencyPerLevel, getEfficiencyPerLevel_super, getEfficiencyPerLevel_impl, getDamageFloaters, getDamageFloaters_super, getDamageFloaters_impl, getHealthBar, getHealthBar_super, getHealthBar_impl, getHashtable, getHashtable_super, getHashtable_impl, getTrackingEvent, getTrackingEvent_super, getTrackingEvent_impl, instanceC)
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
import qualified BuildingLayer -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified DamageFloaters -- org.allbinary.game.combat.damage.DamageFloaters
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified TrackingEventHandler -- org.allbinary.game.tracking.TrackingEventHandler
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BuildingPropertiesFactory

data SimulatedBuildingPropertiesFactory = SimulatedBuildingPropertiesFactory
    { header_ :: JavaHeader
    , base :: BuildingPropertiesFactory.BuildingPropertiesFactory
    }

instance JavaNull SimulatedBuildingPropertiesFactory where
    javaNull = javaNullRecord "SimulatedBuildingPropertiesFactory"

instance JavaEquals SimulatedBuildingPropertiesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimulatedBuildingPropertiesFactory where
    (==) = jrecordEquals

instance JavaObjectClass SimulatedBuildingPropertiesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO SimulatedBuildingPropertiesFactory
newRecord_ = do
    base <- BuildingPropertiesFactory.newRecord_
    let header_ = base.header_
    let this = SimulatedBuildingPropertiesFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getEfficiencyPerLevel" (\() -> getEfficiencyPerLevel_impl this)
    jregisterMethod header_ "getDamageFloaters" (\() -> getDamageFloaters_impl this)
    jregisterMethod header_ "getHealthBar" (\() -> getHealthBar_impl this)
    jregisterMethod header_ "getHashtable" (\() -> getHashtable_impl this)
    jregisterMethod header_ "getTrackingEvent" (\() -> getTrackingEvent_impl this)
    pure this

initFields_ :: SimulatedBuildingPropertiesFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SimulatedBuildingPropertiesFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SimulatedBuildingPropertiesFactory -> IO ()
init_ this = do
    BuildingPropertiesFactory.init_ this.base
    initFields_ this


getInstance :: IO (SimulatedBuildingPropertiesFactory)
getInstance = do
        pure (SimulatedBuildingPropertiesFactory.instanceC)


getEfficiencyPerLevel :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (Int)
getEfficiencyPerLevel object_ a1 = jmethod object_ "getEfficiencyPerLevel" (\() -> (getEfficiencyPerLevel_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory))) () a1

getEfficiencyPerLevel_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (Int)
getEfficiencyPerLevel_super object_ a1 = (getEfficiencyPerLevel_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory)) a1

getEfficiencyPerLevel_impl :: SimulatedBuildingPropertiesFactory -> BuildingLayer.BuildingLayer -> IO (Int)
getEfficiencyPerLevel_impl this buildingLayer = do
        pure (0)


getDamageFloaters :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (DamageFloaters.DamageFloaters)
getDamageFloaters object_ a1 = jmethod object_ "getDamageFloaters" (\() -> (getDamageFloaters_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory))) () a1

getDamageFloaters_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (DamageFloaters.DamageFloaters)
getDamageFloaters_super object_ a1 = (getDamageFloaters_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory)) a1

getDamageFloaters_impl :: SimulatedBuildingPropertiesFactory -> BuildingLayer.BuildingLayer -> IO (DamageFloaters.DamageFloaters)
getDamageFloaters_impl this buildingLayer = do
        damageFloaters <- (DamageFloaters.getInstance)
        jset (this).base.damageFloatersPaintableInterface (damageFloaters)
        pure (damageFloaters)


-- throws Exception
getHealthBar :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (Paintable.Paintable)
getHealthBar object_ a1 = jmethod object_ "getHealthBar" (\() -> (getHealthBar_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory))) () a1

getHealthBar_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (Paintable.Paintable)
getHealthBar_super object_ a1 = (getHealthBar_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory)) a1

getHealthBar_impl :: SimulatedBuildingPropertiesFactory -> BuildingLayer.BuildingLayer -> IO (Paintable.Paintable)
getHealthBar_impl this buildingLayer = do
        (NullPaintable.getInstance)


getHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable object_ = jmethod object_ "getHashtable" (\() -> (getHashtable_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory))) ()

getHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable_super object_ = (getHashtable_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory))

getHashtable_impl :: SimulatedBuildingPropertiesFactory -> IO (ABHashtable.ABHashtable)
getHashtable_impl this = do
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


getTrackingEvent :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent object_ a1 = jmethod object_ "getTrackingEvent" (\() -> (getTrackingEvent_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory))) () a1

getTrackingEvent_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_super object_ a1 = (getTrackingEvent_impl (javaCast object_ :: SimulatedBuildingPropertiesFactory)) a1

getTrackingEvent_impl :: SimulatedBuildingPropertiesFactory -> BuildingLayer.BuildingLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_impl this buildingLayer = do
        (TrackingEvent.new_1 (jio (TrackingEventHandler.getInstance)))


