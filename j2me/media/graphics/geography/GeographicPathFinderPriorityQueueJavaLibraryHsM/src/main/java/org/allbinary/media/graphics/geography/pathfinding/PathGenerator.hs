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
module PathGenerator where

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
import qualified Any -- same package or java.lang
import qualified PathFindingInfo -- same package or java.lang
import qualified GeographicPathFinderBase -- same package or java.lang
import qualified MultipassState -- same package or java.lang
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified PathGeneratorInterface

-- implements PathGeneratorInterface
data PathGenerator = PathGenerator
    { header_ :: JavaHeader
    }

instance JavaNull PathGenerator where
    javaNull = javaNullRecord "PathGenerator"

instance JavaEquals PathGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathGenerator where
    (==) = jrecordEquals

instance JavaObjectClass PathGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathGenerator
newRecord_ = do
    header_ <- newJavaHeader
    let this = PathGenerator header_
    jregisterLevel header_ this
    PathGeneratorInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstanceNoCache" (\() -> getInstanceNoCache_impl this)
    jregisterMethod header_ "createList" (\() -> createList_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "createN" (\() -> createN_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: PathGenerator -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (PathGenerator)
getInstance = do
        pure (PathGenerator.sINGLETON)

new_ :: IO PathGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathGenerator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
init :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PathGenerator))) () (jtoObject a1) a2

init_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: PathGenerator)) (jtoObject a1) a2

init_impl :: PathGenerator -> JavaObject -> Int -> IO (())
init_impl this geographicMapInterfaceObject_ totalPaths = do
        let geographicMapInterface = jtoObject geographicMapInterfaceObject_
        pure ()


-- throws Exception
getInstanceNoCache :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
getInstanceNoCache object_ a1 a2 a3 = jmethod object_ "getInstanceNoCache" (\() -> (getInstanceNoCache_impl (javaCast object_ :: PathGenerator))) () a1 a2 a3

getInstanceNoCache_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
getInstanceNoCache_super object_ a1 a2 a3 = (getInstanceNoCache_impl (javaCast object_ :: PathGenerator)) a1 a2 a3

getInstanceNoCache_impl :: PathGenerator -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
getInstanceNoCache_impl this geographicMapInterface pathFindingInfo totalPaths = do
        geographicMapCellPositionBasicArrayList <- (PathGenerator.create this geographicMapInterface pathFindingInfo totalPaths)
        pure (geographicMapCellPositionBasicArrayList)


-- throws Exception
createList :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList object_ a1 a2 a3 a4 = jmethod object_ "createList" (\() -> (createList_impl (javaCast object_ :: PathGenerator))) () a1 a2 a3 a4

createList_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList_super object_ a1 a2 a3 a4 = (createList_impl (javaCast object_ :: PathGenerator)) a1 a2 a3 a4

createList_impl :: PathGenerator -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList_impl this geographicMapInterface geographicMapCellHistory pathFindingInfo totalPaths = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
create :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
create object_ a1 a2 a3 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: PathGenerator))) () a1 a2 a3

create_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
create_super object_ a1 a2 a3 = (create_impl (javaCast object_ :: PathGenerator)) a1 a2 a3

create_impl :: PathGenerator -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
create_impl this geographicMapInterface pathFindingInfo totalPaths = do
        startPathFindingNodeList <- (PathFindingInfo.getStartPathFindingNodeList pathFindingInfo)
        endPathFindingNodeList <- (PathFindingInfo.getEndPathFindingNodeList pathFindingInfo)
        geographicPathFinderInterface <- (PathFindingInfo.getPathFinder pathFindingInfo)
        geographicMapCellPositionBasicArrayList <- (GeographicPathFinderBase.searchTotalPath geographicPathFinderInterface startPathFindingNodeList endPathFindingNodeList totalPaths)
        pure (geographicMapCellPositionBasicArrayList)


-- throws Exception
createN :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
createN object_ a1 a2 a3 a4 = jmethod object_ "createN" (\() -> (createN_impl (javaCast object_ :: PathGenerator))) () a1 a2 a3 a4

createN_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
createN_super object_ a1 a2 a3 a4 = (createN_impl (javaCast object_ :: PathGenerator)) a1 a2 a3 a4

createN_impl :: PathGenerator -> BasicGeographicMap.BasicGeographicMap -> PathFindingInfo.PathFindingInfo -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
createN_impl this geographicMapInterface pathFindingInfo totalPaths multipassState = do
        startPathFindingNodeList <- (PathFindingInfo.getStartPathFindingNodeList pathFindingInfo)
        endPathFindingNodeList <- (PathFindingInfo.getEndPathFindingNodeList pathFindingInfo)
        geographicPathFinderInterface <- (PathFindingInfo.getPathFinder pathFindingInfo)
        geographicMapCellPositionBasicArrayList <- (GeographicPathFinderBase.searchTotalPathN geographicPathFinderInterface startPathFindingNodeList endPathFindingNodeList totalPaths multipassState)
        pure (geographicMapCellPositionBasicArrayList)


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> GeographicMapCellHistory.GeographicMapCellHistory -> IO (Bool)
isValid object_ a1 a2 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: PathGenerator))) () a1 a2

isValid_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> GeographicMapCellHistory.GeographicMapCellHistory -> IO (Bool)
isValid_super object_ a1 a2 = (isValid_impl (javaCast object_ :: PathGenerator)) a1 a2

isValid_impl :: PathGenerator -> BasicArrayList.BasicArrayList -> GeographicMapCellHistory.GeographicMapCellHistory -> IO (Bool)
isValid_impl this pathList geographicMapCellHistory = do
        javaThrow ((JavaException "RuntimeException" ""))


