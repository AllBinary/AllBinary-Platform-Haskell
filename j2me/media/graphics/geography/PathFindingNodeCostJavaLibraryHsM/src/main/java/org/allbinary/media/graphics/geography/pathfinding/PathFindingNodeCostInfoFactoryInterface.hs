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
-- package org.allbinary.media.graphics.geography.pathfinding
module PathFindingNodeCostInfoFactoryInterface (module PathFindingNodeCostInfoFactoryInterface, module PathFindingNodeCostInfoFactoryBaseInterface) where

import PathFindingNodeCostInfoFactoryBaseInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstance, getInstance_super, getInstance_impl, getTotalCost, getTotalCost_super, getTotalCost_impl, toString)
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
import qualified PathFindingNodeCostInfo -- same package or java.lang
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified PathFindingNodeCostInfoFactoryBaseInterface

-- Java interface: the classes that implement it have these functions
data PathFindingNodeCostInfoFactoryInterface = PathFindingNodeCostInfoFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull PathFindingNodeCostInfoFactoryInterface where
    javaNull = javaNullRecord "PathFindingNodeCostInfoFactoryInterface"

instance JavaEquals PathFindingNodeCostInfoFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingNodeCostInfoFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingNodeCostInfoFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PathFindingNodeCostInfoFactoryInterface
fromHeader_ header = PathFindingNodeCostInfoFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PathFindingNodeCostInfoFactoryInterface header)
    PathFindingNodeCostInfoFactoryBaseInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getInstance object_ a1 a2 a3 a4 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryInterface))) () a1 a2 a3 a4

getInstance_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getInstance_super object_ a1 a2 a3 a4 = (getInstance_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryInterface)) a1 a2 a3 a4

getInstance_impl :: PathFindingNodeCostInfoFactoryInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> Int64 -> Int64 -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getInstance_impl this comingFromGeographicMapCellPosition geographicMapCellPosition costFromStart costToEnd = javaAbstractMethod "getInstance"


-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryInterface))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryInterface)) a1 a2

getInstance_impl :: PathFindingNodeCostInfoFactoryInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getInstance_impl this comingFromGeographicMapCellPosition geographicMapCellPosition = javaAbstractMethod "getInstance"


getTotalCost :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost object_ a1 a2 = jmethod object_ "getTotalCost" (\() -> (getTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryInterface))) () a1 a2

getTotalCost_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost_super object_ a1 a2 = (getTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfoFactoryInterface)) a1 a2

getTotalCost_impl :: PathFindingNodeCostInfoFactoryInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int64)
getTotalCost_impl this comingFromGeographicMapCellPosition geographicMapCellPosition = javaAbstractMethod "getTotalCost"


