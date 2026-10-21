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
-- package org.allbinary.media.graphics.geography.pathfinding
module PathFinder (module PathFinder, module GeographicPathFinderBase) where

import GeographicPathFinderBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, searchTotalPath, searchTotalPath_super, searchTotalPath_impl, searchTotalPathN, searchTotalPathN_super, searchTotalPathN_impl, search, search_super, search_impl, searchStart, searchStart_super, searchStart_impl, searchN, searchN_super, searchN_impl, findPath, findPath_super, findPath_impl, findPathStart, findPathStart_super, findPathStart_impl, findPathEnd, findPathEnd_super, findPathEnd_impl, extractPath, extractPath_super, extractPath_impl, logUtil, basicArrayListUtil, mathUtil, openPriorityQueue, closedSet, geographicMapInterface, costArray)
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
import qualified PathFindingNodeCost -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified PathFindingNodeCostInfo -- same package or java.lang
import qualified PathFindingNode -- same package or java.lang
import qualified MultipassState -- same package or java.lang
import qualified HashSet -- java.util.HashSet
import qualified PriorityQueue -- java.util.PriorityQueue
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified RaceTrackGeographicMapCellType -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified GeographicPathFinderBase

data PathFinder = PathFinder
    { header_ :: JavaHeader
    , base :: GeographicPathFinderBase.GeographicPathFinderBase
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    , mathUtil :: IORef (MathUtil.MathUtil)
    , openPriorityQueue :: IORef (PriorityQueue.PriorityQueue)
    , closedSet :: IORef (HashSet.HashSet)
    , geographicMapInterface :: IORef (Any.Any)
    , costArray :: IORef (JavaArray (JavaArray (PathFindingNodeCost.PathFindingNodeCost)))
    }

instance JavaNull PathFinder where
    javaNull = javaNullRecord "PathFinder"

instance JavaEquals PathFinder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFinder where
    (==) = jrecordEquals

instance JavaObjectClass PathFinder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PathFinder
newRecord_ = do
    base <- GeographicPathFinderBase.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    mathUtil <- newIORef javaNull
    openPriorityQueue <- newIORef javaNull
    closedSet <- newIORef javaNull
    geographicMapInterface <- newIORef javaNull
    costArray <- newIORef javaNull
    let this = PathFinder header_ base logUtil basicArrayListUtil mathUtil openPriorityQueue closedSet geographicMapInterface costArray
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "searchTotalPath" (\() -> searchTotalPath_impl this)
    jregisterMethod header_ "searchTotalPathN" (\() -> searchTotalPathN_impl this)
    jregisterMethod header_ "search" (\() -> search_impl this)
    jregisterMethod header_ "searchStart" (\() -> searchStart_impl this)
    jregisterMethod header_ "searchN" (\() -> searchN_impl this)
    jregisterMethod header_ "findPath" (\() -> findPath_impl this)
    jregisterMethod header_ "findPathStart" (\() -> findPathStart_impl this)
    jregisterMethod header_ "findPathEnd" (\() -> findPathEnd_impl this)
    jregisterMethod header_ "extractPath" (\() -> extractPath_impl this)
    pure this

initFields_ :: PathFinder -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    jset this.mathUtil =<< (MathUtil.getInstance)
    jset this.openPriorityQueue =<< (PriorityQueue.new_)
    jset this.closedSet =<< (HashSet.new_)
    jset this.geographicMapInterface ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
    jset this.costArray (PathFindingNodeCost.nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY)
    pure ()

new_ :: IO PathFinder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathFinder -> IO ()
init_ this = do
    GeographicPathFinderBase.init_ this.base
    initFields_ this


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PathFinder))) () a1

init_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: PathFinder)) a1

