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
-- package org.allbinary.game.media.graphics.geography.map.racetrack
module PathFinderGraphHackVisitor (module PathFinderGraphHackVisitor, module BasePathFinderGraphVisitor) where

import BasePathFinderGraphVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, fixStart, fixStart_super, fixStart_impl, fixEnd, fixEnd_super, fixEnd_impl, fixOverPassEdges, fixOverPassEdges_super, fixOverPassEdges_impl, fixPath, fixPath_super, fixPath_impl, removeOverPassEdges, removeOverPassEdges_super, removeOverPassEdges_impl, isValid, isValid_super, isValid_impl, logUtil)
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
import qualified GraphPath -- org.jgrapht.GraphPath
import qualified DefaultWeightedEdge -- org.jgrapht.graph.DefaultWeightedEdge
import qualified SimpleWeightedGraph -- org.jgrapht.graph.SimpleWeightedGraph
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified BasicGeographicMapUtil -- org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified RaceTrackGeographicMap -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap
import qualified PathFindingNode -- org.allbinary.media.graphics.geography.pathfinding.PathFindingNode
import qualified BasePathFinderGraphVisitor

data PathFinderGraphHackVisitor = PathFinderGraphHackVisitor
    { header_ :: JavaHeader
    , base :: BasePathFinderGraphVisitor.BasePathFinderGraphVisitor
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PathFinderGraphHackVisitor where
    javaNull = javaNullRecord "PathFinderGraphHackVisitor"

instance JavaEquals PathFinderGraphHackVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFinderGraphHackVisitor where
    (==) = jrecordEquals

instance JavaObjectClass PathFinderGraphHackVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PathFinderGraphHackVisitor
newRecord_ = do
    base <- BasePathFinderGraphVisitor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = PathFinderGraphHackVisitor header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "fixStart" (\() -> fixStart_impl this)
    jregisterMethod header_ "fixEnd" (\() -> fixEnd_impl this)
    jregisterMethod header_ "fixOverPassEdges" (\() -> fixOverPassEdges_impl this)
    jregisterMethod header_ "fixPath" (\() -> fixPath_impl this)
    jregisterMethod header_ "removeOverPassEdges" (\() -> removeOverPassEdges_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: PathFinderGraphHackVisitor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_4 :: BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> IO PathFinderGraphHackVisitor
new_4 geographicMapInterface edgeMinimum minPathWeight maxPathWeight = do
    this <- newRecord_
    init_4 this geographicMapInterface edgeMinimum minPathWeight maxPathWeight
    pure this

init_4 :: PathFinderGraphHackVisitor -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> IO ()
init_4 this geographicMapInterface edgeMinimum minPathWeight maxPathWeight = do
        BasePathFinderGraphVisitor.init_4 this.base (geographicMapInterface) (edgeMinimum) (minPathWeight) (maxPathWeight)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit object_ a1 a2 a3 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1 a2 a3

visit_super :: (JavaObjectClass this_) => this_ -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit_super object_ a1 a2 a3 = (visit_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1 a2 a3

visit_impl :: PathFinderGraphHackVisitor -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit_impl this graph startPathFindingNodeList endPathFindingNodeList = do
        Control.Monad.void (PathFinderGraphHackVisitor.fixStart this graph startPathFindingNodeList)
        Control.Monad.void (PathFinderGraphHackVisitor.fixEnd this graph endPathFindingNodeList)
        Control.Monad.void (PathFinderGraphHackVisitor.fixOverPassEdges this graph)
        pure ()


-- throws Exception
fixStart :: (JavaObjectClass this_) => this_ -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> IO (())
fixStart object_ a1 a2 = jmethod object_ "fixStart" (\() -> (fixStart_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1 a2

fixStart_super :: (JavaObjectClass this_) => this_ -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> IO (())
fixStart_super object_ a1 a2 = (fixStart_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1 a2

fixStart_impl :: PathFinderGraphHackVisitor -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> IO (())
fixStart_impl this graph startPathFindingNodeList = do
        geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory ((jget (this).base.geographicMapInterface)))
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).base.geographicMapInterface)))
        forM_ [((jio (BasicArrayList.size startPathFindingNodeList)) - 1), ((jio (BasicArrayList.size startPathFindingNodeList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let startPathFindingNode = (javaCast (jio (BasicArrayList.get startPathFindingNodeList index)) :: PathFindingNode.PathFindingNode)
            let geographicMapCellPosition = (jget (startPathFindingNode).geographicMapCellPosition)
            column <- (GeographicMapCellPosition.getColumn geographicMapCellPosition)
            row <- (GeographicMapCellPosition.getRow geographicMapCellPosition)
            let nextRow = (row + 1)
            when (jio (AllBinaryTiledLayer.isOnTileLayer tiledLayer column nextRow)) $ do
                geographicMapCellPositionNeighbor <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory column nextRow)
                Control.Monad.void (SimpleWeightedGraph.removeEdge graph geographicMapCellPosition geographicMapCellPositionNeighbor)
        pure ()


-- throws Exception
fixEnd :: (JavaObjectClass this_) => this_ -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> IO (())
fixEnd object_ a1 a2 = jmethod object_ "fixEnd" (\() -> (fixEnd_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1 a2

fixEnd_super :: (JavaObjectClass this_) => this_ -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> IO (())
fixEnd_super object_ a1 a2 = (fixEnd_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1 a2

fixEnd_impl :: PathFinderGraphHackVisitor -> SimpleWeightedGraph.SimpleWeightedGraph -> BasicArrayList.BasicArrayList -> IO (())
fixEnd_impl this graph endPathFindingNodeList = do
        geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory ((jget (this).base.geographicMapInterface)))
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).base.geographicMapInterface)))
        forM_ [((jio (BasicArrayList.size endPathFindingNodeList)) - 1), ((jio (BasicArrayList.size endPathFindingNodeList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let endPathFindingNode = (javaCast (jio (BasicArrayList.get endPathFindingNodeList index)) :: PathFindingNode.PathFindingNode)
            let geographicMapCellPosition = (jget (endPathFindingNode).geographicMapCellPosition)
            Control.Monad.void (SimpleWeightedGraph.addVertex graph geographicMapCellPosition)
            column <- (GeographicMapCellPosition.getColumn geographicMapCellPosition)
            row <- (GeographicMapCellPosition.getRow geographicMapCellPosition)
            let nextRow = (row + 1)
            when (jio (AllBinaryTiledLayer.isOnTileLayer tiledLayer column nextRow)) $ do
                geographicMapCellPositionNeighbor <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory column nextRow)
                Control.Monad.void (SimpleWeightedGraph.addEdge graph geographicMapCellPosition geographicMapCellPositionNeighbor)
        pure ()


-- throws Exception
fixOverPassEdges :: (JavaObjectClass this_) => this_ -> SimpleWeightedGraph.SimpleWeightedGraph -> IO (())
fixOverPassEdges object_ a1 = jmethod object_ "fixOverPassEdges" (\() -> (fixOverPassEdges_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1

fixOverPassEdges_super :: (JavaObjectClass this_) => this_ -> SimpleWeightedGraph.SimpleWeightedGraph -> IO (())
fixOverPassEdges_super object_ a1 = (fixOverPassEdges_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1

fixOverPassEdges_impl :: PathFinderGraphHackVisitor -> SimpleWeightedGraph.SimpleWeightedGraph -> IO (())
fixOverPassEdges_impl this graph = do
        geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory ((jget (this).base.geographicMapInterface)))
        let raceTrackGeographicMap = (javaCast (jget (this).base.geographicMapInterface) :: RaceTrackGeographicMap.RaceTrackGeographicMap)
        cellPositionArray <- (RaceTrackData.getOverPassGeographicMapCellPositionArray ((jio (RaceTrackGeographicMap.getRaceTrackData raceTrackGeographicMap))))
        forM_ [((jlength cellPositionArray) - 1), ((jlength cellPositionArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let overPassGeographicMapCellPosition = (jindex cellPositionArray (index))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Fixing Over Pass: " ++ javaToString (jio (CellPosition.getColumn overPassGeographicMapCellPosition))) ++ ", ") ++ javaToString (jio (CellPosition.getRow overPassGeographicMapCellPosition))) this "fixOverPassEdges")
            underPassGeographicMapCellPosition <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory (jio (CellPosition.getColumn overPassGeographicMapCellPosition)) (jio (CellPosition.getRow overPassGeographicMapCellPosition)))
            rightUnderPassGeographicMapCellPosition <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory ((jio (CellPosition.getColumn overPassGeographicMapCellPosition)) + 1) (jio (CellPosition.getRow overPassGeographicMapCellPosition)))
            leftUnderPassGeographicMapCellPosition <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory ((jio (CellPosition.getColumn overPassGeographicMapCellPosition)) - 1) (jio (CellPosition.getRow overPassGeographicMapCellPosition)))
            Control.Monad.void (SimpleWeightedGraph.removeEdge graph underPassGeographicMapCellPosition rightUnderPassGeographicMapCellPosition)
            Control.Monad.void (SimpleWeightedGraph.removeEdge graph underPassGeographicMapCellPosition leftUnderPassGeographicMapCellPosition)
            Control.Monad.void (SimpleWeightedGraph.addVertex graph overPassGeographicMapCellPosition)
            Control.Monad.void (SimpleWeightedGraph.addEdge graph overPassGeographicMapCellPosition rightUnderPassGeographicMapCellPosition)
            Control.Monad.void (SimpleWeightedGraph.addEdge graph overPassGeographicMapCellPosition leftUnderPassGeographicMapCellPosition)
        pure ()


-- throws Exception
fixPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath object_ a1 a2 a3 = jmethod object_ "fixPath" (\() -> (fixPath_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1 a2 a3

fixPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath_super object_ a1 a2 a3 = (fixPath_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1 a2 a3

fixPath_impl :: PathFinderGraphHackVisitor -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath_impl this startPathFindingNodeList endPathFindingNodeList pathList = do
        forM_ [((jio (BasicArrayList.size startPathFindingNodeList)) - 1), ((jio (BasicArrayList.size startPathFindingNodeList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let endPathFindingNode = (javaCast (jio (BasicArrayList.get endPathFindingNodeList index)) :: PathFindingNode.PathFindingNode)
            let startPathFindingNode = (javaCast (jio (BasicArrayList.get startPathFindingNodeList index)) :: PathFindingNode.PathFindingNode)
            when (jio (BasicGeographicMapUtil.isSameCellPosition ((jio (BasicGeographicMapUtil.getInstance))) (jget (startPathFindingNode).geographicMapCellPosition) (jget (endPathFindingNode).geographicMapCellPosition))) $ do
                when (jio (BasicArrayList.remove pathList (jget (endPathFindingNode).geographicMapCellPosition))) $ do
                    Control.Monad.void (BasicArrayList.remove pathList (jget (startPathFindingNode).geographicMapCellPosition))
                    Control.Monad.void (BasicArrayList.addAt pathList 0 (jget (startPathFindingNode).geographicMapCellPosition))
        Control.Monad.void (PathFinderGraphHackVisitor.removeOverPassEdges this pathList)
        pure ()


-- throws Exception
removeOverPassEdges :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
removeOverPassEdges object_ a1 = jmethod object_ "removeOverPassEdges" (\() -> (removeOverPassEdges_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1

removeOverPassEdges_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
removeOverPassEdges_super object_ a1 = (removeOverPassEdges_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1

removeOverPassEdges_impl :: PathFinderGraphHackVisitor -> BasicArrayList.BasicArrayList -> IO (())
removeOverPassEdges_impl this pathList = do
        geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory ((jget (this).base.geographicMapInterface)))
        let raceTrackGeographicMap = (javaCast (jget (this).base.geographicMapInterface) :: RaceTrackGeographicMap.RaceTrackGeographicMap)
        cellPositionArray <- (RaceTrackData.getOverPassGeographicMapCellPositionArray ((jio (RaceTrackGeographicMap.getRaceTrackData raceTrackGeographicMap))))
        forM_ [((jlength cellPositionArray) - 1), ((jlength cellPositionArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let overPassGeographicMapCellPosition = (jindex cellPositionArray (index))
            underPassGeographicMapCellPosition <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory (jio (CellPosition.getColumn overPassGeographicMapCellPosition)) (jio (CellPosition.getRow overPassGeographicMapCellPosition)))
            indexOf <- (BasicArrayList.indexOf pathList overPassGeographicMapCellPosition)
            when (indexOf /= (Prelude.negate 1)) $ do
                Control.Monad.void (BasicArrayList.set pathList indexOf underPassGeographicMapCellPosition)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> GraphPath.GraphPath -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1

isValid_super :: (JavaObjectClass this_) => this_ -> GraphPath.GraphPath -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1

isValid_impl :: PathFinderGraphHackVisitor -> GraphPath.GraphPath -> IO (Bool)
isValid_impl this graphPath = do
    javaCatchReturn $ do
        if ((((jio (GraphPath.size ((jio (GraphPath.getEdgeList graphPath))))) > (jget this.base.edgeMinimum)) && ((jio (GraphPath.getWeight graphPath)) < (jget this.base.maxPathWeight))) && ((jio (GraphPath.getWeight graphPath)) > (jget this.base.minPathWeight))) then do
            javaReturn (True)
        else do
            javaReturn (False)


