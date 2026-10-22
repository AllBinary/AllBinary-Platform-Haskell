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
-- package org.allbinary.game.input.form
module VisibleCellPositionsSingleton where

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
import qualified SimpleTiledLayer -- javax.microedition.lcdui.game.SimpleTiledLayer
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified RTSLayerEvent -- org.allbinary.game.layer.RTSLayerEvent
import qualified BuildingEventListenerInterface -- org.allbinary.game.layer.building.event.BuildingEventListenerInterface
import qualified LocalPlayerBuildingEventHandler -- org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified ScrollMapEvent -- org.allbinary.layer.event.ScrollMapEvent
import qualified ScrollMapEventHandler -- org.allbinary.layer.event.ScrollMapEventHandler
import qualified ScrollMapEventListenerInterface -- org.allbinary.layer.event.ScrollMapEventListenerInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

-- implements BuildingEventListenerInterface
-- implements ScrollMapEventListenerInterface
data VisibleCellPositionsSingleton = VisibleCellPositionsSingleton
    { header_ :: JavaHeader
    , stationaryVisibleCellPositions :: IORef (JavaArray (JavaArray (Int16)))
    , visibleCellPositions :: IORef (JavaArray (JavaArray (Int16)))
    , currentlyVisibleCellPositions :: IORef (JavaArray (JavaArray (Int16)))
    , aLL_VISIBLE_TILEDLAYER :: IORef (SimpleTiledLayer.SimpleTiledLayer)
    , simpleTiledLayer :: IORef (SimpleTiledLayer.SimpleTiledLayer)
    , paintSimpleTiledLayer :: IORef (SimpleTiledLayer.SimpleTiledLayer)
    , currentIndex :: IORef (Int)
    }

instance JavaNull VisibleCellPositionsSingleton where
    javaNull = javaNullRecord "VisibleCellPositionsSingleton"

instance JavaEquals VisibleCellPositionsSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VisibleCellPositionsSingleton where
    (==) = jrecordEquals

