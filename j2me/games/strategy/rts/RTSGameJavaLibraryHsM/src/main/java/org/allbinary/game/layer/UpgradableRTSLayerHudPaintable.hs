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
-- package org.allbinary.game.layer
module UpgradableRTSLayerHudPaintable (module UpgradableRTSLayerHudPaintable, module SelectionHudPaintable) where

import SelectionHudPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, update, update_super, update_impl, updateSelectionInfo, updateSelectionInfo_super, updateSelectionInfo_impl, updateInfo, updateInfo_super, updateInfo_impl, paint, paint_super, paint_impl, setRtsLayer, setRtsLayer_super, setRtsLayer_impl, getRtsLayer, getRtsLayer_super, getRtsLayer_impl, instance_, pERCENT, rtsLayer, costY, costY1, percentCompleteX2, rtsLayerCompositePaintableLateInit, charHeight, charWidth, percentComplete, percentCompleteX, percentCompleteArray, currentTotalDigits)
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
import qualified RTSLayerCompositePaintable -- same package or java.lang
import qualified UpgradableWideRTSLayerPaintable -- same package or java.lang
import qualified RTSLayer -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified CharArrayFactory -- org.allbinary.logic.java.character.CharArrayFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified CommonButtons -- org.allbinary.input.motion.button.CommonButtons
import qualified SelectionHudPaintable

data UpgradableRTSLayerHudPaintable = UpgradableRTSLayerHudPaintable
    { header_ :: JavaHeader
    , base :: SelectionHudPaintable.SelectionHudPaintable
    , pERCENT :: IORef (String)
    , rtsLayer :: IORef (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
    , costY :: IORef (Int)
    , costY1 :: IORef (Int)
    , percentCompleteX2 :: IORef (Int)
    , rtsLayerCompositePaintableLateInit :: IORef (RTSLayerCompositePaintable.RTSLayerCompositePaintable)
    , charHeight :: IORef (Int)
    , charWidth :: IORef (Int)
    , percentComplete :: IORef (Int)
    , percentCompleteX :: IORef (Int)
    , percentCompleteArray :: IORef (JavaArray (Char))
    , currentTotalDigits :: IORef (Int)
    }

instance JavaNull UpgradableRTSLayerHudPaintable where
    javaNull = javaNullRecord "UpgradableRTSLayerHudPaintable"

instance JavaEquals UpgradableRTSLayerHudPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpgradableRTSLayerHudPaintable where
    (==) = jrecordEquals

instance JavaObjectClass UpgradableRTSLayerHudPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO UpgradableRTSLayerHudPaintable
newRecord_ = do
    base <- SelectionHudPaintable.newRecord_
    let header_ = base.header_
    pERCENT <- newIORef ""
    rtsLayer <- newIORef javaNull
    costY <- newIORef 0
    costY1 <- newIORef 0
    percentCompleteX2 <- newIORef 0
    rtsLayerCompositePaintableLateInit <- newIORef javaNull
    charHeight <- newIORef 0
    charWidth <- newIORef 0
    percentComplete <- newIORef 0
    percentCompleteX <- newIORef 0
    percentCompleteArray <- newIORef javaNull
    currentTotalDigits <- newIORef 0
    let this = UpgradableRTSLayerHudPaintable header_ base pERCENT rtsLayer costY costY1 percentCompleteX2 rtsLayerCompositePaintableLateInit charHeight charWidth percentComplete percentCompleteX percentCompleteArray currentTotalDigits
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "updateSelectionInfo" (\() -> updateSelectionInfo_impl this)
    jregisterMethod header_ "updateInfo" (\() -> updateInfo_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setRtsLayer" (\() -> setRtsLayer_impl this)
    jregisterMethod header_ "getRtsLayer" (\() -> getRtsLayer_impl this)
    pure this

initFields_ :: UpgradableRTSLayerHudPaintable -> IO ()
initFields_ this = do
    jset this.pERCENT ("%")
    jset this.rtsLayer =<< (CollidableDestroyableDamageableLayer.getNullInstance)
    jset this.costY (0)
    jset this.costY1 (0)
    jset this.percentCompleteX2 (0)
    jset this.rtsLayerCompositePaintableLateInit (javaNull)
    jset this.charHeight (0)
    jset this.charWidth (0)
    jset this.percentComplete (0)
    jset this.percentCompleteX (0)
    jset this.percentCompleteArray =<< (CharArrayFactory.getZeroCharArray ((jio (CharArrayFactory.getInstance))))
    jset this.currentTotalDigits (0)
    pure ()


getInstance :: IO (UpgradableRTSLayerHudPaintable)
getInstance = do
        pure (UpgradableRTSLayerHudPaintable.instance_)

new_ :: IO UpgradableRTSLayerHudPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UpgradableRTSLayerHudPaintable -> IO ()
init_ this = do
        SelectionHudPaintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable)) a1

updateMeasurement_impl :: UpgradableRTSLayerHudPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        Control.Monad.void (SelectionHudPaintable.updateMeasurement_super this.base graphics)
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).charHeight (assignedValue)
        assignedValue <- (MyFontProcessor.defaultCharWidth font)
        jset (this).charWidth (assignedValue)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))

