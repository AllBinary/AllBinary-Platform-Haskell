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
module PickupBehavior where

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
import qualified PickupProcessorInterface -- same package or java.lang
import qualified PickedUpLayerInterfaceFactoryInterface -- same package or java.lang
import qualified PickedUpLayerType -- same package or java.lang
import qualified PickedUpLayerTypeFactory -- same package or java.lang
import qualified CountedPickedUpLayerInterfaceFactoryInterface -- same package or java.lang
import qualified PickedUpLayerInterface -- same package or java.lang
import qualified CountedPickedUpLayerInterfaceFactory -- same package or java.lang
import qualified HealthInterfaceCompositeInterface -- org.allbinary.game.health.HealthInterfaceCompositeInterface
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified CountedLayerInterfaceFactoryPart -- org.allbinary.game.part.CountedLayerInterfaceFactoryPart
import qualified PartInterface -- org.allbinary.game.part.PartInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PickupBehaviorInterface

-- implements PickupBehaviorInterface
data PickupBehavior = PickupBehavior
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , countedIndex :: IORef (Int)
    , ownerLayerInterface :: IORef (CollidableCompositeLayer.CollidableCompositeLayer)
    }

instance JavaNull PickupBehavior where
    javaNull = javaNullRecord "PickupBehavior"

instance JavaEquals PickupBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PickupBehavior where
    (==) = jrecordEquals

instance JavaObjectClass PickupBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PICKUP_BEHAVIOR #-}
nULL_PICKUP_BEHAVIOR = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PickupBehavior
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    countedIndex <- newIORef 0
    ownerLayerInterface <- newIORef javaNull
    let this = PickupBehavior header_ logUtil countedIndex ownerLayerInterface
    jregisterLevel header_ this
    PickupBehaviorInterface.registerInterface_ header_
    jregisterMethod header_ "doPickup" (\() -> doPickup_impl this)
    jregisterMethod header_ "doPickupLayer" (\() -> doPickupLayer_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "addAt" (\() -> addAt_impl this)
    jregisterMethod header_ "getFirstAvailableCountedLayerInterfaceFactory" (\() -> getFirstAvailableCountedLayerInterfaceFactory_impl this)
    jregisterMethod header_ "getCountedLayerInterfaceFactoryForSlot" (\() -> getCountedLayerInterfaceFactoryForSlot_impl this)
    jregisterMethod header_ "getCountedIndex" (\() -> getCountedIndex_impl this)
    pure this

initFields_ :: PickupBehavior -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.countedIndex (0)
    jset this.ownerLayerInterface (javaNull)
    pure ()


getNullInstance :: IO (PickupBehavior)
getNullInstance = do
        when ((jget PickupBehavior.nULL_PICKUP_BEHAVIOR) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_2 (jio (CollidableCompositeLayer.getNullInstance)) 0)
            jset PickupBehavior.nULL_PICKUP_BEHAVIOR (assignedValue)
        pure ((javaCast (jget PickupBehavior.nULL_PICKUP_BEHAVIOR) :: PickupBehavior))

new_2 :: CollidableCompositeLayer.CollidableCompositeLayer -> Int -> IO PickupBehavior
new_2 ownerLayerInterface countedIndex = do
    this <- newRecord_
    init_2 this ownerLayerInterface countedIndex
    pure this

init_2 :: PickupBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> Int -> IO ()
init_2 this ownerLayerInterface countedIndex = do
        initFields_ this
        jset (this).ownerLayerInterface (ownerLayerInterface)
        jset (this).countedIndex (countedIndex)
        pure ()


doPickup :: (JavaObjectClass this_) => this_ -> PickupProcessorInterface.PickupProcessorInterface -> IO (())
doPickup object_ a1 = jmethod object_ "doPickup" (\() -> (doPickup_impl (javaCast object_ :: PickupBehavior))) () a1

doPickup_super :: (JavaObjectClass this_) => this_ -> PickupProcessorInterface.PickupProcessorInterface -> IO (())
doPickup_super object_ a1 = (doPickup_impl (javaCast object_ :: PickupBehavior)) a1

doPickup_impl :: PickupBehavior -> PickupProcessorInterface.PickupProcessorInterface -> IO (())
doPickup_impl this pickupProcessorInterface = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "doPickup" e)
            ) $ do
            let healthInterfaceCompositeInterface = (javaCast (jget (this).ownerLayerInterface) :: HealthInterfaceCompositeInterface.HealthInterfaceCompositeInterface)
            when (jio (HealthInterfaceCompositeInterface.isAlive ((jio (HealthInterfaceCompositeInterface.getHealthInterface healthInterfaceCompositeInterface))))) $ do
                Control.Monad.void (PickupProcessorInterface.process pickupProcessorInterface (jget (this).ownerLayerInterface))
        pure ()


