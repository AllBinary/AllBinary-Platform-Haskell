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
-- package org.allbinary.game.layer.geographic.map
module LayerCoveringCellPositionsUtil where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified CellPositionsUtil -- org.allbinary.media.graphics.geography.map.CellPositionsUtil
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition

data LayerCoveringCellPositionsUtil = LayerCoveringCellPositionsUtil
    { header_ :: JavaHeader
    , cellPositionsUtil :: IORef (CellPositionsUtil.CellPositionsUtil)
    }

instance JavaNull LayerCoveringCellPositionsUtil where
    javaNull = javaNullRecord "LayerCoveringCellPositionsUtil"

instance JavaEquals LayerCoveringCellPositionsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerCoveringCellPositionsUtil where
    (==) = jrecordEquals

instance JavaObjectClass LayerCoveringCellPositionsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerCoveringCellPositionsUtil
newRecord_ = do
    header_ <- newJavaHeader
    cellPositionsUtil <- newIORef javaNull
    let this = LayerCoveringCellPositionsUtil header_ cellPositionsUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getAllXY" (\() -> getAllXY_impl this)
    jregisterMethod header_ "getAll" (\() -> getAll_impl this)
    pure this

initFields_ :: LayerCoveringCellPositionsUtil -> IO ()
initFields_ this = do
    jset this.cellPositionsUtil =<< (CellPositionsUtil.getInstance)
    pure ()

new_ :: IO LayerCoveringCellPositionsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerCoveringCellPositionsUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LayerCoveringCellPositionsUtil)
getInstance = do
        pure (LayerCoveringCellPositionsUtil.instance_)


-- throws Exception
getAllXY :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllXY object_ a1 a2 a3 a4 a5 = jmethod object_ "getAllXY" (\() -> (getAllXY_impl (javaCast object_ :: LayerCoveringCellPositionsUtil))) () a1 a2 a3 a4 a5

getAllXY_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllXY_super object_ a1 a2 a3 a4 a5 = (getAllXY_impl (javaCast object_ :: LayerCoveringCellPositionsUtil)) a1 a2 a3 a4 a5

getAllXY_impl :: LayerCoveringCellPositionsUtil -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllXY_impl this geographicMapInterface layerInterface x y reusableList = do
        topLeftGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXY geographicMapInterface x y)
        (LayerCoveringCellPositionsUtil.getAll this geographicMapInterface topLeftGeographicMapCellPosition layerInterface reusableList)


-- throws Exception
getAll :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> AllBinaryLayer.AllBinaryLayer -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll object_ a1 a2 a3 a4 = jmethod object_ "getAll" (\() -> (getAll_impl (javaCast object_ :: LayerCoveringCellPositionsUtil))) () a1 a2 a3 a4

getAll_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> AllBinaryLayer.AllBinaryLayer -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll_super object_ a1 a2 a3 a4 = (getAll_impl (javaCast object_ :: LayerCoveringCellPositionsUtil)) a1 a2 a3 a4

getAll_impl :: LayerCoveringCellPositionsUtil -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> AllBinaryLayer.AllBinaryLayer -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll_impl this geographicMapInterface topLeftGeographicMapCellPosition layerInterface reusableList = do
        Control.Monad.void (BasicArrayList.clear reusableList)
        columns <- newIORef (((jio (AllBinaryLayer.getWidth layerInterface)) `quot` (jio (AllBinaryTiledLayer.getCellWidth ((jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)))))))
        rows <- newIORef (((jio (AllBinaryLayer.getHeight layerInterface)) `quot` (jio (AllBinaryTiledLayer.getCellHeight ((jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)))))))
        when ((jget columns) == 0) $ do
            jset columns (1)
        when ((jget rows) == 0) $ do
            jset rows (1)
        (CellPositionsUtil.getAll ((jget (this).cellPositionsUtil)) geographicMapInterface topLeftGeographicMapCellPosition (jget columns) (jget rows) reusableList)


