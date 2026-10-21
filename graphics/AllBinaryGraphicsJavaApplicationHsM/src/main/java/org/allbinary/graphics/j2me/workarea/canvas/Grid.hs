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
-- package org.allbinary.graphics.j2me.workarea.canvas
module Grid where

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
import qualified GPoint -- org.allbinary.graphics.GPoint

data Grid = Grid
    { header_ :: JavaHeader
    , grid :: IORef (GPoint.GPoint)
    , isGridOn :: IORef (Bool)
    , isGridPossible :: IORef (Bool)
    , zoom :: IORef (Int)
    , isChanged :: IORef (Bool)
    }

instance JavaNull Grid where
    javaNull = javaNullRecord "Grid"

instance JavaEquals Grid where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Grid where
    (==) = jrecordEquals

instance JavaObjectClass Grid where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Grid
newRecord_ = do
    header_ <- newJavaHeader
    grid <- newIORef javaNull
    isGridOn <- newIORef False
    isGridPossible <- newIORef False
    zoom <- newIORef 0
    isChanged <- newIORef False
    let this = Grid header_ grid isGridOn isGridPossible zoom isChanged
    jregisterLevel header_ this
    jregisterMethod header_ "isGridOn" (\() -> isGridOn_impl this)
    jregisterMethod header_ "isGridPossible" (\() -> isGridPossible_impl this)
    jregisterMethod header_ "getGrid" (\() -> getGrid_impl this)
    jregisterMethod header_ "getZoom" (\() -> getZoom_impl this)
    jregisterMethod header_ "showGrid" (\() -> showGrid_impl this)
    jregisterMethod header_ "setZoom" (\() -> setZoom_impl this)
    pure this

initFields_ :: Grid -> IO ()
initFields_ this = do
    jset this.grid (javaNull)
    jset this.isGridOn (True)
    jset this.isGridPossible (False)
    jset this.zoom (3)
    jset this.isChanged (True)
    pure ()

new_ :: IO Grid
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Grid -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_1 :: Grid -> IO Grid
new_1 grid = do
    this <- newRecord_
    init_1 this grid
    pure this

init_1 :: Grid -> Grid -> IO ()
init_1 this grid = do
        initFields_ this
        jset (this).grid ((jget (grid).grid))
        Control.Monad.void (Grid.showGrid this (jget (grid).isGridOn))
        jset (this).isGridPossible ((jget (grid).isGridPossible))
        Control.Monad.void (Grid.setZoom this (jio (Grid.getZoom grid)))
        pure ()


isGridOn :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGridOn object_ = jmethod object_ "isGridOn" (\() -> (isGridOn_impl (javaCast object_ :: Grid))) ()

isGridOn_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGridOn_super object_ = (isGridOn_impl (javaCast object_ :: Grid))

isGridOn_impl :: Grid -> IO (Bool)
isGridOn_impl this = do
        pure ((jget (this).isGridOn))


isGridPossible :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGridPossible object_ = jmethod object_ "isGridPossible" (\() -> (isGridPossible_impl (javaCast object_ :: Grid))) ()

isGridPossible_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGridPossible_super object_ = (isGridPossible_impl (javaCast object_ :: Grid))

isGridPossible_impl :: Grid -> IO (Bool)
isGridPossible_impl this = do
        pure ((jget (this).isGridPossible))


getGrid :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getGrid object_ = jmethod object_ "getGrid" (\() -> (getGrid_impl (javaCast object_ :: Grid))) ()

getGrid_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getGrid_super object_ = (getGrid_impl (javaCast object_ :: Grid))

getGrid_impl :: Grid -> IO (GPoint.GPoint)
getGrid_impl this = do
        pure ((jget (this).grid))


getZoom :: (JavaObjectClass this_) => this_ -> IO (Int)
getZoom object_ = jmethod object_ "getZoom" (\() -> (getZoom_impl (javaCast object_ :: Grid))) ()

getZoom_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZoom_super object_ = (getZoom_impl (javaCast object_ :: Grid))

getZoom_impl :: Grid -> IO (Int)
getZoom_impl this = do
        pure ((jget (this).zoom))


showGrid :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
showGrid object_ a1 = jmethod object_ "showGrid" (\() -> (showGrid_impl (javaCast object_ :: Grid))) () a1

showGrid_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
showGrid_super object_ a1 = (showGrid_impl (javaCast object_ :: Grid)) a1

showGrid_impl :: Grid -> Bool -> IO (())
showGrid_impl this value = do
        jset (this).isGridOn (value)
        pure ()


setZoom :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setZoom object_ a1 = jmethod object_ "setZoom" (\() -> (setZoom_impl (javaCast object_ :: Grid))) () a1

setZoom_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setZoom_super object_ a1 = (setZoom_impl (javaCast object_ :: Grid)) a1

setZoom_impl :: Grid -> Int -> IO (())
setZoom_impl this zoom = do
        zoom <- newIORef zoom
        jset (this).zoom ((jget zoom))
        when ((jget (this).zoom) < 1) $ do
            jset zoom (1)
        jset (this).isChanged (True)
        pure ()


