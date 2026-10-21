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
module AnyRandomDropCellPositionGenerator (module AnyRandomDropCellPositionGenerator, module BaseDropCellPositionGenerator) where

import BaseDropCellPositionGenerator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, processTick, processTick_super, processTick_impl, list, geographicMapInterface)
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
import qualified Any -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BaseDropCellPositionGenerator

data AnyRandomDropCellPositionGenerator = AnyRandomDropCellPositionGenerator
    { header_ :: JavaHeader
    , base :: BaseDropCellPositionGenerator.BaseDropCellPositionGenerator
    , list :: IORef (BasicArrayList.BasicArrayList)
    , geographicMapInterface :: IORef (Any.Any)
    }

instance JavaNull AnyRandomDropCellPositionGenerator where
    javaNull = javaNullRecord "AnyRandomDropCellPositionGenerator"

instance JavaEquals AnyRandomDropCellPositionGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnyRandomDropCellPositionGenerator where
    (==) = jrecordEquals

instance JavaObjectClass AnyRandomDropCellPositionGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AnyRandomDropCellPositionGenerator
newRecord_ = do
    base <- BaseDropCellPositionGenerator.newRecord_
    let header_ = base.header_
    list <- newIORef javaNull
    geographicMapInterface <- newIORef javaNull
    let this = AnyRandomDropCellPositionGenerator header_ base list geographicMapInterface
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    pure this

initFields_ :: AnyRandomDropCellPositionGenerator -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.geographicMapInterface ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
    pure ()

new_ :: IO AnyRandomDropCellPositionGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnyRandomDropCellPositionGenerator -> IO ()
init_ this = do
    BaseDropCellPositionGenerator.init_ this.base
    initFields_ this


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: AnyRandomDropCellPositionGenerator))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: AnyRandomDropCellPositionGenerator)) a1 a2

update_impl :: AnyRandomDropCellPositionGenerator -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> BasicGeographicMap.BasicGeographicMap -> IO (())
update_impl this allBinaryGameLayerManager geographicMapInterface = do
        jset (this).geographicMapInterface (geographicMapInterface)
        basicGeographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        randomFactory <- (MyRandomFactory.getInstance)
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        let total = ((jio (AllBinaryTiledLayer.getColumns tiledLayer)) * (jio (AllBinaryTiledLayer.getRows tiledLayer)))
        randomColumn <- newIORef (0)
        randomRow <- newIORef (0)
        geographicMapCellPosition <- newIORef (javaNull)
        index <- newIORef (total)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            assignedValue <- (MyRandomFactory.getAbsoluteNextInt randomFactory (jio (AllBinaryTiledLayer.getColumns tiledLayer)))
            jset randomColumn (assignedValue)
            assignedValue <- (MyRandomFactory.getAbsoluteNextInt randomFactory (jio (AllBinaryTiledLayer.getRows tiledLayer)))
            jset randomRow (assignedValue)
            assignedValue <- (BasicGeographicMapCellPositionFactory.getAt basicGeographicMapCellPositionFactory (jget randomColumn) (jget randomRow))
            jset geographicMapCellPosition (assignedValue)
            when (jio (BaseDropCellPositionGenerator.isDropAllowedAt this (jget geographicMapCellPosition))) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jget geographicMapCellPosition))
        pure ()


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: AnyRandomDropCellPositionGenerator))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: AnyRandomDropCellPositionGenerator)) a1

processTick_impl :: AnyRandomDropCellPositionGenerator -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        pure ()


