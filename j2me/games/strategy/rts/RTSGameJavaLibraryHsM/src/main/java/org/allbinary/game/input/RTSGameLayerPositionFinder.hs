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
-- package org.allbinary.game.input
module RTSGameLayerPositionFinder where

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
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified LayerPositionFinderInterface

-- implements LayerPositionFinderInterface
data RTSGameLayerPositionFinder = RTSGameLayerPositionFinder
    { header_ :: JavaHeader
    }

instance JavaNull RTSGameLayerPositionFinder where
    javaNull = javaNullRecord "RTSGameLayerPositionFinder"

instance JavaEquals RTSGameLayerPositionFinder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSGameLayerPositionFinder where
    (==) = jrecordEquals

instance JavaObjectClass RTSGameLayerPositionFinder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RTSGameLayerPositionFinder
newRecord_ = do
    header_ <- newJavaHeader
    let this = RTSGameLayerPositionFinder header_
    jregisterLevel header_ this
    LayerPositionFinderInterface.registerInterface_ header_
    jregisterMethod header_ "getLayerInterface" (\() -> getLayerInterface_impl this)
    pure this

initFields_ :: RTSGameLayerPositionFinder -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (RTSGameLayerPositionFinder)
getInstance = do
        pure (RTSGameLayerPositionFinder.instance_)

new_ :: IO RTSGameLayerPositionFinder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSGameLayerPositionFinder -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getLayerInterface :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface object_ a1 = jmethod object_ "getLayerInterface" (\() -> (getLayerInterface_impl (javaCast object_ :: RTSGameLayerPositionFinder))) () a1

getLayerInterface_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_super object_ a1 = (getLayerInterface_impl (javaCast object_ :: RTSGameLayerPositionFinder)) a1

getLayerInterface_impl :: RTSGameLayerPositionFinder -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_impl this geographicMapCellPosition = do
        (DropCellPositionHistory.getLayerInterface ((jio (DropCellPositionHistory.getInstance))) geographicMapCellPosition)


