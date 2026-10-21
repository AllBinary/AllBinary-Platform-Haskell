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
-- package org.allbinary.game.layer.waypoint
module WaypointInfoHudPaintable (module WaypointInfoHudPaintable, module SelectionHudPaintable) where

import SelectionHudPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, updateSelectionInfo, updateSelectionInfo_super, updateSelectionInfo_impl, setRtsLayer, setRtsLayer_super, setRtsLayer_impl, getRtsLayer, getRtsLayer_super, getRtsLayer_impl, paint, paint_super, paint_impl, keyvalueDrawString, rtsLayerP, textLine2Y)
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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullPathFindingLayer -- org.allbinary.game.layer.NullPathFindingLayer
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified SelectionHudPaintable -- org.allbinary.game.layer.SelectionHudPaintable
import qualified KeyValueDrawString -- org.allbinary.graphics.draw.KeyValueDrawString

data WaypointInfoHudPaintable = WaypointInfoHudPaintable
    { header_ :: JavaHeader
    , base :: SelectionHudPaintable.SelectionHudPaintable
    , keyvalueDrawString :: IORef (KeyValueDrawString.KeyValueDrawString)
    , rtsLayerP :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    , textLine2Y :: IORef (Int)
    }

instance JavaNull WaypointInfoHudPaintable where
    javaNull = javaNullRecord "WaypointInfoHudPaintable"

instance JavaEquals WaypointInfoHudPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointInfoHudPaintable where
    (==) = jrecordEquals

instance JavaObjectClass WaypointInfoHudPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WaypointInfoHudPaintable
newRecord_ = do
    base <- SelectionHudPaintable.newRecord_
    let header_ = base.header_
    keyvalueDrawString <- newIORef javaNull
    rtsLayerP <- newIORef javaNull
    textLine2Y <- newIORef 0
    let this = WaypointInfoHudPaintable header_ base keyvalueDrawString rtsLayerP textLine2Y
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "updateSelectionInfo" (\() -> updateSelectionInfo_impl this)
    jregisterMethod header_ "setRtsLayer" (\() -> setRtsLayer_impl this)
    jregisterMethod header_ "getRtsLayer" (\() -> getRtsLayer_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: WaypointInfoHudPaintable -> IO ()
initFields_ this = do
    jset this.keyvalueDrawString (javaNull)
    jset this.rtsLayerP ((javaCast NullPathFindingLayer.nULL_PATH_FINDING_LAYER :: PathFindingLayerInterface.PathFindingLayerInterface))
    jset this.textLine2Y (0)
    pure ()

new_ :: IO WaypointInfoHudPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WaypointInfoHudPaintable -> IO ()
init_ this = do
        SelectionHudPaintable.init_ this.base
        initFields_ this
        assignedValue <- (KeyValueDrawString.new_2 "Owner: " (jget (this).base.textX))
        jset (this).keyvalueDrawString (assignedValue)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: WaypointInfoHudPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: WaypointInfoHudPaintable)) a1

updateMeasurement_impl :: WaypointInfoHudPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        Control.Monad.void (SelectionHudPaintable.updateMeasurement_super this.base graphics)
        font <- (Graphics.getFont graphics)
        jset (this).textLine2Y ((((jget (this).base.y) + (jio (Font.getHeight font)))))
        pure ()


updateSelectionInfo :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo object_ = jmethod object_ "updateSelectionInfo" (\() -> (updateSelectionInfo_impl (javaCast object_ :: WaypointInfoHudPaintable))) ()

updateSelectionInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo_super object_ = (updateSelectionInfo_impl (javaCast object_ :: WaypointInfoHudPaintable))

updateSelectionInfo_impl :: WaypointInfoHudPaintable -> IO (())
updateSelectionInfo_impl this = do
        let rtsLayer = (javaCast (jget (this).rtsLayerP) :: RTSLayer.RTSLayer)
        Control.Monad.void (SelectionHudPaintable.setName this (jio (RTSLayer.getName rtsLayer)))
        Control.Monad.void (SelectionHudPaintable.setAnimationInterface this (jio (RTSLayer.getVerticleBuildAnimationInterface rtsLayer)))
        Control.Monad.void (KeyValueDrawString.update ((jget (this).keyvalueDrawString)) (jio (PathFindingLayerInterface.getName ((jio (RTSLayer.getParentLayer rtsLayer))))))
        pure ()


setRtsLayer :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
setRtsLayer object_ a1 = jmethod object_ "setRtsLayer" (\() -> (setRtsLayer_impl (javaCast object_ :: WaypointInfoHudPaintable))) () a1

setRtsLayer_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
setRtsLayer_super object_ a1 = (setRtsLayer_impl (javaCast object_ :: WaypointInfoHudPaintable)) a1

setRtsLayer_impl :: WaypointInfoHudPaintable -> RTSLayer.RTSLayer -> IO (())
setRtsLayer_impl this rtsLayer = do
        jset (this).rtsLayerP (rtsLayer)
        pure ()


getRtsLayer :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getRtsLayer object_ = jmethod object_ "getRtsLayer" (\() -> (getRtsLayer_impl (javaCast object_ :: WaypointInfoHudPaintable))) ()

getRtsLayer_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getRtsLayer_super object_ = (getRtsLayer_impl (javaCast object_ :: WaypointInfoHudPaintable))

getRtsLayer_impl :: WaypointInfoHudPaintable -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getRtsLayer_impl this = do
        pure ((jget (this).rtsLayerP))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: WaypointInfoHudPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: WaypointInfoHudPaintable)) a1

paint_impl :: WaypointInfoHudPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (SelectionHudPaintable.paint_super this.base graphics)
        Control.Monad.void (KeyValueDrawString.paint ((jget (this).keyvalueDrawString)) graphics (jget (this).textLine2Y))
        Control.Monad.void (Animation.paintXY ((jio (SelectionHudPaintable.getAnimationInterface this))) graphics (jget (this).base.imageX) (jget (this).base.y))
        pure ()


