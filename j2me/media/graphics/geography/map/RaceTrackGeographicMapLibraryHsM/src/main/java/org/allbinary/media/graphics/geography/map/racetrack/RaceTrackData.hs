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
-- package org.allbinary.media.graphics.geography.map.racetrack
module RaceTrackData where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified NullUtil -- org.allbinary.logic.NullUtil

data RaceTrackData = RaceTrackData
    { header_ :: JavaHeader
    , tileSetImage :: IORef (Image.Image)
    , miniTileSetImage :: IORef (Image.Image)
    , cellWidth :: IORef (Int)
    , cellHeight :: IORef (Int)
    , miniCellWidth :: IORef (Int)
    , miniCellHeight :: IORef (Int)
    , mapArray :: IORef (JavaArray (JavaArray (Int)))
    , cellTypeIdToGeographicMapCellTypeArray :: IORef (JavaArray (Int))
    , nO_OVER_PASSES_ARRAY :: IORef (JavaArray (CellPosition.CellPosition))
    , overPassGeographicMapCellPositionArray :: IORef (JavaArray (CellPosition.CellPosition))
    , id :: IORef (Int)
    }

instance JavaNull RaceTrackData where
    javaNull = javaNullRecord "RaceTrackData"

instance JavaEquals RaceTrackData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackData where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RaceTrackData
newRecord_ = do
    header_ <- newJavaHeader
    tileSetImage <- newIORef javaNull
    miniTileSetImage <- newIORef javaNull
    cellWidth <- newIORef 0
    cellHeight <- newIORef 0
    miniCellWidth <- newIORef 0
    miniCellHeight <- newIORef 0
    mapArray <- newIORef javaNull
    cellTypeIdToGeographicMapCellTypeArray <- newIORef javaNull
    nO_OVER_PASSES_ARRAY <- newIORef javaNull
    overPassGeographicMapCellPositionArray <- newIORef javaNull
    id <- newIORef javaNull
    let this = RaceTrackData header_ tileSetImage miniTileSetImage cellWidth cellHeight miniCellWidth miniCellHeight mapArray cellTypeIdToGeographicMapCellTypeArray nO_OVER_PASSES_ARRAY overPassGeographicMapCellPositionArray id
    jregisterLevel header_ this
    jregisterMethod header_ "setMapArray" (\() -> setMapArray_impl this)
    jregisterMethod header_ "getMapArray" (\() -> getMapArray_impl this)
    jregisterMethod header_ "setCellTypeIdToGeographicMapCellTypeArray" (\() -> setCellTypeIdToGeographicMapCellTypeArray_impl this)
    jregisterMethod header_ "getCellTypeIdToGeographicMapCellTypeArray" (\() -> getCellTypeIdToGeographicMapCellTypeArray_impl this)
    jregisterMethod header_ "setCellWidth" (\() -> setCellWidth_impl this)
    jregisterMethod header_ "getCellWidth" (\() -> getCellWidth_impl this)
    jregisterMethod header_ "setCellHeight" (\() -> setCellHeight_impl this)
    jregisterMethod header_ "getCellHeight" (\() -> getCellHeight_impl this)
    jregisterMethod header_ "getOverPassGeographicMapCellPositionArray" (\() -> getOverPassGeographicMapCellPositionArray_impl this)
    jregisterMethod header_ "setOverPassGeographicMapCellPositionArray" (\() -> setOverPassGeographicMapCellPositionArray_impl this)
    jregisterMethod header_ "getTileSetImage" (\() -> getTileSetImage_impl this)
    jregisterMethod header_ "setTileSetImage" (\() -> setTileSetImage_impl this)
    jregisterMethod header_ "getMiniTileSetImage" (\() -> getMiniTileSetImage_impl this)
    jregisterMethod header_ "setMiniTileSetImage" (\() -> setMiniTileSetImage_impl this)
    jregisterMethod header_ "getMiniCellWidth" (\() -> getMiniCellWidth_impl this)
    jregisterMethod header_ "setMiniCellWidth" (\() -> setMiniCellWidth_impl this)
    jregisterMethod header_ "getMiniCellHeight" (\() -> getMiniCellHeight_impl this)
    jregisterMethod header_ "setMiniCellHeight" (\() -> setMiniCellHeight_impl this)
    jregisterMethod header_ "setId" (\() -> setId_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    pure this

initFields_ :: RaceTrackData -> IO ()
initFields_ this = do
    jset this.tileSetImage (NullImage.nULL_IMAGE)
    jset this.miniTileSetImage (NullImage.nULL_IMAGE)
    jset this.cellWidth (0)
    jset this.cellHeight (0)
    jset this.miniCellWidth (0)
    jset this.miniCellHeight (0)
    jset this.mapArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY))
    jset this.cellTypeIdToGeographicMapCellTypeArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY))
    jset this.nO_OVER_PASSES_ARRAY ((jnewArray (0) javaNull))
    jset this.overPassGeographicMapCellPositionArray ((jget (this).nO_OVER_PASSES_ARRAY))
    jset this.id (javaNull)
    pure ()

