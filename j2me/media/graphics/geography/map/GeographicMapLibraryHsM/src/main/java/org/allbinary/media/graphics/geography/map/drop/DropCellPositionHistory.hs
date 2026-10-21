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
module DropCellPositionHistory where

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
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified CellPositionFactory -- org.allbinary.graphics.CellPositionFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data DropCellPositionHistory = DropCellPositionHistory
    { header_ :: JavaHeader
    , cellPositionFactory :: IORef (CellPositionFactory.CellPositionFactory)
    , positionList :: IORef (BasicArrayList.BasicArrayList)
    , layerList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull DropCellPositionHistory where
    javaNull = javaNullRecord "DropCellPositionHistory"

instance JavaEquals DropCellPositionHistory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DropCellPositionHistory where
    (==) = jrecordEquals

instance JavaObjectClass DropCellPositionHistory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DropCellPositionHistory
newRecord_ = do
    header_ <- newJavaHeader
    cellPositionFactory <- newIORef javaNull
    positionList <- newIORef javaNull
    layerList <- newIORef javaNull
    let this = DropCellPositionHistory header_ cellPositionFactory positionList layerList
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "addAll" (\() -> addAll_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "removeAll" (\() -> removeAll_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "isCellPositionWithDrop" (\() -> isCellPositionWithDrop_impl this)
    jregisterMethod header_ "anyCellPositionWithDrop" (\() -> anyCellPositionWithDrop_impl this)
    jregisterMethod header_ "getCellPositionWithDrop" (\() -> getCellPositionWithDrop_impl this)
    jregisterMethod header_ "getLayerInterface" (\() -> getLayerInterface_impl this)
    pure this

initFields_ :: DropCellPositionHistory -> IO ()
initFields_ this = do
    jset this.cellPositionFactory =<< (CellPositionFactory.getInstance)
    jset this.positionList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.layerList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO DropCellPositionHistory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DropCellPositionHistory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DropCellPositionHistory)
getInstance = do
        pure (DropCellPositionHistory.sINGLETON)


add :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> AllBinaryLayer.AllBinaryLayer -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: DropCellPositionHistory))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> AllBinaryLayer.AllBinaryLayer -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: DropCellPositionHistory)) a1 a2

add_impl :: DropCellPositionHistory -> CellPosition.CellPosition -> AllBinaryLayer.AllBinaryLayer -> IO (())
add_impl this cellPosition layerInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).positionList)) cellPosition)
        Control.Monad.void (BasicArrayList.add ((jget (this).layerList)) layerInterface)
        pure ()


addAll :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> AllBinaryLayer.AllBinaryLayer -> IO (())
addAll object_ a1 a2 = jmethod object_ "addAll" (\() -> (addAll_impl (javaCast object_ :: DropCellPositionHistory))) () a1 a2

addAll_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> AllBinaryLayer.AllBinaryLayer -> IO (())
addAll_super object_ a1 a2 = (addAll_impl (javaCast object_ :: DropCellPositionHistory)) a1 a2

addAll_impl :: DropCellPositionHistory -> BasicArrayList.BasicArrayList -> AllBinaryLayer.AllBinaryLayer -> IO (())
addAll_impl this list layerInterface = do
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (DropCellPositionHistory.add this (javaCast (jio (BasicArrayList.get list index)) :: CellPosition.CellPosition) layerInterface)
        pure ()


remove :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: DropCellPositionHistory))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: DropCellPositionHistory)) a1

remove_impl :: DropCellPositionHistory -> CellPosition.CellPosition -> IO (())
remove_impl this cellPosition = do
        index <- (BasicArrayList.indexOf ((jget (this).positionList)) cellPosition)
        when (index >= 0) $ do
            Control.Monad.void (BasicArrayList.removeAt ((jget (this).positionList)) index)
            Control.Monad.void (BasicArrayList.removeAt ((jget (this).layerList)) index)
        pure ()


removeAll :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
removeAll object_ a1 = jmethod object_ "removeAll" (\() -> (removeAll_impl (javaCast object_ :: DropCellPositionHistory))) () a1

removeAll_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
removeAll_super object_ a1 = (removeAll_impl (javaCast object_ :: DropCellPositionHistory)) a1

