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
-- package org.allbinary.game.behavior.topview
module NonPlayerTopViewCharacterBehavior (module NonPlayerTopViewCharacterBehavior, module TopViewCharacterBehavior) where

import TopViewCharacterBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, terrainEvent, terrainEvent_super, terrainEvent_impl, terrainMove, terrainMove_super, terrainMove_impl, geographicMapBehavior, cLIFF)
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
import qualified MultiGeographicMapBehavior -- org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified BasicTerrainInfo -- org.allbinary.game.terrain.BasicTerrainInfo
import qualified TerrainEvent -- org.allbinary.game.terrain.TerrainEvent
import qualified TerrainEventCircularStaticPool -- org.allbinary.game.terrain.TerrainEventCircularStaticPool
import qualified TerrainEventHandler -- org.allbinary.game.terrain.TerrainEventHandler
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified TopViewCharacterBehavior

data NonPlayerTopViewCharacterBehavior = NonPlayerTopViewCharacterBehavior
    { header_ :: JavaHeader
    , base :: TopViewCharacterBehavior.TopViewCharacterBehavior
    , geographicMapBehavior :: IORef (MultiGeographicMapBehavior.MultiGeographicMapBehavior)
    , cLIFF :: IORef (BasicTerrainInfo.BasicTerrainInfo)
    }

instance JavaNull NonPlayerTopViewCharacterBehavior where
    javaNull = javaNullRecord "NonPlayerTopViewCharacterBehavior"

instance JavaEquals NonPlayerTopViewCharacterBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NonPlayerTopViewCharacterBehavior where
    (==) = jrecordEquals

instance JavaObjectClass NonPlayerTopViewCharacterBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NonPlayerTopViewCharacterBehavior
newRecord_ = do
    base <- TopViewCharacterBehavior.newRecord_
    let header_ = base.header_
    geographicMapBehavior <- newIORef javaNull
    cLIFF <- newIORef javaNull
    let this = NonPlayerTopViewCharacterBehavior header_ base geographicMapBehavior cLIFF
    jregisterLevel header_ this
    jregisterMethod header_ "terrainEvent" (\() -> terrainEvent_impl this)
    jregisterMethod header_ "terrainMove" (\() -> terrainMove_impl this)
    pure this

initFields_ :: NonPlayerTopViewCharacterBehavior -> IO ()
initFields_ this = do
    jset this.geographicMapBehavior =<< (MultiGeographicMapBehavior.new_)
    jset this.cLIFF =<< (BasicTerrainInfo.new_1 (jget ((jio (AngleFactory.getInstance))).dOWN))
    pure ()

new_ :: IO NonPlayerTopViewCharacterBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NonPlayerTopViewCharacterBehavior -> IO ()
init_ this = do
    TopViewCharacterBehavior.init_ this.base
    initFields_ this


-- throws Exception
terrainEvent :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "terrainEvent" (\() -> (terrainEvent_impl (javaCast object_ :: NonPlayerTopViewCharacterBehavior))) () a1 a2 a3 a4 a5 a6 a7

terrainEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent_super object_ a1 a2 a3 a4 a5 a6 a7 = (terrainEvent_impl (javaCast object_ :: NonPlayerTopViewCharacterBehavior)) a1 a2 a3 a4 a5 a6 a7

terrainEvent_impl :: NonPlayerTopViewCharacterBehavior -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent_impl this layer direction x y geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition = do
        maxColumns <- (getColumns ((jio (getAllBinaryTiledLayer ((jindex geographicMapInterfaceArray (0)))))))
        when (((jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) > 0) && ((jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) < maxColumns)) $ do
            nextTerrainGeographicMapCellPosition <- newIORef (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
            geographicMapCellPositionFactory <- (getGeographicMapCellPositionFactory ((jindex geographicMapInterfaceArray (0))))
            if (direction == (jget ((jio (DirectionFactory.getInstance))).lEFT)) then do
                assignedValue <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory ((jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) - 1) (jio (GeographicMapCellPosition.getRow geographicMapCellPosition)))
                jset nextTerrainGeographicMapCellPosition (assignedValue)
            else when (direction == (jget ((jio (DirectionFactory.getInstance))).rIGHT)) $ do
                assignedValue <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory ((jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) + 1) (jio (GeographicMapCellPosition.getRow geographicMapCellPosition)))
                jset nextTerrainGeographicMapCellPosition (assignedValue)
            Control.Monad.void (MultiGeographicMapBehavior.getCellTypeAt ((jget (this).geographicMapBehavior)) geographicMapInterfaceArray geographicMapCellTypeArray (jget nextTerrainGeographicMapCellPosition))
            hasSolidBlock <- (TopViewCharacterBehavior.hasSolidBlock this geographicMapInterfaceArray geographicMapCellTypeArray)
            when (Prelude.not hasSolidBlock) $ do
                terrainEvent <- (TerrainEventCircularStaticPool.getNext ((jio (TerrainEventCircularStaticPool.getInstance))) (jget (this).cLIFF))
                Control.Monad.void (TerrainEventHandler.fireEvent ((jio (TerrainEventHandler.getInstance layer))) terrainEvent)
        pure ()


terrainMove :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove object_ a1 a2 a3 a4 = jmethod object_ "terrainMove" (\() -> (terrainMove_impl (javaCast object_ :: NonPlayerTopViewCharacterBehavior))) () a1 a2 a3 a4

terrainMove_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove_super object_ a1 a2 a3 a4 = (terrainMove_impl (javaCast object_ :: NonPlayerTopViewCharacterBehavior)) a1 a2 a3 a4

terrainMove_impl :: NonPlayerTopViewCharacterBehavior -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove_impl this layer geographicMapInterfaceArray x y = do
        Control.Monad.void (AllBinaryLayer.moveDXY layer x y)
        pure ()


