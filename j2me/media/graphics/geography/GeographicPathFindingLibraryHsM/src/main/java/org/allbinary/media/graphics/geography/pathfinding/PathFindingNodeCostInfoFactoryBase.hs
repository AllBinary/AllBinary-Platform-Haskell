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
-- package org.allbinary.media.graphics.geography.pathfinding
module PathFindingNodeCostInfoFactoryBase where

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
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified PathFindingNodeCostInfoFactoryBaseInterface

-- implements PathFindingNodeCostInfoFactoryBaseInterface
data PathFindingNodeCostInfoFactoryBase = PathFindingNodeCostInfoFactoryBase
    { header_ :: JavaHeader
    }

instance JavaNull PathFindingNodeCostInfoFactoryBase where
    javaNull = javaNullRecord "PathFindingNodeCostInfoFactoryBase"

instance JavaEquals PathFindingNodeCostInfoFactoryBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingNodeCostInfoFactoryBase where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingNodeCostInfoFactoryBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE #-}
nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathFindingNodeCostInfoFactoryBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = PathFindingNodeCostInfoFactoryBase header_
    jregisterLevel header_ this
    PathFindingNodeCostInfoFactoryBaseInterface.registerInterface_ header_
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "getTotalCost" (\() -> getTotalCost_impl this)
    pure this

initFields_ :: PathFindingNodeCostInfoFactoryBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PathFindingNodeCostInfoFactoryBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathFindingNodeCostInfoFactoryBase -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
create :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (())
create object_ a1 a2 a3 a4 a5 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryBase))) () a1 a2 a3 a4 a5

create_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (())
create_super object_ a1 a2 a3 a4 a5 = (create_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryBase)) a1 a2 a3 a4 a5

create_impl :: PathFindingNodeCostInfoFactoryBase -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (())
create_impl this geographicMapInterface comingFromGeographicMapCellPosition geographicMapCellPosition costFromStart costToEnd = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
getTotalCost :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost object_ a1 a2 a3 = jmethod object_ "getTotalCost" (\() -> (getTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryBase))) () a1 a2 a3

getTotalCost_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost_super object_ a1 a2 a3 = (getTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryBase)) a1 a2 a3

getTotalCost_impl :: PathFindingNodeCostInfoFactoryBase -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost_impl this geographicMapInterface comingFromGeographicMapCellPosition geographicMapCellPosition = do
        javaThrow ((JavaException "RuntimeException" ""))


