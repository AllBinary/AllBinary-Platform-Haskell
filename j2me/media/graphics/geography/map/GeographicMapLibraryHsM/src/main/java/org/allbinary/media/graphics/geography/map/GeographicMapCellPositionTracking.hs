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
module GeographicMapCellPositionTracking where

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
import qualified SimpleGeographicMapCellPositionFactory -- same package or java.lang
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified GeographicMapCellType -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang
import qualified GeographicMapCompositeInterface -- same package or java.lang
import qualified AllBinaryGameCanvasInterface -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data GeographicMapCellPositionTracking = GeographicMapCellPositionTracking
    { header_ :: JavaHeader
    , currentGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , previousGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , newGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , currentCellType :: IORef (GeographicMapCellType.GeographicMapCellType)
    }

instance JavaNull GeographicMapCellPositionTracking where
    javaNull = javaNullRecord "GeographicMapCellPositionTracking"

instance JavaEquals GeographicMapCellPositionTracking where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionTracking where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionTracking where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapCellPositionTracking
newRecord_ = do
    header_ <- newJavaHeader
    currentGeographicMapCellPosition <- newIORef javaNull
    previousGeographicMapCellPosition <- newIORef javaNull
    newGeographicMapCellPosition <- newIORef javaNull
    currentCellType <- newIORef javaNull
    let this = GeographicMapCellPositionTracking header_ currentGeographicMapCellPosition previousGeographicMapCellPosition newGeographicMapCellPosition currentCellType
    jregisterLevel header_ this
    jregisterMethod header_ "getCurrentOverCellType" (\() -> getCurrentOverCellType_impl this)
    jregisterMethod header_ "updateStart" (\() -> updateStart_impl this)
    jregisterMethod header_ "updateEnd" (\() -> updateEnd_impl this)
    jregisterMethod header_ "getPreviousGeographicMapCellPosition" (\() -> getPreviousGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getCurrentGeographicMapCellPosition" (\() -> getCurrentGeographicMapCellPosition_impl this)
    pure this

initFields_ :: GeographicMapCellPositionTracking -> IO ()
initFields_ this = do
    jset this.currentGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.previousGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.newGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.currentCellType (GeographicMapCellType.nULL_GEOGRAPHIC_MAP_CELL_TYPE)
    pure ()

new_ :: IO GeographicMapCellPositionTracking
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellPositionTracking -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getCurrentOverCellType :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (GeographicMapCellType.GeographicMapCellType)
getCurrentOverCellType object_ a1 = jmethod object_ "getCurrentOverCellType" (\() -> (getCurrentOverCellType_impl (javaCast object_ :: GeographicMapCellPositionTracking))) () a1

getCurrentOverCellType_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (GeographicMapCellType.GeographicMapCellType)
getCurrentOverCellType_super object_ a1 = (getCurrentOverCellType_impl (javaCast object_ :: GeographicMapCellPositionTracking)) a1

getCurrentOverCellType_impl :: GeographicMapCellPositionTracking -> BasicGeographicMap.BasicGeographicMap -> IO (GeographicMapCellType.GeographicMapCellType)
getCurrentOverCellType_impl this geographicMap = do
        let geographicMapCellPosition = (jget (this).currentGeographicMapCellPosition)
        when (geographicMapCellPosition /= (jget (this).previousGeographicMapCellPosition)) $ do
            assignedValue <- (BasicGeographicMap.getCellTypeAt geographicMap geographicMapCellPosition)
            jset (this).currentCellType (assignedValue)
        pure ((jget (this).currentCellType))


-- throws Exception
updateStart :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvasInterface.AllBinaryGameCanvasInterface -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
updateStart object_ a1 a2 = jmethod object_ "updateStart" (\() -> (updateStart_impl (javaCast object_ :: GeographicMapCellPositionTracking))) () a1 a2

updateStart_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvasInterface.AllBinaryGameCanvasInterface -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
updateStart_super object_ a1 a2 = (updateStart_impl (javaCast object_ :: GeographicMapCellPositionTracking)) a1 a2

updateStart_impl :: GeographicMapCellPositionTracking -> AllBinaryGameCanvasInterface.AllBinaryGameCanvasInterface -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
updateStart_impl this gameCanvasInterface layer = do
    javaCatchReturn $ do
        when ((jtoObject gameCanvasInterface) /= (jtoObject SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)) $ do
            let geographicMapCompositeInterface = (javaCast (jio (AllBinaryGameCanvasInterface.getLayerManager gameCanvasInterface)) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
            let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
            assignedValue <- (BasicGeographicMap.getCellPositionAtXY geographicMapInterface ((jio (AllBinaryLayer.getXP layer)) + (jio (AllBinaryLayer.getHalfWidth layer))) ((jio (AllBinaryLayer.getYP layer)) + (jio (AllBinaryLayer.getHalfHeight layer))))
            jset (this).newGeographicMapCellPosition (assignedValue)
            when ((jget (this).newGeographicMapCellPosition) /= (jget (this).currentGeographicMapCellPosition)) $ do
                jset (this).currentGeographicMapCellPosition ((jget (this).newGeographicMapCellPosition))
                javaReturn (True)
        pure (False)


updateEnd :: (JavaObjectClass this_) => this_ -> IO (Bool)
updateEnd object_ = jmethod object_ "updateEnd" (\() -> (updateEnd_impl (javaCast object_ :: GeographicMapCellPositionTracking))) ()

updateEnd_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
updateEnd_super object_ = (updateEnd_impl (javaCast object_ :: GeographicMapCellPositionTracking))

updateEnd_impl :: GeographicMapCellPositionTracking -> IO (Bool)
updateEnd_impl this = do
    javaCatchReturn $ do
        when ((jget (this).currentGeographicMapCellPosition) /= (jget (this).previousGeographicMapCellPosition)) $ do
            jset (this).previousGeographicMapCellPosition ((jget (this).currentGeographicMapCellPosition))
            javaReturn (True)
        pure (False)


getPreviousGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousGeographicMapCellPosition object_ = jmethod object_ "getPreviousGeographicMapCellPosition" (\() -> (getPreviousGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionTracking))) ()

getPreviousGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousGeographicMapCellPosition_super object_ = (getPreviousGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionTracking))

getPreviousGeographicMapCellPosition_impl :: GeographicMapCellPositionTracking -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousGeographicMapCellPosition_impl this = do
        pure ((jget (this).previousGeographicMapCellPosition))


getCurrentGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition object_ = jmethod object_ "getCurrentGeographicMapCellPosition" (\() -> (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionTracking))) ()

getCurrentGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_super object_ = (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionTracking))

getCurrentGeographicMapCellPosition_impl :: GeographicMapCellPositionTracking -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_impl this = do
        pure ((jget (this).currentGeographicMapCellPosition))


