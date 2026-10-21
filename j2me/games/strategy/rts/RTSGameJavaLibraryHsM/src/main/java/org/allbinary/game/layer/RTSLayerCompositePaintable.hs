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
module RTSLayerCompositePaintable (module RTSLayerCompositePaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, paint, paint_super, paint_impl, setUpgradeCost, setUpgradeCost_super, setUpgradeCost_impl, getUpgradeCost, getUpgradeCost_super, getUpgradeCost_impl, setDownGradeCost, setDownGradeCost_super, setDownGradeCost_impl, getDownGradeCost, getDownGradeCost_super, getDownGradeCost_impl, upgradeCost, downGradeCost, uPGRADE, dOWNGRADE, upgradableRTSLayerHudPaintable)
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
import qualified UpgradableRTSLayerHudPaintable -- same package or java.lang
import qualified RTSLayer -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data RTSLayerCompositePaintable = RTSLayerCompositePaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , upgradeCost :: IORef (String)
    , downGradeCost :: IORef (String)
    , uPGRADE :: IORef (String)
    , dOWNGRADE :: IORef (String)
    , upgradableRTSLayerHudPaintable :: IORef (UpgradableRTSLayerHudPaintable.UpgradableRTSLayerHudPaintable)
    }

instance JavaNull RTSLayerCompositePaintable where
    javaNull = javaNullRecord "RTSLayerCompositePaintable"

instance JavaEquals RTSLayerCompositePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerCompositePaintable where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerCompositePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RTSLayerCompositePaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    upgradeCost <- newIORef ""
    downGradeCost <- newIORef ""
    uPGRADE <- newIORef ""
    dOWNGRADE <- newIORef ""
    upgradableRTSLayerHudPaintable <- newIORef javaNull
    let this = RTSLayerCompositePaintable header_ base upgradeCost downGradeCost uPGRADE dOWNGRADE upgradableRTSLayerHudPaintable
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setUpgradeCost" (\() -> setUpgradeCost_impl this)
    jregisterMethod header_ "getUpgradeCost" (\() -> getUpgradeCost_impl this)
    jregisterMethod header_ "setDownGradeCost" (\() -> setDownGradeCost_impl this)
    jregisterMethod header_ "getDownGradeCost" (\() -> getDownGradeCost_impl this)
    pure this

initFields_ :: RTSLayerCompositePaintable -> IO ()
initFields_ this = do
    jset this.upgradeCost ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.downGradeCost ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.uPGRADE ("Up: $")
    jset this.dOWNGRADE ("Down: $-")
    jset this.upgradableRTSLayerHudPaintable (javaNull)
    pure ()

new_1 :: UpgradableRTSLayerHudPaintable.UpgradableRTSLayerHudPaintable -> IO RTSLayerCompositePaintable
new_1 upgradableRTSLayerHudPaintable = do
    this <- newRecord_
    init_1 this upgradableRTSLayerHudPaintable
    pure this

init_1 :: RTSLayerCompositePaintable -> UpgradableRTSLayerHudPaintable.UpgradableRTSLayerHudPaintable -> IO ()
init_1 this upgradableRTSLayerHudPaintable = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).upgradableRTSLayerHudPaintable (upgradableRTSLayerHudPaintable)
        pure ()


update :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: RTSLayerCompositePaintable))) () a1

update_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: RTSLayerCompositePaintable)) a1

update_impl :: RTSLayerCompositePaintable -> RTSLayer.RTSLayer -> IO (())
update_impl this rtsLayer = do
        if (jio (RTSLayer.isUpgradeable rtsLayer)) then do
            Control.Monad.void (RTSLayerCompositePaintable.setUpgradeCost this (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).uPGRADE)))) (jio (RTSLayer.getUpgradeCost rtsLayer))))))))
        else do
            Control.Monad.void (RTSLayerCompositePaintable.setUpgradeCost this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        if (jio (RTSLayer.isDowngradeable rtsLayer)) then do
            Control.Monad.void (RTSLayerCompositePaintable.setDownGradeCost this (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).dOWNGRADE)))) (jio (RTSLayer.getDowngradeCost rtsLayer))))))))
        else do
            Control.Monad.void (RTSLayerCompositePaintable.setDownGradeCost this (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: RTSLayerCompositePaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: RTSLayerCompositePaintable)) a1

paint_impl :: RTSLayerCompositePaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Graphics.drawString graphics (jio (RTSLayerCompositePaintable.getDownGradeCost this)) (jget ((jget (this).upgradableRTSLayerHudPaintable)).textX) (jget ((jget (this).upgradableRTSLayerHudPaintable)).costY1) 0)
        Control.Monad.void (Graphics.drawString graphics (jio (RTSLayerCompositePaintable.getUpgradeCost this)) (jget ((jget (this).upgradableRTSLayerHudPaintable)).textX) (jget ((jget (this).upgradableRTSLayerHudPaintable)).costY) 0)
        pure ()


setUpgradeCost :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUpgradeCost object_ a1 = jmethod object_ "setUpgradeCost" (\() -> (setUpgradeCost_impl (javaCast object_ :: RTSLayerCompositePaintable))) () a1

setUpgradeCost_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUpgradeCost_super object_ a1 = (setUpgradeCost_impl (javaCast object_ :: RTSLayerCompositePaintable)) a1

setUpgradeCost_impl :: RTSLayerCompositePaintable -> String -> IO (())
setUpgradeCost_impl this upgradeCost = do
        jset (this).upgradeCost (upgradeCost)
        pure ()


getUpgradeCost :: (JavaObjectClass this_) => this_ -> IO (String)
getUpgradeCost object_ = jmethod object_ "getUpgradeCost" (\() -> (getUpgradeCost_impl (javaCast object_ :: RTSLayerCompositePaintable))) ()

getUpgradeCost_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUpgradeCost_super object_ = (getUpgradeCost_impl (javaCast object_ :: RTSLayerCompositePaintable))

getUpgradeCost_impl :: RTSLayerCompositePaintable -> IO (String)
getUpgradeCost_impl this = do
        pure ((jget (this).upgradeCost))


setDownGradeCost :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDownGradeCost object_ a1 = jmethod object_ "setDownGradeCost" (\() -> (setDownGradeCost_impl (javaCast object_ :: RTSLayerCompositePaintable))) () a1

setDownGradeCost_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDownGradeCost_super object_ a1 = (setDownGradeCost_impl (javaCast object_ :: RTSLayerCompositePaintable)) a1

setDownGradeCost_impl :: RTSLayerCompositePaintable -> String -> IO (())
setDownGradeCost_impl this downGradeCost = do
        jset (this).downGradeCost (downGradeCost)
        pure ()


getDownGradeCost :: (JavaObjectClass this_) => this_ -> IO (String)
getDownGradeCost object_ = jmethod object_ "getDownGradeCost" (\() -> (getDownGradeCost_impl (javaCast object_ :: RTSLayerCompositePaintable))) ()

getDownGradeCost_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDownGradeCost_super object_ = (getDownGradeCost_impl (javaCast object_ :: RTSLayerCompositePaintable))

getDownGradeCost_impl :: RTSLayerCompositePaintable -> IO (String)
getDownGradeCost_impl this = do
        pure ((jget (this).downGradeCost))


