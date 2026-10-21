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
module LayerPartialCellPositionsUtil where

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
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory

data LayerPartialCellPositionsUtil = LayerPartialCellPositionsUtil
    { header_ :: JavaHeader
    }

instance JavaNull LayerPartialCellPositionsUtil where
    javaNull = javaNullRecord "LayerPartialCellPositionsUtil"

instance JavaEquals LayerPartialCellPositionsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerPartialCellPositionsUtil where
    (==) = jrecordEquals

instance JavaObjectClass LayerPartialCellPositionsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerPartialCellPositionsUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LayerPartialCellPositionsUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getAll" (\() -> getAll_impl this)
    jregisterMethod header_ "getAllDXY" (\() -> getAllDXY_impl this)
    pure this

initFields_ :: LayerPartialCellPositionsUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LayerPartialCellPositionsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerPartialCellPositionsUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getAll :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll object_ a1 a2 a3 = jmethod object_ "getAll" (\() -> (getAll_impl (javaCast object_ :: LayerPartialCellPositionsUtil))) () a1 a2 a3

getAll_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll_super object_ a1 a2 a3 = (getAll_impl (javaCast object_ :: LayerPartialCellPositionsUtil)) a1 a2 a3

getAll_impl :: LayerPartialCellPositionsUtil -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll_impl this geographicMapInterface layerInterface reusableList = do
        Control.Monad.void (BasicArrayList.clear reusableList)
        topLeftGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface (jio (AllBinaryLayer.getXP layerInterface)) (jio (AllBinaryLayer.getYP layerInterface)))
        topRightGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface ((jio (AllBinaryLayer.getXP layerInterface)) + (jio (AllBinaryLayer.getWidth layerInterface))) (jio (AllBinaryLayer.getYP layerInterface)))
        bottomLeftGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface (jio (AllBinaryLayer.getXP layerInterface)) ((jio (AllBinaryLayer.getYP layerInterface)) + (jio (AllBinaryLayer.getHeight layerInterface))))
        bottomRightGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface ((jio (AllBinaryLayer.getXP layerInterface)) + (jio (AllBinaryLayer.getWidth layerInterface))) ((jio (AllBinaryLayer.getYP layerInterface)) + (jio (AllBinaryLayer.getHeight layerInterface))))
        when (topLeftGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            Control.Monad.void (BasicArrayList.add reusableList topLeftGeographicMapCellPosition)
        when ((topRightGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) && (topLeftGeographicMapCellPosition /= topRightGeographicMapCellPosition)) $ do
            Control.Monad.void (BasicArrayList.add reusableList topRightGeographicMapCellPosition)
        when ((bottomLeftGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) && (Prelude.not (jio (BasicArrayList.contains reusableList bottomLeftGeographicMapCellPosition)))) $ do
            Control.Monad.void (BasicArrayList.add reusableList bottomLeftGeographicMapCellPosition)
        when ((bottomRightGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) && (Prelude.not (jio (BasicArrayList.contains reusableList bottomRightGeographicMapCellPosition)))) $ do
            Control.Monad.void (BasicArrayList.add reusableList bottomRightGeographicMapCellPosition)
        pure (reusableList)


-- throws Exception
getAllDXY :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllDXY object_ a1 a2 a3 a4 a5 = jmethod object_ "getAllDXY" (\() -> (getAllDXY_impl (javaCast object_ :: LayerPartialCellPositionsUtil))) () a1 a2 a3 a4 a5

getAllDXY_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllDXY_super object_ a1 a2 a3 a4 a5 = (getAllDXY_impl (javaCast object_ :: LayerPartialCellPositionsUtil)) a1 a2 a3 a4 a5

getAllDXY_impl :: LayerPartialCellPositionsUtil -> BasicGeographicMap.BasicGeographicMap -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllDXY_impl this geographicMapInterface layerInterface dx dy reusableList = do
        Control.Monad.void (BasicArrayList.clear reusableList)
        topLeftGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface ((jio (AllBinaryLayer.getXP layerInterface)) + dx) ((jio (AllBinaryLayer.getYP layerInterface)) + dy))
        topRightGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface (((jio (AllBinaryLayer.getXP layerInterface)) + (jio (AllBinaryLayer.getWidth layerInterface))) + dx) ((jio (AllBinaryLayer.getYP layerInterface)) + dy))
        bottomLeftGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface ((jio (AllBinaryLayer.getXP layerInterface)) + dx) (((jio (AllBinaryLayer.getYP layerInterface)) + (jio (AllBinaryLayer.getHeight layerInterface))) + dy))
        bottomRightGeographicMapCellPosition <- (BasicGeographicMap.getCellPositionAtXYNoThrow geographicMapInterface (((jio (AllBinaryLayer.getXP layerInterface)) + (jio (AllBinaryLayer.getWidth layerInterface))) + dx) (((jio (AllBinaryLayer.getYP layerInterface)) + (jio (AllBinaryLayer.getHeight layerInterface))) + dy))
        when (topLeftGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            Control.Monad.void (BasicArrayList.add reusableList topLeftGeographicMapCellPosition)
        when ((topRightGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) && (topLeftGeographicMapCellPosition /= topRightGeographicMapCellPosition)) $ do
            Control.Monad.void (BasicArrayList.add reusableList topRightGeographicMapCellPosition)
        when ((bottomLeftGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) && (Prelude.not (jio (BasicArrayList.contains reusableList bottomLeftGeographicMapCellPosition)))) $ do
            Control.Monad.void (BasicArrayList.add reusableList bottomLeftGeographicMapCellPosition)
        when ((bottomRightGeographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) && (Prelude.not (jio (BasicArrayList.contains reusableList bottomRightGeographicMapCellPosition)))) $ do
            Control.Monad.void (BasicArrayList.add reusableList bottomRightGeographicMapCellPosition)
        pure (reusableList)


getInstance :: IO (LayerPartialCellPositionsUtil)
getInstance = do
        pure (LayerPartialCellPositionsUtil.instance_)