init_impl :: PathFinder -> BasicGeographicMap.BasicGeographicMap -> IO (())
init_impl this geographicMapInterface = do
        jset (this).geographicMapInterface (geographicMapInterface)
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        jset (this).costArray ((jnewArray2 ((jio (AllBinaryTiledLayer.getColumns tiledLayer))) ((jio (AllBinaryTiledLayer.getRows tiledLayer))) javaNull))
        basicGeographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        node <- newIORef (javaNull)
        let sizeX = (jlength (jget (this).costArray))
        let sizeY = (jlength (jindex ((jget (this).costArray)) (0)))
        forM_ [0 .. sizeX - 1] $ \column -> javaIteration (pure ()) $ do
            forM_ [0 .. sizeY - 1] $ \row -> javaIteration (pure ()) $ do
                geographicMapCellType <- (BasicGeographicMap.getCellTypeAt geographicMapInterface (jio (BasicGeographicMapCellPositionFactory.getAt basicGeographicMapCellPositionFactory column row)))
                let raceTrackGeographicMapCellType = (javaCast geographicMapCellType :: RaceTrackGeographicMapCellType.RaceTrackGeographicMapCellType)
                assignedValue <- (PathFindingNodeCost.new_3 (jget ((jio (NullUtil.getInstance))).nULL_OBJECT) (jio (BasicGeographicMapCellPositionFactory.getAt basicGeographicMapCellPositionFactory column row)) (jio (PathFindingNodeCostInfo.new_2 (Prelude.fromIntegral (jio (RaceTrackGeographicMapCellType.getTravelCost raceTrackGeographicMapCellType))) (Prelude.fromIntegral ((Prelude.negate 1) :: Int)))))
                jset node (assignedValue)
                jsetIndex ((jindex ((jget (this).costArray)) (column))) (row) ((jget node))
        pure ()


searchTotalPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
searchTotalPath object_ a1 a2 a3 = jmethod object_ "searchTotalPath" (\() -> (searchTotalPath_impl (javaCast object_ :: PathFinder))) () a1 a2 a3

searchTotalPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
searchTotalPath_super object_ a1 a2 a3 = (searchTotalPath_impl (javaCast object_ :: PathFinder)) a1 a2 a3

searchTotalPath_impl :: PathFinder -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
searchTotalPath_impl this startPathFindingNodeList endPathFindingNodeList totalPaths = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "search" e)
            (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil)))
            ) $ do
            (PathFinder.search this (javaCast (jio (BasicArrayList.get startPathFindingNodeList 0)) :: PathFindingNode.PathFindingNode) (javaCast (jio (BasicArrayList.get endPathFindingNodeList 0)) :: PathFindingNode.PathFindingNode))


-- throws Exception
searchTotalPathN :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchTotalPathN object_ a1 a2 a3 a4 = jmethod object_ "searchTotalPathN" (\() -> (searchTotalPathN_impl (javaCast object_ :: PathFinder))) () a1 a2 a3 a4

searchTotalPathN_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchTotalPathN_super object_ a1 a2 a3 a4 = (searchTotalPathN_impl (javaCast object_ :: PathFinder)) a1 a2 a3 a4

searchTotalPathN_impl :: PathFinder -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchTotalPathN_impl this startPathFindingNodeList endPathFindingNodeList totalPaths multipassState = do
    javaCatchReturn $ do
        if ((jget (multipassState).step) == 0) then do
            jset (multipassState).step ((jget (multipassState).step) + 1)
        else if ((jget (multipassState).step) == 1) then do
            Control.Monad.void (PathFinder.searchStart this (javaCast (jio (BasicArrayList.get startPathFindingNodeList 0)) :: PathFindingNode.PathFindingNode) (javaCast (jio (BasicArrayList.get endPathFindingNodeList 0)) :: PathFindingNode.PathFindingNode) multipassState)
        else when ((jget (multipassState).step) == 2) $ do
            javaReturn =<< (PathFinder.searchN this (javaCast (jio (BasicArrayList.get startPathFindingNodeList 0)) :: PathFindingNode.PathFindingNode) (javaCast (jio (BasicArrayList.get endPathFindingNodeList 0)) :: PathFindingNode.PathFindingNode) multipassState)
        (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil)))


