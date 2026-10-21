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
-- package org.allbinary.game.ag.layer.pickup.points
module Points30kPickedUpLayerInterfaceFactory (module Points30kPickedUpLayerInterfaceFactory, module PickedUpLayerInterfaceFactory) where

import PickedUpLayerInterfaceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, getTotal, getTotal_super, getTotal_impl, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, pickedUpLayerInterfaceFactoryInterface, pool)
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
import qualified PointsLayerCircularStaticPool -- same package or java.lang
import qualified PointsLayerFactory -- same package or java.lang
import qualified PointsResources -- same package or java.lang
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified GameConfigurationUtil -- org.allbinary.game.configuration.GameConfigurationUtil
import qualified CountedPickedUpLayerInterfaceFactory -- org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
import qualified IconLayerFactory -- org.allbinary.game.layer.pickup.IconLayerFactory
import qualified PickedUpLayerInterfaceFactory -- org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory
import qualified PickedUpLayerInterfaceFactoryInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
import qualified PickedUpLayerTypeFactory -- org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory
import qualified PickupProcessorInterface -- org.allbinary.game.layer.pickup.PickupProcessorInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

-- implements PickupProcessorInterface
data Points30kPickedUpLayerInterfaceFactory = Points30kPickedUpLayerInterfaceFactory
    { header_ :: JavaHeader
    , base :: PickedUpLayerInterfaceFactory.PickedUpLayerInterfaceFactory
    , pool :: IORef (PointsLayerCircularStaticPool.PointsLayerCircularStaticPool)
    }

instance JavaNull Points30kPickedUpLayerInterfaceFactory where
    javaNull = javaNullRecord "Points30kPickedUpLayerInterfaceFactory"

instance JavaEquals Points30kPickedUpLayerInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Points30kPickedUpLayerInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass Points30kPickedUpLayerInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE pickedUpLayerInterfaceFactoryInterface #-}
pickedUpLayerInterfaceFactoryInterface = unsafePerformIO (newIORef ((javaCast CountedPickedUpLayerInterfaceFactory.nULL_COUNTED_PICKUP_LAYER_FACTORY :: PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)))

newRecord_ :: IO Points30kPickedUpLayerInterfaceFactory
newRecord_ = do
    base <- PickedUpLayerInterfaceFactory.newRecord_
    let header_ = base.header_
    pool <- newIORef javaNull
    let this = Points30kPickedUpLayerInterfaceFactory header_ base pool
    jregisterLevel header_ this
    PickupProcessorInterface.registerInterface_ header_
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: Points30kPickedUpLayerInterfaceFactory -> IO ()
initFields_ this = do
    jset this.pool =<< (PointsLayerCircularStaticPool.new_2 (jio (PointsLayerFactory.new_1 ((jio (GameConfigurationUtil.getCompetitionValue ((jio (GameConfigurationUtil.getInstance))))) * 30000))) 1)
    pure ()


-- throws Exception
init :: IO (())
init = do
        assignedValue <- (new_)
        jset Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface (assignedValue)
        pure ()

new_ :: IO Points30kPickedUpLayerInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Points30kPickedUpLayerInterfaceFactory -> IO ()
init_ this = do
        PickedUpLayerInterfaceFactory.init_3 this.base (jget ((jio (PickedUpLayerTypeFactory.getInstance))).pOINTS) (jio (IconLayerFactory.getInstance (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget ((jio (PointsResources.getInstance))).rESOURCE_3)))) 0)) 10 10)) (jio (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget ((jio (PointsResources.getInstance))).rESOURCE_3)))) 0))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: Points30kPickedUpLayerInterfaceFactory))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: Points30kPickedUpLayerInterfaceFactory))

getTotal_impl :: Points30kPickedUpLayerInterfaceFactory -> IO (Int)
getTotal_impl this = do
        pure (1)


getInstance :: IO (PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface)
getInstance = do
        pure ((jget Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface))


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: Points30kPickedUpLayerInterfaceFactory))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: Points30kPickedUpLayerInterfaceFactory)) a1

process_impl :: Points30kPickedUpLayerInterfaceFactory -> AllBinaryLayer.AllBinaryLayer -> IO (())
process_impl this sourceLayerInterface = do
        Control.Monad.void (PointsLayerCircularStaticPool.visit ((jget (this).pool)) sourceLayerInterface)
        pure ()


