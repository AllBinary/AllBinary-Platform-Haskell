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
-- package org.allbinary.game.ag.ai.scroller
module FlockingAI (module FlockingAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, getXYDistance, getXYDistance_super, getXYDistance_impl, allowedDistance)
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
import qualified BasePatrolAI -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified BasicGroupFactory -- org.allbinary.game.identification.BasicGroupFactory
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified GroupLayerManagerListener -- org.allbinary.game.layer.identification.GroupLayerManagerListener
import qualified WeaponLayer -- org.allbinary.game.layer.weapon.WeaponLayer
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data FlockingAI = FlockingAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , allowedDistance :: IORef (Int)
    }

instance JavaNull FlockingAI where
    javaNull = javaNullRecord "FlockingAI"

instance JavaEquals FlockingAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FlockingAI where
    (==) = jrecordEquals

instance JavaObjectClass FlockingAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FlockingAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    allowedDistance <- newIORef 0
    let this = FlockingAI header_ base allowedDistance
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "getXYDistance" (\() -> getXYDistance_impl this)
    pure this

initFields_ :: FlockingAI -> IO ()
initFields_ this = do
    jset this.allowedDistance (0)
    pure ()

new_3 :: ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO FlockingAI
new_3 hashtable ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this hashtable ownerLayerInterface gameInput
    pure this

init_3 :: FlockingAI -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this hashtable ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        let allowedDistance = (javaCast (jio (ABHashtable.get hashtable (BasePatrolAI.mAX_DISTANCE))) :: Int)
        jset (this).allowedDistance (allowedDistance)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: FlockingAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: FlockingAI)) a1

processAI_impl :: FlockingAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        maxDistance <- newIORef (0)
        farAllbinaryLayer <- newIORef (AllBinaryLayer.nULL_ALLBINARY_LAYER)
        groupLayerManagerListener <- (GroupLayerManagerListener.getInstance)
        list <- (GroupLayerManagerListener.getList groupLayerManagerListener (jget ((jio (BasicGroupFactory.getInstance))).eNEMY))
        size <- (BasicArrayList.size list)
        allBinaryLayer <- newIORef (javaNull)
        ownerLayerInterface <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset allBinaryLayer ((javaCast (jio (BasicArrayList.get list index)) :: AllBinaryLayer.AllBinaryLayer))
            when ((jio (AllBinaryLayer.getType ((jget allBinaryLayer)))) /= (jio (WeaponLayer.getStaticType))) $ do
                distance <- (FlockingAI.getXYDistance this (jget allBinaryLayer))
                when (distance > (jget maxDistance)) $ do
                    jset maxDistance (distance)
                    jset farAllbinaryLayer ((jget allBinaryLayer))
                    when (distance > (jget (this).allowedDistance)) $ do
                        throwIO JavaBreak
        when ((jget maxDistance) > (jget (this).allowedDistance)) $ do
            when ((jget farAllbinaryLayer) /= AllBinaryLayer.nULL_ALLBINARY_LAYER) $ do
                assignedValue <- (BasicAI.getOwnerLayerInterface this)
                jset ownerLayerInterface (assignedValue)
                if ((jio (AllBinaryLayer.getXP ((jget farAllbinaryLayer)))) < (jio (AllBinaryLayer.getXP ((jget ownerLayerInterface))))) then do
                    Control.Monad.void (BasicAI.processKeyAI this (Canvas.lEFT))
                else if ((jio (AllBinaryLayer.getXP ((jget farAllbinaryLayer)))) > (jio (AllBinaryLayer.getXP ((jget ownerLayerInterface))))) then do
                    Control.Monad.void (BasicAI.processKeyAI this (Canvas.rIGHT))
                else if ((jio (AllBinaryLayer.getYP ((jget farAllbinaryLayer)))) > (jio (AllBinaryLayer.getYP ((jget ownerLayerInterface))))) then do
                    Control.Monad.void (BasicAI.processKeyAI this (Canvas.uP))
                else when ((jio (AllBinaryLayer.getYP ((jget farAllbinaryLayer)))) < (jio (AllBinaryLayer.getYP ((jget ownerLayerInterface))))) $ do
                    Control.Monad.void (BasicAI.processKeyAI this (Canvas.dOWN))
        pure ()


getXYDistance :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getXYDistance object_ a1 = jmethod object_ "getXYDistance" (\() -> (getXYDistance_impl (javaCast object_ :: FlockingAI))) () a1

getXYDistance_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getXYDistance_super object_ a1 = (getXYDistance_impl (javaCast object_ :: FlockingAI)) a1

getXYDistance_impl :: FlockingAI -> AllBinaryLayer.AllBinaryLayer -> IO (Int)
getXYDistance_impl this allBinaryLayer = do
        ownerLayerInterface <- (BasicAI.getOwnerLayerInterface this)
        let xTotalDistance = ((((jio (AllBinaryLayer.getXP allBinaryLayer)) + (jio (AllBinaryLayer.getHalfWidth allBinaryLayer)))) - (((jio (AllBinaryLayer.getXP ownerLayerInterface)) + (jio (AllBinaryLayer.getHalfWidth ownerLayerInterface)))))
        let yTotalDistance = ((((jio (AllBinaryLayer.getYP allBinaryLayer)) + (jio (AllBinaryLayer.getHalfHeight allBinaryLayer)))) - (((jio (AllBinaryLayer.getYP ownerLayerInterface)) + (jio (AllBinaryLayer.getHalfHeight ownerLayerInterface)))))
        mathUtil <- (MathUtil.getInstance)
        let totalDistance = ((jio (MathUtil.abs mathUtil xTotalDistance)) + (jio (MathUtil.abs mathUtil yTotalDistance)))
        pure (totalDistance)