instance JavaObjectClass VisibleCellPositionsSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VisibleCellPositionsSingleton
newRecord_ = do
    header_ <- newJavaHeader
    stationaryVisibleCellPositions <- newIORef javaNull
    visibleCellPositions <- newIORef javaNull
    currentlyVisibleCellPositions <- newIORef javaNull
    aLL_VISIBLE_TILEDLAYER <- newIORef javaNull
    simpleTiledLayer <- newIORef javaNull
    paintSimpleTiledLayer <- newIORef javaNull
    currentIndex <- newIORef 0
    let this = VisibleCellPositionsSingleton header_ stationaryVisibleCellPositions visibleCellPositions currentlyVisibleCellPositions aLL_VISIBLE_TILEDLAYER simpleTiledLayer paintSimpleTiledLayer currentIndex
    jregisterLevel header_ this
    BuildingEventListenerInterface.registerInterface_ header_
    ScrollMapEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onBuildingEvent" (\() -> onBuildingEvent_impl this)
    jregisterMethod header_ "onMoveEvent" (\() -> onMoveEvent_impl this)
    jregisterMethod header_ "addStationaryCellPositions" (\() -> addStationaryCellPositions_impl this)
    jregisterMethod header_ "removeStationaryCellPositions" (\() -> removeStationaryCellPositions_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "shouldProcess" (\() -> shouldProcess_impl this)
    jregisterMethod header_ "addCellPositions" (\() -> addCellPositions_impl this)
    jregisterMethod header_ "isVisible" (\() -> isVisible_impl this)
    jregisterMethod header_ "move" (\() -> move_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setSimpleTiledLayer" (\() -> setSimpleTiledLayer_impl this)
    jregisterMethod header_ "getSimpleTiledLayer" (\() -> getSimpleTiledLayer_impl this)
    pure this

initFields_ :: VisibleCellPositionsSingleton -> IO ()
initFields_ this = do
    jset this.stationaryVisibleCellPositions ((jget ((jio (NullUtil.getInstance))).nULL_SHORT_ARRAY_ARRAY))
    jset this.visibleCellPositions ((jget ((jio (NullUtil.getInstance))).nULL_SHORT_ARRAY_ARRAY))
    jset this.currentlyVisibleCellPositions ((jget ((jio (NullUtil.getInstance))).nULL_SHORT_ARRAY_ARRAY))
    jset this.aLL_VISIBLE_TILEDLAYER =<< (SimpleTiledLayer.new_4 0 0 0 0)
    jset this.simpleTiledLayer ((jget (this).aLL_VISIBLE_TILEDLAYER))
    jset this.paintSimpleTiledLayer ((jget (this).aLL_VISIBLE_TILEDLAYER))
    jset this.currentIndex (0)
    pure ()


getInstance :: IO (VisibleCellPositionsSingleton)
getInstance = do
        pure (VisibleCellPositionsSingleton.instance_)

new_ :: IO VisibleCellPositionsSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VisibleCellPositionsSingleton -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (LocalPlayerBuildingEventHandler.addListenerInterface ((jio (LocalPlayerBuildingEventHandler.getInstance))) (javaCast this))
        Control.Monad.void (ScrollMapEventHandler.addListenerInterface ((jio (ScrollMapEventHandler.getInstance))) (javaCast this))
        pure ()


init :: (JavaObjectClass this_) => this_ -> SimpleTiledLayer.SimpleTiledLayer -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

init_super :: (JavaObjectClass this_) => this_ -> SimpleTiledLayer.SimpleTiledLayer -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

init_impl :: VisibleCellPositionsSingleton -> SimpleTiledLayer.SimpleTiledLayer -> IO (())
init_impl this simpleTiledLayer = do
        jset (this).paintSimpleTiledLayer ((jget (this).aLL_VISIBLE_TILEDLAYER))
        jset (this).currentIndex (0)
        rows <- (SimpleTiledLayer.getRows simpleTiledLayer)
        columns <- (SimpleTiledLayer.getColumns simpleTiledLayer)
        jset (this).stationaryVisibleCellPositions ((jnewArray2 (rows) (columns) 0))
        jset (this).visibleCellPositions ((jnewArray2 (rows) (columns) 0))
        jset (this).currentlyVisibleCellPositions ((jnewArray2 (rows) (columns) 0))
        Control.Monad.void (VisibleCellPositionsSingleton.setSimpleTiledLayer this simpleTiledLayer)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

onEvent_impl :: VisibleCellPositionsSingleton -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
onBuildingEvent :: (JavaObjectClass this_) => this_ -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent object_ a1 = jmethod object_ "onBuildingEvent" (\() -> (onBuildingEvent_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

onBuildingEvent_super :: (JavaObjectClass this_) => this_ -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent_super object_ a1 = (onBuildingEvent_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

onBuildingEvent_impl :: VisibleCellPositionsSingleton -> RTSLayerEvent.RTSLayerEvent -> IO (())
onBuildingEvent_impl this event = do
        jset (this).paintSimpleTiledLayer ((jget (this).simpleTiledLayer))
        pure ()


-- throws Exception
onMoveEvent :: (JavaObjectClass this_) => this_ -> ScrollMapEvent.ScrollMapEvent -> IO (())
onMoveEvent object_ a1 = jmethod object_ "onMoveEvent" (\() -> (onMoveEvent_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

onMoveEvent_super :: (JavaObjectClass this_) => this_ -> ScrollMapEvent.ScrollMapEvent -> IO (())
onMoveEvent_super object_ a1 = (onMoveEvent_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

onMoveEvent_impl :: VisibleCellPositionsSingleton -> ScrollMapEvent.ScrollMapEvent -> IO (())
onMoveEvent_impl this scrollMapEvent = do
        Control.Monad.void (VisibleCellPositionsSingleton.move this (jio (ScrollMapEvent.getDx scrollMapEvent)) (jio (ScrollMapEvent.getDy scrollMapEvent)))
        pure ()


addStationaryCellPositions :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addStationaryCellPositions object_ a1 = jmethod object_ "addStationaryCellPositions" (\() -> (addStationaryCellPositions_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

addStationaryCellPositions_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addStationaryCellPositions_super object_ a1 = (addStationaryCellPositions_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

addStationaryCellPositions_impl :: VisibleCellPositionsSingleton -> BasicArrayList.BasicArrayList -> IO (())
addStationaryCellPositions_impl this list = do
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let cellPosition = (javaCast (jio (BasicArrayList.get list index)) :: CellPosition.CellPosition)
            jsetIndex ((jindex ((jget (this).stationaryVisibleCellPositions)) ((jio (CellPosition.getRow cellPosition))))) ((jio (CellPosition.getColumn cellPosition))) ((jindex ((jindex ((jget (this).stationaryVisibleCellPositions)) ((jio (CellPosition.getRow cellPosition))))) ((jio (CellPosition.getColumn cellPosition)))) + 1)
        pure ()


removeStationaryCellPositions :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
removeStationaryCellPositions object_ a1 = jmethod object_ "removeStationaryCellPositions" (\() -> (removeStationaryCellPositions_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

removeStationaryCellPositions_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
removeStationaryCellPositions_super object_ a1 = (removeStationaryCellPositions_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

removeStationaryCellPositions_impl :: VisibleCellPositionsSingleton -> BasicArrayList.BasicArrayList -> IO (())
removeStationaryCellPositions_impl this list = do
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let cellPosition = (javaCast (jio (BasicArrayList.get list index)) :: CellPosition.CellPosition)
            jsetIndex ((jindex ((jget (this).stationaryVisibleCellPositions)) ((jio (CellPosition.getRow cellPosition))))) ((jio (CellPosition.getColumn cellPosition))) ((jindex ((jindex ((jget (this).stationaryVisibleCellPositions)) ((jio (CellPosition.getRow cellPosition))))) ((jio (CellPosition.getColumn cellPosition)))) - 1)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: VisibleCellPositionsSingleton))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: VisibleCellPositionsSingleton))

update_impl :: VisibleCellPositionsSingleton -> IO (())
update_impl this = do
        when ((jget (this).currentIndex) == 0) $ do
            let temp = (jget (this).currentlyVisibleCellPositions)
            jset (this).currentlyVisibleCellPositions ((jget (this).visibleCellPositions))
            jset (this).visibleCellPositions (temp)
            forM_ [((jlength (jget (this).visibleCellPositions)) - 1), ((jlength (jget (this).visibleCellPositions)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                forM_ [((jlength (jindex ((jget (this).visibleCellPositions)) (0))) - 1), ((jlength (jindex ((jget (this).visibleCellPositions)) (0))) - 1) + (-1) .. 0] $ \index2 -> javaIteration (pure ()) $ do
                    jsetIndex ((jindex ((jget (this).visibleCellPositions)) (index))) (index2) ((jindex ((jindex ((jget (this).stationaryVisibleCellPositions)) (index))) (index2)))
        jset (this).currentIndex ((jget (this).currentIndex) + 1)
        when ((jget (this).currentIndex) > 10) $ do
            jset (this).currentIndex (0)
        pure ()


shouldProcess :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldProcess object_ = jmethod object_ "shouldProcess" (\() -> (shouldProcess_impl (javaCast object_ :: VisibleCellPositionsSingleton))) ()

shouldProcess_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
shouldProcess_super object_ = (shouldProcess_impl (javaCast object_ :: VisibleCellPositionsSingleton))

shouldProcess_impl :: VisibleCellPositionsSingleton -> IO (Bool)
shouldProcess_impl this = do
    javaCatchReturn $ do
        if ((jget (this).currentIndex) == 0) then do
            javaReturn (True)
        else do
            javaReturn (False)


addCellPositions :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addCellPositions object_ a1 = jmethod object_ "addCellPositions" (\() -> (addCellPositions_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

addCellPositions_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addCellPositions_super object_ a1 = (addCellPositions_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

addCellPositions_impl :: VisibleCellPositionsSingleton -> BasicArrayList.BasicArrayList -> IO (())
addCellPositions_impl this list = do
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let cellPosition = (javaCast (jio (BasicArrayList.get list index)) :: CellPosition.CellPosition)
            jsetIndex ((jindex ((jget (this).visibleCellPositions)) ((jio (CellPosition.getRow cellPosition))))) ((jio (CellPosition.getColumn cellPosition))) ((jindex ((jindex ((jget (this).visibleCellPositions)) ((jio (CellPosition.getRow cellPosition))))) ((jio (CellPosition.getColumn cellPosition)))) + 1)
        pure ()


isVisible :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> IO (Bool)
isVisible object_ a1 = jmethod object_ "isVisible" (\() -> (isVisible_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

isVisible_super :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> IO (Bool)
isVisible_super object_ a1 = (isVisible_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

isVisible_impl :: VisibleCellPositionsSingleton -> CellPosition.CellPosition -> IO (Bool)
isVisible_impl this cellPosition = do
    javaCatchReturn $ do
        if ((jindex ((jindex ((jget (this).visibleCellPositions)) ((jio (CellPosition.getRow cellPosition))))) ((jio (CellPosition.getColumn cellPosition)))) > 0) then do
            javaReturn (True)
        else do
            javaReturn (False)


move :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
move object_ a1 a2 = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1 a2

move_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
move_super object_ a1 a2 = (move_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1 a2

move_impl :: VisibleCellPositionsSingleton -> Int -> Int -> IO (())
move_impl this dx dy = do
        Control.Monad.void (SimpleTiledLayer.moveDXY ((jio (VisibleCellPositionsSingleton.getSimpleTiledLayer this))) dx dy)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

paint_impl :: VisibleCellPositionsSingleton -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (SimpleTiledLayer.paint ((jget (this).paintSimpleTiledLayer)) graphics (jget (this).currentlyVisibleCellPositions))
        pure ()


setSimpleTiledLayer :: (JavaObjectClass this_) => this_ -> SimpleTiledLayer.SimpleTiledLayer -> IO (())
setSimpleTiledLayer object_ a1 = jmethod object_ "setSimpleTiledLayer" (\() -> (setSimpleTiledLayer_impl (javaCast object_ :: VisibleCellPositionsSingleton))) () a1

setSimpleTiledLayer_super :: (JavaObjectClass this_) => this_ -> SimpleTiledLayer.SimpleTiledLayer -> IO (())
setSimpleTiledLayer_super object_ a1 = (setSimpleTiledLayer_impl (javaCast object_ :: VisibleCellPositionsSingleton)) a1

setSimpleTiledLayer_impl :: VisibleCellPositionsSingleton -> SimpleTiledLayer.SimpleTiledLayer -> IO (())
setSimpleTiledLayer_impl this simpleTiledLayer = do
        jset (this).simpleTiledLayer (simpleTiledLayer)
        pure ()


getSimpleTiledLayer :: (JavaObjectClass this_) => this_ -> IO (SimpleTiledLayer.SimpleTiledLayer)
getSimpleTiledLayer object_ = jmethod object_ "getSimpleTiledLayer" (\() -> (getSimpleTiledLayer_impl (javaCast object_ :: VisibleCellPositionsSingleton))) ()

getSimpleTiledLayer_super :: (JavaObjectClass this_) => this_ -> IO (SimpleTiledLayer.SimpleTiledLayer)
getSimpleTiledLayer_super object_ = (getSimpleTiledLayer_impl (javaCast object_ :: VisibleCellPositionsSingleton))

getSimpleTiledLayer_impl :: VisibleCellPositionsSingleton -> IO (SimpleTiledLayer.SimpleTiledLayer)
getSimpleTiledLayer_impl this = do
        pure ((jget (this).simpleTiledLayer))


