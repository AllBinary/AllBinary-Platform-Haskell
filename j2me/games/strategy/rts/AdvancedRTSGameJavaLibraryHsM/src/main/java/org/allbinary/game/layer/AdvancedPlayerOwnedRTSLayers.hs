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
-- package org.allbinary.game.layer
module AdvancedPlayerOwnedRTSLayers (module AdvancedPlayerOwnedRTSLayers, module PlayerOwnedRTSLayers) where

import PlayerOwnedRTSLayers hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addUnit, addUnit_super, addUnit_impl, addWaypoint, addWaypoint_super, addWaypoint_impl, addBase, addBase_super, addBase_impl, addGarrison, addGarrison_super, addGarrison_impl, addHouse, addHouse_super, addHouse_impl, addLab, addLab_super, addLab_impl, addFactory, addFactory_super, addFactory_impl, removeUnit, removeUnit_super, removeUnit_impl, removeWaypoint, removeWaypoint_super, removeWaypoint_impl, getUnitsList, getUnitsList_super, getUnitsList_impl, getWaypointsList, getWaypointsList_super, getWaypointsList_impl, getBaseList, getBaseList_super, getBaseList_impl, getGarrisonList, getGarrisonList_super, getGarrisonList_impl, getHouseList, getHouseList_super, getHouseList_impl, getLabList, getLabList_super, getLabList_impl, getFactoryList, getFactoryList_super, getFactoryList_impl, getTotalBuildings, getTotalBuildings_super, getTotalBuildings_impl, removeBuilding, removeBuilding_super, removeBuilding_impl, toString, toString_super, toString_impl, getBuildingList, getBuildingList_super, getBuildingList_impl, unitsList, waypointsList, buildingList, baseList, garrisonList, houseList, labList, factoryList)
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
import qualified AllBinaryGameLayer -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PlayerOwnedRTSLayers