removeAll_impl :: DropCellPositionHistory -> AllBinaryLayer.AllBinaryLayer -> IO (())
removeAll_impl this layerInterface = do
        index <- newIORef (0)
        fix $ \loop -> when ((jget index) /= (Prelude.negate 1)) $ javaIteration (loop) $ do
            assignedValue <- (BasicArrayList.indexOf ((jget (this).layerList)) layerInterface)
            jset index (assignedValue)
            when ((jget index) >= 0) $ do
                Control.Monad.void (BasicArrayList.removeAt ((jget (this).positionList)) (jget index))
                Control.Monad.void (BasicArrayList.removeAt ((jget (this).layerList)) (jget index))
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: DropCellPositionHistory))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: DropCellPositionHistory))

clear_impl :: DropCellPositionHistory -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).positionList)))
        Control.Monad.void (BasicArrayList.clear ((jget (this).layerList)))
        pure ()


isCellPositionWithDrop :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> IO (Bool)
isCellPositionWithDrop object_ a1 = jmethod object_ "isCellPositionWithDrop" (\() -> (isCellPositionWithDrop_impl (javaCast object_ :: DropCellPositionHistory))) () a1

isCellPositionWithDrop_super :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> IO (Bool)
isCellPositionWithDrop_super object_ a1 = (isCellPositionWithDrop_impl (javaCast object_ :: DropCellPositionHistory)) a1

isCellPositionWithDrop_impl :: DropCellPositionHistory -> CellPosition.CellPosition -> IO (Bool)
isCellPositionWithDrop_impl this cellPosition = do
        (BasicArrayList.contains ((jget (this).positionList)) cellPosition)


anyCellPositionWithDrop :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
anyCellPositionWithDrop object_ a1 = jmethod object_ "anyCellPositionWithDrop" (\() -> (anyCellPositionWithDrop_impl (javaCast object_ :: DropCellPositionHistory))) () a1

anyCellPositionWithDrop_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
anyCellPositionWithDrop_super object_ a1 = (anyCellPositionWithDrop_impl (javaCast object_ :: DropCellPositionHistory)) a1

anyCellPositionWithDrop_impl :: DropCellPositionHistory -> BasicArrayList.BasicArrayList -> IO (Bool)
anyCellPositionWithDrop_impl this list = do
    javaCatchReturn $ do
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when (jio (DropCellPositionHistory.isCellPositionWithDrop this (javaCast (jio (BasicArrayList.get list index)) :: CellPosition.CellPosition))) $ do
                javaReturn (True)
        pure (False)


getCellPositionWithDrop :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (CellPosition.CellPosition)
getCellPositionWithDrop object_ a1 = jmethod object_ "getCellPositionWithDrop" (\() -> (getCellPositionWithDrop_impl (javaCast object_ :: DropCellPositionHistory))) () a1

getCellPositionWithDrop_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (CellPosition.CellPosition)
getCellPositionWithDrop_super object_ a1 = (getCellPositionWithDrop_impl (javaCast object_ :: DropCellPositionHistory)) a1

getCellPositionWithDrop_impl :: DropCellPositionHistory -> BasicArrayList.BasicArrayList -> IO (CellPosition.CellPosition)
getCellPositionWithDrop_impl this list = do
    javaCatchReturn $ do
        cellPosition <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset cellPosition ((javaCast (jio (BasicArrayList.get list index)) :: CellPosition.CellPosition))
            when (jio (DropCellPositionHistory.isCellPositionWithDrop this (jget cellPosition))) $ do
                javaReturn ((jget cellPosition))
        pure ((jget ((jget (this).cellPositionFactory)).nONE))


getLayerInterface :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface object_ a1 = jmethod object_ "getLayerInterface" (\() -> (getLayerInterface_impl (javaCast object_ :: DropCellPositionHistory))) () a1

getLayerInterface_super :: (JavaObjectClass this_) => this_ -> CellPosition.CellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_super object_ a1 = (getLayerInterface_impl (javaCast object_ :: DropCellPositionHistory)) a1

getLayerInterface_impl :: DropCellPositionHistory -> CellPosition.CellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_impl this cellPosition = do
    javaCatchReturn $ do
        index <- (BasicArrayList.indexOf ((jget (this).positionList)) cellPosition)
        if (index >= 0) then do
            javaReturn ((javaCast (jio (BasicArrayList.get ((jget (this).layerList)) index)) :: AllBinaryLayer.AllBinaryLayer))
        else do
            javaReturn (AllBinaryLayer.nULL_ALLBINARY_LAYER)


