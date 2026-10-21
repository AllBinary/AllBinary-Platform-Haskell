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
-- package org.allbinary.media.graphics.geography.map.racetrack.drop
module RaceTrackAdjacentDropLayerFactory where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified LayerInterfaceFactoryInterface -- org.allbinary.layer.LayerInterfaceFactoryInterface

data RaceTrackAdjacentDropLayerFactory = RaceTrackAdjacentDropLayerFactory
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    }

instance JavaNull RaceTrackAdjacentDropLayerFactory where
    javaNull = javaNullRecord "RaceTrackAdjacentDropLayerFactory"

instance JavaEquals RaceTrackAdjacentDropLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTrackAdjacentDropLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass RaceTrackAdjacentDropLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE dROP_LAYER_FACTORY #-}
dROP_LAYER_FACTORY = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RaceTrackAdjacentDropLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    let this = RaceTrackAdjacentDropLayerFactory header_ list basicArrayListUtil
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "getRandomInstance" (\() -> getRandomInstance_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: RaceTrackAdjacentDropLayerFactory -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    pure ()

new_ :: IO RaceTrackAdjacentDropLayerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTrackAdjacentDropLayerFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: RaceTrackAdjacentDropLayerFactory))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: RaceTrackAdjacentDropLayerFactory))

clear_impl :: RaceTrackAdjacentDropLayerFactory -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


getInstance :: IO (RaceTrackAdjacentDropLayerFactory)
getInstance = do
        pure ((jget RaceTrackAdjacentDropLayerFactory.dROP_LAYER_FACTORY))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: RaceTrackAdjacentDropLayerFactory))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: RaceTrackAdjacentDropLayerFactory))

getSize_impl :: RaceTrackAdjacentDropLayerFactory -> IO (Int)
getSize_impl this = do
        (BasicArrayList.size ((jget (this).list)))


getRandomInstance :: (JavaObjectClass this_) => this_ -> IO (LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
getRandomInstance object_ = jmethod object_ "getRandomInstance" (\() -> (getRandomInstance_impl (javaCast object_ :: RaceTrackAdjacentDropLayerFactory))) ()

getRandomInstance_super :: (JavaObjectClass this_) => this_ -> IO (LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
getRandomInstance_super object_ = (getRandomInstance_impl (javaCast object_ :: RaceTrackAdjacentDropLayerFactory))

getRandomInstance_impl :: RaceTrackAdjacentDropLayerFactory -> IO (LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface)
getRandomInstance_impl this = do
        pure ((javaCast (jio (BasicArrayListUtil.getRandom ((jget (this).basicArrayListUtil)) (jget (this).list))) :: LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface))


add :: (JavaObjectClass this_) => this_ -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: RaceTrackAdjacentDropLayerFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: RaceTrackAdjacentDropLayerFactory)) a1

add_impl :: RaceTrackAdjacentDropLayerFactory -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (())
add_impl this layerInterfaceFactoryInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) layerInterfaceFactoryInterface)
        pure ()


