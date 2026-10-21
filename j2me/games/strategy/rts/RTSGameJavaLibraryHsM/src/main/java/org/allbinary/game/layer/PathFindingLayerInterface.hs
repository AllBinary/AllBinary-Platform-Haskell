{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module PathFindingLayerInterface (module PathFindingLayerInterface, module WaypointLayerInterface, module GameKeyEventSourceInterface, module GroupInterfaceCompositeInterface, module DestroyableInterface) where

import WaypointLayerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getEndGeographicMapCellPositionList, getEndGeographicMapCellPositionList_super, getEndGeographicMapCellPositionList_impl, shouldHandleStartSameAsEnd, shouldHandleStartSameAsEnd_super, shouldHandleStartSameAsEnd_impl, getGeographicMapCellPositionArea, getGeographicMapCellPositionArea_super, getGeographicMapCellPositionArea_impl, getHudPaintable, getHudPaintable_super, getHudPaintable_impl, handleCost, handleCost_super, handleCost_impl, getParentLayer, getParentLayer_super, getParentLayer_impl, getRTSLayer2LogHelper, getRTSLayer2LogHelper_super, getRTSLayer2LogHelper_impl, setTarget, setTarget_super, setTarget_impl, toString)
import GameKeyEventSourceInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getEndGeographicMapCellPositionList, getEndGeographicMapCellPositionList_super, getEndGeographicMapCellPositionList_impl, shouldHandleStartSameAsEnd, shouldHandleStartSameAsEnd_super, shouldHandleStartSameAsEnd_impl, getGeographicMapCellPositionArea, getGeographicMapCellPositionArea_super, getGeographicMapCellPositionArea_impl, getHudPaintable, getHudPaintable_super, getHudPaintable_impl, handleCost, handleCost_super, handleCost_impl, getParentLayer, getParentLayer_super, getParentLayer_impl, getRTSLayer2LogHelper, getRTSLayer2LogHelper_super, getRTSLayer2LogHelper_impl, setTarget, setTarget_super, setTarget_impl, toString)
import GroupInterfaceCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getEndGeographicMapCellPositionList, getEndGeographicMapCellPositionList_super, getEndGeographicMapCellPositionList_impl, shouldHandleStartSameAsEnd, shouldHandleStartSameAsEnd_super, shouldHandleStartSameAsEnd_impl, getGeographicMapCellPositionArea, getGeographicMapCellPositionArea_super, getGeographicMapCellPositionArea_impl, getHudPaintable, getHudPaintable_super, getHudPaintable_impl, handleCost, handleCost_super, handleCost_impl, getParentLayer, getParentLayer_super, getParentLayer_impl, getRTSLayer2LogHelper, getRTSLayer2LogHelper_super, getRTSLayer2LogHelper_impl, setTarget, setTarget_super, setTarget_impl, toString)
import DestroyableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getEndGeographicMapCellPositionList, getEndGeographicMapCellPositionList_super, getEndGeographicMapCellPositionList_impl, shouldHandleStartSameAsEnd, shouldHandleStartSameAsEnd_super, shouldHandleStartSameAsEnd_impl, getGeographicMapCellPositionArea, getGeographicMapCellPositionArea_super, getGeographicMapCellPositionArea_impl, getHudPaintable, getHudPaintable_super, getHudPaintable_impl, handleCost, handleCost_super, handleCost_impl, getParentLayer, getParentLayer_super, getParentLayer_impl, getRTSLayer2LogHelper, getRTSLayer2LogHelper_super, getRTSLayer2LogHelper_impl, setTarget, setTarget_super, setTarget_impl, toString)
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
import qualified GeographicMapCellPositionAreaBase -- same package or java.lang
import qualified SelectionHudPaintable -- same package or java.lang
import qualified RTSLayer2LogHelper -- same package or java.lang
import qualified DestroyableInterface -- org.allbinary.game.combat.destroy.DestroyableInterface
import qualified GroupInterfaceCompositeInterface -- org.allbinary.game.identification.GroupInterfaceCompositeInterface
import qualified GameKeyEventSourceInterface -- org.allbinary.game.input.GameKeyEventSourceInterface
import qualified WaypointLayerInterface -- org.allbinary.game.layer.waypoint.WaypointLayerInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data PathFindingLayerInterface = PathFindingLayerInterface
    { header_ :: JavaHeader
    }

instance JavaNull PathFindingLayerInterface where
    javaNull = javaNullRecord "PathFindingLayerInterface"

