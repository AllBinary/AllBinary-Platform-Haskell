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
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified WeaponLayer -- same package or java.lang
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data WeaponLayerArrayLayerCircularStaticPool = WeaponLayerArrayLayerCircularStaticPool
    { header_ :: JavaHeader
    , mAX :: IORef (Int)
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , wEAPONLAYER_ARRAY :: IORef (JavaArray (JavaArray (WeaponLayer.WeaponLayer)))
    , tWO_WEAPONLAYER_ARRAY :: IORef (JavaArray (JavaArray (WeaponLayer.WeaponLayer)))
    , tHREE_WEAPONLAYER_ARRAY :: IORef (JavaArray (JavaArray (WeaponLayer.WeaponLayer)))
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

instance_ :: WeaponLayerArrayLayerCircularStaticPool
{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO WeaponLayerArrayLayerCircularStaticPool
newRecord_ = do
    header_ <- newJavaHeader
    mAX <- newIORef 0
    circularIndexUtil <- newIORef javaNull
    wEAPONLAYER_ARRAY <- newIORef javaNull
    tWO_WEAPONLAYER_ARRAY <- newIORef javaNull
    tHREE_WEAPONLAYER_ARRAY <- newIORef javaNull
    let this = WeaponLayerArrayLayerCircularStaticPool header_ mAX circularIndexUtil wEAPONLAYER_ARRAY tWO_WEAPONLAYER_ARRAY tHREE_WEAPONLAYER_ARRAY
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getWeaponLayerArrays" (\() -> getWeaponLayerArrays_impl this)
    jregisterMethod header_ "getInstanceArray" (\() -> getInstanceArray_impl this)
    pure this

initFields_ :: WeaponLayerArrayLayerCircularStaticPool -> IO ()
initFields_ this = do
    jset this.mAX (5)
    jset this.circularIndexUtil =<< (CircularIndexUtil.createInstance (jget (this).mAX))
    jset this.wEAPONLAYER_ARRAY (javaNull)
    jset this.tWO_WEAPONLAYER_ARRAY (javaNull)
    jset this.tHREE_WEAPONLAYER_ARRAY (javaNull)
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
        jset (this).wEAPONLAYER_ARRAY (wEAPONLAYER_ARRAY)
        jset (this).tWO_WEAPONLAYER_ARRAY (tWO_WEAPONLAYER_ARRAY)
        jset (this).tHREE_WEAPONLAYER_ARRAY (tHREE_WEAPONLAYER_ARRAY)
        pure ()


getWeaponLayerArrays :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (JavaArray (WeaponLayer.WeaponLayer)))
getWeaponLayerArrays object_ a1 = jmethod object_ "getWeaponLayerArrays" (\() -> (getWeaponLayerArrays_impl (javaCast object_ :: WeaponLayerArrayLayerCircularStaticPool))) () a1

getWeaponLayerArrays_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (JavaArray (WeaponLayer.WeaponLayer)))
getWeaponLayerArrays_super object_ a1 = (getWeaponLayerArrays_impl (javaCast object_ :: WeaponLayerArrayLayerCircularStaticPool)) a1

getWeaponLayerArrays_impl :: WeaponLayerArrayLayerCircularStaticPool -> Int -> IO (JavaArray (JavaArray (WeaponLayer.WeaponLayer)))
getWeaponLayerArrays_impl this size = do
    javaCatchReturn $ do
        if (size == 1) then do
            javaReturn ((jget (this).wEAPONLAYER_ARRAY))
        else if (size == 2) then do
            javaReturn ((jget (this).tWO_WEAPONLAYER_ARRAY))
        else when (size == 3) $ do
            javaReturn ((jget (this).tHREE_WEAPONLAYER_ARRAY))
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getInstanceArray :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (WeaponLayer.WeaponLayer))
getInstanceArray object_ a1 = jmethod object_ "getInstanceArray" (\() -> (getInstanceArray_impl (javaCast object_ :: WeaponLayerArrayLayerCircularStaticPool))) () a1

getInstanceArray_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (WeaponLayer.WeaponLayer))
getInstanceArray_super object_ a1 = (getInstanceArray_impl (javaCast object_ :: WeaponLayerArrayLayerCircularStaticPool)) a1

getInstanceArray_impl :: WeaponLayerArrayLayerCircularStaticPool -> Int -> IO (JavaArray (WeaponLayer.WeaponLayer))
getInstanceArray_impl this size = do
        let weaponLayerArray = (jindex ((jio (WeaponLayerArrayLayerCircularStaticPool.getWeaponLayerArrays this size))) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil))))))
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure (weaponLayerArray)


