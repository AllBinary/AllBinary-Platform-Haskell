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
-- package org.allbinary.game.layer
module GeographicMapCellPositionAreaBase where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified GeographicMapCellPositionAreaInterface

-- implements GeographicMapCellPositionAreaInterface
data GeographicMapCellPositionAreaBase = GeographicMapCellPositionAreaBase
    { header_ :: JavaHeader
    }

instance JavaNull GeographicMapCellPositionAreaBase where
    javaNull = javaNullRecord "GeographicMapCellPositionAreaBase"

instance JavaEquals GeographicMapCellPositionAreaBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionAreaBase where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionAreaBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE #-}
nULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapCellPositionAreaBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = GeographicMapCellPositionAreaBase header_
    jregisterLevel header_ this
    GeographicMapCellPositionAreaInterface.registerInterface_ header_
    jregisterMethod header_ "getNextSurroundingGeographicMapCellPosition" (\() -> getNextSurroundingGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getOccupyingGeographicMapCellPositionList" (\() -> getOccupyingGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "getSurroundingGeographicMapCellPositionList" (\() -> getSurroundingGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: GeographicMapCellPositionAreaBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GeographicMapCellPositionAreaBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellPositionAreaBase -> IO ()
init_ this = do
    initFields_ this


getNextSurroundingGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition object_ = jmethod object_ "getNextSurroundingGeographicMapCellPosition" (\() -> (getNextSurroundingGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionAreaBase))) ()

getNextSurroundingGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition_super object_ = (getNextSurroundingGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionAreaBase))

getNextSurroundingGeographicMapCellPosition_impl :: GeographicMapCellPositionAreaBase -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getOccupyingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList object_ = jmethod object_ "getOccupyingGeographicMapCellPositionList" (\() -> (getOccupyingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionAreaBase))) ()

getOccupyingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList_super object_ = (getOccupyingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionAreaBase))

getOccupyingGeographicMapCellPositionList_impl :: GeographicMapCellPositionAreaBase -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getSurroundingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList object_ = jmethod object_ "getSurroundingGeographicMapCellPositionList" (\() -> (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionAreaBase))) ()

getSurroundingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_super object_ = (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionAreaBase))

getSurroundingGeographicMapCellPositionList_impl :: GeographicMapCellPositionAreaBase -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GeographicMapCellPositionAreaBase))) () a1

update_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: GeographicMapCellPositionAreaBase)) a1

update_impl :: GeographicMapCellPositionAreaBase -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this geographicMapInterface = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


