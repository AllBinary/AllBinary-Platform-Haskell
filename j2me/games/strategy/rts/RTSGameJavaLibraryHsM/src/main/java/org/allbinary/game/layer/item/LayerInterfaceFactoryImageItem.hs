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
-- package org.allbinary.game.layer.item
module LayerInterfaceFactoryImageItem (module LayerInterfaceFactoryImageItem, module ABCustomImageItem) where

import ABCustomImageItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLayerInterfaceFactoryInterface, getLayerInterfaceFactoryInterface_super, getLayerInterfaceFactoryInterface_impl, paintXY, paintXY_super, paintXY_impl, animationArray, layerInterfaceFactoryInterface)
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
import qualified Image -- javax.microedition.lcdui.Image
import qualified ABCustomImageItem -- org.allbinary.graphics.form.item.ABCustomImageItem
import qualified Animation -- org.allbinary.animation.Animation
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified LayerInterfaceFactoryInterface -- org.allbinary.layer.LayerInterfaceFactoryInterface

data LayerInterfaceFactoryImageItem = LayerInterfaceFactoryImageItem
    { header_ :: JavaHeader
    , base :: ABCustomImageItem.ABCustomImageItem
    , animationArray :: IORef (JavaArray (Animation.Animation))
    , layerInterfaceFactoryInterface :: IORef (LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
    }

instance JavaNull LayerInterfaceFactoryImageItem where
    javaNull = javaNullRecord "LayerInterfaceFactoryImageItem"

instance JavaEquals LayerInterfaceFactoryImageItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerInterfaceFactoryImageItem where
    (==) = jrecordEquals

instance JavaObjectClass LayerInterfaceFactoryImageItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LayerInterfaceFactoryImageItem
newRecord_ = do
    base <- ABCustomImageItem.newRecord_
    let header_ = base.header_
    animationArray <- newIORef javaNull
    layerInterfaceFactoryInterface <- newIORef javaNull
    let this = LayerInterfaceFactoryImageItem header_ base animationArray layerInterfaceFactoryInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getLayerInterfaceFactoryInterface" (\() -> getLayerInterfaceFactoryInterface_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: LayerInterfaceFactoryImageItem -> IO ()
initFields_ this = do
    jset this.animationArray (javaNull)
    jset this.layerInterfaceFactoryInterface (javaNull)
    pure ()

new_7 :: String -> Image.Image -> Int -> String -> BasicColor.BasicColor -> JavaArray (Animation.Animation) -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO LayerInterfaceFactoryImageItem
new_7 label img layout altText basicColor animationArray layerInterfaceFactoryInterface = do
    this <- newRecord_
    init_7 this label img layout altText basicColor animationArray layerInterfaceFactoryInterface
    pure this

init_7 :: LayerInterfaceFactoryImageItem -> String -> Image.Image -> Int -> String -> BasicColor.BasicColor -> JavaArray (Animation.Animation) -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO ()
init_7 this label img layout altText basicColor animationArray layerInterfaceFactoryInterface = do
        ABCustomImageItem.init_6 this.base (label) (img) (layout) (altText) (basicColor) (0)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationArray (animationArray)
        jset (this).layerInterfaceFactoryInterface (layerInterfaceFactoryInterface)
        pure ()


getLayerInterfaceFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
getLayerInterfaceFactoryInterface object_ = jmethod object_ "getLayerInterfaceFactoryInterface" (\() -> (getLayerInterfaceFactoryInterface_impl (javaCast object_ :: LayerInterfaceFactoryImageItem))) ()

getLayerInterfaceFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
getLayerInterfaceFactoryInterface_super object_ = (getLayerInterfaceFactoryInterface_impl (javaCast object_ :: LayerInterfaceFactoryImageItem))

getLayerInterfaceFactoryInterface_impl :: LayerInterfaceFactoryImageItem -> IO (LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
getLayerInterfaceFactoryInterface_impl this = do
        pure ((jget (this).layerInterfaceFactoryInterface))


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: LayerInterfaceFactoryImageItem))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: LayerInterfaceFactoryImageItem)) a1 a2 a3

paintXY_impl :: LayerInterfaceFactoryImageItem -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (ABCustomImageItem.paintXY_super this.base graphics x y)
        index <- newIORef ((jlength (jget (this).animationArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (paintXY ((jindex ((jget (this).animationArray)) ((jget index)))) graphics x y)
        pure ()


