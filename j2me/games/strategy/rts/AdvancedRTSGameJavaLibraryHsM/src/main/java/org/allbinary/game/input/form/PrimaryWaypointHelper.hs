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
-- package org.allbinary.game.input.form
module PrimaryWaypointHelper where

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
import qualified NullPathFindingLayer -- org.allbinary.game.layer.NullPathFindingLayer
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified WaypointLayer -- org.allbinary.game.layer.waypoint.WaypointLayer

data PrimaryWaypointHelper = PrimaryWaypointHelper
    { header_ :: JavaHeader
    , waypointLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    }

instance JavaNull PrimaryWaypointHelper where
    javaNull = javaNullRecord "PrimaryWaypointHelper"

instance JavaEquals PrimaryWaypointHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PrimaryWaypointHelper where
    (==) = jrecordEquals

instance JavaObjectClass PrimaryWaypointHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PrimaryWaypointHelper
newRecord_ = do
    header_ <- newJavaHeader
    waypointLayer <- newIORef javaNull
    let this = PrimaryWaypointHelper header_ waypointLayer
    jregisterLevel header_ this
    jregisterMethod header_ "getWaypointLayer" (\() -> getWaypointLayer_impl this)
    jregisterMethod header_ "setWaypointLayer" (\() -> setWaypointLayer_impl this)
    pure this

initFields_ :: PrimaryWaypointHelper -> IO ()
initFields_ this = do
    jset this.waypointLayer ((javaCast NullPathFindingLayer.nULL_PATH_FINDING_LAYER :: PathFindingLayerInterface.PathFindingLayerInterface))
    pure ()


getInstance :: IO (PrimaryWaypointHelper)
getInstance = do
        pure (PrimaryWaypointHelper.instance_)

new_ :: IO PrimaryWaypointHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PrimaryWaypointHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getWaypointLayer :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getWaypointLayer object_ = jmethod object_ "getWaypointLayer" (\() -> (getWaypointLayer_impl (javaCast object_ :: PrimaryWaypointHelper))) ()

getWaypointLayer_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getWaypointLayer_super object_ = (getWaypointLayer_impl (javaCast object_ :: PrimaryWaypointHelper))

getWaypointLayer_impl :: PrimaryWaypointHelper -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getWaypointLayer_impl this = do
        pure ((jget (this).waypointLayer))


setWaypointLayer :: (JavaObjectClass this_) => this_ -> WaypointLayer.WaypointLayer -> IO (())
setWaypointLayer object_ a1 = jmethod object_ "setWaypointLayer" (\() -> (setWaypointLayer_impl (javaCast object_ :: PrimaryWaypointHelper))) () a1

setWaypointLayer_super :: (JavaObjectClass this_) => this_ -> WaypointLayer.WaypointLayer -> IO (())
setWaypointLayer_super object_ a1 = (setWaypointLayer_impl (javaCast object_ :: PrimaryWaypointHelper)) a1

setWaypointLayer_impl :: PrimaryWaypointHelper -> WaypointLayer.WaypointLayer -> IO (())
setWaypointLayer_impl this waypointLayer = do
        jset (this).waypointLayer (waypointLayer)
        pure ()


