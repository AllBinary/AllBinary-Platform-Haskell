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
-- package org.allbinary.game.layer.pickup
module PickupLayerCircularStaticPool (module PickupLayerCircularStaticPool, module AllBinaryLayerCircularPool) where

import AllBinaryLayerCircularPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstanceXYZ, getInstanceXYZ_super, getInstanceXYZ_impl, sINGLETON)
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
import qualified PickupLayer -- same package or java.lang
import qualified PickedUpLayerInterface -- same package or java.lang
import qualified PickedUpLayerInterfaceFactoryInterface -- same package or java.lang
import qualified AllBinaryLayerCircularPool -- org.allbinary.layer.AllBinaryLayerCircularPool

data PickupLayerCircularStaticPool = PickupLayerCircularStaticPool
    { header_ :: JavaHeader
    , base :: AllBinaryLayerCircularPool.AllBinaryLayerCircularPool
    }

instance JavaNull PickupLayerCircularStaticPool where
    javaNull = javaNullRecord "PickupLayerCircularStaticPool"

instance JavaEquals PickupLayerCircularStaticPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickupLayerCircularStaticPool where
    (==) = jrecordEquals

instance JavaObjectClass PickupLayerCircularStaticPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO PickupLayerCircularStaticPool
newRecord_ = do
    base <- AllBinaryLayerCircularPool.newRecord_
    let header_ = base.header_
    let this = PickupLayerCircularStaticPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceXYZ" (\() -> getInstanceXYZ_impl this)
    pure this

initFields_ :: PickupLayerCircularStaticPool -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PickupLayerCircularStaticPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PickupLayerCircularStaticPool -> IO ()
init_ this = do
        AllBinaryLayerCircularPool.init_ this.base
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (PickupLayerCircularStaticPool)
getInstance = do
        pure ((jget PickupLayerCircularStaticPool.sINGLETON))


-- throws Exception
getInstanceXYZ :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> Int -> Int -> Int -> IO (PickedUpLayerInterface.PickedUpLayerInterface)
getInstanceXYZ object_ a1 a2 a3 a4 = jmethod object_ "getInstanceXYZ" (\() -> (getInstanceXYZ_impl (javaCast object_ :: PickupLayerCircularStaticPool))) () a1 a2 a3 a4

getInstanceXYZ_super :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> Int -> Int -> Int -> IO (PickedUpLayerInterface.PickedUpLayerInterface)
getInstanceXYZ_super object_ a1 a2 a3 a4 = (getInstanceXYZ_impl (javaCast object_ :: PickupLayerCircularStaticPool)) a1 a2 a3 a4

getInstanceXYZ_impl :: PickupLayerCircularStaticPool -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> Int -> Int -> Int -> IO (PickedUpLayerInterface.PickedUpLayerInterface)
getInstanceXYZ_impl this pickedUpLayerInterfaceFactoryInterface x y z = do
        let pickupLayer = (javaCast (jio (AllBinaryLayerCircularPool.getNextInstance this)) :: PickupLayer.PickupLayer)
        Control.Monad.void (PickupLayer.initXYZ pickupLayer x y z)
        Control.Monad.void (PickupLayer.init pickupLayer pickedUpLayerInterfaceFactoryInterface (jio (PickedUpLayerInterfaceFactoryInterface.getAnimationInterface pickedUpLayerInterfaceFactoryInterface)))
        pure ((javaCast pickupLayer :: PickedUpLayerInterface.PickedUpLayerInterface))