new_7 :: Int -> Int -> Int -> Int -> Int -> JavaArray (Int) -> JavaArray (JavaArray (Int)) -> IO RaceTrackData
new_7 id cellWidth cellHeight miniCellWidth miniCellHeight cellTypeIdToGeographicMapCellTypeArray mapArray = do
    this <- newRecord_
    init_7 this id cellWidth cellHeight miniCellWidth miniCellHeight cellTypeIdToGeographicMapCellTypeArray mapArray
    pure this

init_7 :: RaceTrackData -> Int -> Int -> Int -> Int -> Int -> JavaArray (Int) -> JavaArray (JavaArray (Int)) -> IO ()
init_7 this id cellWidth cellHeight miniCellWidth miniCellHeight cellTypeIdToGeographicMapCellTypeArray mapArray = do
        initFields_ this
        jset (this).id (id)
        jset (this).cellWidth (cellWidth)
        jset (this).cellHeight (cellHeight)
        jset (this).miniCellWidth (miniCellWidth)
        jset (this).miniCellHeight (miniCellHeight)
        jset (this).mapArray (mapArray)
        jset (this).cellTypeIdToGeographicMapCellTypeArray (cellTypeIdToGeographicMapCellTypeArray)
        pure ()


setMapArray :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (())
setMapArray object_ a1 = jmethod object_ "setMapArray" (\() -> (setMapArray_impl (javaCast object_ :: RaceTrackData))) () a1

setMapArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (())
setMapArray_super object_ a1 = (setMapArray_impl (javaCast object_ :: RaceTrackData)) a1

setMapArray_impl :: RaceTrackData -> JavaArray (JavaArray (Int)) -> IO (())
setMapArray_impl this mapArray = do
        jset (this).mapArray (mapArray)
        pure ()


getMapArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getMapArray object_ = jmethod object_ "getMapArray" (\() -> (getMapArray_impl (javaCast object_ :: RaceTrackData))) ()

getMapArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getMapArray_super object_ = (getMapArray_impl (javaCast object_ :: RaceTrackData))

getMapArray_impl :: RaceTrackData -> IO (JavaArray (JavaArray (Int)))
getMapArray_impl this = do
        pure ((jget (this).mapArray))


setCellTypeIdToGeographicMapCellTypeArray :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setCellTypeIdToGeographicMapCellTypeArray object_ a1 = jmethod object_ "setCellTypeIdToGeographicMapCellTypeArray" (\() -> (setCellTypeIdToGeographicMapCellTypeArray_impl (javaCast object_ :: RaceTrackData))) () a1

setCellTypeIdToGeographicMapCellTypeArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setCellTypeIdToGeographicMapCellTypeArray_super object_ a1 = (setCellTypeIdToGeographicMapCellTypeArray_impl (javaCast object_ :: RaceTrackData)) a1

setCellTypeIdToGeographicMapCellTypeArray_impl :: RaceTrackData -> JavaArray (Int) -> IO (())
setCellTypeIdToGeographicMapCellTypeArray_impl this cellTypeIdToGeographicMapCellTypeArray = do
        jset (this).cellTypeIdToGeographicMapCellTypeArray (cellTypeIdToGeographicMapCellTypeArray)
        pure ()


getCellTypeIdToGeographicMapCellTypeArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getCellTypeIdToGeographicMapCellTypeArray object_ = jmethod object_ "getCellTypeIdToGeographicMapCellTypeArray" (\() -> (getCellTypeIdToGeographicMapCellTypeArray_impl (javaCast object_ :: RaceTrackData))) ()

getCellTypeIdToGeographicMapCellTypeArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getCellTypeIdToGeographicMapCellTypeArray_super object_ = (getCellTypeIdToGeographicMapCellTypeArray_impl (javaCast object_ :: RaceTrackData))

