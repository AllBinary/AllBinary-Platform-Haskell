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
module GeographicMapCellPositionAreaInterface where

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

-- Java interface: the classes that implement it have these functions
data GeographicMapCellPositionAreaInterface = GeographicMapCellPositionAreaInterface
    { header_ :: JavaHeader
    }

instance JavaNull GeographicMapCellPositionAreaInterface where
    javaNull = javaNullRecord "GeographicMapCellPositionAreaInterface"

instance JavaEquals GeographicMapCellPositionAreaInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionAreaInterface where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionAreaInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GeographicMapCellPositionAreaInterface
fromHeader_ header = GeographicMapCellPositionAreaInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GeographicMapCellPositionAreaInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getNextSurroundingGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition object_ = jmethod object_ "getNextSurroundingGeographicMapCellPosition" (\() -> (getNextSurroundingGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionAreaInterface))) ()

getNextSurroundingGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition_super object_ = (getNextSurroundingGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionAreaInterface))

getNextSurroundingGeographicMapCellPosition_impl :: GeographicMapCellPositionAreaInterface -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition_impl this = javaAbstractMethod "getNextSurroundingGeographicMapCellPosition"


getOccupyingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList object_ = jmethod object_ "getOccupyingGeographicMapCellPositionList" (\() -> (getOccupyingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionAreaInterface))) ()

getOccupyingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList_super object_ = (getOccupyingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionAreaInterface))

getOccupyingGeographicMapCellPositionList_impl :: GeographicMapCellPositionAreaInterface -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList_impl this = javaAbstractMethod "getOccupyingGeographicMapCellPositionList"


getSurroundingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList object_ = jmethod object_ "getSurroundingGeographicMapCellPositionList" (\() -> (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionAreaInterface))) ()

getSurroundingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_super object_ = (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionAreaInterface))

getSurroundingGeographicMapCellPositionList_impl :: GeographicMapCellPositionAreaInterface -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_impl this = javaAbstractMethod "getSurroundingGeographicMapCellPositionList"


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GeographicMapCellPositionAreaInterface))) () a1

update_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: GeographicMapCellPositionAreaInterface)) a1

update_impl :: GeographicMapCellPositionAreaInterface -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this geographicMapInterface = javaAbstractMethod "update"


