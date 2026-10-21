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
-- package org.allbinary.game.displayable.canvas
module PreGameSelectorPaintable (module PreGameSelectorPaintable, module InitUpdatePaintable) where

import InitUpdatePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, paint, paint_super, paint_impl, getPreGameSelectionForm, getPreGameSelectionForm_super, getPreGameSelectionForm_impl, title, canvasDrawLineString, preGameScrollSelectionForm)
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
import qualified PreGameScrollSelectionForm -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified CanvasDrawLineString -- org.allbinary.graphics.draw.CanvasDrawLineString
import qualified InitUpdatePaintable -- org.allbinary.graphics.paint.InitUpdatePaintable

data PreGameSelectorPaintable = PreGameSelectorPaintable
    { header_ :: JavaHeader
    , base :: InitUpdatePaintable.InitUpdatePaintable
    , title :: IORef (String)
    , canvasDrawLineString :: IORef (CanvasDrawLineString.CanvasDrawLineString)
    , preGameScrollSelectionForm :: IORef (PreGameScrollSelectionForm.PreGameScrollSelectionForm)
    }

instance JavaNull PreGameSelectorPaintable where
    javaNull = javaNullRecord "PreGameSelectorPaintable"

instance JavaEquals PreGameSelectorPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreGameSelectorPaintable where
    (==) = jrecordEquals

instance JavaObjectClass PreGameSelectorPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PreGameSelectorPaintable
newRecord_ = do
    base <- InitUpdatePaintable.newRecord_
    let header_ = base.header_
    title <- newIORef ""
    canvasDrawLineString <- newIORef javaNull
    preGameScrollSelectionForm <- newIORef javaNull
    let this = PreGameSelectorPaintable header_ base title canvasDrawLineString preGameScrollSelectionForm
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getPreGameSelectionForm" (\() -> getPreGameSelectionForm_impl this)
    pure this

initFields_ :: PreGameSelectorPaintable -> IO ()
initFields_ this = do
    jset this.title (javaNull)
    jset this.canvasDrawLineString (javaNull)
    jset this.preGameScrollSelectionForm (javaNull)
    pure ()

new_2 :: String -> PreGameScrollSelectionForm.PreGameScrollSelectionForm -> IO PreGameSelectorPaintable
new_2 title preGameScrollSelectionForm = do
    this <- newRecord_
    init_2 this title preGameScrollSelectionForm
    pure this

init_2 :: PreGameSelectorPaintable -> String -> PreGameScrollSelectionForm.PreGameScrollSelectionForm -> IO ()
init_2 this title preGameScrollSelectionForm = do
        InitUpdatePaintable.init_ this.base
        initFields_ this
        jset (this).title (title)
        displayInfo <- (DisplayInfoSingleton.getInstance)
        assignedValue <- (CanvasDrawLineString.new_2 (jio (DisplayInfoSingleton.getLastHalfWidth displayInfo)) 0)
        jset (this).canvasDrawLineString (assignedValue)
        jset (this).preGameScrollSelectionForm (preGameScrollSelectionForm)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: PreGameSelectorPaintable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: PreGameSelectorPaintable))

update_impl :: PreGameSelectorPaintable -> IO (())
update_impl this = do
        displayInfo <- (DisplayInfoSingleton.getInstance)
        assignedValue <- (CanvasDrawLineString.new_2 (jio (DisplayInfoSingleton.getLastHalfWidth displayInfo)) 0)
        jset (this).canvasDrawLineString (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PreGameSelectorPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PreGameSelectorPaintable)) a1

paint_impl :: PreGameSelectorPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).wHITE)))))
        Control.Monad.void (CanvasDrawLineString.paint ((jget (this).canvasDrawLineString)) graphics (jget this.title) 0)
        Control.Monad.void (PreGameScrollSelectionForm.paint ((jio (PreGameSelectorPaintable.getPreGameSelectionForm this))) graphics)
        pure ()


getPreGameSelectionForm :: (JavaObjectClass this_) => this_ -> IO (PreGameScrollSelectionForm.PreGameScrollSelectionForm)
getPreGameSelectionForm object_ = jmethod object_ "getPreGameSelectionForm" (\() -> (getPreGameSelectionForm_impl (javaCast object_ :: PreGameSelectorPaintable))) ()

getPreGameSelectionForm_super :: (JavaObjectClass this_) => this_ -> IO (PreGameScrollSelectionForm.PreGameScrollSelectionForm)
getPreGameSelectionForm_super object_ = (getPreGameSelectionForm_impl (javaCast object_ :: PreGameSelectorPaintable))

getPreGameSelectionForm_impl :: PreGameSelectorPaintable -> IO (PreGameScrollSelectionForm.PreGameScrollSelectionForm)
getPreGameSelectionForm_impl this = do
        pure ((jget (this).preGameScrollSelectionForm))