-- throws Exception
search :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> IO (BasicArrayList.BasicArrayList)
search object_ a1 a2 = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: PathFinder))) () a1 a2

search_super :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> IO (BasicArrayList.BasicArrayList)
search_super object_ a1 a2 = (search_impl (javaCast object_ :: PathFinder)) a1 a2

search_impl :: PathFinder -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> IO (BasicArrayList.BasicArrayList)
search_impl this startPathFindingNode endPathFindingNode = do
        list <- (PathFinder.findPath this (jget (startPathFindingNode).geographicMapCellPosition) (jget (endPathFindingNode).geographicMapCellPosition))
        pathList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add pathList list)
        pure (pathList)


-- throws Exception
searchStart :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> MultipassState.MultipassState -> IO (())
searchStart object_ a1 a2 a3 = jmethod object_ "searchStart" (\() -> (searchStart_impl (javaCast object_ :: PathFinder))) () a1 a2 a3

searchStart_super :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> MultipassState.MultipassState -> IO (())
searchStart_super object_ a1 a2 a3 = (searchStart_impl (javaCast object_ :: PathFinder)) a1 a2 a3

searchStart_impl :: PathFinder -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> MultipassState.MultipassState -> IO (())
searchStart_impl this startPathFindingNode endPathFindingNode multipassState = do
        Control.Monad.void (PathFinder.findPathStart this (jget (startPathFindingNode).geographicMapCellPosition) (jget (endPathFindingNode).geographicMapCellPosition) multipassState)
        pure ()


-- throws Exception
searchN :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchN object_ a1 a2 a3 = jmethod object_ "searchN" (\() -> (searchN_impl (javaCast object_ :: PathFinder))) () a1 a2 a3

searchN_super :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchN_super object_ a1 a2 a3 = (searchN_impl (javaCast object_ :: PathFinder)) a1 a2 a3

searchN_impl :: PathFinder -> PathFindingNode.PathFindingNode -> PathFindingNode.PathFindingNode -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchN_impl this startPathFindingNode endPathFindingNode multipassState = do
    javaCatchReturn $ do
        list <- (PathFinder.findPathEnd this (jget (startPathFindingNode).geographicMapCellPosition) (jget (endPathFindingNode).geographicMapCellPosition) multipassState)
        when (list == javaNull) $ do
            javaReturn =<< (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil)))
        pathList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add pathList list)
        jset (multipassState).iteration (0)
        jset (multipassState).step (0)
        pure (pathList)


-- throws Exception
findPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
findPath object_ a1 a2 = jmethod object_ "findPath" (\() -> (findPath_impl (javaCast object_ :: PathFinder))) () a1 a2

findPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
findPath_super object_ a1 a2 = (findPath_impl (javaCast object_ :: PathFinder)) a1 a2