doPickupLayer :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterface.PickedUpLayerInterface -> IO (())
doPickupLayer object_ a1 = jmethod object_ "doPickupLayer" (\() -> (doPickupLayer_impl (javaCast object_ :: PickupBehavior))) () a1

doPickupLayer_super :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterface.PickedUpLayerInterface -> IO (())
doPickupLayer_super object_ a1 = (doPickupLayer_impl (javaCast object_ :: PickupBehavior)) a1

doPickupLayer_impl :: PickupBehavior -> PickedUpLayerInterface.PickedUpLayerInterface -> IO (())
doPickupLayer_impl this pickupLayerInterface = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this "doPickup" e)
            ) $ do
            pickedUpLayerInterfaceFactoryInterface <- (PickedUpLayerInterface.getPickedUpLayerInterfaceFactoryInterface pickupLayerInterface)
            pickedUpLayerType <- (PickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType pickedUpLayerInterfaceFactoryInterface)
            pickedUpLayerTypeFactory <- (PickedUpLayerTypeFactory.getInstance)
            if ((((pickedUpLayerType == (jget (pickedUpLayerTypeFactory).bEAM)) || (pickedUpLayerType == (jget (pickedUpLayerTypeFactory).mINE))) || (pickedUpLayerType == (jget (pickedUpLayerTypeFactory).pROJECTILE))) || (pickedUpLayerType == (jget (pickedUpLayerTypeFactory).eNHANCEMENT))) then do
                Control.Monad.void (PickupBehavior.add this (javaCast pickedUpLayerInterfaceFactoryInterface :: CountedPickedUpLayerInterfaceFactoryInterface.CountedPickedUpLayerInterfaceFactoryInterface))
            else if ((jio (PickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType pickedUpLayerInterfaceFactoryInterface)) == (jget (pickedUpLayerTypeFactory).pART)) then do
                let collidableDestroyableDamageableLayer = (javaCast (jget (this).ownerLayerInterface) :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
                Control.Monad.void (CollidableDestroyableDamageableLayer.addPart collidableDestroyableDamageableLayer pickedUpLayerInterfaceFactoryInterface)
            else if (pickedUpLayerType == (jget (pickedUpLayerTypeFactory).nONE)) then do
                pure ()
            else do
                let pickupProcessorInterface = (javaCast pickedUpLayerInterfaceFactoryInterface :: PickupProcessorInterface.PickupProcessorInterface)
                Control.Monad.void (PickupBehavior.doPickup this pickupProcessorInterface)
            Control.Monad.void (PickedUpLayerInterface.setPickedUp pickupLayerInterface)
        pure ()


add :: (JavaObjectClass this_) => this_ -> CountedPickedUpLayerInterfaceFactoryInterface.CountedPickedUpLayerInterfaceFactoryInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PickupBehavior))) () a1

add_super :: (JavaObjectClass this_) => this_ -> CountedPickedUpLayerInterfaceFactoryInterface.CountedPickedUpLayerInterfaceFactoryInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: PickupBehavior)) a1

