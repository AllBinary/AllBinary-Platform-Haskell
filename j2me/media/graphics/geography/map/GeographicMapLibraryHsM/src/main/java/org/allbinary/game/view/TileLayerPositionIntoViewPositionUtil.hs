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
-- package org.allbinary.game.view
module TileLayerPositionIntoViewPositionUtil where

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
import qualified TileLayerPositionIntoViewPosition -- org.allbinary.game.view.TileLayerPositionIntoViewPosition
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface

data TileLayerPositionIntoViewPositionUtil = TileLayerPositionIntoViewPositionUtil
    { header_ :: JavaHeader
    }

instance JavaNull TileLayerPositionIntoViewPositionUtil where
    javaNull = javaNullRecord "TileLayerPositionIntoViewPositionUtil"

instance JavaEquals TileLayerPositionIntoViewPositionUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TileLayerPositionIntoViewPositionUtil where
    (==) = jrecordEquals

instance JavaObjectClass TileLayerPositionIntoViewPositionUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TileLayerPositionIntoViewPositionUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = TileLayerPositionIntoViewPositionUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: TileLayerPositionIntoViewPositionUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TileLayerPositionIntoViewPositionUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TileLayerPositionIntoViewPositionUtil -> IO ()
init_ this = do
    initFields_ this


init :: AllBinaryGameCanvas.AllBinaryGameCanvas -> TileLayerPositionIntoViewPosition.TileLayerPositionIntoViewPosition -> IO (())
init gameCanvasInterface viewPosition = do
        let geographicMapCompositeInterface = (javaCast (jio (AllBinaryGameCanvas.getLayerManager gameCanvasInterface)) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        Control.Monad.void (TileLayerPositionIntoViewPosition.setTiledLayer viewPosition tiledLayer)
        pure ()


