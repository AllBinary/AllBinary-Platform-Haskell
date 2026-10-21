{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer
module RTSLayerUtil where

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
import qualified RTSLayer -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified FakeLayerManager -- same package or java.lang
import qualified AllBinaryGameLayerManager -- same package or java.lang
import qualified GroupCommonFactory -- org.allbinary.game.identification.GroupCommonFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified BasicGroupFactory -- org.allbinary.game.identification.BasicGroupFactory
import qualified PartInterface -- org.allbinary.game.part.PartInterface
import qualified BasicWeaponPart -- org.allbinary.game.part.weapon.BasicWeaponPart
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BaseRaceTrackGeographicMap -- org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data RTSLayerUtil = RTSLayerUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , groupCommonFactory :: IORef (GroupCommonFactory.GroupCommonFactory)
    , mAX_RELOAD_TIME :: IORef (Int64)
    }

instance JavaNull RTSLayerUtil where
    javaNull = javaNullRecord "RTSLayerUtil"

instance JavaEquals RTSLayerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerUtil where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RTSLayerUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    groupCommonFactory <- newIORef javaNull
    mAX_RELOAD_TIME <- newIORef 0
    let this = RTSLayerUtil header_ logUtil groupCommonFactory mAX_RELOAD_TIME
    jregisterLevel header_ this
    jregisterMethod header_ "createWeaponProperties" (\() -> createWeaponProperties_impl this)
    jregisterMethod header_ "downgrade" (\() -> downgrade_impl this)
    jregisterMethod header_ "upgrade" (\() -> upgrade_impl this)
    jregisterMethod header_ "getCostExponential" (\() -> getCostExponential_impl this)
    jregisterMethod header_ "getWeaponPropertiesCost" (\() -> getWeaponPropertiesCost_impl this)
    jregisterMethod header_ "getCost" (\() -> getCost_impl this)
    jregisterMethod header_ "getDowngradeCost" (\() -> getDowngradeCost_impl this)
    jregisterMethod header_ "getUpgradeCost" (\() -> getUpgradeCost_impl this)
    jregisterMethod header_ "destroyAndClear" (\() -> destroyAndClear_impl this)
    jregisterMethod header_ "createFakeRTSLayerHashtable" (\() -> createFakeRTSLayerHashtable_impl this)
    pure this

initFields_ :: RTSLayerUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.groupCommonFactory =<< (GroupCommonFactory.getInstance)
    jset this.mAX_RELOAD_TIME (((Prelude.fromIntegral (2147483647 :: Int)) `quot` 100000))
    pure ()

new_ :: IO RTSLayerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSLayerUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RTSLayerUtil)
getInstance = do
        pure (RTSLayerUtil.instance_)


createWeaponProperties :: (JavaObjectClass this_) => this_ -> WeaponProperties.WeaponProperties -> Int -> Int -> IO (WeaponProperties.WeaponProperties)
createWeaponProperties object_ a1 a2 a3 = jmethod object_ "createWeaponProperties" (\() -> (createWeaponProperties_impl (javaCast object_ :: RTSLayerUtil))) () a1 a2 a3

createWeaponProperties_super :: (JavaObjectClass this_) => this_ -> WeaponProperties.WeaponProperties -> Int -> Int -> IO (WeaponProperties.WeaponProperties)
createWeaponProperties_super object_ a1 a2 a3 = (createWeaponProperties_impl (javaCast object_ :: RTSLayerUtil)) a1 a2 a3

createWeaponProperties_impl :: RTSLayerUtil -> WeaponProperties.WeaponProperties -> Int -> Int -> IO (WeaponProperties.WeaponProperties)
createWeaponProperties_impl this weaponProperties currentLevel lastLevel = do
        reloadTime <- newIORef =<< (WeaponProperties.getReloadTime weaponProperties)
        if (lastLevel > currentLevel) then do
            jset reloadTime (((jget reloadTime) + 50))
        else when (lastLevel < currentLevel) $ do
            jset reloadTime (((jget reloadTime) - 50))
        newWeaponProperties <- (WeaponProperties.new_5 (jget reloadTime) (jio (WeaponProperties.getTargetingTime weaponProperties)) (jio (BasicDecimal.getUnscaled ((jio (WeaponProperties.getSpeed weaponProperties))))) (((jio (WeaponProperties.getDamage weaponProperties)) `quot` lastLevel) * currentLevel) (jio (WeaponProperties.getDissipation weaponProperties)))
        pure (newWeaponProperties)


