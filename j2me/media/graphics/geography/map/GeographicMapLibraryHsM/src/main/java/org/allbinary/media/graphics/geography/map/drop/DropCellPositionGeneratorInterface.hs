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
-- package org.allbinary.media.graphics.geography.map.drop
module DropCellPositionGeneratorInterface where

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
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition

-- Java interface: the classes that implement it have these functions
data DropCellPositionGeneratorInterface = DropCellPositionGeneratorInterface
    { header_ :: JavaHeader
    }

instance JavaNull DropCellPositionGeneratorInterface where
    javaNull = javaNullRecord "DropCellPositionGeneratorInterface"

instance JavaEquals DropCellPositionGeneratorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DropCellPositionGeneratorInterface where
    (==) = jrecordEquals

instance JavaObjectClass DropCellPositionGeneratorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DropCellPositionGeneratorInterface
fromHeader_ header = DropCellPositionGeneratorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DropCellPositionGeneratorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: DropCellPositionGeneratorInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: DropCellPositionGeneratorInterface))

getName_impl :: DropCellPositionGeneratorInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: DropCellPositionGeneratorInterface))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: DropCellPositionGeneratorInterface)) a1 a2

update_impl :: DropCellPositionGeneratorInterface -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this allBinaryGameLayerManager geographicMapInterface = javaAbstractMethod "update"


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: DropCellPositionGeneratorInterface))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: DropCellPositionGeneratorInterface)) a1

processTick_impl :: DropCellPositionGeneratorInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = javaAbstractMethod "processTick"


-- throws Exception
isDropAllowedAt :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt object_ a1 = jmethod object_ "isDropAllowedAt" (\() -> (isDropAllowedAt_impl (javaCast object_ :: DropCellPositionGeneratorInterface))) () a1

isDropAllowedAt_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt_super object_ a1 = (isDropAllowedAt_impl (javaCast object_ :: DropCellPositionGeneratorInterface)) a1

isDropAllowedAt_impl :: DropCellPositionGeneratorInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt_impl this geographicMapCellPosition = javaAbstractMethod "isDropAllowedAt"


