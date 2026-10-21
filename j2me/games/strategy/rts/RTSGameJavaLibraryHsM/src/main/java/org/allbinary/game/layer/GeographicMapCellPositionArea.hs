{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
module GeographicMapCellPositionArea (module GeographicMapCellPositionArea, module GeographicMapCellPositionAreaBase) where

import GeographicMapCellPositionAreaBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, getOccupyingGeographicMapCellPositionList, getOccupyingGeographicMapCellPositionList_super, getOccupyingGeographicMapCellPositionList_impl, getSurroundingGeographicMapCellPositionList, getSurroundingGeographicMapCellPositionList_super, getSurroundingGeographicMapCellPositionList_impl, getNextSurroundingGeographicMapCellPosition, getNextSurroundingGeographicMapCellPosition_super, getNextSurroundingGeographicMapCellPosition_impl, cellPositionsUtil, layerCoveringCellPositionsUtil, reusableOccupyingGeographicMapCellPositionList, reusableSurroundingGeographicMapCellPositionList, surroundingCircularIndexUtil, layerInterface, lIST, occupyingGeographicMapCellPositionList, surroundingGeographicMapCellPositionList)
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
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified LayerCoveringCellPositionsUtil -- org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified CellPositionsUtil -- org.allbinary.media.graphics.geography.map.CellPositionsUtil
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified GeographicMapCellPositionAreaBase

data GeographicMapCellPositionArea = GeographicMapCellPositionArea
    { header_ :: JavaHeader
    , base :: GeographicMapCellPositionAreaBase.GeographicMapCellPositionAreaBase
    , cellPositionsUtil :: IORef (CellPositionsUtil.CellPositionsUtil)
    , layerCoveringCellPositionsUtil :: IORef (LayerCoveringCellPositionsUtil.LayerCoveringCellPositionsUtil)
    , reusableOccupyingGeographicMapCellPositionList :: IORef (BasicArrayList.BasicArrayList)
    , reusableSurroundingGeographicMapCellPositionList :: IORef (BasicArrayList.BasicArrayList)
    , surroundingCircularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , layerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    , lIST :: IORef (BasicArrayList.BasicArrayList)
    , occupyingGeographicMapCellPositionList :: IORef (BasicArrayList.BasicArrayList)
    , surroundingGeographicMapCellPositionList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull GeographicMapCellPositionArea where
    javaNull = javaNullRecord "GeographicMapCellPositionArea"

instance JavaEquals GeographicMapCellPositionArea where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionArea where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionArea where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GeographicMapCellPositionArea
newRecord_ = do
    base <- GeographicMapCellPositionAreaBase.newRecord_
    let header_ = base.header_
    cellPositionsUtil <- newIORef javaNull
    layerCoveringCellPositionsUtil <- newIORef javaNull
    reusableOccupyingGeographicMapCellPositionList <- newIORef javaNull
    reusableSurroundingGeographicMapCellPositionList <- newIORef javaNull
    surroundingCircularIndexUtil <- newIORef javaNull
    layerInterface <- newIORef javaNull
    lIST <- newIORef javaNull
    occupyingGeographicMapCellPositionList <- newIORef javaNull
    surroundingGeographicMapCellPositionList <- newIORef javaNull
    let this = GeographicMapCellPositionArea header_ base cellPositionsUtil layerCoveringCellPositionsUtil reusableOccupyingGeographicMapCellPositionList reusableSurroundingGeographicMapCellPositionList surroundingCircularIndexUtil layerInterface lIST occupyingGeographicMapCellPositionList surroundingGeographicMapCellPositionList
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getOccupyingGeographicMapCellPositionList" (\() -> getOccupyingGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "getSurroundingGeographicMapCellPositionList" (\() -> getSurroundingGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "getNextSurroundingGeographicMapCellPosition" (\() -> getNextSurroundingGeographicMapCellPosition_impl this)
    pure this

initFields_ :: GeographicMapCellPositionArea -> IO ()
initFields_ this = do
    jset this.cellPositionsUtil =<< (CellPositionsUtil.getInstance)
    jset this.layerCoveringCellPositionsUtil =<< (LayerCoveringCellPositionsUtil.getInstance)
    jset this.reusableOccupyingGeographicMapCellPositionList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 4))
    jset this.reusableSurroundingGeographicMapCellPositionList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 12))
    jset this.surroundingCircularIndexUtil =<< (CircularIndexUtil.createInstance 0)
    jset this.layerInterface (javaNull)
    jset this.lIST =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    jset this.occupyingGeographicMapCellPositionList ((jget (this).lIST))
    jset this.surroundingGeographicMapCellPositionList ((jget (this).lIST))
    pure ()

