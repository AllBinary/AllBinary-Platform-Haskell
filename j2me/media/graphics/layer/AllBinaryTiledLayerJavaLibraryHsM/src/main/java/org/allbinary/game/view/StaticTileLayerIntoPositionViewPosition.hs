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
module StaticTileLayerIntoPositionViewPosition (module StaticTileLayerIntoPositionViewPosition, module ViewPosition) where

import ViewPosition hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getX, getX_super, getX_impl, getY, getY_super, getY_impl, getZ, getZ_super, getZ_impl, setTiledLayer, setTiledLayer_super, setTiledLayer_impl, tiledLayer, layer)
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
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified Layer -- org.allbinary.layer.Layer
import qualified NullLayer -- org.allbinary.layer.NullLayer
import qualified ViewPosition -- org.allbinary.view.ViewPosition

data StaticTileLayerIntoPositionViewPosition = StaticTileLayerIntoPositionViewPosition
    { header_ :: JavaHeader
    , base :: ViewPosition.ViewPosition
    }

instance JavaNull StaticTileLayerIntoPositionViewPosition where
    javaNull = javaNullRecord "StaticTileLayerIntoPositionViewPosition"

instance JavaEquals StaticTileLayerIntoPositionViewPosition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticTileLayerIntoPositionViewPosition where
    (==) = jrecordEquals

instance JavaObjectClass StaticTileLayerIntoPositionViewPosition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE tiledLayer #-}
tiledLayer = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: Layer.Layer) (NullLayer.getInstance)) >>= newIORef)

{-# NOINLINE layer #-}
layer = unsafePerformIO (newIORef (AllBinaryLayer.nULL_ALLBINARY_LAYER))

newRecord_ :: IO StaticTileLayerIntoPositionViewPosition
newRecord_ = do
    base <- ViewPosition.newRecord_
    let header_ = base.header_
    let this = StaticTileLayerIntoPositionViewPosition header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "getZ" (\() -> getZ_impl this)
    pure this

initFields_ :: StaticTileLayerIntoPositionViewPosition -> IO ()
initFields_ this = do
    pure ()

new_ :: IO StaticTileLayerIntoPositionViewPosition
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StaticTileLayerIntoPositionViewPosition -> IO ()
init_ this = do
        ViewPosition.init_3 this.base (0) (0) (0)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: StaticTileLayerIntoPositionViewPosition))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: StaticTileLayerIntoPositionViewPosition))

getX_impl :: StaticTileLayerIntoPositionViewPosition -> IO (Int)
getX_impl this = do
        pure (((jio (ViewPosition.getX_super this.base)) - (jio (getXP ((jget StaticTileLayerIntoPositionViewPosition.tiledLayer))))))


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: StaticTileLayerIntoPositionViewPosition))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: StaticTileLayerIntoPositionViewPosition))

getY_impl :: StaticTileLayerIntoPositionViewPosition -> IO (Int)
getY_impl this = do
        pure (((jio (ViewPosition.getY_super this.base)) - (jio (getYP ((jget StaticTileLayerIntoPositionViewPosition.tiledLayer))))))


getZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ object_ = jmethod object_ "getZ" (\() -> (getZ_impl (javaCast object_ :: StaticTileLayerIntoPositionViewPosition))) ()

getZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ_super object_ = (getZ_impl (javaCast object_ :: StaticTileLayerIntoPositionViewPosition))

getZ_impl :: StaticTileLayerIntoPositionViewPosition -> IO (Int)
getZ_impl this = do
        pure (((jio (ViewPosition.getZ_super this.base)) - (jio (getZP ((jget StaticTileLayerIntoPositionViewPosition.tiledLayer))))))


setTiledLayer :: AllBinaryTiledLayer.AllBinaryTiledLayer -> IO (())
setTiledLayer tiledLayer = do
        jset StaticTileLayerIntoPositionViewPosition.tiledLayer (tiledLayer)
        pure ()


