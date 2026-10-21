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
module CountedPickedUpLayerInterfaceFactory (module CountedPickedUpLayerInterfaceFactory, module PickedUpLayerInterfaceFactory) where

import PickedUpLayerInterfaceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNextInstance, getNextInstance_super, getNextInstance_impl, getTotal, getTotal_super, getTotal_impl, getId, getId_super, getId_impl, nULL_COUNTED_PICKUP_LAYER_FACTORY, id)
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
import qualified PickedUpLayerTypeFactory -- same package or java.lang
import qualified IconLayer -- same package or java.lang
import qualified CountedPickedUpLayerInterfaceFactoryPool -- same package or java.lang
import qualified PickedUpLayerType -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified PickedUpLayerInterfaceFactory
import qualified CountedPickedUpLayerInterfaceFactoryInterface

-- implements CountedPickedUpLayerInterfaceFactoryInterface
data CountedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory
    { header_ :: JavaHeader
    , base :: PickedUpLayerInterfaceFactory.PickedUpLayerInterfaceFactory
    , id :: IORef (Int)
    }

instance JavaNull CountedPickedUpLayerInterfaceFactory where
    javaNull = javaNullRecord "CountedPickedUpLayerInterfaceFactory"

instance JavaEquals CountedPickedUpLayerInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CountedPickedUpLayerInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass CountedPickedUpLayerInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_COUNTED_PICKUP_LAYER_FACTORY #-}
nULL_COUNTED_PICKUP_LAYER_FACTORY = unsafePerformIO ((new_3 (jget ((jio (PickedUpLayerTypeFactory.getInstance))).nONE) (IconLayer.nULL_ICON_LAYER) (jio (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0))))

newRecord_ :: IO CountedPickedUpLayerInterfaceFactory
newRecord_ = do
    base <- PickedUpLayerInterfaceFactory.newRecord_
    let header_ = base.header_
    id <- newIORef 0
    let this = CountedPickedUpLayerInterfaceFactory header_ base id
    jregisterLevel header_ this
    CountedPickedUpLayerInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getNextInstance" (\() -> getNextInstance_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    pure this

initFields_ :: CountedPickedUpLayerInterfaceFactory -> IO ()
initFields_ this = do
    jset this.id (0)
    pure ()

new_3 :: PickedUpLayerType.PickedUpLayerType -> IconLayer.IconLayer -> Animation.Animation -> IO CountedPickedUpLayerInterfaceFactory
new_3 pickeUpLayerType iconLayer animationInterface = do
    this <- newRecord_
    init_3 this pickeUpLayerType iconLayer animationInterface
    pure this

init_3 :: CountedPickedUpLayerInterfaceFactory -> PickedUpLayerType.PickedUpLayerType -> IconLayer.IconLayer -> Animation.Animation -> IO ()
init_3 this pickeUpLayerType iconLayer animationInterface = do
        PickedUpLayerInterfaceFactory.init_3 this.base (pickeUpLayerType) (iconLayer) (animationInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        list <- (CountedPickedUpLayerInterfaceFactoryPool.getList ((jio (CountedPickedUpLayerInterfaceFactoryPool.getInstance))))
        assignedValue <- (BasicArrayList.size list)
        jset (this).id (assignedValue)
        Control.Monad.void (BasicArrayList.add list this)
        pure ()


-- throws Exception
getNextInstance :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance object_ a1 a2 a3 a4 = jmethod object_ "getNextInstance" (\() -> (getNextInstance_impl (javaCast object_ :: CountedPickedUpLayerInterfaceFactory))) () a1 a2 a3 a4

getNextInstance_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance_super object_ a1 a2 a3 a4 = (getNextInstance_impl (javaCast object_ :: CountedPickedUpLayerInterfaceFactory)) a1 a2 a3 a4

getNextInstance_impl :: CountedPickedUpLayerInterfaceFactory -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance_impl this hashtable x y z = do
        javaThrow ((JavaException "Exception" (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED)))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: CountedPickedUpLayerInterfaceFactory))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: CountedPickedUpLayerInterfaceFactory))

getTotal_impl :: CountedPickedUpLayerInterfaceFactory -> IO (Int)
getTotal_impl this = do
        pure ((Prelude.negate 1))


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: CountedPickedUpLayerInterfaceFactory))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: CountedPickedUpLayerInterfaceFactory))

getId_impl :: CountedPickedUpLayerInterfaceFactory -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


