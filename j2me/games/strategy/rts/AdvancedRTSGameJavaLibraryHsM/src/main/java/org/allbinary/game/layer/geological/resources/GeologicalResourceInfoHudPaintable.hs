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
-- package org.allbinary.game.layer.geological.resources
module GeologicalResourceInfoHudPaintable (module GeologicalResourceInfoHudPaintable, module WaypointInfoHudPaintable) where

import WaypointInfoHudPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, updateSelectionInfo, updateSelectionInfo_super, updateSelectionInfo_impl, paint, paint_super, paint_impl, rESOURCES, keyvalueDrawString, fontHeight)
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
import qualified GeologicalGeographicMapCellPosition -- same package or java.lang
import qualified GeographicMapCellPositionAreaBase -- same package or java.lang
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified WaypointInfoHudPaintable -- org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified KeyValueDrawCharArray -- org.allbinary.graphics.draw.KeyValueDrawCharArray

data GeologicalResourceInfoHudPaintable = GeologicalResourceInfoHudPaintable
    { header_ :: JavaHeader
    , base :: WaypointInfoHudPaintable.WaypointInfoHudPaintable
    , keyvalueDrawString :: IORef (KeyValueDrawCharArray.KeyValueDrawCharArray)
    , fontHeight :: IORef (Int)
    }

instance JavaNull GeologicalResourceInfoHudPaintable where
    javaNull = javaNullRecord "GeologicalResourceInfoHudPaintable"

instance JavaEquals GeologicalResourceInfoHudPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeologicalResourceInfoHudPaintable where
    (==) = jrecordEquals

instance JavaObjectClass GeologicalResourceInfoHudPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

rESOURCES = "Resources: "

newRecord_ :: IO GeologicalResourceInfoHudPaintable
newRecord_ = do
    base <- WaypointInfoHudPaintable.newRecord_
    let header_ = base.header_
    keyvalueDrawString <- newIORef javaNull
    fontHeight <- newIORef 0
    let this = GeologicalResourceInfoHudPaintable header_ base keyvalueDrawString fontHeight
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "updateSelectionInfo" (\() -> updateSelectionInfo_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: GeologicalResourceInfoHudPaintable -> IO ()
initFields_ this = do
    jset this.keyvalueDrawString (javaNull)
    jset this.fontHeight (0)
    pure ()

new_ :: IO GeologicalResourceInfoHudPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeologicalResourceInfoHudPaintable -> IO ()
init_ this = do
        WaypointInfoHudPaintable.init_ this.base
        initFields_ this
        assignedValue <- (KeyValueDrawCharArray.new_2 (GeologicalResourceInfoHudPaintable.rESOURCES) (jget (this).base.base.textX))
        jset (this).keyvalueDrawString (assignedValue)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: GeologicalResourceInfoHudPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: GeologicalResourceInfoHudPaintable)) a1

updateMeasurement_impl :: GeologicalResourceInfoHudPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        Control.Monad.void (WaypointInfoHudPaintable.updateMeasurement_super this.base graphics)
        font <- (Graphics.getFont graphics)
        jset (this).fontHeight (((2 * (jio (Font.getHeight font)))))
        pure ()


updateSelectionInfo :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo object_ = jmethod object_ "updateSelectionInfo" (\() -> (updateSelectionInfo_impl (javaCast object_ :: GeologicalResourceInfoHudPaintable))) ()

updateSelectionInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo_super object_ = (updateSelectionInfo_impl (javaCast object_ :: GeologicalResourceInfoHudPaintable))

updateSelectionInfo_impl :: GeologicalResourceInfoHudPaintable -> IO (())
updateSelectionInfo_impl this = do
        Control.Monad.void (WaypointInfoHudPaintable.updateSelectionInfo_super this.base)
        let rtsLayer = (javaCast (jget (this).base.rtsLayerP) :: RTSLayer.RTSLayer)
        list <- (GeographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList ((jget (rtsLayer).geographicMapCellPositionAreaBase)))
        total <- newIORef (0)
        index <- newIORef =<< (BasicArrayList.size list)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let geographicMapCellPosition = (javaCast (jio (BasicArrayList.get list (jget index))) :: GeologicalGeographicMapCellPosition.GeologicalGeographicMapCellPosition)
            jset total (((jget total) + (GeologicalResource.getTotal ((jio (GeologicalGeographicMapCellPosition.getGeologicalResource geographicMapCellPosition))))))
        Control.Monad.void (KeyValueDrawCharArray.update ((jget (this).keyvalueDrawString)) (jio (PrimitiveLongUtil.getCharArray ((jio (WaypointInfoHudPaintable.getPrimitiveLongUtil this))) (jget total))) (jio (PrimitiveLongUtil.getCurrentTotalDigits ((jio (WaypointInfoHudPaintable.getPrimitiveLongUtil this))))))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GeologicalResourceInfoHudPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: GeologicalResourceInfoHudPaintable)) a1

paint_impl :: GeologicalResourceInfoHudPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (WaypointInfoHudPaintable.paint_super this.base graphics)
        Control.Monad.void (KeyValueDrawCharArray.paint ((jget (this).keyvalueDrawString)) graphics (((jget (this).base.base.y) + (jget (this).fontHeight))))
        pure ()


