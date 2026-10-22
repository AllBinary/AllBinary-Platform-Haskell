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
-- package org.allbinary.game.layer.pickup
module RaceTrackPickupLayer (module RaceTrackPickupLayer, module PickupLayer) where

import PickupLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setTiledLayer, setTiledLayer_super, setTiledLayer_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, nAME, viewPositionEventHandler)
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
import qualified CountedPickedUpLayerInterfaceFactory -- same package or java.lang
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified BasicGroupFactory -- org.allbinary.game.identification.BasicGroupFactory
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified TileLayerPositionIntoViewPosition -- org.allbinary.game.view.TileLayerPositionIntoViewPosition
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified ViewPosition -- org.allbinary.view.ViewPosition
import qualified ViewPositionEventHandler -- org.allbinary.view.event.ViewPositionEventHandler
import qualified PickupLayer

data RaceTrackPickupLayer = RaceTrackPickupLayer
    { header_ :: JavaHeader
    , base :: PickupLayer.PickupLayer
    , viewPositionEventHandler :: IORef (ViewPositionEventHandler.ViewPositionEventHandler)
    }

instance JavaNull RaceTrackPickupLayer where
    javaNull = javaNullRecord "RaceTrackPickupLayer"

instance JavaEquals RaceTrackPickupLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackPickupLayer where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackPickupLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "RaceTrackPickupLayer"

newRecord_ :: IO RaceTrackPickupLayer
newRecord_ = do
    base <- PickupLayer.newRecord_
    let header_ = base.header_
    viewPositionEventHandler <- newIORef javaNull
    let this = RaceTrackPickupLayer header_ base viewPositionEventHandler
    jregisterLevel header_ this
    jregisterMethod header_ "setTiledLayer" (\() -> setTiledLayer_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    pure this

initFields_ :: RaceTrackPickupLayer -> IO ()
initFields_ this = do
    jset this.viewPositionEventHandler =<< (ViewPositionEventHandler.getInstance)
    pure ()

new_ :: IO RaceTrackPickupLayer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTrackPickupLayer -> IO ()
init_ this = do
        PickupLayer.init_7 this.base (nAME) (RemoteInfo.rEMOTE_INFO) (0) (CountedPickedUpLayerInterfaceFactory.nULL_COUNTED_PICKUP_LAYER_FACTORY) (jio (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)) (jio (Rectangle.new_3 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) 0 0)) (jio (TileLayerPositionIntoViewPosition.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setTiledLayer :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> IO (())
setTiledLayer object_ a1 = jmethod object_ "setTiledLayer" (\() -> (setTiledLayer_impl (javaCast object_ :: RaceTrackPickupLayer))) () a1

setTiledLayer_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> IO (())
setTiledLayer_super object_ a1 = (setTiledLayer_impl (javaCast object_ :: RaceTrackPickupLayer)) a1

setTiledLayer_impl :: RaceTrackPickupLayer -> AllBinaryTiledLayer.AllBinaryTiledLayer -> IO (())
setTiledLayer_impl this tiledLayer = do
        let viewPosition = (javaCast (jio (PickupLayer.getViewPosition this)) :: TileLayerPositionIntoViewPosition.TileLayerPositionIntoViewPosition)
        Control.Monad.void (TileLayerPositionIntoViewPosition.setTiledLayer viewPosition tiledLayer)
        Control.Monad.void (ViewPositionEventHandler.addListener ((jget (this).viewPositionEventHandler)) (javaCast this :: AllBinaryLayer.AllBinaryLayer))
        pure ()


setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: RaceTrackPickupLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: RaceTrackPickupLayer)) a1

setDestroyed_impl :: RaceTrackPickupLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        Control.Monad.void (PickupLayer.setDestroyed_super this.base destroyed)
        when (jio (PickupLayer.isDestroyed this)) $ do
            Control.Monad.void (ViewPositionEventHandler.removeListener ((jget (this).viewPositionEventHandler)) (javaCast this))
        pure ()