downgrade :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
downgrade object_ a1 = jmethod object_ "downgrade" (\() -> (downgrade_impl (javaCast object_ :: RTSLayerUtil))) () a1

downgrade_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
downgrade_super object_ a1 = (downgrade_impl (javaCast object_ :: RTSLayerUtil)) a1

downgrade_impl :: RTSLayerUtil -> RTSLayer.RTSLayer -> IO (())
downgrade_impl this rtsLayer = do
        Control.Monad.void (RTSLayer.setLevel rtsLayer ((jio (RTSLayer.getLevel rtsLayer)) - 1))
        partInterfaceArray <- (RTSLayer.getPartInterfaceArray rtsLayer)
        let size = (jlength partInterfaceArray)
        partInterface <- newIORef (javaNull)
        index <- newIORef (size)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset partInterface ((javaCast (jindex partInterfaceArray ((jget index))) :: BasicWeaponPart.BasicWeaponPart))
            Control.Monad.void (BasicWeaponPart.setWeaponProperties ((jget partInterface)) (jio (RTSLayerUtil.createWeaponProperties this (jio (BasicWeaponPart.getWeaponProperties ((jget partInterface)))) (jio (RTSLayer.getLevel rtsLayer)) ((jio (RTSLayer.getLevel rtsLayer)) + 1))))
        Control.Monad.void (RTSLayer.select rtsLayer)
        pure ()


upgrade :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
upgrade object_ a1 = jmethod object_ "upgrade" (\() -> (upgrade_impl (javaCast object_ :: RTSLayerUtil))) () a1

upgrade_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
upgrade_super object_ a1 = (upgrade_impl (javaCast object_ :: RTSLayerUtil)) a1

upgrade_impl :: RTSLayerUtil -> RTSLayer.RTSLayer -> IO (())
upgrade_impl this rtsLayer = do
        Control.Monad.void (RTSLayer.setLevel rtsLayer ((jio (RTSLayer.getLevel rtsLayer)) + 1))
        partInterfaceArray <- (RTSLayer.getPartInterfaceArray rtsLayer)
        let size = (jlength partInterfaceArray)
        partInterface <- newIORef (javaNull)
        index <- newIORef (size)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset partInterface ((javaCast (jindex partInterfaceArray ((jget index))) :: BasicWeaponPart.BasicWeaponPart))
            Control.Monad.void (BasicWeaponPart.setWeaponProperties ((jget partInterface)) (jio (RTSLayerUtil.createWeaponProperties this (jio (BasicWeaponPart.getWeaponProperties ((jget partInterface)))) (jio (RTSLayer.getLevel rtsLayer)) ((jio (RTSLayer.getLevel rtsLayer)) - 1))))
        Control.Monad.void (RTSLayer.select rtsLayer)
        pure ()


getCostExponential :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
getCostExponential object_ a1 = jmethod object_ "getCostExponential" (\() -> (getCostExponential_impl (javaCast object_ :: RTSLayerUtil))) () a1

getCostExponential_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
getCostExponential_super object_ a1 = (getCostExponential_impl (javaCast object_ :: RTSLayerUtil)) a1

getCostExponential_impl :: RTSLayerUtil -> Int64 -> IO (Int64)
getCostExponential_impl this cost = do
        pure ((((((cost * cost) * cost)) `quot` ((cost * 1000)))))


getWeaponPropertiesCost :: (JavaObjectClass this_) => this_ -> WeaponProperties.WeaponProperties -> IO (Int)
getWeaponPropertiesCost object_ a1 = jmethod object_ "getWeaponPropertiesCost" (\() -> (getWeaponPropertiesCost_impl (javaCast object_ :: RTSLayerUtil))) () a1

getWeaponPropertiesCost_super :: (JavaObjectClass this_) => this_ -> WeaponProperties.WeaponProperties -> IO (Int)
getWeaponPropertiesCost_super object_ a1 = (getWeaponPropertiesCost_impl (javaCast object_ :: RTSLayerUtil)) a1

