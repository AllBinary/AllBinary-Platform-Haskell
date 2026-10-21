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
-- package org.allbinary.game.layer.drop
module DropLayerFactory where

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
import qualified PickedUpLayerInterfaceFactoryInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data DropLayerFactory = DropLayerFactory
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    }

instance JavaNull DropLayerFactory where
    javaNull = javaNullRecord "DropLayerFactory"

instance JavaEquals DropLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DropLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass DropLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE dROP_LAYER_FACTORY #-}
dROP_LAYER_FACTORY = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DropLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    let this = DropLayerFactory header_ list basicArrayListUtil
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "getRandomInstance" (\() -> getRandomInstance_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: DropLayerFactory -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    pure ()

new_ :: IO DropLayerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DropLayerFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: DropLayerFactory))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: DropLayerFactory))

clear_impl :: DropLayerFactory -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


getInstance :: IO (DropLayerFactory)
getInstance = do
        pure (DropLayerFactory.dROP_LAYER_FACTORY)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: DropLayerFactory))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: DropLayerFactory))

getSize_impl :: DropLayerFactory -> IO (Int)
getSize_impl this = do
        (BasicArrayList.size ((jget (this).list)))


getRandomInstance :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
getRandomInstance object_ = jmethod object_ "getRandomInstance" (\() -> (getRandomInstance_impl (javaCast object_ :: DropLayerFactory))) ()

getRandomInstance_super :: (JavaObjectClass this_) => this_ -> IO (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
getRandomInstance_super object_ = (getRandomInstance_impl (javaCast object_ :: DropLayerFactory))

getRandomInstance_impl :: DropLayerFactory -> IO (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
getRandomInstance_impl this = do
        pure ((javaCast (jio (BasicArrayListUtil.getRandom ((jget (this).basicArrayListUtil)) (jget (this).list))) :: PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface))


add :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: DropLayerFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: DropLayerFactory)) a1

add_impl :: DropLayerFactory -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> IO (())
add_impl this layerInterfaceFactoryInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) layerInterfaceFactoryInterface)
        pure ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: DropLayerFactory))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: DropLayerFactory))

getList_impl :: DropLayerFactory -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


