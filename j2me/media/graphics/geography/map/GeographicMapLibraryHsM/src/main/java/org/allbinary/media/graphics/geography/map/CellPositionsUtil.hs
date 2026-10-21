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
-- package org.allbinary.media.graphics.geography.map
module CellPositionsUtil where

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
import qualified BasicGeographicMapCellPositionFactory -- same package or java.lang
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

data CellPositionsUtil = CellPositionsUtil
    { header_ :: JavaHeader
    , reusableSingleThreadedSurroundingList :: IORef (BasicArrayList.BasicArrayList)
    , surroundArray :: IORef (JavaArray (JavaArray (Int)))
    }

instance JavaNull CellPositionsUtil where
    javaNull = javaNullRecord "CellPositionsUtil"

instance JavaEquals CellPositionsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CellPositionsUtil where
    (==) = jrecordEquals

instance JavaObjectClass CellPositionsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CellPositionsUtil
newRecord_ = do
    header_ <- newJavaHeader
    reusableSingleThreadedSurroundingList <- newIORef javaNull
    surroundArray <- newIORef javaNull
    let this = CellPositionsUtil header_ reusableSingleThreadedSurroundingList surroundArray
    jregisterLevel header_ this
    jregisterMethod header_ "getAll" (\() -> getAll_impl this)
    jregisterMethod header_ "getAllSurrounding" (\() -> getAllSurrounding_impl this)
    jregisterMethod header_ "getAllSurroundingAt" (\() -> getAllSurroundingAt_impl this)
    pure this

initFields_ :: CellPositionsUtil -> IO ()
initFields_ this = do
    jset this.reusableSingleThreadedSurroundingList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 8))
    jset this.surroundArray ((jarrayFromList [(jarrayFromList [(Prelude.negate 1), (Prelude.negate 1)]), (jarrayFromList [0, (Prelude.negate 1)]), (jarrayFromList [1, (Prelude.negate 1)]), (jarrayFromList [(Prelude.negate 1), 1]), (jarrayFromList [0, 1]), (jarrayFromList [1, 1]), (jarrayFromList [1, 0]), (jarrayFromList [(Prelude.negate 1), 0])]))
    pure ()

new_ :: IO CellPositionsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CellPositionsUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CellPositionsUtil)
getInstance = do
        pure (CellPositionsUtil.instance_)


-- throws Exception
getAll :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll object_ a1 a2 a3 a4 a5 = jmethod object_ "getAll" (\() -> (getAll_impl (javaCast object_ :: CellPositionsUtil))) () a1 a2 a3 a4 a5

getAll_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll_super object_ a1 a2 a3 a4 a5 = (getAll_impl (javaCast object_ :: CellPositionsUtil)) a1 a2 a3 a4 a5

getAll_impl :: CellPositionsUtil -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAll_impl this geographicMapInterface topRightGeographicMapCellPosition columns rows reusableList = do
    javaCatchReturn $ do
        Control.Monad.void (BasicArrayList.clear reusableList)
        geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        let lastColumn = ((jio (GeographicMapCellPosition.getColumn topRightGeographicMapCellPosition)) + columns)
        let lastRow = ((jio (GeographicMapCellPosition.getRow topRightGeographicMapCellPosition)) + rows)
        when ((((columns > 1) && (lastColumn > (jio (AllBinaryTiledLayer.getColumns ((jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)))))))) || (((rows > 1) && (lastRow > (jio (AllBinaryTiledLayer.getRows ((jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface))))))))) $ do
            javaReturn (reusableList)
        forM_ [0 .. rows - 1] $ \rowIndex -> javaIteration (pure ()) $ do
            forM_ [0 .. columns - 1] $ \columnIndex -> javaIteration (pure ()) $ do
                geographicMapCellPosition <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory ((jio (GeographicMapCellPosition.getColumn topRightGeographicMapCellPosition)) + columnIndex) ((jio (GeographicMapCellPosition.getRow topRightGeographicMapCellPosition)) + rowIndex))
                Control.Monad.void (BasicArrayList.add reusableList geographicMapCellPosition)
        pure (reusableList)


-- throws Exception
getAllSurrounding :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllSurrounding object_ a1 a2 a3 = jmethod object_ "getAllSurrounding" (\() -> (getAllSurrounding_impl (javaCast object_ :: CellPositionsUtil))) () a1 a2 a3

getAllSurrounding_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllSurrounding_super object_ a1 a2 a3 = (getAllSurrounding_impl (javaCast object_ :: CellPositionsUtil)) a1 a2 a3

getAllSurrounding_impl :: CellPositionsUtil -> BasicGeographicMap.BasicGeographicMap -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllSurrounding_impl this geographicMapInterface occupyList reusableList = do
        Control.Monad.void (BasicArrayList.clear reusableList)
        forM_ [((jio (BasicArrayList.size occupyList)) - 1), ((jio (BasicArrayList.size occupyList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let layerGeographicMapCellPosition = (javaCast (jio (BasicArrayList.get occupyList index)) :: GeographicMapCellPosition.GeographicMapCellPosition)
            surroundingGeographicMapCellPositionList <- (CellPositionsUtil.getAllSurroundingAt this geographicMapInterface layerGeographicMapCellPosition (jget (this).reusableSingleThreadedSurroundingList))
            forM_ [((jio (BasicArrayList.size surroundingGeographicMapCellPositionList)) - 1), ((jio (BasicArrayList.size surroundingGeographicMapCellPositionList)) - 1) + (-1) .. 0] $ \index2 -> javaIteration (pure ()) $ do
                let geographicMapCellPosition = (javaCast (jio (BasicArrayList.get surroundingGeographicMapCellPositionList index2)) :: GeographicMapCellPosition.GeographicMapCellPosition)
                when ((Prelude.not (jio (BasicArrayList.contains reusableList geographicMapCellPosition))) && (Prelude.not (jio (BasicArrayList.contains occupyList geographicMapCellPosition)))) $ do
                    Control.Monad.void (BasicArrayList.add reusableList geographicMapCellPosition)
        pure (reusableList)


-- throws Exception
getAllSurroundingAt :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllSurroundingAt object_ a1 a2 a3 = jmethod object_ "getAllSurroundingAt" (\() -> (getAllSurroundingAt_impl (javaCast object_ :: CellPositionsUtil))) () a1 a2 a3

getAllSurroundingAt_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllSurroundingAt_super object_ a1 a2 a3 = (getAllSurroundingAt_impl (javaCast object_ :: CellPositionsUtil)) a1 a2 a3

getAllSurroundingAt_impl :: CellPositionsUtil -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getAllSurroundingAt_impl this geographicMapInterface layerGeographicMapCellPosition reusableSurroundingList = do
        Control.Monad.void (BasicArrayList.clear reusableSurroundingList)
        geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        row <- newIORef (0)
        column <- newIORef (0)
        forM_ [0 .. 8 - 1] $ \index -> javaIteration (pure ()) $ do
            jset column (((jio (GeographicMapCellPosition.getColumn layerGeographicMapCellPosition)) + (jindex ((jindex ((jget (this).surroundArray)) (index))) (0))))
            jset row (((jio (GeographicMapCellPosition.getRow layerGeographicMapCellPosition)) + (jindex ((jindex ((jget (this).surroundArray)) (index))) (1))))
            when (jio (AllBinaryTiledLayer.isOnTileLayer tiledLayer (jget column) (jget row))) $ do
                geographicMapCellPosition <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory (jget column) (jget row))
                Control.Monad.void (BasicArrayList.add reusableSurroundingList geographicMapCellPosition)
        pure (reusableSurroundingList)


