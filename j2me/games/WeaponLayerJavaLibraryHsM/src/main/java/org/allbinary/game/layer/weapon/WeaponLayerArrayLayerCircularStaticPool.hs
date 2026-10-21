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
-- package org.allbinary.game.layer.weapon
module WeaponLayerArrayLayerCircularStaticPool where

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
import qualified Any -- same package or java.lang
import qualified WeaponLayer -- same package or java.lang
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data WeaponLayerArrayLayerCircularStaticPool = WeaponLayerArrayLayerCircularStaticPool
    { header_ :: JavaHeader
    , mAX :: IORef (Int)
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , aLL_WEAPONLAYER_ARRAY :: IORef (JavaArray (JavaArray (JavaArray (Any.Any))))
    }

instance JavaNull WeaponLayerArrayLayerCircularStaticPool where
    javaNull = javaNullRecord "WeaponLayerArrayLayerCircularStaticPool"

instance JavaEquals WeaponLayerArrayLayerCircularStaticPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeaponLayerArrayLayerCircularStaticPool where
    (==) = jrecordEquals

instance JavaObjectClass WeaponLayerArrayLayerCircularStaticPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WeaponLayerArrayLayerCircularStaticPool
newRecord_ = do
    header_ <- newJavaHeader
    mAX <- newIORef 0
    circularIndexUtil <- newIORef javaNull
    aLL_WEAPONLAYER_ARRAY <- newIORef javaNull
    let this = WeaponLayerArrayLayerCircularStaticPool header_ mAX circularIndexUtil aLL_WEAPONLAYER_ARRAY
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstanceArray" (\() -> getInstanceArray_impl this)
    pure this

initFields_ :: WeaponLayerArrayLayerCircularStaticPool -> IO ()
initFields_ this = do
    jset this.mAX (5)
    jset this.circularIndexUtil =<< (CircularIndexUtil.createInstance (jget (this).mAX))
    jset this.aLL_WEAPONLAYER_ARRAY ((jnewArray (4) javaNull))
    pure ()

new_ :: IO WeaponLayerArrayLayerCircularStaticPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WeaponLayerArrayLayerCircularStaticPool -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (WeaponLayerArrayLayerCircularStaticPool)
getInstance = do
        pure (WeaponLayerArrayLayerCircularStaticPool.instance_)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: WeaponLayerArrayLayerCircularStaticPool))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: WeaponLayerArrayLayerCircularStaticPool))

init_impl :: WeaponLayerArrayLayerCircularStaticPool -> IO (())
init_impl this = do
        let wEAPONLAYER_ARRAY = (jnewArray (((jget (this).mAX) * 2)) javaNull)
        let tWO_WEAPONLAYER_ARRAY = (jnewArray ((jget (this).mAX)) javaNull)
        let tHREE_WEAPONLAYER_ARRAY = (jnewArray ((jget (this).mAX)) javaNull)
        forM_ [0 .. (jget (this).mAX) - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex wEAPONLAYER_ARRAY (index) ((jnewArray (1) javaNull))
            jsetIndex tWO_WEAPONLAYER_ARRAY (index) ((jnewArray (2) javaNull))
            jsetIndex tHREE_WEAPONLAYER_ARRAY (index) ((jnewArray (3) javaNull))
        jsetIndex ((jget (this).aLL_WEAPONLAYER_ARRAY)) (1) (wEAPONLAYER_ARRAY)
        jsetIndex ((jget (this).aLL_WEAPONLAYER_ARRAY)) (2) (tWO_WEAPONLAYER_ARRAY)
        jsetIndex ((jget (this).aLL_WEAPONLAYER_ARRAY)) (3) (tHREE_WEAPONLAYER_ARRAY)
        pure ()


-- throws Exception
getInstanceArray :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (WeaponLayer.WeaponLayer))
getInstanceArray object_ a1 = jmethod object_ "getInstanceArray" (\() -> (getInstanceArray_impl (javaCast object_ :: WeaponLayerArrayLayerCircularStaticPool))) () a1

getInstanceArray_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (WeaponLayer.WeaponLayer))
getInstanceArray_super object_ a1 = (getInstanceArray_impl (javaCast object_ :: WeaponLayerArrayLayerCircularStaticPool)) a1

getInstanceArray_impl :: WeaponLayerArrayLayerCircularStaticPool -> Int -> IO (JavaArray (WeaponLayer.WeaponLayer))
getInstanceArray_impl this size = do
        let weaponLayerArray = (javaCast (jindex ((jindex ((jget (this).aLL_WEAPONLAYER_ARRAY)) (size))) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))) :: JavaArray (WeaponLayer.WeaponLayer))
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure (weaponLayerArray)


