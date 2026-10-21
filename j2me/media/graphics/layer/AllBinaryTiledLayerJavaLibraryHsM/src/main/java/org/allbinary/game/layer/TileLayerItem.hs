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
-- package org.allbinary.game.layer
module TileLayerItem (module TileLayerItem, module ABCustomItem) where

import ABCustomItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setOwner, setOwner_super, setOwner_impl, getMinimumWidth, getMinimumWidth_super, getMinimumWidth_impl, getMinimumHeight, getMinimumHeight_super, getMinimumHeight_impl, getMinContentHeight, getMinContentHeight_super, getMinContentHeight_impl, getMinContentWidth, getMinContentWidth_super, getMinContentWidth_impl, getPrefContentHeight, getPrefContentHeight_super, getPrefContentHeight_impl, getPrefContentWidth, getPrefContentWidth_super, getPrefContentWidth_impl, paintXY, paintXY_super, paintXY_impl, paintUnselected, paintUnselected_super, paintUnselected_impl, tiledLayer)
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
import qualified AllBinaryTiledLayer -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Screen -- javax.microedition.lcdui.Screen
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified ABCustomItemInterface -- org.allbinary.graphics.form.item.ABCustomItemInterface
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor

-- implements ABCustomItemInterface
data TileLayerItem = TileLayerItem
    { header_ :: JavaHeader
    , base :: ABCustomItem.ABCustomItem
    , tiledLayer :: IORef (AllBinaryTiledLayer.AllBinaryTiledLayer)
    }

instance JavaNull TileLayerItem where
    javaNull = javaNullRecord "TileLayerItem"

instance JavaEquals TileLayerItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TileLayerItem where
    (==) = jrecordEquals

instance JavaObjectClass TileLayerItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TileLayerItem
newRecord_ = do
    base <- ABCustomItem.newRecord_
    let header_ = base.header_
    tiledLayer <- newIORef javaNull
    let this = TileLayerItem header_ base tiledLayer
    jregisterLevel header_ this
    ABCustomItemInterface.registerInterface_ header_
    jregisterMethod header_ "setOwner" (\() -> setOwner_impl this)
    jregisterMethod header_ "getMinimumWidth" (\() -> getMinimumWidth_impl this)
    jregisterMethod header_ "getMinimumHeight" (\() -> getMinimumHeight_impl this)
    jregisterMethod header_ "getMinContentHeight" (\() -> getMinContentHeight_impl this)
    jregisterMethod header_ "getMinContentWidth" (\() -> getMinContentWidth_impl this)
    jregisterMethod header_ "getPrefContentHeight" (\() -> getPrefContentHeight_impl this)
    jregisterMethod header_ "getPrefContentWidth" (\() -> getPrefContentWidth_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintUnselected" (\() -> paintUnselected_impl this)
    pure this

initFields_ :: TileLayerItem -> IO ()
initFields_ this = do
    jset this.tiledLayer (javaNull)
    pure ()

new_6 :: String -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO TileLayerItem
new_6 label tiledLayer layout altText backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_6 this label tiledLayer layout altText backgroundBasicColor foregroundBasicColor
    pure this

init_6 :: TileLayerItem -> String -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_6 this label tiledLayer layout altText backgroundBasicColor foregroundBasicColor = do
        ABCustomItem.init_3 this.base (label) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).tiledLayer (tiledLayer)
        pure ()


setOwner :: (JavaObjectClass this_) => this_ -> Screen.Screen -> IO (())
setOwner object_ a1 = jmethod object_ "setOwner" (\() -> (setOwner_impl (javaCast object_ :: TileLayerItem))) () a1

setOwner_super :: (JavaObjectClass this_) => this_ -> Screen.Screen -> IO (())
setOwner_super object_ a1 = (setOwner_impl (javaCast object_ :: TileLayerItem)) a1

setOwner_impl :: TileLayerItem -> Screen.Screen -> IO (())
setOwner_impl this owner = do
        pure ()


getMinimumWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumWidth object_ = jmethod object_ "getMinimumWidth" (\() -> (getMinimumWidth_impl (javaCast object_ :: TileLayerItem))) ()

getMinimumWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumWidth_super object_ = (getMinimumWidth_impl (javaCast object_ :: TileLayerItem))

getMinimumWidth_impl :: TileLayerItem -> IO (Int)
getMinimumWidth_impl this = do
        (AllBinaryTiledLayer.getWidth ((jget (this).tiledLayer)))


getMinimumHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumHeight object_ = jmethod object_ "getMinimumHeight" (\() -> (getMinimumHeight_impl (javaCast object_ :: TileLayerItem))) ()

getMinimumHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumHeight_super object_ = (getMinimumHeight_impl (javaCast object_ :: TileLayerItem))

getMinimumHeight_impl :: TileLayerItem -> IO (Int)
getMinimumHeight_impl this = do
        (AllBinaryTiledLayer.getHeight ((jget (this).tiledLayer)))


getMinContentHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinContentHeight object_ = jmethod object_ "getMinContentHeight" (\() -> (getMinContentHeight_impl (javaCast object_ :: TileLayerItem))) ()

getMinContentHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinContentHeight_super object_ = (getMinContentHeight_impl (javaCast object_ :: TileLayerItem))

getMinContentHeight_impl :: TileLayerItem -> IO (Int)
getMinContentHeight_impl this = do
        (AllBinaryTiledLayer.getHeight ((jget (this).tiledLayer)))


getMinContentWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinContentWidth object_ = jmethod object_ "getMinContentWidth" (\() -> (getMinContentWidth_impl (javaCast object_ :: TileLayerItem))) ()

getMinContentWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinContentWidth_super object_ = (getMinContentWidth_impl (javaCast object_ :: TileLayerItem))

getMinContentWidth_impl :: TileLayerItem -> IO (Int)
getMinContentWidth_impl this = do
        (AllBinaryTiledLayer.getWidth ((jget (this).tiledLayer)))


getPrefContentHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getPrefContentHeight object_ a1 = jmethod object_ "getPrefContentHeight" (\() -> (getPrefContentHeight_impl (javaCast object_ :: TileLayerItem))) () a1

getPrefContentHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getPrefContentHeight_super object_ a1 = (getPrefContentHeight_impl (javaCast object_ :: TileLayerItem)) a1

getPrefContentHeight_impl :: TileLayerItem -> Int -> IO (Int)
getPrefContentHeight_impl this width = do
        (AllBinaryTiledLayer.getHeight ((jget (this).tiledLayer)))


getPrefContentWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getPrefContentWidth object_ a1 = jmethod object_ "getPrefContentWidth" (\() -> (getPrefContentWidth_impl (javaCast object_ :: TileLayerItem))) () a1

getPrefContentWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getPrefContentWidth_super object_ a1 = (getPrefContentWidth_impl (javaCast object_ :: TileLayerItem)) a1

getPrefContentWidth_impl :: TileLayerItem -> Int -> IO (Int)
getPrefContentWidth_impl this height = do
        (AllBinaryTiledLayer.getWidth ((jget (this).tiledLayer)))


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: TileLayerItem))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: TileLayerItem)) a1 a2 a3

paintXY_impl :: TileLayerItem -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (AllBinaryTiledLayer.setPosition ((jget (this).tiledLayer)) x y (jio (AllBinaryTiledLayer.getZP ((jget (this).tiledLayer)))))
        Control.Monad.void (AllBinaryTiledLayer.paint ((jget (this).tiledLayer)) graphics)
        pure ()


paintUnselected :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected object_ a1 a2 a3 = jmethod object_ "paintUnselected" (\() -> (paintUnselected_impl (javaCast object_ :: TileLayerItem))) () a1 a2 a3

paintUnselected_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected_super object_ a1 a2 a3 = (paintUnselected_impl (javaCast object_ :: TileLayerItem)) a1 a2 a3

paintUnselected_impl :: TileLayerItem -> Graphics.Graphics -> Int -> Int -> IO (())
paintUnselected_impl this graphics x y = do
        pure ()


