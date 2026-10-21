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
-- package org.allbinary.game.paint
module BasicGameDemoPaintable (module BasicGameDemoPaintable, module StatePaintable) where

import StatePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setState, setState_super, setState_impl, paint, paint_super, paint_impl, getHelpPaintableInterface, getHelpPaintableInterface_super, getHelpPaintableInterface_impl, setCurrentStatePaintable, setCurrentStatePaintable_super, setCurrentStatePaintable_impl, getCurrentStatePaintable, getCurrentStatePaintable_super, getCurrentStatePaintable_impl, getMainDemoStatePaintable, getMainDemoStatePaintable_super, getMainDemoStatePaintable_impl, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, currentStatePaintable)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified StatePaintable -- org.allbinary.graphics.paint.StatePaintable

data BasicGameDemoPaintable = BasicGameDemoPaintable
    { header_ :: JavaHeader
    , base :: StatePaintable.StatePaintable
    , mainDemoStatePaintable :: IORef (Paintable.Paintable)
    , ownershipPaintable :: IORef (Paintable.Paintable)
    , helpPaintableInterface :: IORef (Paintable.Paintable)
    , currentStatePaintable :: IORef (Paintable.Paintable)
    }

instance JavaNull BasicGameDemoPaintable where
    javaNull = javaNullRecord "BasicGameDemoPaintable"

instance JavaEquals BasicGameDemoPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGameDemoPaintable where
    (==) = jrecordEquals

instance JavaObjectClass BasicGameDemoPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicGameDemoPaintable
newRecord_ = do
    base <- StatePaintable.newRecord_
    let header_ = base.header_
    mainDemoStatePaintable <- newIORef javaNull
    ownershipPaintable <- newIORef javaNull
    helpPaintableInterface <- newIORef javaNull
    currentStatePaintable <- newIORef javaNull
    let this = BasicGameDemoPaintable header_ base mainDemoStatePaintable ownershipPaintable helpPaintableInterface currentStatePaintable
    jregisterLevel header_ this
    jregisterMethod header_ "setState" (\() -> setState_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getHelpPaintableInterface" (\() -> getHelpPaintableInterface_impl this)
    jregisterMethod header_ "setCurrentStatePaintable" (\() -> setCurrentStatePaintable_impl this)
    jregisterMethod header_ "getCurrentStatePaintable" (\() -> getCurrentStatePaintable_impl this)
    jregisterMethod header_ "getMainDemoStatePaintable" (\() -> getMainDemoStatePaintable_impl this)
    pure this

initFields_ :: BasicGameDemoPaintable -> IO ()
initFields_ this = do
    jset this.mainDemoStatePaintable (javaNull)
    jset this.ownershipPaintable (javaNull)
    jset this.helpPaintableInterface (javaNull)
    jset this.currentStatePaintable =<< (NullPaintable.getInstance)
    pure ()

new_3 :: Paintable.Paintable -> Paintable.Paintable -> Paintable.Paintable -> IO BasicGameDemoPaintable
new_3 mainDemoStatePaintable ownershipPaintable helpPaintableInterface = do
    this <- newRecord_
    init_3 this mainDemoStatePaintable ownershipPaintable helpPaintableInterface
    pure this

init_3 :: BasicGameDemoPaintable -> Paintable.Paintable -> Paintable.Paintable -> Paintable.Paintable -> IO ()
init_3 this mainDemoStatePaintable ownershipPaintable helpPaintableInterface = do
        StatePaintable.init_ this.base
        initFields_ this
        jset (this).mainDemoStatePaintable (mainDemoStatePaintable)
        Control.Monad.void (BasicGameDemoPaintable.setCurrentStatePaintable this (jio (NullPaintable.getInstance)))
        jset (this).ownershipPaintable (ownershipPaintable)
        jset (this).helpPaintableInterface (helpPaintableInterface)
        pure ()


setState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState object_ a1 = jmethod object_ "setState" (\() -> (setState_impl (javaCast object_ :: BasicGameDemoPaintable))) () a1

setState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState_super object_ a1 = (setState_impl (javaCast object_ :: BasicGameDemoPaintable)) a1

setState_impl :: BasicGameDemoPaintable -> Int -> IO (())
setState_impl this state = do
        if (state == 0) then do
            Control.Monad.void (BasicGameDemoPaintable.setCurrentStatePaintable this (jio (BasicGameDemoPaintable.getMainDemoStatePaintable this)))
        else if (state == 1) then do
            Control.Monad.void (BasicGameDemoPaintable.setCurrentStatePaintable this (jget (this).helpPaintableInterface))
        else do
            Control.Monad.void (BasicGameDemoPaintable.setCurrentStatePaintable this (jget (this).ownershipPaintable))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: BasicGameDemoPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: BasicGameDemoPaintable)) a1

paint_impl :: BasicGameDemoPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Paintable.paint ((jio (BasicGameDemoPaintable.getCurrentStatePaintable this))) graphics)
        pure ()


getHelpPaintableInterface :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getHelpPaintableInterface object_ = jmethod object_ "getHelpPaintableInterface" (\() -> (getHelpPaintableInterface_impl (javaCast object_ :: BasicGameDemoPaintable))) ()

getHelpPaintableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getHelpPaintableInterface_super object_ = (getHelpPaintableInterface_impl (javaCast object_ :: BasicGameDemoPaintable))

getHelpPaintableInterface_impl :: BasicGameDemoPaintable -> IO (Paintable.Paintable)
getHelpPaintableInterface_impl this = do
        pure ((jget (this).helpPaintableInterface))


setCurrentStatePaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setCurrentStatePaintable object_ a1 = jmethod object_ "setCurrentStatePaintable" (\() -> (setCurrentStatePaintable_impl (javaCast object_ :: BasicGameDemoPaintable))) () a1

setCurrentStatePaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setCurrentStatePaintable_super object_ a1 = (setCurrentStatePaintable_impl (javaCast object_ :: BasicGameDemoPaintable)) a1

setCurrentStatePaintable_impl :: BasicGameDemoPaintable -> Paintable.Paintable -> IO (())
setCurrentStatePaintable_impl this currentStatePaintable = do
        jset (this).currentStatePaintable (currentStatePaintable)
        pure ()


getCurrentStatePaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getCurrentStatePaintable object_ = jmethod object_ "getCurrentStatePaintable" (\() -> (getCurrentStatePaintable_impl (javaCast object_ :: BasicGameDemoPaintable))) ()

getCurrentStatePaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getCurrentStatePaintable_super object_ = (getCurrentStatePaintable_impl (javaCast object_ :: BasicGameDemoPaintable))

getCurrentStatePaintable_impl :: BasicGameDemoPaintable -> IO (Paintable.Paintable)
getCurrentStatePaintable_impl this = do
        pure ((jget (this).currentStatePaintable))


getMainDemoStatePaintable :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getMainDemoStatePaintable object_ = jmethod object_ "getMainDemoStatePaintable" (\() -> (getMainDemoStatePaintable_impl (javaCast object_ :: BasicGameDemoPaintable))) ()

getMainDemoStatePaintable_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getMainDemoStatePaintable_super object_ = (getMainDemoStatePaintable_impl (javaCast object_ :: BasicGameDemoPaintable))

getMainDemoStatePaintable_impl :: BasicGameDemoPaintable -> IO (Paintable.Paintable)
getMainDemoStatePaintable_impl this = do
        pure ((jget (this).mainDemoStatePaintable))


