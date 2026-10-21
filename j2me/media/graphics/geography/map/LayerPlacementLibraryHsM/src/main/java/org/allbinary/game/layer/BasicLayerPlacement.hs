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
-- package org.allbinary.game.layer
module BasicLayerPlacement where

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
import qualified LayerPlacementType -- same package or java.lang

data BasicLayerPlacement = BasicLayerPlacement
    { header_ :: JavaHeader
    , layerType :: IORef (LayerPlacementType.LayerPlacementType)
    , width :: IORef (Int)
    , height :: IORef (Int)
    }

instance JavaNull BasicLayerPlacement where
    javaNull = javaNullRecord "BasicLayerPlacement"

instance JavaEquals BasicLayerPlacement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicLayerPlacement where
    (==) = jrecordEquals

instance JavaObjectClass BasicLayerPlacement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicLayerPlacement
newRecord_ = do
    header_ <- newJavaHeader
    layerType <- newIORef javaNull
    width <- newIORef 0
    height <- newIORef 0
    let this = BasicLayerPlacement header_ layerType width height
    jregisterLevel header_ this
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getLayerType" (\() -> getLayerType_impl this)
    jregisterMethod header_ "setLayerType" (\() -> setLayerType_impl this)
    pure this

initFields_ :: BasicLayerPlacement -> IO ()
initFields_ this = do
    jset this.layerType (javaNull)
    jset this.width (0)
    jset this.height (0)
    pure ()

new_3 :: LayerPlacementType.LayerPlacementType -> Int -> Int -> IO BasicLayerPlacement
new_3 layerType width height = do
    this <- newRecord_
    init_3 this layerType width height
    pure this

init_3 :: BasicLayerPlacement -> LayerPlacementType.LayerPlacementType -> Int -> Int -> IO ()
init_3 this layerType width height = do
        initFields_ this
        jset (this).layerType (layerType)
        jset (this).width (width)
        jset (this).height (height)
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: BasicLayerPlacement))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: BasicLayerPlacement))

getWidth_impl :: BasicLayerPlacement -> IO (Int)
getWidth_impl this = do
        pure ((jget (this).width))


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: BasicLayerPlacement))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: BasicLayerPlacement))

getHeight_impl :: BasicLayerPlacement -> IO (Int)
getHeight_impl this = do
        pure ((jget (this).height))


getLayerType :: (JavaObjectClass this_) => this_ -> IO (LayerPlacementType.LayerPlacementType)
getLayerType object_ = jmethod object_ "getLayerType" (\() -> (getLayerType_impl (javaCast object_ :: BasicLayerPlacement))) ()

getLayerType_super :: (JavaObjectClass this_) => this_ -> IO (LayerPlacementType.LayerPlacementType)
getLayerType_super object_ = (getLayerType_impl (javaCast object_ :: BasicLayerPlacement))

getLayerType_impl :: BasicLayerPlacement -> IO (LayerPlacementType.LayerPlacementType)
getLayerType_impl this = do
        pure ((jget (this).layerType))


setLayerType :: (JavaObjectClass this_) => this_ -> LayerPlacementType.LayerPlacementType -> IO (())
setLayerType object_ a1 = jmethod object_ "setLayerType" (\() -> (setLayerType_impl (javaCast object_ :: BasicLayerPlacement))) () a1

setLayerType_super :: (JavaObjectClass this_) => this_ -> LayerPlacementType.LayerPlacementType -> IO (())
setLayerType_super object_ a1 = (setLayerType_impl (javaCast object_ :: BasicLayerPlacement)) a1

setLayerType_impl :: BasicLayerPlacement -> LayerPlacementType.LayerPlacementType -> IO (())
setLayerType_impl this layerType = do
        jset (this).layerType (layerType)
        pure ()


