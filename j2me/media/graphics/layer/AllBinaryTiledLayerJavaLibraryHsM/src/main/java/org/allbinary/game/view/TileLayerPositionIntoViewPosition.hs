{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
module TileLayerPositionIntoViewPosition (module TileLayerPositionIntoViewPosition, module ViewPosition) where

import ViewPosition hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getX, getX_super, getX_impl, getY, getY_super, getY_impl, getZ, getZ_super, getZ_impl, setTiledLayer, setTiledLayer_super, setTiledLayer_impl, tiledLayer)
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
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified Layer -- org.allbinary.layer.Layer
import qualified NullLayer -- org.allbinary.layer.NullLayer
import qualified ViewPosition -- org.allbinary.view.ViewPosition

data TileLayerPositionIntoViewPosition = TileLayerPositionIntoViewPosition
    { header_ :: JavaHeader
    , base :: ViewPosition.ViewPosition
    , tiledLayer :: IORef (Layer.Layer)
    }

instance JavaNull TileLayerPositionIntoViewPosition where
    javaNull = javaNullRecord "TileLayerPositionIntoViewPosition"

instance JavaEquals TileLayerPositionIntoViewPosition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TileLayerPositionIntoViewPosition where
    (==) = jrecordEquals

instance JavaObjectClass TileLayerPositionIntoViewPosition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TileLayerPositionIntoViewPosition
newRecord_ = do
    base <- ViewPosition.newRecord_
    let header_ = base.header_
    tiledLayer <- newIORef javaNull
    let this = TileLayerPositionIntoViewPosition header_ base tiledLayer
    jregisterLevel header_ this
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "getZ" (\() -> getZ_impl this)
    jregisterMethod header_ "setTiledLayer" (\() -> setTiledLayer_impl this)
    pure this

initFields_ :: TileLayerPositionIntoViewPosition -> IO ()
initFields_ this = do
    jset this.tiledLayer =<< (fmap (\value_ -> javaCast value_ :: Layer.Layer) (NullLayer.getInstance))
    pure ()

new_ :: IO TileLayerPositionIntoViewPosition
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TileLayerPositionIntoViewPosition -> IO ()
init_ this = do
        ViewPosition.init_3 this.base (0) (0) (0)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: TileLayerPositionIntoViewPosition))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: TileLayerPositionIntoViewPosition))

getX_impl :: TileLayerPositionIntoViewPosition -> IO (Int)
getX_impl this = do
        pure (((jio (ViewPosition.getX_super this.base)) - (jio (Layer.getXP ((jget (this).tiledLayer))))))


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: TileLayerPositionIntoViewPosition))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: TileLayerPositionIntoViewPosition))

getY_impl :: TileLayerPositionIntoViewPosition -> IO (Int)
getY_impl this = do
        pure (((jio (ViewPosition.getY_super this.base)) - (jio (Layer.getYP ((jget (this).tiledLayer))))))


getZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ object_ = jmethod object_ "getZ" (\() -> (getZ_impl (javaCast object_ :: TileLayerPositionIntoViewPosition))) ()

getZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ_super object_ = (getZ_impl (javaCast object_ :: TileLayerPositionIntoViewPosition))

getZ_impl :: TileLayerPositionIntoViewPosition -> IO (Int)
getZ_impl this = do
        pure (((jio (ViewPosition.getZ_super this.base)) - (jio (Layer.getZP ((jget (this).tiledLayer))))))


setTiledLayer :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> IO (())
setTiledLayer object_ a1 = jmethod object_ "setTiledLayer" (\() -> (setTiledLayer_impl (javaCast object_ :: TileLayerPositionIntoViewPosition))) () a1

setTiledLayer_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> IO (())
setTiledLayer_super object_ a1 = (setTiledLayer_impl (javaCast object_ :: TileLayerPositionIntoViewPosition)) a1

setTiledLayer_impl :: TileLayerPositionIntoViewPosition -> AllBinaryTiledLayer.AllBinaryTiledLayer -> IO (())
setTiledLayer_impl this tiledLayer = do
        jset (this).tiledLayer (tiledLayer)
        pure ()


