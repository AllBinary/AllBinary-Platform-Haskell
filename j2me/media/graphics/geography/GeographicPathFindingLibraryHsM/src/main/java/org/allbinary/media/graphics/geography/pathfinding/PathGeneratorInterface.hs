{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module PathGeneratorInterface where

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
import qualified PathFindingInfo -- same package or java.lang
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data PathGeneratorInterface = PathGeneratorInterface
    { header_ :: JavaHeader
    }

instance JavaNull PathGeneratorInterface where
    javaNull = javaNullRecord "PathGeneratorInterface"

instance JavaEquals PathGeneratorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathGeneratorInterface where
    (==) = jrecordEquals

instance JavaObjectClass PathGeneratorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PathGeneratorInterface
fromHeader_ header = PathGeneratorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PathGeneratorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
createList :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList object_ a1 a2 a3 a4 = jmethod object_ "createList" (\() -> (createList_impl (javaCast object_ :: PathGeneratorInterface))) () a1 a2 a3 a4

createList_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList_super object_ a1 a2 a3 a4 = (createList_impl (javaCast object_ :: PathGeneratorInterface)) a1 a2 a3 a4

createList_impl :: PathGeneratorInterface -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList_impl this geographicMapInterface geographicMapCellHistory pathFindingInfo totalPaths = javaAbstractMethod "createList"


