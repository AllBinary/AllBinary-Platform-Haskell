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
module SimpleGeographicMap where

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
import qualified GeographicMapCellTypeFactory -- same package or java.lang
import qualified GeographicMapCellType -- same package or java.lang
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data SimpleGeographicMap = SimpleGeographicMap
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , id :: IORef (Int)
    , name :: IORef (String)
    , cellTypeIdToGeographicMapCellType :: IORef (JavaArray (Int))
    , tiledLayer :: IORef (AllBinaryTiledLayer.AllBinaryTiledLayer)
    , foregroundBasicColor :: IORef (BasicColor.BasicColor)
    , backgroundBasicColor :: IORef (BasicColor.BasicColor)
    , geographicMapCellTypeFactory :: IORef (GeographicMapCellTypeFactory.GeographicMapCellTypeFactory)
    }

instance JavaNull SimpleGeographicMap where
    javaNull = javaNullRecord "SimpleGeographicMap"

instance JavaEquals SimpleGeographicMap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleGeographicMap where
    (==) = jrecordEquals

instance JavaObjectClass SimpleGeographicMap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SimpleGeographicMap
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    id <- newIORef javaNull
    name <- newIORef ""
    cellTypeIdToGeographicMapCellType <- newIORef javaNull
    tiledLayer <- newIORef javaNull
    foregroundBasicColor <- newIORef javaNull
    backgroundBasicColor <- newIORef javaNull
    geographicMapCellTypeFactory <- newIORef javaNull
    let this = SimpleGeographicMap header_ commonStrings id name cellTypeIdToGeographicMapCellType tiledLayer foregroundBasicColor backgroundBasicColor geographicMapCellTypeFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "getAllBinaryTiledLayer" (\() -> getAllBinaryTiledLayer_impl this)
    jregisterMethod header_ "getCellTypeAt" (\() -> getCellTypeAt_impl this)
    jregisterMethod header_ "getCellTypeFromMapCellTypeInt" (\() -> getCellTypeFromMapCellTypeInt_impl this)
    jregisterMethod header_ "getForegroundBasicColor" (\() -> getForegroundBasicColor_impl this)
    jregisterMethod header_ "setForegroundBasicColor" (\() -> setForegroundBasicColor_impl this)
    jregisterMethod header_ "getBackgroundBasicColor" (\() -> getBackgroundBasicColor_impl this)
    jregisterMethod header_ "setBackgroundBasicColor" (\() -> setBackgroundBasicColor_impl this)
    pure this

initFields_ :: SimpleGeographicMap -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.id (javaNull)
    jset this.name (javaNull)
    jset this.cellTypeIdToGeographicMapCellType (javaNull)
    jset this.tiledLayer (javaNull)
    jset this.foregroundBasicColor ((jget ((jio (BasicColorFactory.getInstance))).nULL_COLOR))
    jset this.backgroundBasicColor ((jget ((jio (BasicColorFactory.getInstance))).nULL_COLOR))
    jset this.geographicMapCellTypeFactory =<< (GeographicMapCellTypeFactory.getInstance)
    pure ()

new_6 :: Int -> String -> JavaArray (Int) -> AllBinaryTiledLayer.AllBinaryTiledLayer -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO SimpleGeographicMap
new_6 id name cellTypeIdToGeographicMapCellType tiledLayer foregroundBasicColor backgroundBasicColor = do
    this <- newRecord_
    init_6 this id name cellTypeIdToGeographicMapCellType tiledLayer foregroundBasicColor backgroundBasicColor
    pure this

init_6 :: SimpleGeographicMap -> Int -> String -> JavaArray (Int) -> AllBinaryTiledLayer.AllBinaryTiledLayer -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_6 this id name cellTypeIdToGeographicMapCellType tiledLayer foregroundBasicColor backgroundBasicColor = do
        initFields_ this
        jset (this).id (id)
        jset (this).name (name)
        jset (this).cellTypeIdToGeographicMapCellType (cellTypeIdToGeographicMapCellType)
        jset (this).tiledLayer (tiledLayer)
        Control.Monad.void (SimpleGeographicMap.setBackgroundBasicColor this backgroundBasicColor)
        Control.Monad.void (SimpleGeographicMap.setForegroundBasicColor this foregroundBasicColor)
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: SimpleGeographicMap))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: SimpleGeographicMap))

getId_impl :: SimpleGeographicMap -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: SimpleGeographicMap))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: SimpleGeographicMap))

getName_impl :: SimpleGeographicMap -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: SimpleGeographicMap))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: SimpleGeographicMap))

