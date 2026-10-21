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
-- package org.allbinary.game.layer.waypoint
module WaypointLayer (module WaypointLayer, module AdvancedRTSGameLayer) where

import AdvancedRTSGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, construct, construct_super, construct_impl, paint, paint_super, paint_impl, processTick, processTick_super, processTick_impl, damage, damage_super, damage_impl, getDamage, getDamage_super, getDamage_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, getType, getType_super, getType_impl, getStaticType, getStaticType_super, getStaticType_impl, isSelfUpgradeable, isSelfUpgradeable_super, isSelfUpgradeable_impl)
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
import qualified CollidableWaypointBehavior -- same package or java.lang
import qualified Waypoint -- same package or java.lang
import qualified WaypointCellPositionHistory -- same package or java.lang
import qualified IndexedAnimation -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified Health -- org.allbinary.game.health.Health
import qualified Group -- org.allbinary.game.identification.Group
import qualified NullRTSFormInputFactory -- org.allbinary.game.input.form.NullRTSFormInputFactory
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified AdvancedRTSProperties -- org.allbinary.game.layer.AdvancedRTSProperties
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified TileLayerPositionIntoViewPosition -- org.allbinary.game.view.TileLayerPositionIntoViewPosition
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified AttackSound -- org.allbinary.media.audio.AttackSound

data WaypointLayer = WaypointLayer
    { header_ :: JavaHeader
    , base :: AdvancedRTSGameLayer.AdvancedRTSGameLayer
    }

instance JavaNull WaypointLayer where
    javaNull = javaNullRecord "WaypointLayer"

instance JavaEquals WaypointLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WaypointLayer where
    (==) = jrecordEquals

instance JavaObjectClass WaypointLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WaypointLayer
newRecord_ = do
    base <- AdvancedRTSGameLayer.newRecord_
    let header_ = base.header_
    let this = WaypointLayer header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "construct" (\() -> construct_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "isSelfUpgradeable" (\() -> isSelfUpgradeable_impl this)
    pure this

initFields_ :: WaypointLayer -> IO ()
initFields_ this = do
    pure ()

new_10 :: RemoteInfo.RemoteInfo -> PathFindingLayerInterface.PathFindingLayerInterface -> JavaArray (Group.Group) -> String -> String -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> IO WaypointLayer
new_10 remoteInfo parentLayer groupInterface rootName name animationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y = do
    this <- newRecord_
    init_10 this remoteInfo parentLayer groupInterface rootName name animationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y
    pure this

init_10 :: WaypointLayer -> RemoteInfo.RemoteInfo -> PathFindingLayerInterface.PathFindingLayerInterface -> JavaArray (Group.Group) -> String -> String -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> IO ()
init_10 this remoteInfo parentLayer groupInterface rootName name animationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y = do
        AdvancedRTSGameLayer.init_18 this.base (remoteInfo) (parentLayer) (jio (AdvancedRTSProperties.createProperties)) (groupInterface) (rootName) (name) (jio (Health.new_1 1000)) (jio (NullRTSFormInputFactory.getInstance)) (animationInterfaceFactoryInterface) (animationInterfaceFactoryInterface) (animationInterfaceFactoryInterface) (animationInterfaceFactoryInterface) (animationInterfaceFactoryInterface) (proceduralAnimationInterfaceFactoryInterface) (rectangle) (x) (y) (jio (TileLayerPositionIntoViewPosition.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AdvancedRTSGameLayer.setCollidableInferface this (jio (CollidableWaypointBehavior.new_1 True)))
        Control.Monad.void (WaypointBehaviorBase.setWaypoint ((jio (AdvancedRTSGameLayer.getWaypointBehavior this))) (jio (Waypoint.new_2 this (jio (AttackSound.getInstance)))))
        Control.Monad.void (AdvancedRTSGameLayer.setAnimationInterface this (jget (this).base.base.indexedButShouldBeRotationAnimationInterface))
        pure ()


construct :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct object_ a1 = jmethod object_ "construct" (\() -> (construct_impl (javaCast object_ :: WaypointLayer))) () a1

construct_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_super object_ a1 = (construct_impl (javaCast object_ :: WaypointLayer)) a1

construct_impl :: WaypointLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> IO (())
construct_impl this rtsPlayerLayerInterface = do
        jset (this).base.base.percentCompleteP (100)
        Control.Monad.void (AdvancedRTSGameLayer.initVisibility this rtsPlayerLayerInterface)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: WaypointLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: WaypointLayer)) a1

paint_impl :: WaypointLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        when (jio (AdvancedRTSGameLayer.isVisible this)) $ do
            Control.Monad.void (AdvancedRTSGameLayer.paint_super this.base graphics)
        pure ()


processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: WaypointLayer))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: WaypointLayer)) a1

processTick_impl :: WaypointLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.base.base.base.base.base.logUtil)) (jget ((jget (this).base.base.base.base.base.base.commonStrings)).eXCEPTION) this "processTick" e)
            ) $ do
            Control.Monad.void (IndexedAnimation.nextFrame ((jget (this).base.base.indexedButShouldBeRotationAnimationInterface)))
        pure ()


damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: WaypointLayer))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: WaypointLayer)) a1 a2

damage_impl :: WaypointLayer -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        pure ()


-- throws Exception
getDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage object_ a1 = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: WaypointLayer))) () a1

getDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage_super object_ a1 = (getDamage_impl (javaCast object_ :: WaypointLayer)) a1

getDamage_impl :: WaypointLayer -> Int -> IO (Int)
getDamage_impl this damageType = do
        pure (0)


-- throws Exception
setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: WaypointLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: WaypointLayer)) a1

setDestroyed_impl :: WaypointLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        Control.Monad.void (AdvancedRTSGameLayer.setDestroyed_super this.base destroyed)
        when (jio (AdvancedRTSGameLayer.isDestroyed this)) $ do
            Control.Monad.void (WaypointCellPositionHistory.removeLayer ((jio (WaypointCellPositionHistory.getInstance))) this)
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: WaypointLayer))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: WaypointLayer))

getType_impl :: WaypointLayer -> IO (Int)
getType_impl this = do
        (WaypointLayer.getStaticType)


getStaticType :: IO (Int)
getStaticType = do
        pure (4)


isSelfUpgradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable object_ = jmethod object_ "isSelfUpgradeable" (\() -> (isSelfUpgradeable_impl (javaCast object_ :: WaypointLayer))) ()

isSelfUpgradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable_super object_ = (isSelfUpgradeable_impl (javaCast object_ :: WaypointLayer))

isSelfUpgradeable_impl :: WaypointLayer -> IO (Bool)
isSelfUpgradeable_impl this = do
        pure (False)