update_impl :: UpgradableRTSLayerHudPaintable -> IO (())
update_impl this = do
        Control.Monad.void (SelectionHudPaintable.update_super this.base)
        commonButtons <- (CommonButtons.getInstance)
        jset (this).costY ((((jget (this).base.y) + (jget (commonButtons).sTANDARD_BUTTON_SIZE))))
        jset (this).costY1 (((((jget (this).base.y) + (jget (commonButtons).sTANDARD_BUTTON_SIZE)) - (jget (this).charHeight))))
        jset (this).percentCompleteX2 ((((jget (this).base.imageX) + (jget (commonButtons).sTANDARD_BUTTON_SIZE)) - (jget (this).charWidth)))
        displayInfoSingleton <- (DisplayInfoSingleton.getInstance)
        if ((jio (DisplayInfoSingleton.getLastWidth displayInfoSingleton)) > 320) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: RTSLayerCompositePaintable.RTSLayerCompositePaintable) (UpgradableWideRTSLayerPaintable.new_1 this))
            jset (this).rtsLayerCompositePaintableLateInit (assignedValue)
        else do
            assignedValue <- (RTSLayerCompositePaintable.new_1 this)
            jset (this).rtsLayerCompositePaintableLateInit (assignedValue)
        pure ()


updateSelectionInfo :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo object_ = jmethod object_ "updateSelectionInfo" (\() -> (updateSelectionInfo_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))) ()

updateSelectionInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo_super object_ = (updateSelectionInfo_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))

updateSelectionInfo_impl :: UpgradableRTSLayerHudPaintable -> IO (())
updateSelectionInfo_impl this = do
        let rtsLayer = (javaCast (jio (UpgradableRTSLayerHudPaintable.getRtsLayer this)) :: RTSLayer.RTSLayer)
        Control.Monad.void (RTSLayerCompositePaintable.update ((jget (this).rtsLayerCompositePaintableLateInit)) rtsLayer)
        Control.Monad.void (SelectionHudPaintable.setAnimationInterface this (jio (RTSLayer.getVerticleBuildAnimationInterface rtsLayer)))
        Control.Monad.void (SelectionHudPaintable.setName this (jio (RTSLayer.getName rtsLayer)))
        pure ()


updateInfo :: (JavaObjectClass this_) => this_ -> IO (())
updateInfo object_ = jmethod object_ "updateInfo" (\() -> (updateInfo_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))) ()

updateInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
updateInfo_super object_ = (updateInfo_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))

updateInfo_impl :: UpgradableRTSLayerHudPaintable -> IO (())
updateInfo_impl this = do
        let rtsLayer = (javaCast (jio (UpgradableRTSLayerHudPaintable.getRtsLayer this)) :: RTSLayer.RTSLayer)
        assignedValue <- (RTSLayer.getPercentComplete rtsLayer)
        jset (this).percentComplete (assignedValue)
        if ((jget (this).percentComplete) < 10) then do
            jset (this).percentCompleteX (32)
        else if ((jget (this).percentComplete) < 100) then do
            jset (this).percentCompleteX (24)
        else do
            jset (this).percentCompleteX (16)
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jio (SelectionHudPaintable.getPrimitiveLongUtil this))) (jget (this).percentComplete))
        jset (this).percentCompleteArray (assignedValue)
        assignedValue <- (PrimitiveLongUtil.getCurrentTotalDigits ((jio (SelectionHudPaintable.getPrimitiveLongUtil this))))
        jset (this).currentTotalDigits (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable)) a1

paint_impl :: UpgradableRTSLayerHudPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (SelectionHudPaintable.paint_super this.base graphics)
        Control.Monad.void (RTSLayerCompositePaintable.paint ((jget (this).rtsLayerCompositePaintableLateInit)) graphics)
        Control.Monad.void (Graphics.drawChars graphics (jget (this).percentCompleteArray) 0 (jget (this).currentTotalDigits) ((jget (this).base.imageX) + (jget (this).percentCompleteX)) (jget (this).costY) 0)
        Control.Monad.void (Graphics.drawString graphics (jget (this).pERCENT) (jget (this).percentCompleteX2) (jget (this).costY) 0)
        Control.Monad.void (Animation.paintXY ((jio (SelectionHudPaintable.getAnimationInterface this))) graphics (jget (this).base.imageX) (jget (this).base.y))
        pure ()


setRtsLayer :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
setRtsLayer object_ a1 = jmethod object_ "setRtsLayer" (\() -> (setRtsLayer_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))) () a1

setRtsLayer_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
setRtsLayer_super object_ a1 = (setRtsLayer_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable)) a1

setRtsLayer_impl :: UpgradableRTSLayerHudPaintable -> RTSLayer.RTSLayer -> IO (())
setRtsLayer_impl this rtsLayer = do
        jset (this).rtsLayer (rtsLayer)
        pure ()


getRtsLayer :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getRtsLayer object_ = jmethod object_ "getRtsLayer" (\() -> (getRtsLayer_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))) ()

getRtsLayer_super :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getRtsLayer_super object_ = (getRtsLayer_impl (javaCast object_ :: UpgradableRTSLayerHudPaintable))

getRtsLayer_impl :: UpgradableRTSLayerHudPaintable -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getRtsLayer_impl this = do
        pure ((jget (this).rtsLayer))