reset_impl :: SimpleGeographicMap -> IO (())
reset_impl this = do
        pure ()


getAllBinaryTiledLayer :: (JavaObjectClass this_) => this_ -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer object_ = jmethod object_ "getAllBinaryTiledLayer" (\() -> (getAllBinaryTiledLayer_impl (javaCast object_ :: SimpleGeographicMap))) ()

getAllBinaryTiledLayer_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer_super object_ = (getAllBinaryTiledLayer_impl (javaCast object_ :: SimpleGeographicMap))

getAllBinaryTiledLayer_impl :: SimpleGeographicMap -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer_impl this = do
        pure ((jget (this).tiledLayer))


-- throws Exception
getCellTypeAt :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt object_ a1 = jmethod object_ "getCellTypeAt" (\() -> (getCellTypeAt_impl (javaCast object_ :: SimpleGeographicMap))) () a1

getCellTypeAt_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt_super object_ a1 = (getCellTypeAt_impl (javaCast object_ :: SimpleGeographicMap)) a1

getCellTypeAt_impl :: SimpleGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt_impl this cellPosition = do
        i_column <- (GeographicMapCellPosition.getColumn cellPosition)
        i_row <- (GeographicMapCellPosition.getRow cellPosition)
        cellTypeId <- newIORef =<< (AllBinaryTiledLayer.getCell ((jget (this).tiledLayer)) i_column i_row)
        when ((jget cellTypeId) < 0) $ do
            assignedValue <- (AllBinaryTiledLayer.getAnimatedTile ((jget (this).tiledLayer)) (jget cellTypeId))
            jset cellTypeId (assignedValue)
        (GeographicMapCellTypeFactory.get ((jget (this).geographicMapCellTypeFactory)) (jindex ((jget (this).cellTypeIdToGeographicMapCellType)) ((jget cellTypeId))))


getCellTypeFromMapCellTypeInt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt object_ a1 = jmethod object_ "getCellTypeFromMapCellTypeInt" (\() -> (getCellTypeFromMapCellTypeInt_impl (javaCast object_ :: SimpleGeographicMap))) () a1

getCellTypeFromMapCellTypeInt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt_super object_ a1 = (getCellTypeFromMapCellTypeInt_impl (javaCast object_ :: SimpleGeographicMap)) a1

getCellTypeFromMapCellTypeInt_impl :: SimpleGeographicMap -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt_impl this cellTypeId = do
        pure ((jindex ((jget (this).cellTypeIdToGeographicMapCellType)) (cellTypeId)))


getForegroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor object_ = jmethod object_ "getForegroundBasicColor" (\() -> (getForegroundBasicColor_impl (javaCast object_ :: SimpleGeographicMap))) ()

getForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor_super object_ = (getForegroundBasicColor_impl (javaCast object_ :: SimpleGeographicMap))

getForegroundBasicColor_impl :: SimpleGeographicMap -> IO (BasicColor.BasicColor)
getForegroundBasicColor_impl this = do
        pure ((jget (this).foregroundBasicColor))


setForegroundBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor object_ a1 = jmethod object_ "setForegroundBasicColor" (\() -> (setForegroundBasicColor_impl (javaCast object_ :: SimpleGeographicMap))) () a1

setForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor_super object_ a1 = (setForegroundBasicColor_impl (javaCast object_ :: SimpleGeographicMap)) a1

setForegroundBasicColor_impl :: SimpleGeographicMap -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor_impl this foregroundBasicColor = do
        jset (this).foregroundBasicColor (foregroundBasicColor)
        pure ()


getBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor object_ = jmethod object_ "getBackgroundBasicColor" (\() -> (getBackgroundBasicColor_impl (javaCast object_ :: SimpleGeographicMap))) ()

getBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_super object_ = (getBackgroundBasicColor_impl (javaCast object_ :: SimpleGeographicMap))

getBackgroundBasicColor_impl :: SimpleGeographicMap -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_impl this = do
        pure ((jget (this).backgroundBasicColor))


setBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor object_ a1 = jmethod object_ "setBackgroundBasicColor" (\() -> (setBackgroundBasicColor_impl (javaCast object_ :: SimpleGeographicMap))) () a1

setBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor_super object_ a1 = (setBackgroundBasicColor_impl (javaCast object_ :: SimpleGeographicMap)) a1

setBackgroundBasicColor_impl :: SimpleGeographicMap -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor_impl this backgroundBasicColor = do
        jset (this).backgroundBasicColor (backgroundBasicColor)
        pure ()