data AdvancedPlayerOwnedRTSLayers = AdvancedPlayerOwnedRTSLayers
    { header_ :: JavaHeader
    , base :: PlayerOwnedRTSLayers.PlayerOwnedRTSLayers
    , unitsList :: IORef (BasicArrayList.BasicArrayList)
    , waypointsList :: IORef (BasicArrayList.BasicArrayList)
    , buildingList :: IORef (BasicArrayList.BasicArrayList)
    , baseList :: IORef (BasicArrayList.BasicArrayList)
    , garrisonList :: IORef (BasicArrayList.BasicArrayList)
    , houseList :: IORef (BasicArrayList.BasicArrayList)
    , labList :: IORef (BasicArrayList.BasicArrayList)
    , factoryList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AdvancedPlayerOwnedRTSLayers where
    javaNull = javaNullRecord "AdvancedPlayerOwnedRTSLayers"

instance JavaEquals AdvancedPlayerOwnedRTSLayers where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvancedPlayerOwnedRTSLayers where
    (==) = jrecordEquals

instance JavaObjectClass AdvancedPlayerOwnedRTSLayers where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdvancedPlayerOwnedRTSLayers
newRecord_ = do
    base <- PlayerOwnedRTSLayers.newRecord_
    let header_ = base.header_
    unitsList <- newIORef javaNull
    waypointsList <- newIORef javaNull
    buildingList <- newIORef javaNull
    baseList <- newIORef javaNull
    garrisonList <- newIORef javaNull
    houseList <- newIORef javaNull
    labList <- newIORef javaNull
    factoryList <- newIORef javaNull
    let this = AdvancedPlayerOwnedRTSLayers header_ base unitsList waypointsList buildingList baseList garrisonList houseList labList factoryList
    jregisterLevel header_ this
    jregisterMethod header_ "addUnit" (\() -> addUnit_impl this)
    jregisterMethod header_ "addWaypoint" (\() -> addWaypoint_impl this)
    jregisterMethod header_ "addBase" (\() -> addBase_impl this)
    jregisterMethod header_ "addGarrison" (\() -> addGarrison_impl this)
    jregisterMethod header_ "addHouse" (\() -> addHouse_impl this)
    jregisterMethod header_ "addLab" (\() -> addLab_impl this)
    jregisterMethod header_ "addFactory" (\() -> addFactory_impl this)
    jregisterMethod header_ "removeUnit" (\() -> removeUnit_impl this)
    jregisterMethod header_ "removeWaypoint" (\() -> removeWaypoint_impl this)
    jregisterMethod header_ "getUnitsList" (\() -> getUnitsList_impl this)
    jregisterMethod header_ "getWaypointsList" (\() -> getWaypointsList_impl this)
    jregisterMethod header_ "getBaseList" (\() -> getBaseList_impl this)
    jregisterMethod header_ "getGarrisonList" (\() -> getGarrisonList_impl this)
    jregisterMethod header_ "getHouseList" (\() -> getHouseList_impl this)
    jregisterMethod header_ "getLabList" (\() -> getLabList_impl this)
    jregisterMethod header_ "getFactoryList" (\() -> getFactoryList_impl this)
    jregisterMethod header_ "getTotalBuildings" (\() -> getTotalBuildings_impl this)
    jregisterMethod header_ "removeBuilding" (\() -> removeBuilding_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getBuildingList" (\() -> getBuildingList_impl this)
    pure this

initFields_ :: AdvancedPlayerOwnedRTSLayers -> IO ()
initFields_ this = do
    jset this.unitsList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.waypointsList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.buildingList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.baseList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.garrisonList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.houseList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.labList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.factoryList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO AdvancedPlayerOwnedRTSLayers
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdvancedPlayerOwnedRTSLayers -> IO ()
init_ this = do
    PlayerOwnedRTSLayers.init_ this.base
    initFields_ this


addUnit :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addUnit object_ a1 = jmethod object_ "addUnit" (\() -> (addUnit_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

addUnit_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addUnit_super object_ a1 = (addUnit_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

addUnit_impl :: AdvancedPlayerOwnedRTSLayers -> RTSLayer.RTSLayer -> IO (())
addUnit_impl this rtsLayer = do
        Control.Monad.void (BasicArrayList.add ((jget (this).unitsList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).base.rtsLayerList)) rtsLayer)
        pure ()


addWaypoint :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addWaypoint object_ a1 = jmethod object_ "addWaypoint" (\() -> (addWaypoint_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

addWaypoint_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addWaypoint_super object_ a1 = (addWaypoint_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

addWaypoint_impl :: AdvancedPlayerOwnedRTSLayers -> RTSLayer.RTSLayer -> IO (())
addWaypoint_impl this rtsLayer = do
        Control.Monad.void (BasicArrayList.add ((jget (this).waypointsList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).base.rtsLayerList)) rtsLayer)
        pure ()


addBase :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addBase object_ a1 = jmethod object_ "addBase" (\() -> (addBase_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

addBase_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addBase_super object_ a1 = (addBase_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

addBase_impl :: AdvancedPlayerOwnedRTSLayers -> RTSLayer.RTSLayer -> IO (())
addBase_impl this rtsLayer = do
        Control.Monad.void (BasicArrayList.add ((jget (this).baseList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).buildingList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).base.rtsLayerList)) rtsLayer)
        pure ()


addGarrison :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addGarrison object_ a1 = jmethod object_ "addGarrison" (\() -> (addGarrison_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

addGarrison_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addGarrison_super object_ a1 = (addGarrison_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

addGarrison_impl :: AdvancedPlayerOwnedRTSLayers -> RTSLayer.RTSLayer -> IO (())
addGarrison_impl this rtsLayer = do
        Control.Monad.void (BasicArrayList.add ((jget (this).garrisonList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).buildingList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).base.rtsLayerList)) rtsLayer)
        pure ()


addHouse :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addHouse object_ a1 = jmethod object_ "addHouse" (\() -> (addHouse_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

addHouse_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addHouse_super object_ a1 = (addHouse_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

addHouse_impl :: AdvancedPlayerOwnedRTSLayers -> RTSLayer.RTSLayer -> IO (())
addHouse_impl this rtsLayer = do
        Control.Monad.void (BasicArrayList.add ((jget (this).houseList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).buildingList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).base.rtsLayerList)) rtsLayer)
        pure ()


addLab :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addLab object_ a1 = jmethod object_ "addLab" (\() -> (addLab_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

addLab_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addLab_super object_ a1 = (addLab_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

addLab_impl :: AdvancedPlayerOwnedRTSLayers -> RTSLayer.RTSLayer -> IO (())
addLab_impl this rtsLayer = do
        Control.Monad.void (BasicArrayList.add ((jget (this).labList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).buildingList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).base.rtsLayerList)) rtsLayer)
        pure ()


addFactory :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addFactory object_ a1 = jmethod object_ "addFactory" (\() -> (addFactory_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

addFactory_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
addFactory_super object_ a1 = (addFactory_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

addFactory_impl :: AdvancedPlayerOwnedRTSLayers -> RTSLayer.RTSLayer -> IO (())
addFactory_impl this rtsLayer = do
        Control.Monad.void (BasicArrayList.add ((jget (this).factoryList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).buildingList)) rtsLayer)
        Control.Monad.void (BasicArrayList.add ((jget (this).base.rtsLayerList)) rtsLayer)
        pure ()


removeUnit :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeUnit object_ a1 = jmethod object_ "removeUnit" (\() -> (removeUnit_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

removeUnit_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeUnit_super object_ a1 = (removeUnit_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

removeUnit_impl :: AdvancedPlayerOwnedRTSLayers -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeUnit_impl this gameLayer = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).unitsList)) gameLayer)
        Control.Monad.void (BasicArrayList.remove ((jget (this).base.rtsLayerList)) gameLayer)
        pure ()


removeWaypoint :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeWaypoint object_ a1 = jmethod object_ "removeWaypoint" (\() -> (removeWaypoint_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

removeWaypoint_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeWaypoint_super object_ a1 = (removeWaypoint_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

removeWaypoint_impl :: AdvancedPlayerOwnedRTSLayers -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeWaypoint_impl this gameLayer = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).waypointsList)) gameLayer)
        Control.Monad.void (BasicArrayList.remove ((jget (this).base.rtsLayerList)) gameLayer)
        pure ()


getUnitsList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getUnitsList object_ = jmethod object_ "getUnitsList" (\() -> (getUnitsList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getUnitsList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getUnitsList_super object_ = (getUnitsList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getUnitsList_impl :: AdvancedPlayerOwnedRTSLayers -> IO (BasicArrayList.BasicArrayList)
getUnitsList_impl this = do
        pure ((jget (this).unitsList))


getWaypointsList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWaypointsList object_ = jmethod object_ "getWaypointsList" (\() -> (getWaypointsList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getWaypointsList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWaypointsList_super object_ = (getWaypointsList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getWaypointsList_impl :: AdvancedPlayerOwnedRTSLayers -> IO (BasicArrayList.BasicArrayList)
getWaypointsList_impl this = do
        pure ((jget (this).waypointsList))


getBaseList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getBaseList object_ = jmethod object_ "getBaseList" (\() -> (getBaseList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getBaseList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getBaseList_super object_ = (getBaseList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getBaseList_impl :: AdvancedPlayerOwnedRTSLayers -> IO (BasicArrayList.BasicArrayList)
getBaseList_impl this = do
        pure ((jget (this).baseList))


getGarrisonList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGarrisonList object_ = jmethod object_ "getGarrisonList" (\() -> (getGarrisonList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getGarrisonList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGarrisonList_super object_ = (getGarrisonList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getGarrisonList_impl :: AdvancedPlayerOwnedRTSLayers -> IO (BasicArrayList.BasicArrayList)
getGarrisonList_impl this = do
        pure ((jget (this).garrisonList))


getHouseList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getHouseList object_ = jmethod object_ "getHouseList" (\() -> (getHouseList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getHouseList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getHouseList_super object_ = (getHouseList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getHouseList_impl :: AdvancedPlayerOwnedRTSLayers -> IO (BasicArrayList.BasicArrayList)
getHouseList_impl this = do
        pure ((jget (this).houseList))


getLabList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getLabList object_ = jmethod object_ "getLabList" (\() -> (getLabList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getLabList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getLabList_super object_ = (getLabList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getLabList_impl :: AdvancedPlayerOwnedRTSLayers -> IO (BasicArrayList.BasicArrayList)
getLabList_impl this = do
        pure ((jget (this).labList))


getFactoryList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getFactoryList object_ = jmethod object_ "getFactoryList" (\() -> (getFactoryList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getFactoryList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getFactoryList_super object_ = (getFactoryList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getFactoryList_impl :: AdvancedPlayerOwnedRTSLayers -> IO (BasicArrayList.BasicArrayList)
getFactoryList_impl this = do
        pure ((jget (this).factoryList))


getTotalBuildings :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalBuildings object_ = jmethod object_ "getTotalBuildings" (\() -> (getTotalBuildings_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getTotalBuildings_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalBuildings_super object_ = (getTotalBuildings_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getTotalBuildings_impl :: AdvancedPlayerOwnedRTSLayers -> IO (Int)
getTotalBuildings_impl this = do
        pure ((((((jio (BasicArrayList.size ((jget (this).baseList)))) + (jio (BasicArrayList.size ((jget (this).garrisonList))))) + (jio (BasicArrayList.size ((jget (this).houseList))))) + (jio (BasicArrayList.size ((jget (this).labList))))) + (jio (BasicArrayList.size ((jget (this).factoryList))))))


removeBuilding :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeBuilding object_ a1 = jmethod object_ "removeBuilding" (\() -> (removeBuilding_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) () a1

removeBuilding_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeBuilding_super object_ a1 = (removeBuilding_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers)) a1

removeBuilding_impl :: AdvancedPlayerOwnedRTSLayers -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
removeBuilding_impl this layerInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).buildingList)) layerInterface)
        if (jio (BasicArrayList.remove ((jio (AdvancedPlayerOwnedRTSLayers.getBaseList this))) layerInterface)) then do
            Control.Monad.void (BasicArrayList.remove ((jget (this).base.rtsLayerList)) layerInterface)
        else if (jio (BasicArrayList.remove ((jio (AdvancedPlayerOwnedRTSLayers.getFactoryList this))) layerInterface)) then do
            Control.Monad.void (BasicArrayList.remove ((jget (this).base.rtsLayerList)) layerInterface)
        else if (jio (BasicArrayList.remove ((jio (AdvancedPlayerOwnedRTSLayers.getGarrisonList this))) layerInterface)) then do
            Control.Monad.void (BasicArrayList.remove ((jget (this).base.rtsLayerList)) layerInterface)
        else if (jio (BasicArrayList.remove ((jio (AdvancedPlayerOwnedRTSLayers.getLabList this))) layerInterface)) then do
            Control.Monad.void (BasicArrayList.remove ((jget (this).base.rtsLayerList)) layerInterface)
        else when (jio (BasicArrayList.remove ((jio (AdvancedPlayerOwnedRTSLayers.getHouseList this))) layerInterface)) $ do
            Control.Monad.void (BasicArrayList.remove ((jget (this).base.rtsLayerList)) layerInterface)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

toString_impl :: AdvancedPlayerOwnedRTSLayers -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PlayerOwnedRTSLayers.toString_super this.base)))
        Control.Monad.void (StringMaker.append stringBuffer " Bases: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jio (AdvancedPlayerOwnedRTSLayers.getBaseList this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Factory: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jio (AdvancedPlayerOwnedRTSLayers.getFactoryList this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Garrison: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jio (AdvancedPlayerOwnedRTSLayers.getGarrisonList this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Labs: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jio (AdvancedPlayerOwnedRTSLayers.getLabList this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Houses: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jio (AdvancedPlayerOwnedRTSLayers.getHouseList this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Waypoints: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jio (AdvancedPlayerOwnedRTSLayers.getWaypointsList this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Units: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jio (AdvancedPlayerOwnedRTSLayers.getUnitsList this))))))
        (StringMaker.toString stringBuffer)


getBuildingList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getBuildingList object_ = jmethod object_ "getBuildingList" (\() -> (getBuildingList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))) ()

getBuildingList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getBuildingList_super object_ = (getBuildingList_impl (javaCast object_ :: AdvancedPlayerOwnedRTSLayers))

getBuildingList_impl :: AdvancedPlayerOwnedRTSLayers -> IO (BasicArrayList.BasicArrayList)
getBuildingList_impl this = do
        pure ((jget (this).buildingList))