findPath_impl :: PathFinder -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (BasicArrayList.BasicArrayList)
findPath_impl this start target = do
    javaCatchReturn $ do
        Control.Monad.void (PriorityQueue.clear ((jget (this).openPriorityQueue)))
        Control.Monad.void (HashSet.clear ((jget (this).closedSet)))
        discoveryCalculation <- newIORef (0)
        node <- newIORef (javaNull)
        targetColumn <- (GeographicMapCellPosition.getColumn target)
        targetRow <- (GeographicMapCellPosition.getRow target)
        let sizeX = (jlength (jget (this).costArray))
        let sizeY = (jlength (jindex ((jget (this).costArray)) (0)))
        forM_ [0 .. sizeX - 1] $ \column -> javaIteration (pure ()) $ do
            forM_ [0 .. sizeY - 1] $ \row -> javaIteration (pure ()) $ do
                jset discoveryCalculation (((Prelude.fromIntegral (jio (MathUtil.abs ((jget (this).mathUtil)) (column - targetColumn)))) + (Prelude.fromIntegral (jio (MathUtil.abs ((jget (this).mathUtil)) (row - targetRow))))))
                jset node ((jindex ((jindex ((jget (this).costArray)) (column))) (row)))
                jset ((jget ((jget node)).pathFindingNodeCostInfoP)).totalCostP (0)
                jset ((jget ((jget node)).pathFindingNodeCostInfoP)).costToEndP ((jget discoveryCalculation))
        let startNode = (jindex ((jindex ((jget (this).costArray)) ((jio (GeographicMapCellPosition.getColumn start))))) ((jio (GeographicMapCellPosition.getRow start))))
        Control.Monad.void (PriorityQueue.add ((jget (this).openPriorityQueue)) startNode)
        let geographicMapInterface = (javaCast (jget (this).geographicMapInterface) :: BasicGeographicMap.BasicGeographicMap)
        basicGeographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        allBinaryTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        let targetNode = (jindex ((jindex ((jget (this).costArray)) ((jio (GeographicMapCellPosition.getColumn target))))) ((jio (GeographicMapCellPosition.getRow target))))
        current <- newIORef (javaNull)
        fix $ \loop -> javaIteration (when (Prelude.not (jio (PriorityQueue.isEmpty ((jget (this).openPriorityQueue))))) loop) $ do
            assignedValue <- (PriorityQueue.poll ((jget (this).openPriorityQueue)))
            jset current (assignedValue)
            Control.Monad.void (HashSet.add ((jget (this).closedSet)) (jget current))
            when (jio (PathFindingNodeCost.equals ((jget current)) targetNode)) $ do
                javaReturn =<< (PathFinder.extractPath this start (jget current))
            neighbor <- newIORef (javaNull)
            neighborInfo <- newIORef (javaNull)
            calculatedCost <- newIORef (0)
            forM_ [((jio (GeographicMapCellPosition.getColumn ((jget ((jget current)).geographicMapCellPosition)))) - 1) .. ((jio (GeographicMapCellPosition.getColumn ((jget ((jget current)).geographicMapCellPosition)))) + 2) - 1] $ \column -> javaIteration (pure ()) $ do
                forM_ [((jio (GeographicMapCellPosition.getRow ((jget ((jget current)).geographicMapCellPosition)))) - 1) .. ((jio (GeographicMapCellPosition.getRow ((jget ((jget current)).geographicMapCellPosition)))) + 2) - 1] $ \row -> javaIteration (pure ()) $ do
                    when (((((column > 0) && (row > 0)) && (column < (jio (AllBinaryTiledLayer.getColumns allBinaryTiledLayer)))) && (row < (jio (AllBinaryTiledLayer.getRows allBinaryTiledLayer)))) && (jio (BasicGeographicMap.isOnMap geographicMapInterface (jio (BasicGeographicMapCellPositionFactory.getAt basicGeographicMapCellPositionFactory column row))))) $ do
                        jset neighbor ((jindex ((jindex ((jget (this).costArray)) (column))) (row)))
                        when (jio (HashSet.contains ((jget (this).closedSet)) (jget neighbor))) $ do
                            throwIO JavaContinue
                        jset neighborInfo ((jget ((jget neighbor)).pathFindingNodeCostInfoP))
                        jset calculatedCost ((((jget ((jget neighborInfo)).costToEndP) + (jget ((jget neighborInfo)).costFromStartP)) + (jget ((jget ((jget current)).pathFindingNodeCostInfoP)).totalCostP)))
                        when (((jget calculatedCost) < (jget ((jget neighborInfo)).totalCostP)) || (Prelude.not (jio (PriorityQueue.contains ((jget (this).openPriorityQueue)) (jget neighbor))))) $ do
                            jset ((jget neighborInfo)).totalCostP ((jget calculatedCost))
                            jset ((jget neighbor)).parent ((jget current))
                            when (Prelude.not (jio (PriorityQueue.contains ((jget (this).openPriorityQueue)) (jget neighbor)))) $ do
                                when (jio (BasicGeographicMap.isOfFourDirections geographicMapInterface (jget ((jget current)).geographicMapCellPosition) (jget ((jget neighbor)).geographicMapCellPosition))) $ do
                                    Control.Monad.void (PriorityQueue.add ((jget (this).openPriorityQueue)) (jget neighbor))
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
findPathStart :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> MultipassState.MultipassState -> IO (())
findPathStart object_ a1 a2 a3 = jmethod object_ "findPathStart" (\() -> (findPathStart_impl (javaCast object_ :: PathFinder))) () a1 a2 a3