instance JavaEquals PathFindingLayerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingLayerInterface where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingLayerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PathFindingLayerInterface
fromHeader_ header = PathFindingLayerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PathFindingLayerInterface header)
    WaypointLayerInterface.registerInterface_ header
    GameKeyEventSourceInterface.registerInterface_ header
    GroupInterfaceCompositeInterface.registerInterface_ header
    DestroyableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getEndGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList object_ = jmethod object_ "getEndGeographicMapCellPositionList" (\() -> (getEndGeographicMapCellPositionList_impl (javaCast object_ :: PathFindingLayerInterface))) ()

getEndGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList_super object_ = (getEndGeographicMapCellPositionList_impl (javaCast object_ :: PathFindingLayerInterface))

getEndGeographicMapCellPositionList_impl :: PathFindingLayerInterface -> IO (BasicArrayList.BasicArrayList)
getEndGeographicMapCellPositionList_impl this = javaAbstractMethod "getEndGeographicMapCellPositionList"


shouldHandleStartSameAsEnd :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldHandleStartSameAsEnd object_ = jmethod object_ "shouldHandleStartSameAsEnd" (\() -> (shouldHandleStartSameAsEnd_impl (javaCast object_ :: PathFindingLayerInterface))) ()

shouldHandleStartSameAsEnd_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldHandleStartSameAsEnd_super object_ = (shouldHandleStartSameAsEnd_impl (javaCast object_ :: PathFindingLayerInterface))

shouldHandleStartSameAsEnd_impl :: PathFindingLayerInterface -> IO (Bool)
shouldHandleStartSameAsEnd_impl this = javaAbstractMethod "shouldHandleStartSameAsEnd"


getGeographicMapCellPositionArea :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea object_ = jmethod object_ "getGeographicMapCellPositionArea" (\() -> (getGeographicMapCellPositionArea_impl (javaCast object_ :: PathFindingLayerInterface))) ()

getGeographicMapCellPositionArea_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea_super object_ = (getGeographicMapCellPositionArea_impl (javaCast object_ :: PathFindingLayerInterface))

getGeographicMapCellPositionArea_impl :: PathFindingLayerInterface -> IO (GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase)
getGeographicMapCellPositionArea_impl this = javaAbstractMethod "getGeographicMapCellPositionArea"


getHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable object_ = jmethod object_ "getHudPaintable" (\() -> (getHudPaintable_impl (javaCast object_ :: PathFindingLayerInterface))) ()

getHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_super object_ = (getHudPaintable_impl (javaCast object_ :: PathFindingLayerInterface))

getHudPaintable_impl :: PathFindingLayerInterface -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_impl this = javaAbstractMethod "getHudPaintable"


-- throws Exception
handleCost :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface -> IO (())
handleCost object_ a1 = jmethod object_ "handleCost" (\() -> (handleCost_impl (javaCast object_ :: PathFindingLayerInterface))) () a1

handleCost_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface -> IO (())
handleCost_super object_ a1 = (handleCost_impl (javaCast object_ :: PathFindingLayerInterface)) a1

handleCost_impl :: PathFindingLayerInterface -> PathFindingLayerInterface -> IO (())
handleCost_impl this ownerLayer = javaAbstractMethod "handleCost"


getParentLayer :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface)
getParentLayer object_ = jmethod object_ "getParentLayer" (\() -> (getParentLayer_impl (javaCast object_ :: PathFindingLayerInterface))) ()

getParentLayer_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface)
getParentLayer_super object_ = (getParentLayer_impl (javaCast object_ :: PathFindingLayerInterface))

getParentLayer_impl :: PathFindingLayerInterface -> IO (PathFindingLayerInterface)
getParentLayer_impl this = javaAbstractMethod "getParentLayer"


getRTSLayer2LogHelper :: (JavaObjectClass this_) => this_ -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper object_ = jmethod object_ "getRTSLayer2LogHelper" (\() -> (getRTSLayer2LogHelper_impl (javaCast object_ :: PathFindingLayerInterface))) ()

getRTSLayer2LogHelper_super :: (JavaObjectClass this_) => this_ -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper_super object_ = (getRTSLayer2LogHelper_impl (javaCast object_ :: PathFindingLayerInterface))

getRTSLayer2LogHelper_impl :: PathFindingLayerInterface -> IO (RTSLayer2LogHelper.RTSLayer2LogHelper)
getRTSLayer2LogHelper_impl this = javaAbstractMethod "getRTSLayer2LogHelper"


-- throws Exception
setTarget :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface -> IO (())
setTarget object_ a1 = jmethod object_ "setTarget" (\() -> (setTarget_impl (javaCast object_ :: PathFindingLayerInterface))) () a1

setTarget_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface -> IO (())
setTarget_super object_ a1 = (setTarget_impl (javaCast object_ :: PathFindingLayerInterface)) a1

setTarget_impl :: PathFindingLayerInterface -> PathFindingLayerInterface -> IO (())
setTarget_impl this targetGameLayer = javaAbstractMethod "setTarget"


