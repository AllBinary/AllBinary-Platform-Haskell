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
-- package org.allbinary.media.graphics.geography.map.racetrack.drop
module RaceTrackRandomDropCellPositionGenerator (module RaceTrackRandomDropCellPositionGenerator, module RaceTrackDropCellPositionGenerator) where

import RaceTrackDropCellPositionGenerator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, update, update_super, update_impl, drop, drop_super, drop_impl, sINGLETON, myRandomFactory, cellsPerRowOrColumn, totalCells, rowArray, columnArray, cellWidth, cellHeight)
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
import qualified BasicArrayList -- same package or java.lang
import qualified RaceTrackGeographicMapInterface -- same package or java.lang
import qualified PickedUpLayerInterfaceFactoryInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified DropLayerFactory -- org.allbinary.game.layer.drop.DropLayerFactory
import qualified PickupLayerCircularStaticPool -- org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool
import qualified RaceTrackPickupLayer -- org.allbinary.game.layer.pickup.RaceTrackPickupLayer
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified RaceTrackDropCellPositionGenerator

data RaceTrackRandomDropCellPositionGenerator = RaceTrackRandomDropCellPositionGenerator
    { header_ :: JavaHeader
    , base :: RaceTrackDropCellPositionGenerator.RaceTrackDropCellPositionGenerator
    , myRandomFactory :: IORef (MyRandomFactory.MyRandomFactory)
    , cellsPerRowOrColumn :: IORef (Int)
    , totalCells :: IORef (Int)
    , rowArray :: IORef (JavaArray (Int))
    , columnArray :: IORef (JavaArray (Int))
    , cellWidth :: IORef (Int)
    , cellHeight :: IORef (Int)
    }

instance JavaNull RaceTrackRandomDropCellPositionGenerator where
    javaNull = javaNullRecord "RaceTrackRandomDropCellPositionGenerator"

instance JavaEquals RaceTrackRandomDropCellPositionGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackRandomDropCellPositionGenerator where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackRandomDropCellPositionGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO RaceTrackRandomDropCellPositionGenerator
newRecord_ = do
    base <- RaceTrackDropCellPositionGenerator.newRecord_
    let header_ = base.header_
    myRandomFactory <- newIORef javaNull
    cellsPerRowOrColumn <- newIORef 0
    totalCells <- newIORef 0
    rowArray <- newIORef javaNull
    columnArray <- newIORef javaNull
    cellWidth <- newIORef 0
    cellHeight <- newIORef 0
    let this = RaceTrackRandomDropCellPositionGenerator header_ base myRandomFactory cellsPerRowOrColumn totalCells rowArray columnArray cellWidth cellHeight
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    pure this

initFields_ :: RaceTrackRandomDropCellPositionGenerator -> IO ()
initFields_ this = do
    jset this.myRandomFactory =<< (MyRandomFactory.getInstance)
    jset this.cellsPerRowOrColumn (3)
    jset this.totalCells (((jget (this).cellsPerRowOrColumn) * (jget (this).cellsPerRowOrColumn)))
    jset this.rowArray ((jarrayFromList [0, 1, 2, 0, 1, 2, 0, 1, 2]))
    jset this.columnArray ((jarrayFromList [0, 0, 0, 1, 1, 1, 2, 2, 2]))
    jset this.cellWidth (0)
    jset this.cellHeight (0)
    pure ()


getInstance :: IO (RaceTrackRandomDropCellPositionGenerator)
getInstance = do
        pure ((jget RaceTrackRandomDropCellPositionGenerator.sINGLETON))

new_ :: IO RaceTrackRandomDropCellPositionGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTrackRandomDropCellPositionGenerator -> IO ()
init_ this = do
        RaceTrackDropCellPositionGenerator.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: RaceTrackRandomDropCellPositionGenerator))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: RaceTrackRandomDropCellPositionGenerator)) a1 a2

update_impl :: RaceTrackRandomDropCellPositionGenerator -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this allBinaryGameLayerManager geographicMapInterface = do
        Control.Monad.void (RaceTrackDropCellPositionGenerator.update_super this.base allBinaryGameLayerManager geographicMapInterface)
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        jset (this).cellWidth (((jio (AllBinaryTiledLayer.getCellWidth tiledLayer)) `quot` (jget (this).cellsPerRowOrColumn)))
        jset (this).cellHeight (((jio (AllBinaryTiledLayer.getCellHeight tiledLayer)) `quot` (jget (this).cellsPerRowOrColumn)))
        pure ()


-- throws Exception
drop :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop object_ a1 a2 = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: RaceTrackRandomDropCellPositionGenerator))) () a1 a2

drop_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop_super object_ a1 a2 = (drop_impl (javaCast object_ :: RaceTrackRandomDropCellPositionGenerator)) a1 a2

drop_impl :: RaceTrackRandomDropCellPositionGenerator -> AllBinaryLayerManager.AllBinaryLayerManager -> Int -> IO (())
drop_impl this allBinaryLayerManager index = do
        let geographicMapCellPosition = (javaCast (jio (BasicArrayList.get ((jget (this).base.list)) index)) :: GeographicMapCellPosition.GeographicMapCellPosition)
        point <- (GeographicMapCellPosition.getPoint geographicMapCellPosition)
        randomCell <- (MyRandomFactory.getAbsoluteNextInt ((jget (this).myRandomFactory)) (jget (this).totalCells))
        let row = (jindex ((jget (this).rowArray)) (randomCell))
        let column = (jindex ((jget (this).columnArray)) (randomCell))
        let x = ((jio (GPoint.getX point)) + ((row * (jget (this).cellWidth))))
        let y = ((jio (GPoint.getY point)) + ((column * (jget (this).cellHeight))))
        pickedUpLayerInterfaceFactory <- (DropLayerFactory.getRandomInstance ((jio (DropLayerFactory.getInstance))))
        tiledLayer <- (RaceTrackGeographicMapInterface.getAllBinaryTiledLayer ((jget (this).base.raceTrackGeographicMap)))
        let pickupLayer = (javaCast (jio (PickupLayerCircularStaticPool.getInstanceXYZ ((jio (PickupLayerCircularStaticPool.getInstance))) pickedUpLayerInterfaceFactory x y ((jio (AllBinaryTiledLayer.getZP tiledLayer)) + 3))) :: RaceTrackPickupLayer.RaceTrackPickupLayer)
        Control.Monad.void (RaceTrackPickupLayer.setTiledLayer pickupLayer tiledLayer)
        Control.Monad.void (AllBinaryLayerManager.append allBinaryLayerManager pickupLayer)
        pure ()


