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
module BuildingPropertiesFactory where

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
import qualified PtsDamageFloaters -- org.allbinary.game.combat.damage.PtsDamageFloaters
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified BasicHudFactory -- org.allbinary.game.graphics.hud.BasicHudFactory
import qualified HealthBar -- org.allbinary.game.health.HealthBar
import qualified HealthBarTwodAnimation -- org.allbinary.game.health.HealthBarTwodAnimation
import qualified TrackingEvent -- org.allbinary.game.tracking.TrackingEvent
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data BuildingPropertiesFactory = BuildingPropertiesFactory
    { header_ :: JavaHeader
    , damageFloatersPaintableInterface :: IORef (Paintable.Paintable)
    }

instance JavaNull BuildingPropertiesFactory where
    javaNull = javaNullRecord "BuildingPropertiesFactory"

instance JavaEquals BuildingPropertiesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BuildingPropertiesFactory where
    (==) = jrecordEquals

instance JavaObjectClass BuildingPropertiesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BuildingPropertiesFactory
newRecord_ = do
    header_ <- newJavaHeader
    damageFloatersPaintableInterface <- newIORef javaNull
    let this = BuildingPropertiesFactory header_ damageFloatersPaintableInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getEfficiencyPerLevel" (\() -> getEfficiencyPerLevel_impl this)
    jregisterMethod header_ "getDamageFloaters" (\() -> getDamageFloaters_impl this)
    jregisterMethod header_ "getHealthBar" (\() -> getHealthBar_impl this)
    jregisterMethod header_ "getHashtable" (\() -> getHashtable_impl this)
    jregisterMethod header_ "getTrackingEvent" (\() -> getTrackingEvent_impl this)
    pure this

initFields_ :: BuildingPropertiesFactory -> IO ()
initFields_ this = do
    jset this.damageFloatersPaintableInterface =<< (NullPaintable.getInstance)
    pure ()

new_ :: IO BuildingPropertiesFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BuildingPropertiesFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BuildingPropertiesFactory)
getInstance = do
        pure (BuildingPropertiesFactory.instance_)


getEfficiencyPerLevel :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (Int)
getEfficiencyPerLevel object_ a1 = jmethod object_ "getEfficiencyPerLevel" (\() -> (getEfficiencyPerLevel_impl (javaCast object_ :: BuildingPropertiesFactory))) () a1

getEfficiencyPerLevel_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (Int)
getEfficiencyPerLevel_super object_ a1 = (getEfficiencyPerLevel_impl (javaCast object_ :: BuildingPropertiesFactory)) a1

getEfficiencyPerLevel_impl :: BuildingPropertiesFactory -> BuildingLayer.BuildingLayer -> IO (Int)
getEfficiencyPerLevel_impl this buildingLayer = do
        pure (((10000 `quot` (jio (BuildingLayer.getMaxLevel buildingLayer))) + (10000 `rem` (jio (BuildingLayer.getMaxLevel buildingLayer)))))


getDamageFloaters :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (DamageFloaters.DamageFloaters)
getDamageFloaters object_ a1 = jmethod object_ "getDamageFloaters" (\() -> (getDamageFloaters_impl (javaCast object_ :: BuildingPropertiesFactory))) () a1

getDamageFloaters_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (DamageFloaters.DamageFloaters)
getDamageFloaters_super object_ a1 = (getDamageFloaters_impl (javaCast object_ :: BuildingPropertiesFactory)) a1

getDamageFloaters_impl :: BuildingPropertiesFactory -> BuildingLayer.BuildingLayer -> IO (DamageFloaters.DamageFloaters)
getDamageFloaters_impl this buildingLayer = do
        damageFloaters <- newIORef =<< (DamageFloaters.getInstance)
        if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (GameFeatureFactory.getInstance))).dAMAGE_FLOATERS)))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: DamageFloaters.DamageFloaters) (PtsDamageFloaters.new_1 buildingLayer))
            jset damageFloaters (assignedValue)
            jset (this).damageFloatersPaintableInterface ((jget damageFloaters))
        else do
            assignedValue <- (DamageFloaters.new_)
            jset damageFloaters (assignedValue)
        pure ((jget damageFloaters))


-- throws Exception
getHealthBar :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (Paintable.Paintable)
getHealthBar object_ a1 = jmethod object_ "getHealthBar" (\() -> (getHealthBar_impl (javaCast object_ :: BuildingPropertiesFactory))) () a1

getHealthBar_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (Paintable.Paintable)
getHealthBar_super object_ a1 = (getHealthBar_impl (javaCast object_ :: BuildingPropertiesFactory)) a1

getHealthBar_impl :: BuildingPropertiesFactory -> BuildingLayer.BuildingLayer -> IO (Paintable.Paintable)
getHealthBar_impl this buildingLayer = do
        healthBar <- newIORef =<< (NullPaintable.getInstance)
        when (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (GameFeatureFactory.getInstance))).hEALTH_BARS)))) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Paintable.Paintable) (HealthBar.new_4 buildingLayer (jio (BuildingLayer.getHealthInterface buildingLayer)) (jio (HealthBarTwodAnimation.new_2 (javaCast buildingLayer :: AllBinaryLayer.AllBinaryLayer) (jget ((jio (BasicHudFactory.getInstance))).bOTTOMLEFT))) (Prelude.negate 1)))
            jset healthBar (assignedValue)
        pure ((jget healthBar))


getHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable object_ = jmethod object_ "getHashtable" (\() -> (getHashtable_impl (javaCast object_ :: BuildingPropertiesFactory))) ()

getHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable_super object_ = (getHashtable_impl (javaCast object_ :: BuildingPropertiesFactory))

getHashtable_impl :: BuildingPropertiesFactory -> IO (ABHashtable.ABHashtable)
getHashtable_impl this = do
        (StdUtil.createHashtable ((jio (StdUtil.getInstance))))


getTrackingEvent :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent object_ a1 = jmethod object_ "getTrackingEvent" (\() -> (getTrackingEvent_impl (javaCast object_ :: BuildingPropertiesFactory))) () a1

getTrackingEvent_super :: (JavaObjectClass this_) => this_ -> BuildingLayer.BuildingLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_super object_ a1 = (getTrackingEvent_impl (javaCast object_ :: BuildingPropertiesFactory)) a1

getTrackingEvent_impl :: BuildingPropertiesFactory -> BuildingLayer.BuildingLayer -> IO (TrackingEvent.TrackingEvent)
getTrackingEvent_impl this buildingLayer = do
        (TrackingEvent.new_1 buildingLayer)