getCellTypeIdToGeographicMapCellTypeArray_impl :: RaceTrackData -> IO (JavaArray (Int))
getCellTypeIdToGeographicMapCellTypeArray_impl this = do
        pure ((jget (this).cellTypeIdToGeographicMapCellTypeArray))


setCellWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCellWidth object_ a1 = jmethod object_ "setCellWidth" (\() -> (setCellWidth_impl (javaCast object_ :: RaceTrackData))) () a1

setCellWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCellWidth_super object_ a1 = (setCellWidth_impl (javaCast object_ :: RaceTrackData)) a1

setCellWidth_impl :: RaceTrackData -> Int -> IO (())
setCellWidth_impl this cellWidth = do
        jset (this).cellWidth (cellWidth)
        pure ()


getCellWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellWidth object_ = jmethod object_ "getCellWidth" (\() -> (getCellWidth_impl (javaCast object_ :: RaceTrackData))) ()

getCellWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellWidth_super object_ = (getCellWidth_impl (javaCast object_ :: RaceTrackData))

getCellWidth_impl :: RaceTrackData -> IO (Int)
getCellWidth_impl this = do
        pure ((jget (this).cellWidth))


setCellHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCellHeight object_ a1 = jmethod object_ "setCellHeight" (\() -> (setCellHeight_impl (javaCast object_ :: RaceTrackData))) () a1

setCellHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCellHeight_super object_ a1 = (setCellHeight_impl (javaCast object_ :: RaceTrackData)) a1

setCellHeight_impl :: RaceTrackData -> Int -> IO (())
setCellHeight_impl this cellHeight = do
        jset (this).cellHeight (cellHeight)
        pure ()


getCellHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellHeight object_ = jmethod object_ "getCellHeight" (\() -> (getCellHeight_impl (javaCast object_ :: RaceTrackData))) ()

getCellHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCellHeight_super object_ = (getCellHeight_impl (javaCast object_ :: RaceTrackData))

getCellHeight_impl :: RaceTrackData -> IO (Int)
getCellHeight_impl this = do
        pure ((jget (this).cellHeight))


getOverPassGeographicMapCellPositionArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (CellPosition.CellPosition))
getOverPassGeographicMapCellPositionArray object_ = jmethod object_ "getOverPassGeographicMapCellPositionArray" (\() -> (getOverPassGeographicMapCellPositionArray_impl (javaCast object_ :: RaceTrackData))) ()

getOverPassGeographicMapCellPositionArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (CellPosition.CellPosition))
getOverPassGeographicMapCellPositionArray_super object_ = (getOverPassGeographicMapCellPositionArray_impl (javaCast object_ :: RaceTrackData))

getOverPassGeographicMapCellPositionArray_impl :: RaceTrackData -> IO (JavaArray (CellPosition.CellPosition))
getOverPassGeographicMapCellPositionArray_impl this = do
        pure ((jget (this).overPassGeographicMapCellPositionArray))


setOverPassGeographicMapCellPositionArray :: (JavaObjectClass this_) => this_ -> JavaArray (CellPosition.CellPosition) -> IO (())
setOverPassGeographicMapCellPositionArray object_ a1 = jmethod object_ "setOverPassGeographicMapCellPositionArray" (\() -> (setOverPassGeographicMapCellPositionArray_impl (javaCast object_ :: RaceTrackData))) () a1

setOverPassGeographicMapCellPositionArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (CellPosition.CellPosition) -> IO (())
setOverPassGeographicMapCellPositionArray_super object_ a1 = (setOverPassGeographicMapCellPositionArray_impl (javaCast object_ :: RaceTrackData)) a1

setOverPassGeographicMapCellPositionArray_impl :: RaceTrackData -> JavaArray (CellPosition.CellPosition) -> IO (())
setOverPassGeographicMapCellPositionArray_impl this overPassGeographicMapCellPositionArray = do
        jset (this).overPassGeographicMapCellPositionArray (overPassGeographicMapCellPositionArray)
        pure ()


getTileSetImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getTileSetImage object_ = jmethod object_ "getTileSetImage" (\() -> (getTileSetImage_impl (javaCast object_ :: RaceTrackData))) ()

getTileSetImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getTileSetImage_super object_ = (getTileSetImage_impl (javaCast object_ :: RaceTrackData))

