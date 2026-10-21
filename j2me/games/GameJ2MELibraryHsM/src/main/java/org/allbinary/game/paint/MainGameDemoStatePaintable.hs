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
module MainGameDemoStatePaintable (module MainGameDemoStatePaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, getOwnershipPaintableInterface, getOwnershipPaintableInterface_super, getOwnershipPaintableInterface_impl, getMenuPaintableInterface, getMenuPaintableInterface_super, getMenuPaintableInterface_impl, ownershipPaintableInterface, menuPaintableInterface)
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
import qualified Paintable -- org.allbinary.graphics.paint.Paintable

data MainGameDemoStatePaintable = MainGameDemoStatePaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , ownershipPaintableInterface :: IORef (Paintable.Paintable)
    , menuPaintableInterface :: IORef (Paintable.Paintable)
    }

instance JavaNull MainGameDemoStatePaintable where
    javaNull = javaNullRecord "MainGameDemoStatePaintable"

instance JavaEquals MainGameDemoStatePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MainGameDemoStatePaintable where
    (==) = jrecordEquals

instance JavaObjectClass MainGameDemoStatePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MainGameDemoStatePaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    ownershipPaintableInterface <- newIORef javaNull
    menuPaintableInterface <- newIORef javaNull
    let this = MainGameDemoStatePaintable header_ base ownershipPaintableInterface menuPaintableInterface
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getOwnershipPaintableInterface" (\() -> getOwnershipPaintableInterface_impl this)
    jregisterMethod header_ "getMenuPaintableInterface" (\() -> getMenuPaintableInterface_impl this)
    pure this

initFields_ :: MainGameDemoStatePaintable -> IO ()
initFields_ this = do
    jset this.ownershipPaintableInterface (javaNull)
    jset this.menuPaintableInterface (javaNull)
    pure ()

new_2 :: Paintable.Paintable -> Paintable.Paintable -> IO MainGameDemoStatePaintable
new_2 ownershipPaintableInterface menuPaintableInterface = do
    this <- newRecord_
    init_2 this ownershipPaintableInterface menuPaintableInterface
    pure this

init_2 :: MainGameDemoStatePaintable -> Paintable.Paintable -> Paintable.Paintable -> IO ()
init_2 this ownershipPaintableInterface menuPaintableInterface = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).ownershipPaintableInterface (ownershipPaintableInterface)
        jset (this).menuPaintableInterface (menuPaintableInterface)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: MainGameDemoStatePaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: MainGameDemoStatePaintable)) a1

paint_impl :: MainGameDemoStatePaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Paintable.paint ((jget (this).menuPaintableInterface)) graphics)
        Control.Monad.void (Paintable.paint ((jget (this).ownershipPaintableInterface)) graphics)
        pure ()


getOwnershipPaintableInterface :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getOwnershipPaintableInterface object_ = jmethod object_ "getOwnershipPaintableInterface" (\() -> (getOwnershipPaintableInterface_impl (javaCast object_ :: MainGameDemoStatePaintable))) ()

getOwnershipPaintableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getOwnershipPaintableInterface_super object_ = (getOwnershipPaintableInterface_impl (javaCast object_ :: MainGameDemoStatePaintable))

getOwnershipPaintableInterface_impl :: MainGameDemoStatePaintable -> IO (Paintable.Paintable)
getOwnershipPaintableInterface_impl this = do
        pure ((jget (this).ownershipPaintableInterface))


getMenuPaintableInterface :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getMenuPaintableInterface object_ = jmethod object_ "getMenuPaintableInterface" (\() -> (getMenuPaintableInterface_impl (javaCast object_ :: MainGameDemoStatePaintable))) ()

getMenuPaintableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Paintable.Paintable)
getMenuPaintableInterface_super object_ = (getMenuPaintableInterface_impl (javaCast object_ :: MainGameDemoStatePaintable))

getMenuPaintableInterface_impl :: MainGameDemoStatePaintable -> IO (Paintable.Paintable)
getMenuPaintableInterface_impl this = do
        pure ((jget (this).menuPaintableInterface))