getWeaponPropertiesCost_impl :: RTSLayerUtil -> WeaponProperties.WeaponProperties -> IO (Int)
getWeaponPropertiesCost_impl this weaponProperties = do
        cost <- newIORef ((((Prelude.fromIntegral ((jio (WeaponProperties.getDamage weaponProperties)) + (jio (WeaponProperties.getRange weaponProperties)))) + (((((jget (this).mAX_RELOAD_TIME) `quot` (jio (WeaponProperties.getReloadTime weaponProperties)))) `Data.Bits.shiftR` 1)))))
        assignedValue <- (RTSLayerUtil.getCostExponential this (jget cost))
        jset cost (assignedValue)
        pure ((Prelude.fromIntegral (jget cost)))


getCost :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Int)
getCost object_ a1 = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: RTSLayerUtil))) () a1

getCost_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Int)
getCost_super object_ a1 = (getCost_impl (javaCast object_ :: RTSLayerUtil)) a1

getCost_impl :: RTSLayerUtil -> RTSLayer.RTSLayer -> IO (Int)
getCost_impl this rtsLayer = do
        total <- newIORef (0)
        partInterfaceArray <- (RTSLayer.getPartInterfaceArray rtsLayer)
        let size = (jlength partInterfaceArray)
        partInterface <- newIORef (javaNull)
        weaponProperties <- newIORef (javaNull)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset partInterface ((javaCast (jindex partInterfaceArray (index)) :: BasicWeaponPart.BasicWeaponPart))
            assignedValue <- (BasicWeaponPart.getWeaponProperties ((jget partInterface)))
            jset weaponProperties (assignedValue)
            jset total (((jget total) + (RTSLayerUtil.getWeaponPropertiesCost this (jget weaponProperties))))
        pure ((jget total))


getDowngradeCost :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Int)
getDowngradeCost object_ a1 = jmethod object_ "getDowngradeCost" (\() -> (getDowngradeCost_impl (javaCast object_ :: RTSLayerUtil))) () a1

getDowngradeCost_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Int)
getDowngradeCost_super object_ a1 = (getDowngradeCost_impl (javaCast object_ :: RTSLayerUtil)) a1

getDowngradeCost_impl :: RTSLayerUtil -> RTSLayer.RTSLayer -> IO (Int)
getDowngradeCost_impl this rtsLayer = do
        partInterfaceArray <- (RTSLayer.getPartInterfaceArray rtsLayer)
        let size = (jlength partInterfaceArray)
        downgradeCost <- newIORef (0)
        partInterface <- newIORef (javaNull)
        weaponProperties <- newIORef (javaNull)
        downgradeWeaponCost <- newIORef (0)
        currentWeaponCost <- newIORef (0)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset partInterface ((javaCast (jindex partInterfaceArray (index)) :: BasicWeaponPart.BasicWeaponPart))
            assignedValue <- (BasicWeaponPart.getWeaponProperties ((jget partInterface)))
            jset weaponProperties (assignedValue)
            assignedValue <- (RTSLayerUtil.getWeaponPropertiesCost this (jio (RTSLayerUtil.createWeaponProperties this (jget weaponProperties) ((jio (RTSLayer.getLevel rtsLayer)) - 1) (jio (RTSLayer.getLevel rtsLayer)))))
            jset downgradeWeaponCost (assignedValue)
            assignedValue <- (RTSLayerUtil.getWeaponPropertiesCost this (jget weaponProperties))
            jset currentWeaponCost (assignedValue)
            jset downgradeCost (((jget downgradeCost) + (((jget currentWeaponCost) - (jget downgradeWeaponCost)))))
        jset downgradeCost ((((jget downgradeCost) * 9) `quot` 10))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Total Cost: "))) (jget downgradeCost)))))) this "getDowngradeCost")
        pure ((jget downgradeCost))


getUpgradeCost :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Int)
getUpgradeCost object_ a1 = jmethod object_ "getUpgradeCost" (\() -> (getUpgradeCost_impl (javaCast object_ :: RTSLayerUtil))) () a1

getUpgradeCost_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (Int)
getUpgradeCost_super object_ a1 = (getUpgradeCost_impl (javaCast object_ :: RTSLayerUtil)) a1