findPathStart_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> MultipassState.MultipassState -> IO (())
findPathStart_super object_ a1 a2 a3 = (findPathStart_impl (javaCast object_ :: PathFinder)) a1 a2 a3

findPathStart_impl :: PathFinder -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> MultipassState.MultipassState -> IO (())
findPathStart_impl this start target multipassState = do
        Control.Monad.void (PriorityQueue.clear ((jget (this).openPriorityQueue)))
        Control.Monad.void (HashSet.clear ((jget (this).closedSet)))
        discoveryCalculation <- newIORef (0)
        node <- newIORef (javaNull)
        targetColumn <- (GeographicMapCellPosition.getColumn target)
        targetRow <- (GeographicMapCellPosition.getRow target)
        let sizeX = (jlength (jget (this).costArray))
        let sizeY = (jlength (jindex ((jget (this).costArray)) (0)))
        forM_ [0 .. sizeX - 1] $ \column -> javaIteration (pure ()) $ do
            forM_ [0 .. sizeY - 1] $ \row -> javaIteration (pure ()) $ do
                jset discoveryCalculation (((Prelude.fromIntegral (jio (MathUtil.abs ((jget (this).mathUtil)) (column - targetColumn)))) + (Prelude.fromIntegral (jio (MathUtil.abs ((jget (this).mathUtil)) (row - targetRow))))))
                jset node ((jindex ((jindex ((jget (this).costArray)) (column))) (row)))
                jset ((jget ((jget node)).pathFindingNodeCostInfoP)).totalCostP (0)
                jset ((jget ((jget node)).pathFindingNodeCostInfoP)).costToEndP ((jget discoveryCalculation))
        let startNode = (jindex ((jindex ((jget (this).costArray)) ((jio (GeographicMapCellPosition.getColumn start))))) ((jio (GeographicMapCellPosition.getRow start))))
        Control.Monad.void (PriorityQueue.add ((jget (this).openPriorityQueue)) startNode)
        jset (multipassState).step ((jget (multipassState).step) + 1)
        pure ()


-- throws Exception
findPathEnd :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
findPathEnd object_ a1 a2 a3 = jmethod object_ "findPathEnd" (\() -> (findPathEnd_impl (javaCast object_ :: PathFinder))) () a1 a2 a3

findPathEnd_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
findPathEnd_super object_ a1 a2 a3 = (findPathEnd_impl (javaCast object_ :: PathFinder)) a1 a2 a3

