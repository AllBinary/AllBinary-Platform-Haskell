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
module TiledLayerUtil where

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

data TiledLayerUtil = TiledLayerUtil
    { header_ :: JavaHeader
    }

instance JavaNull TiledLayerUtil where
    javaNull = javaNullRecord "TiledLayerUtil"

instance JavaEquals TiledLayerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TiledLayerUtil where
    (==) = jrecordEquals

instance JavaObjectClass TiledLayerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TiledLayerUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = TiledLayerUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "keepOnBorderdMapX" (\() -> keepOnBorderdMapX_impl this)
    jregisterMethod header_ "keepOnBorderdMapY" (\() -> keepOnBorderdMapY_impl this)
    jregisterMethod header_ "keepOnMapX" (\() -> keepOnMapX_impl this)
    jregisterMethod header_ "keepOnMapY" (\() -> keepOnMapY_impl this)
    pure this

initFields_ :: TiledLayerUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TiledLayerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TiledLayerUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TiledLayerUtil)
getInstance = do
        pure (TiledLayerUtil.instance_)


keepOnBorderdMapX :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> Int -> IO (Int)
keepOnBorderdMapX object_ a1 a2 a3 a4 = jmethod object_ "keepOnBorderdMapX" (\() -> (keepOnBorderdMapX_impl (javaCast object_ :: TiledLayerUtil))) () a1 a2 a3 a4

keepOnBorderdMapX_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> Int -> IO (Int)
keepOnBorderdMapX_super object_ a1 a2 a3 a4 = (keepOnBorderdMapX_impl (javaCast object_ :: TiledLayerUtil)) a1 a2 a3 a4

keepOnBorderdMapX_impl :: TiledLayerUtil -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> Int -> IO (Int)
keepOnBorderdMapX_impl this terrainTiledLayer x width mapBorderBufferWidth = do
        newX <- newIORef (x)
        let maxRight = (((jio (AllBinaryTiledLayer.getWidth terrainTiledLayer)) - width) - mapBorderBufferWidth)
        when ((x + width) > maxRight) $ do
            jset newX (maxRight)
        when (x < mapBorderBufferWidth) $ do
            jset newX (mapBorderBufferWidth)
        pure ((jget newX))


keepOnBorderdMapY :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> Int -> IO (Int)
keepOnBorderdMapY object_ a1 a2 a3 a4 = jmethod object_ "keepOnBorderdMapY" (\() -> (keepOnBorderdMapY_impl (javaCast object_ :: TiledLayerUtil))) () a1 a2 a3 a4

keepOnBorderdMapY_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> Int -> IO (Int)
keepOnBorderdMapY_super object_ a1 a2 a3 a4 = (keepOnBorderdMapY_impl (javaCast object_ :: TiledLayerUtil)) a1 a2 a3 a4

keepOnBorderdMapY_impl :: TiledLayerUtil -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> Int -> IO (Int)
keepOnBorderdMapY_impl this terrainTiledLayer y height mapBorderBufferHeight = do
        newY <- newIORef (y)
        let maxBottom = (((jio (AllBinaryTiledLayer.getHeight terrainTiledLayer)) - height) - mapBorderBufferHeight)
        when ((y + height) > maxBottom) $ do
            jset newY (maxBottom)
        when (y < mapBorderBufferHeight) $ do
            jset newY (mapBorderBufferHeight)
        pure ((jget newY))


keepOnMapX :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Int)
keepOnMapX object_ a1 a2 a3 = jmethod object_ "keepOnMapX" (\() -> (keepOnMapX_impl (javaCast object_ :: TiledLayerUtil))) () a1 a2 a3

keepOnMapX_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Int)
keepOnMapX_super object_ a1 a2 a3 = (keepOnMapX_impl (javaCast object_ :: TiledLayerUtil)) a1 a2 a3

keepOnMapX_impl :: TiledLayerUtil -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Int)
keepOnMapX_impl this terrainTiledLayer x width = do
        newX <- newIORef (x)
        let maxRight = ((jio (AllBinaryTiledLayer.getWidth terrainTiledLayer)) - width)
        when (x >= maxRight) $ do
            jset newX (maxRight)
        when (x < 0) $ do
            jset newX (0)
        pure ((jget newX))


keepOnMapY :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Int)
keepOnMapY object_ a1 a2 a3 = jmethod object_ "keepOnMapY" (\() -> (keepOnMapY_impl (javaCast object_ :: TiledLayerUtil))) () a1 a2 a3

keepOnMapY_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Int)
keepOnMapY_super object_ a1 a2 a3 = (keepOnMapY_impl (javaCast object_ :: TiledLayerUtil)) a1 a2 a3

keepOnMapY_impl :: TiledLayerUtil -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Int)
keepOnMapY_impl this terrainTiledLayer y height = do
        newY <- newIORef (y)
        let maxBottom = ((jio (AllBinaryTiledLayer.getHeight terrainTiledLayer)) - height)
        when (y >= maxBottom) $ do
            jset newY (maxBottom)
        when (y < 0) $ do
            jset newY (0)
        pure ((jget newY))


