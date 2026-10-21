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
module RTSLayerInfoPaintable (module RTSLayerInfoPaintable, module InitUpdatePaintable) where

import InitUpdatePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, paint, paint_super, paint_impl, updateRTSLayerInfoInit, updateRTSLayerInfoInit_super, updateRTSLayerInfoInit_impl, updateRTSLayerInfoSelection, updateRTSLayerInfoSelection_super, updateRTSLayerInfoSelection_impl, initUpdatePaintable)
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
import qualified SelectionHudPaintable -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified InitUpdatePaintable -- org.allbinary.graphics.paint.InitUpdatePaintable
import qualified NullInitUpdatePaintable -- org.allbinary.graphics.paint.NullInitUpdatePaintable

data RTSLayerInfoPaintable = RTSLayerInfoPaintable
    { header_ :: JavaHeader
    , base :: InitUpdatePaintable.InitUpdatePaintable
    , initUpdatePaintable :: IORef (InitUpdatePaintable.InitUpdatePaintable)
    }

instance JavaNull RTSLayerInfoPaintable where
    javaNull = javaNullRecord "RTSLayerInfoPaintable"

instance JavaEquals RTSLayerInfoPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerInfoPaintable where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerInfoPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RTSLayerInfoPaintable
newRecord_ = do
    base <- InitUpdatePaintable.newRecord_
    let header_ = base.header_
    initUpdatePaintable <- newIORef javaNull
    let this = RTSLayerInfoPaintable header_ base initUpdatePaintable
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "updateRTSLayerInfoInit" (\() -> updateRTSLayerInfoInit_impl this)
    jregisterMethod header_ "updateRTSLayerInfoSelection" (\() -> updateRTSLayerInfoSelection_impl this)
    pure this

initFields_ :: RTSLayerInfoPaintable -> IO ()
initFields_ this = do
    jset this.initUpdatePaintable =<< (NullInitUpdatePaintable.getInstance)
    pure ()

new_ :: IO RTSLayerInfoPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSLayerInfoPaintable -> IO ()
init_ this = do
        InitUpdatePaintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: RTSLayerInfoPaintable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: RTSLayerInfoPaintable))

update_impl :: RTSLayerInfoPaintable -> IO (())
update_impl this = do
        Control.Monad.void (InitUpdatePaintable.update ((jget (this).initUpdatePaintable)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: RTSLayerInfoPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: RTSLayerInfoPaintable)) a1

paint_impl :: RTSLayerInfoPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (InitUpdatePaintable.paint ((jget (this).initUpdatePaintable)) graphics)
        pure ()


updateRTSLayerInfoInit :: (JavaObjectClass this_) => this_ -> InitUpdatePaintable.InitUpdatePaintable -> IO (())
updateRTSLayerInfoInit object_ a1 = jmethod object_ "updateRTSLayerInfoInit" (\() -> (updateRTSLayerInfoInit_impl (javaCast object_ :: RTSLayerInfoPaintable))) () a1

updateRTSLayerInfoInit_super :: (JavaObjectClass this_) => this_ -> InitUpdatePaintable.InitUpdatePaintable -> IO (())
updateRTSLayerInfoInit_super object_ a1 = (updateRTSLayerInfoInit_impl (javaCast object_ :: RTSLayerInfoPaintable)) a1

updateRTSLayerInfoInit_impl :: RTSLayerInfoPaintable -> InitUpdatePaintable.InitUpdatePaintable -> IO (())
updateRTSLayerInfoInit_impl this hudPaintable = do
        jset (this).initUpdatePaintable (hudPaintable)
        pure ()


updateRTSLayerInfoSelection :: (JavaObjectClass this_) => this_ -> SelectionHudPaintable.SelectionHudPaintable -> IO (())
updateRTSLayerInfoSelection object_ a1 = jmethod object_ "updateRTSLayerInfoSelection" (\() -> (updateRTSLayerInfoSelection_impl (javaCast object_ :: RTSLayerInfoPaintable))) () a1

updateRTSLayerInfoSelection_super :: (JavaObjectClass this_) => this_ -> SelectionHudPaintable.SelectionHudPaintable -> IO (())
updateRTSLayerInfoSelection_super object_ a1 = (updateRTSLayerInfoSelection_impl (javaCast object_ :: RTSLayerInfoPaintable)) a1

updateRTSLayerInfoSelection_impl :: RTSLayerInfoPaintable -> SelectionHudPaintable.SelectionHudPaintable -> IO (())
updateRTSLayerInfoSelection_impl this hudPaintable = do
        Control.Monad.void (SelectionHudPaintable.updateSelectionInfo hudPaintable)
        jset (this).initUpdatePaintable (hudPaintable)
        pure ()