getTileSetImage_impl :: RaceTrackData -> IO (Image.Image)
getTileSetImage_impl this = do
        pure ((jget (this).tileSetImage))


setTileSetImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
setTileSetImage object_ a1 = jmethod object_ "setTileSetImage" (\() -> (setTileSetImage_impl (javaCast object_ :: RaceTrackData))) () a1

setTileSetImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
setTileSetImage_super object_ a1 = (setTileSetImage_impl (javaCast object_ :: RaceTrackData)) a1

setTileSetImage_impl :: RaceTrackData -> Image.Image -> IO (())
setTileSetImage_impl this tileSetImage = do
        jset (this).tileSetImage (tileSetImage)
        pure ()


getMiniTileSetImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getMiniTileSetImage object_ = jmethod object_ "getMiniTileSetImage" (\() -> (getMiniTileSetImage_impl (javaCast object_ :: RaceTrackData))) ()

getMiniTileSetImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getMiniTileSetImage_super object_ = (getMiniTileSetImage_impl (javaCast object_ :: RaceTrackData))

getMiniTileSetImage_impl :: RaceTrackData -> IO (Image.Image)
getMiniTileSetImage_impl this = do
        pure ((jget (this).miniTileSetImage))


setMiniTileSetImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
setMiniTileSetImage object_ a1 = jmethod object_ "setMiniTileSetImage" (\() -> (setMiniTileSetImage_impl (javaCast object_ :: RaceTrackData))) () a1

setMiniTileSetImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
setMiniTileSetImage_super object_ a1 = (setMiniTileSetImage_impl (javaCast object_ :: RaceTrackData)) a1

setMiniTileSetImage_impl :: RaceTrackData -> Image.Image -> IO (())
setMiniTileSetImage_impl this miniTileSetImage = do
        jset (this).miniTileSetImage (miniTileSetImage)
        pure ()


getMiniCellWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getMiniCellWidth object_ = jmethod object_ "getMiniCellWidth" (\() -> (getMiniCellWidth_impl (javaCast object_ :: RaceTrackData))) ()

getMiniCellWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMiniCellWidth_super object_ = (getMiniCellWidth_impl (javaCast object_ :: RaceTrackData))

getMiniCellWidth_impl :: RaceTrackData -> IO (Int)
getMiniCellWidth_impl this = do
        pure ((jget (this).miniCellWidth))


setMiniCellWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMiniCellWidth object_ a1 = jmethod object_ "setMiniCellWidth" (\() -> (setMiniCellWidth_impl (javaCast object_ :: RaceTrackData))) () a1

setMiniCellWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMiniCellWidth_super object_ a1 = (setMiniCellWidth_impl (javaCast object_ :: RaceTrackData)) a1

setMiniCellWidth_impl :: RaceTrackData -> Int -> IO (())
setMiniCellWidth_impl this miniCellWidth = do
        jset (this).miniCellWidth (miniCellWidth)
        pure ()


getMiniCellHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getMiniCellHeight object_ = jmethod object_ "getMiniCellHeight" (\() -> (getMiniCellHeight_impl (javaCast object_ :: RaceTrackData))) ()

getMiniCellHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMiniCellHeight_super object_ = (getMiniCellHeight_impl (javaCast object_ :: RaceTrackData))

getMiniCellHeight_impl :: RaceTrackData -> IO (Int)
getMiniCellHeight_impl this = do
        pure ((jget (this).miniCellHeight))


setMiniCellHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMiniCellHeight object_ a1 = jmethod object_ "setMiniCellHeight" (\() -> (setMiniCellHeight_impl (javaCast object_ :: RaceTrackData))) () a1

setMiniCellHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMiniCellHeight_super object_ a1 = (setMiniCellHeight_impl (javaCast object_ :: RaceTrackData)) a1

setMiniCellHeight_impl :: RaceTrackData -> Int -> IO (())
setMiniCellHeight_impl this miniCellHeight = do
        jset (this).miniCellHeight (miniCellHeight)
        pure ()


setId :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setId object_ a1 = jmethod object_ "setId" (\() -> (setId_impl (javaCast object_ :: RaceTrackData))) () a1

setId_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setId_super object_ a1 = (setId_impl (javaCast object_ :: RaceTrackData)) a1

setId_impl :: RaceTrackData -> Int -> IO (())
setId_impl this id = do
        jset (this).id (id)
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: RaceTrackData))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: RaceTrackData))

getId_impl :: RaceTrackData -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


