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
-- package org.allbinary.math
module LayerDistanceUtil where

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
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified MathUtil -- org.allbinary.logic.math.MathUtil

data LayerDistanceUtil = LayerDistanceUtil
    { header_ :: JavaHeader
    , mathUtil :: IORef (MathUtil.MathUtil)
    }

instance JavaNull LayerDistanceUtil where
    javaNull = javaNullRecord "LayerDistanceUtil"

instance JavaEquals LayerDistanceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerDistanceUtil where
    (==) = jrecordEquals

instance JavaObjectClass LayerDistanceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerDistanceUtil
newRecord_ = do
    header_ <- newJavaHeader
    mathUtil <- newIORef javaNull
    let this = LayerDistanceUtil header_ mathUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getDistance" (\() -> getDistance_impl this)
    jregisterMethod header_ "getDistance3D" (\() -> getDistance3D_impl this)
    jregisterMethod header_ "getDistanceAt" (\() -> getDistanceAt_impl this)
    pure this

initFields_ :: LayerDistanceUtil -> IO ()
initFields_ this = do
    jset this.mathUtil =<< (MathUtil.getInstance)
    pure ()

new_ :: IO LayerDistanceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerDistanceUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LayerDistanceUtil)
getInstance = do
        pure (LayerDistanceUtil.instance_)


getDistance :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getDistance object_ a1 a2 = jmethod object_ "getDistance" (\() -> (getDistance_impl (javaCast object_ :: LayerDistanceUtil))) () a1 a2

getDistance_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getDistance_super object_ a1 a2 = (getDistance_impl (javaCast object_ :: LayerDistanceUtil)) a1 a2

getDistance_impl :: LayerDistanceUtil -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getDistance_impl this layerInterface layerInterface2 = do
        let dx = ((((jio (AllBinaryLayer.getXP layerInterface)) + (jio (AllBinaryLayer.getHalfWidth layerInterface)))) - (((jio (AllBinaryLayer.getXP layerInterface2)) + (jio (AllBinaryLayer.getHalfWidth layerInterface2)))))
        let dy = ((((jio (AllBinaryLayer.getYP layerInterface)) + (jio (AllBinaryLayer.getHalfHeight layerInterface)))) - (((jio (AllBinaryLayer.getYP layerInterface2)) + (jio (AllBinaryLayer.getHalfHeight layerInterface2)))))
        pure ((jio (MathUtil.sqrt ((jget (this).mathUtil)) (((dx * dx)) + ((dy * dy))))))


getDistance3D :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getDistance3D object_ a1 a2 = jmethod object_ "getDistance3D" (\() -> (getDistance3D_impl (javaCast object_ :: LayerDistanceUtil))) () a1 a2

getDistance3D_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getDistance3D_super object_ a1 a2 = (getDistance3D_impl (javaCast object_ :: LayerDistanceUtil)) a1 a2

getDistance3D_impl :: LayerDistanceUtil -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getDistance3D_impl this layerInterface layerInterface2 = do
        let dx = ((((jio (AllBinaryLayer.getXP layerInterface)) + (jio (AllBinaryLayer.getHalfWidth layerInterface)))) - (((jio (AllBinaryLayer.getXP layerInterface2)) + (jio (AllBinaryLayer.getHalfWidth layerInterface2)))))
        let dy = ((((jio (AllBinaryLayer.getYP layerInterface)) + (jio (AllBinaryLayer.getHalfHeight layerInterface)))) - (((jio (AllBinaryLayer.getYP layerInterface2)) + (jio (AllBinaryLayer.getHalfHeight layerInterface2)))))
        let dz = ((((jio (AllBinaryLayer.getZP layerInterface)) + (jio (AllBinaryLayer.getHalfDepth layerInterface)))) - (((jio (AllBinaryLayer.getZP layerInterface2)) + (jio (AllBinaryLayer.getHalfDepth layerInterface2)))))
        pure ((jio (MathUtil.sqrt ((jget (this).mathUtil)) ((((dx * dx)) + ((dy * dy))) + ((dz * dz))))))


getDistanceAt :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GPoint.GPoint -> IO (Int)
getDistanceAt object_ a1 a2 = jmethod object_ "getDistanceAt" (\() -> (getDistanceAt_impl (javaCast object_ :: LayerDistanceUtil))) () a1 a2

getDistanceAt_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> GPoint.GPoint -> IO (Int)
getDistanceAt_super object_ a1 a2 = (getDistanceAt_impl (javaCast object_ :: LayerDistanceUtil)) a1 a2

getDistanceAt_impl :: LayerDistanceUtil -> AllBinaryLayer.AllBinaryLayer -> GPoint.GPoint -> IO (Int)
getDistanceAt_impl this layerInterface point = do
        let dx = ((jio (AllBinaryLayer.getXP layerInterface)) - (jio (GPoint.getX point)))
        let dy = ((jio (AllBinaryLayer.getYP layerInterface)) - (jio (GPoint.getY point)))
        pure ((jio (MathUtil.sqrt ((jget (this).mathUtil)) (((dx * dx)) + ((dy * dy))))))