add_impl :: PickupBehavior -> CountedPickedUpLayerInterfaceFactoryInterface.CountedPickedUpLayerInterfaceFactoryInterface -> IO (())
add_impl this countedPickedUpLayerInterfaceFactoryInterface = do
        let partIndex = ((jio (CountedPickedUpLayerInterfaceFactoryInterface.getId countedPickedUpLayerInterfaceFactoryInterface)) + (jget (this).countedIndex))
        Control.Monad.void (PickupBehavior.addAt this countedPickedUpLayerInterfaceFactoryInterface partIndex)
        pure ()


addAt :: (JavaObjectClass this_) => this_ -> CountedPickedUpLayerInterfaceFactoryInterface.CountedPickedUpLayerInterfaceFactoryInterface -> Int -> IO (())
addAt object_ a1 a2 = jmethod object_ "addAt" (\() -> (addAt_impl (javaCast object_ :: PickupBehavior))) () a1 a2

addAt_super :: (JavaObjectClass this_) => this_ -> CountedPickedUpLayerInterfaceFactoryInterface.CountedPickedUpLayerInterfaceFactoryInterface -> Int -> IO (())
addAt_super object_ a1 a2 = (addAt_impl (javaCast object_ :: PickupBehavior)) a1 a2

addAt_impl :: PickupBehavior -> CountedPickedUpLayerInterfaceFactoryInterface.CountedPickedUpLayerInterfaceFactoryInterface -> Int -> IO (())
addAt_impl this countedPickedUpLayerInterfaceFactoryInterface partIndex = do
        let collidableDestroyableDamageableLayer = (javaCast (jget (this).ownerLayerInterface) :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
        let countedLayerInterfaceFactory = (javaCast (jindex ((jio (CollidableDestroyableDamageableLayer.getPartInterfaceArray collidableDestroyableDamageableLayer))) (partIndex)) :: CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart)
        Control.Monad.void (CountedLayerInterfaceFactoryPart.setTotal countedLayerInterfaceFactory ((jio (CountedLayerInterfaceFactoryPart.getTotal countedLayerInterfaceFactory)) + (jio (CountedPickedUpLayerInterfaceFactoryInterface.getTotal countedPickedUpLayerInterfaceFactoryInterface))))
        pure ()


getFirstAvailableCountedLayerInterfaceFactory :: (JavaObjectClass this_) => this_ -> JavaArray (PickedUpLayerType.PickedUpLayerType) -> IO (CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart)
getFirstAvailableCountedLayerInterfaceFactory object_ a1 = jmethod object_ "getFirstAvailableCountedLayerInterfaceFactory" (\() -> (getFirstAvailableCountedLayerInterfaceFactory_impl (javaCast object_ :: PickupBehavior))) () a1

getFirstAvailableCountedLayerInterfaceFactory_super :: (JavaObjectClass this_) => this_ -> JavaArray (PickedUpLayerType.PickedUpLayerType) -> IO (CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart)
getFirstAvailableCountedLayerInterfaceFactory_super object_ a1 = (getFirstAvailableCountedLayerInterfaceFactory_impl (javaCast object_ :: PickupBehavior)) a1

getFirstAvailableCountedLayerInterfaceFactory_impl :: PickupBehavior -> JavaArray (PickedUpLayerType.PickedUpLayerType) -> IO (CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart)
getFirstAvailableCountedLayerInterfaceFactory_impl this pickedUpLayerTypeArray = do
    javaCatchReturn $ do
        let collidableDestroyableDamageableLayer = (javaCast (jget (this).ownerLayerInterface) :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
        partInterfaceArray <- (CollidableDestroyableDamageableLayer.getPartInterfaceArray collidableDestroyableDamageableLayer)
        let size = (jlength partInterfaceArray)
        nextCountedLayerInterfaceFactory <- newIORef (javaNull)
        countedPickedUpLayerInterfaceFactory <- newIORef (javaNull)
        forM_ [(jget (this).countedIndex) .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextCountedLayerInterfaceFactory ((javaCast (jindex ((jio (CollidableDestroyableDamageableLayer.getPartInterfaceArray collidableDestroyableDamageableLayer))) (index)) :: CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart))
            assignedValue <- (CountedLayerInterfaceFactoryPart.getCountedPickedUpLayerInterfaceFactory ((jget nextCountedLayerInterfaceFactory)))
            jset countedPickedUpLayerInterfaceFactory (assignedValue)
            index2 <- newIORef ((jlength pickedUpLayerTypeArray))
            fix $ \loop -> when ((jpreIncrement index2 (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                when ((jio (CountedPickedUpLayerInterfaceFactory.getPickedUpLayerType ((jget countedPickedUpLayerInterfaceFactory)))) == (jindex pickedUpLayerTypeArray ((jget index2)))) $ do
                    when ((jio (CountedLayerInterfaceFactoryPart.getTotal ((jget nextCountedLayerInterfaceFactory)))) > 0) $ do
                        javaReturn ((jget nextCountedLayerInterfaceFactory))
        pure (CountedLayerInterfaceFactoryPart.nULL_COUNTED_LAYER_INTERFACE_FACTORY)


-- throws Exception
getCountedLayerInterfaceFactoryForSlot :: (JavaObjectClass this_) => this_ -> Int -> IO (CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart)
getCountedLayerInterfaceFactoryForSlot object_ a1 = jmethod object_ "getCountedLayerInterfaceFactoryForSlot" (\() -> (getCountedLayerInterfaceFactoryForSlot_impl (javaCast object_ :: PickupBehavior))) () a1

getCountedLayerInterfaceFactoryForSlot_super :: (JavaObjectClass this_) => this_ -> Int -> IO (CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart)
getCountedLayerInterfaceFactoryForSlot_super object_ a1 = (getCountedLayerInterfaceFactoryForSlot_impl (javaCast object_ :: PickupBehavior)) a1

getCountedLayerInterfaceFactoryForSlot_impl :: PickupBehavior -> Int -> IO (CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart)
getCountedLayerInterfaceFactoryForSlot_impl this slotIndex = do
    javaCatchReturn $ do
        currentSlot <- newIORef (0)
        let collidableDestroyableDamageableLayer = (javaCast (jget (this).ownerLayerInterface) :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
        partInterfaceArray <- (CollidableDestroyableDamageableLayer.getPartInterfaceArray collidableDestroyableDamageableLayer)
        let size = (jlength partInterfaceArray)
        nextCountedLayerInterfaceFactory <- newIORef (javaNull)
        forM_ [(jget (this).countedIndex) .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextCountedLayerInterfaceFactory ((javaCast (jindex ((jio (CollidableDestroyableDamageableLayer.getPartInterfaceArray collidableDestroyableDamageableLayer))) (index)) :: CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart))
            when ((jio (CountedLayerInterfaceFactoryPart.getTotal ((jget nextCountedLayerInterfaceFactory)))) > 0) $ do
                if ((jget currentSlot) == slotIndex) then do
                    javaReturn ((jget nextCountedLayerInterfaceFactory))
                else do
                    jset currentSlot ((jget currentSlot) + 1)
        pure (CountedLayerInterfaceFactoryPart.nULL_COUNTED_LAYER_INTERFACE_FACTORY)


getCountedIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getCountedIndex object_ = jmethod object_ "getCountedIndex" (\() -> (getCountedIndex_impl (javaCast object_ :: PickupBehavior))) ()

getCountedIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCountedIndex_super object_ = (getCountedIndex_impl (javaCast object_ :: PickupBehavior))

getCountedIndex_impl :: PickupBehavior -> IO (Int)
getCountedIndex_impl this = do
        pure ((jget (this).countedIndex))