getUpgradeCost_impl :: RTSLayerUtil -> RTSLayer.RTSLayer -> IO (Int)
getUpgradeCost_impl this rtsLayer = do
        upgradeCost <- newIORef (0)
        partInterfaceArray <- (RTSLayer.getPartInterfaceArray rtsLayer)
        let size = (jlength partInterfaceArray)
        partInterface <- newIORef (javaNull)
        weaponProperties <- newIORef (javaNull)
        upgradedWeaponCost <- newIORef (0)
        currentWeaponCost <- newIORef (0)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset partInterface ((javaCast (jindex partInterfaceArray (index)) :: BasicWeaponPart.BasicWeaponPart))
            assignedValue <- (BasicWeaponPart.getWeaponProperties ((jget partInterface)))
            jset weaponProperties (assignedValue)
            assignedValue <- (RTSLayerUtil.getWeaponPropertiesCost this (jio (RTSLayerUtil.createWeaponProperties this (jget weaponProperties) ((jio (RTSLayer.getLevel rtsLayer)) + 1) (jio (RTSLayer.getLevel rtsLayer)))))
            jset upgradedWeaponCost (assignedValue)
            assignedValue <- (RTSLayerUtil.getWeaponPropertiesCost this (jget weaponProperties))
            jset currentWeaponCost (assignedValue)
            jset upgradeCost (((jget upgradeCost) + (((jget upgradedWeaponCost) - (jget currentWeaponCost)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Total Cost: "))) (jget upgradeCost)))))) this "getUpgradeCost")
        pure ((jget upgradeCost))


-- throws Exception
destroyAndClear :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
destroyAndClear object_ a1 = jmethod object_ "destroyAndClear" (\() -> (destroyAndClear_impl (javaCast object_ :: RTSLayerUtil))) () a1

destroyAndClear_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
destroyAndClear_super object_ a1 = (destroyAndClear_impl (javaCast object_ :: RTSLayerUtil)) a1

destroyAndClear_impl :: RTSLayerUtil -> BasicArrayList.BasicArrayList -> IO (())
destroyAndClear_impl this list = do
        rtsLayer <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset rtsLayer ((javaCast (jio (BasicArrayList.get list index)) :: RTSLayer.RTSLayer))
            Control.Monad.void (RTSLayer.setDestroyed ((jget rtsLayer)) True)
        Control.Monad.void (BasicArrayList.clear list)
        pure ()


createFakeRTSLayerHashtable :: (JavaObjectClass this_) => this_ -> BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap -> IO (ABHashtable.ABHashtable)
createFakeRTSLayerHashtable object_ a1 = jmethod object_ "createFakeRTSLayerHashtable" (\() -> (createFakeRTSLayerHashtable_impl (javaCast object_ :: RTSLayerUtil))) () a1

createFakeRTSLayerHashtable_super :: (JavaObjectClass this_) => this_ -> BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap -> IO (ABHashtable.ABHashtable)
createFakeRTSLayerHashtable_super object_ a1 = (createFakeRTSLayerHashtable_impl (javaCast object_ :: RTSLayerUtil)) a1

createFakeRTSLayerHashtable_impl :: RTSLayerUtil -> BaseRaceTrackGeographicMap.BaseRaceTrackGeographicMap -> IO (ABHashtable.ABHashtable)
createFakeRTSLayerHashtable_impl this baseRaceTrackGeographicMap = do
        hashtable <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        layerManager <- (FakeLayerManager.new_1 (GameInfo.nONE))
        Control.Monad.void (FakeLayerManager.setGeographicMapInterface layerManager (jarrayFromList [baseRaceTrackGeographicMap]))
        Control.Monad.void (ABHashtable.put hashtable (AllBinaryGameLayerManager.iD) layerManager)
        Control.Monad.void (ABHashtable.put hashtable (jget ((jio (DirectionFactory.getInstance))).nAME) (jget ((jio (DirectionFactory.getInstance))).lEFT))
        Control.Monad.void (ABHashtable.put hashtable (jget ((jget (this).groupCommonFactory)).iD) (jget ((jio (BasicGroupFactory.getInstance))).nONE_ARRAY))
        pure (hashtable)