findPathEnd_impl :: PathFinder -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
findPathEnd_impl this start target multipassState = do
    javaCatchReturn $ do
        let geographicMapInterface = (javaCast (jget (this).geographicMapInterface) :: BasicGeographicMap.BasicGeographicMap)
        basicGeographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        allBinaryTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        let targetNode = (jindex ((jindex ((jget (this).costArray)) ((jio (GeographicMapCellPosition.getColumn target))))) ((jio (GeographicMapCellPosition.getRow target))))
        current <- newIORef (javaNull)
        total <- newIORef (0)
        fix $ \loop -> javaIteration (when (Prelude.not (jio (PriorityQueue.isEmpty ((jget (this).openPriorityQueue))))) loop) $ do
            assignedValue <- (PriorityQueue.poll ((jget (this).openPriorityQueue)))
            jset current (assignedValue)
            Control.Monad.void (HashSet.add ((jget (this).closedSet)) (jget current))
            when (jio (PathFindingNodeCost.equals ((jget current)) targetNode)) $ do
                javaReturn =<< (PathFinder.extractPath this start (jget current))
            neighbor <- newIORef (javaNull)
            neighborInfo <- newIORef (javaNull)
            calculatedCost <- newIORef (0)
            forM_ [((jio (GeographicMapCellPosition.getColumn ((jget ((jget current)).geographicMapCellPosition)))) - 1) .. ((jio (GeographicMapCellPosition.getColumn ((jget ((jget current)).geographicMapCellPosition)))) + 2) - 1] $ \column -> javaIteration (pure ()) $ do
                forM_ [((jio (GeographicMapCellPosition.getRow ((jget ((jget current)).geographicMapCellPosition)))) - 1) .. ((jio (GeographicMapCellPosition.getRow ((jget ((jget current)).geographicMapCellPosition)))) + 2) - 1] $ \row -> javaIteration (pure ()) $ do
                    when (((((column > 0) && (row > 0)) && (column < (jio (AllBinaryTiledLayer.getColumns allBinaryTiledLayer)))) && (row < (jio (AllBinaryTiledLayer.getRows allBinaryTiledLayer)))) && (jio (BasicGeographicMap.isOnMap geographicMapInterface (jio (BasicGeographicMapCellPositionFactory.getAt basicGeographicMapCellPositionFactory column row))))) $ do
                        jset neighbor ((jindex ((jindex ((jget (this).costArray)) (column))) (row)))
                        when (jio (HashSet.contains ((jget (this).closedSet)) (jget neighbor))) $ do
                            throwIO JavaContinue
                        jset neighborInfo ((jget ((jget neighbor)).pathFindingNodeCostInfoP))
                        jset calculatedCost ((((jget ((jget neighborInfo)).costToEndP) + (jget ((jget neighborInfo)).costFromStartP)) + (jget ((jget ((jget current)).pathFindingNodeCostInfoP)).totalCostP)))
                        when (((jget calculatedCost) < (jget ((jget neighborInfo)).totalCostP)) || (Prelude.not (jio (PriorityQueue.contains ((jget (this).openPriorityQueue)) (jget neighbor))))) $ do
                            jset ((jget neighborInfo)).totalCostP ((jget calculatedCost))
                            jset ((jget neighbor)).parent ((jget current))
                            when (Prelude.not (jio (PriorityQueue.contains ((jget (this).openPriorityQueue)) (jget neighbor)))) $ do
                                when (jio (BasicGeographicMap.isOfFourDirections geographicMapInterface (jget ((jget current)).geographicMapCellPosition) (jget ((jget neighbor)).geographicMapCellPosition))) $ do
                                    Control.Monad.void (PriorityQueue.add ((jget (this).openPriorityQueue)) (jget neighbor))
            jset total ((jget total) + 1)
            when ((jget total) > 10) $ do
                javaReturn =<< (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil)))
        javaThrow ((JavaException "RuntimeException" ""))


extractPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> PathFindingNodeCost.PathFindingNodeCost -> IO (BasicArrayList.BasicArrayList)
extractPath object_ a1 a2 = jmethod object_ "extractPath" (\() -> (extractPath_impl (javaCast object_ :: PathFinder))) () a1 a2

extractPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> PathFindingNodeCost.PathFindingNodeCost -> IO (BasicArrayList.BasicArrayList)
extractPath_super object_ a1 a2 = (extractPath_impl (javaCast object_ :: PathFinder)) a1 a2

extractPath_impl :: PathFinder -> GeographicMapCellPosition.GeographicMapCellPosition -> PathFindingNodeCost.PathFindingNodeCost -> IO (BasicArrayList.BasicArrayList)
extractPath_impl this start current = do
        current <- newIORef current
        path <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        fix $ \loop -> when ((jget ((jget current)).parent) /= (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ javaIteration (loop) $ do
            Control.Monad.void (BasicArrayList.add path (jget ((jget current)).geographicMapCellPosition))
            jset current ((javaCast (jget ((jget current)).parent) :: PathFindingNodeCost.PathFindingNodeCost))
        Control.Monad.void (BasicArrayList.add path start)
        Control.Monad.void (BasicArrayListUtil.reverse ((jget (this).basicArrayListUtil)) path)
        pure (path)


