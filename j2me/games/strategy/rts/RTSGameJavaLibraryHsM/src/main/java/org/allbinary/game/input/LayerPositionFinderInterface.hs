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
module LayerPositionFinderInterface where

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

-- Java interface: the classes that implement it have these functions
data LayerPositionFinderInterface = LayerPositionFinderInterface
    { header_ :: JavaHeader
    }

instance JavaNull LayerPositionFinderInterface where
    javaNull = javaNullRecord "LayerPositionFinderInterface"

instance JavaEquals LayerPositionFinderInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerPositionFinderInterface where
    (==) = jrecordEquals

instance JavaObjectClass LayerPositionFinderInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LayerPositionFinderInterface
fromHeader_ header = LayerPositionFinderInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LayerPositionFinderInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getLayerInterface :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface object_ a1 = jmethod object_ "getLayerInterface" (\() -> (getLayerInterface_impl (javaCast object_ :: LayerPositionFinderInterface))) () a1

getLayerInterface_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_super object_ a1 = (getLayerInterface_impl (javaCast object_ :: LayerPositionFinderInterface)) a1

getLayerInterface_impl :: LayerPositionFinderInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_impl this geographicMapCellPosition = javaAbstractMethod "getLayerInterface"


