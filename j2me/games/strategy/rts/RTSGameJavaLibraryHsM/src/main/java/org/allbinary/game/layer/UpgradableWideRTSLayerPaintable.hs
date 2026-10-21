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
module UpgradableWideRTSLayerPaintable (module UpgradableWideRTSLayerPaintable, module RTSLayerCompositePaintable) where

import RTSLayerCompositePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, paint, paint_super, paint_impl, setCost, setCost_super, setCost_impl, getCost, getCost_super, getCost_impl, cost)
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
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified RTSLayerCompositePaintable

data UpgradableWideRTSLayerPaintable = UpgradableWideRTSLayerPaintable
    { header_ :: JavaHeader
    , base :: RTSLayerCompositePaintable.RTSLayerCompositePaintable
    , cost :: IORef (String)
    }

instance JavaNull UpgradableWideRTSLayerPaintable where
    javaNull = javaNullRecord "UpgradableWideRTSLayerPaintable"

instance JavaEquals UpgradableWideRTSLayerPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpgradableWideRTSLayerPaintable where
    (==) = jrecordEquals

instance JavaObjectClass UpgradableWideRTSLayerPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UpgradableWideRTSLayerPaintable
newRecord_ = do
    base <- RTSLayerCompositePaintable.newRecord_
    let header_ = base.header_
    cost <- newIORef ""
    let this = UpgradableWideRTSLayerPaintable header_ base cost
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setCost" (\() -> setCost_impl this)
    jregisterMethod header_ "getCost" (\() -> getCost_impl this)
    pure this

initFields_ :: UpgradableWideRTSLayerPaintable -> IO ()
initFields_ this = do
    jset this.cost ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_1 :: UpgradableRTSLayerHudPaintable.UpgradableRTSLayerHudPaintable -> IO UpgradableWideRTSLayerPaintable
new_1 upgradableRTSLayerHudPaintable = do
    this <- newRecord_
    init_1 this upgradableRTSLayerHudPaintable
    pure this

init_1 :: UpgradableWideRTSLayerPaintable -> UpgradableRTSLayerHudPaintable.UpgradableRTSLayerHudPaintable -> IO ()
init_1 this upgradableRTSLayerHudPaintable = do
        RTSLayerCompositePaintable.init_1 this.base (upgradableRTSLayerHudPaintable)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


update :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: UpgradableWideRTSLayerPaintable))) () a1

update_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: UpgradableWideRTSLayerPaintable)) a1

update_impl :: UpgradableWideRTSLayerPaintable -> RTSLayer.RTSLayer -> IO (())
update_impl this rtsLayer = do
        Control.Monad.void (RTSLayerCompositePaintable.update_super this.base rtsLayer)
        Control.Monad.void (UpgradableWideRTSLayerPaintable.setCost this (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (RTSLayerCompositePaintable.getUpgradeCost this))))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jio (RTSLayerCompositePaintable.getDownGradeCost this))))))))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: UpgradableWideRTSLayerPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: UpgradableWideRTSLayerPaintable)) a1

paint_impl :: UpgradableWideRTSLayerPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Graphics.drawString graphics (jio (UpgradableWideRTSLayerPaintable.getCost this)) (jget ((jget (this).base.upgradableRTSLayerHudPaintable)).textX) (jget ((jget (this).base.upgradableRTSLayerHudPaintable)).costY) 0)
        pure ()


setCost :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCost object_ a1 = jmethod object_ "setCost" (\() -> (setCost_impl (javaCast object_ :: UpgradableWideRTSLayerPaintable))) () a1

setCost_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCost_super object_ a1 = (setCost_impl (javaCast object_ :: UpgradableWideRTSLayerPaintable)) a1

setCost_impl :: UpgradableWideRTSLayerPaintable -> String -> IO (())
setCost_impl this cost = do
        jset (this).cost (cost)
        pure ()


getCost :: (JavaObjectClass this_) => this_ -> IO (String)
getCost object_ = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: UpgradableWideRTSLayerPaintable))) ()

getCost_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCost_super object_ = (getCost_impl (javaCast object_ :: UpgradableWideRTSLayerPaintable))

getCost_impl :: UpgradableWideRTSLayerPaintable -> IO (String)
getCost_impl this = do
        pure ((jget (this).cost))