new_1 :: AllBinaryLayer.AllBinaryLayer -> IO GeographicMapCellPositionArea
new_1 layerInterface = do
    this <- newRecord_
    init_1 this layerInterface
    pure this

init_1 :: GeographicMapCellPositionArea -> AllBinaryLayer.AllBinaryLayer -> IO ()
init_1 this layerInterface = do
        GeographicMapCellPositionAreaBase.init_ this.base
        initFields_ this
        jset (this).layerInterface (layerInterface)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GeographicMapCellPositionArea))) () a1

update_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: GeographicMapCellPositionArea)) a1

update_impl :: GeographicMapCellPositionArea -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this geographicMapInterface = do
        assignedValue <- (LayerCoveringCellPositionsUtil.getAllXY ((jget (this).layerCoveringCellPositionsUtil)) geographicMapInterface (jget (this).layerInterface) (jio (AllBinaryLayer.getXP ((jget (this).layerInterface)))) (jio (AllBinaryLayer.getYP ((jget (this).layerInterface)))) (jget (this).reusableOccupyingGeographicMapCellPositionList))
        jset (this).occupyingGeographicMapCellPositionList (assignedValue)
        assignedValue <- (CellPositionsUtil.getAllSurrounding ((jget (this).cellPositionsUtil)) geographicMapInterface (jget (this).occupyingGeographicMapCellPositionList) (jget (this).reusableSurroundingGeographicMapCellPositionList))
        jset (this).surroundingGeographicMapCellPositionList (assignedValue)
        Control.Monad.void (CircularIndexUtil.setSize ((jget (this).surroundingCircularIndexUtil)) (jio (BasicArrayList.size ((jget (this).surroundingGeographicMapCellPositionList)))))
        pure ()


getOccupyingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList object_ = jmethod object_ "getOccupyingGeographicMapCellPositionList" (\() -> (getOccupyingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionArea))) ()

getOccupyingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList_super object_ = (getOccupyingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionArea))

getOccupyingGeographicMapCellPositionList_impl :: GeographicMapCellPositionArea -> IO (BasicArrayList.BasicArrayList)
getOccupyingGeographicMapCellPositionList_impl this = do
        pure ((jget (this).occupyingGeographicMapCellPositionList))


getSurroundingGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList object_ = jmethod object_ "getSurroundingGeographicMapCellPositionList" (\() -> (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionArea))) ()

getSurroundingGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_super object_ = (getSurroundingGeographicMapCellPositionList_impl (javaCast object_ :: GeographicMapCellPositionArea))

getSurroundingGeographicMapCellPositionList_impl :: GeographicMapCellPositionArea -> IO (BasicArrayList.BasicArrayList)
getSurroundingGeographicMapCellPositionList_impl this = do
        pure ((jget (this).surroundingGeographicMapCellPositionList))


getNextSurroundingGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition object_ = jmethod object_ "getNextSurroundingGeographicMapCellPosition" (\() -> (getNextSurroundingGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionArea))) ()

getNextSurroundingGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition_super object_ = (getNextSurroundingGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionArea))

getNextSurroundingGeographicMapCellPosition_impl :: GeographicMapCellPositionArea -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextSurroundingGeographicMapCellPosition_impl this = do
        let geographicMapCellPosition = (javaCast (jio (BasicArrayList.get ((jget (this).surroundingGeographicMapCellPositionList)) (jio (CircularIndexUtil.getIndex ((jget (this).surroundingCircularIndexUtil)))))) :: GeographicMapCellPosition.GeographicMapCellPosition)
        Control.Monad.void (CircularIndexUtil.next ((jget (this).surroundingCircularIndexUtil)))
        pure (geographicMapCellPosition)


