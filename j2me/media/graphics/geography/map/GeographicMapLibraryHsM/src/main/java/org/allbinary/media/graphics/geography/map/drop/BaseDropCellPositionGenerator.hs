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
module BaseDropCellPositionGenerator where

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
import qualified Class -- same package or java.lang
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified DropCellPositionGeneratorInterface

-- implements DropCellPositionGeneratorInterface
data BaseDropCellPositionGenerator = BaseDropCellPositionGenerator
    { header_ :: JavaHeader
    }

instance JavaNull BaseDropCellPositionGenerator where
    javaNull = javaNullRecord "BaseDropCellPositionGenerator"

instance JavaEquals BaseDropCellPositionGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseDropCellPositionGenerator where
    (==) = jrecordEquals

instance JavaObjectClass BaseDropCellPositionGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseDropCellPositionGenerator
newRecord_ = do
    header_ <- newJavaHeader
    let this = BaseDropCellPositionGenerator header_
    jregisterLevel header_ this
    DropCellPositionGeneratorInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "isDropAllowedAt" (\() -> isDropAllowedAt_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    pure this

initFields_ :: BaseDropCellPositionGenerator -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BaseDropCellPositionGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseDropCellPositionGenerator -> IO ()
init_ this = do
    initFields_ this


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BaseDropCellPositionGenerator))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BaseDropCellPositionGenerator))

getName_impl :: BaseDropCellPositionGenerator -> IO (String)
getName_impl this = do
        (Class.getName ((jio (jobjectGetClass this))))


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: BaseDropCellPositionGenerator))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: BaseDropCellPositionGenerator)) a1 a2

update_impl :: BaseDropCellPositionGenerator -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this allBinaryGameLayerManager geographicMapInterface = do
        pure ()


-- throws Exception
isDropAllowedAt :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt object_ a1 = jmethod object_ "isDropAllowedAt" (\() -> (isDropAllowedAt_impl (javaCast object_ :: BaseDropCellPositionGenerator))) () a1

isDropAllowedAt_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt_super object_ a1 = (isDropAllowedAt_impl (javaCast object_ :: BaseDropCellPositionGenerator)) a1

isDropAllowedAt_impl :: BaseDropCellPositionGenerator -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isDropAllowedAt_impl this geographicMapCellPosition = do
        pure (True)


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: BaseDropCellPositionGenerator))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: BaseDropCellPositionGenerator)) a1

processTick_impl :: BaseDropCellPositionGenerator -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        pure ()


