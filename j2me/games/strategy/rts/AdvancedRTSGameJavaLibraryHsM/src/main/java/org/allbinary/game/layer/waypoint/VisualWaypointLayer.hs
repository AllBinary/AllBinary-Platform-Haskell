{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.waypoint
module VisualWaypointLayer (module VisualWaypointLayer, module WaypointLayer) where

import WaypointLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createHudPaintable, createHudPaintable_super, createHudPaintable_impl, getHudPaintable, getHudPaintable_super, getHudPaintable_impl)
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
import qualified WaypointInfoHudPaintableSingleton -- same package or java.lang
import qualified WaypointInfoHudPaintable -- same package or java.lang
import qualified AllBinaryGameLayerManager -- same package or java.lang
import qualified SelectionHudPaintable -- org.allbinary.game.layer.SelectionHudPaintable
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified ProceduralAnimationInterfaceFactoryInterface -- org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
import qualified Group -- org.allbinary.game.identification.Group
import qualified PathFindingLayerInterface -- org.allbinary.game.layer.PathFindingLayerInterface
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified WaypointLayer

data VisualWaypointLayer = VisualWaypointLayer
    { header_ :: JavaHeader
    , base :: WaypointLayer.WaypointLayer
    }

instance JavaNull VisualWaypointLayer where
    javaNull = javaNullRecord "VisualWaypointLayer"

instance JavaEquals VisualWaypointLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VisualWaypointLayer where
    (==) = jrecordEquals

instance JavaObjectClass VisualWaypointLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO VisualWaypointLayer
newRecord_ = do
    base <- WaypointLayer.newRecord_
    let header_ = base.header_
    let this = VisualWaypointLayer header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "createHudPaintable" (\() -> createHudPaintable_impl this)
    jregisterMethod header_ "getHudPaintable" (\() -> getHudPaintable_impl this)
    pure this

initFields_ :: VisualWaypointLayer -> IO ()
initFields_ this = do
    pure ()

new_10 :: RemoteInfo.RemoteInfo -> PathFindingLayerInterface.PathFindingLayerInterface -> JavaArray (Group.Group) -> String -> String -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> IO VisualWaypointLayer
new_10 remoteInfo parentLayer groupInterface rootName name animationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y = do
    this <- newRecord_
    init_10 this remoteInfo parentLayer groupInterface rootName name animationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y
    pure this

init_10 :: VisualWaypointLayer -> RemoteInfo.RemoteInfo -> PathFindingLayerInterface.PathFindingLayerInterface -> JavaArray (Group.Group) -> String -> String -> AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface -> ProceduralAnimationInterfaceFactoryInterface.ProceduralAnimationInterfaceFactoryInterface -> Rectangle.Rectangle -> Int -> Int -> IO ()
init_10 this remoteInfo parentLayer groupInterface rootName name animationInterfaceFactoryInterface proceduralAnimationInterfaceFactoryInterface rectangle x y = do
        WaypointLayer.init_10 this.base (remoteInfo) (parentLayer) (groupInterface) (rootName) (name) (animationInterfaceFactoryInterface) (proceduralAnimationInterfaceFactoryInterface) (rectangle) (x) (y)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


createHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable object_ = jmethod object_ "createHudPaintable" (\() -> (createHudPaintable_impl (javaCast object_ :: VisualWaypointLayer))) ()

createHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable_super object_ = (createHudPaintable_impl (javaCast object_ :: VisualWaypointLayer))

createHudPaintable_impl :: VisualWaypointLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
createHudPaintable_impl this = do
        rtsLayerHudPaintable <- (WaypointInfoHudPaintableSingleton.getInstance)
        Control.Monad.void (WaypointInfoHudPaintable.setBasicColorP rtsLayerHudPaintable (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jget (this).base.base.base.base.base.allBinaryGameLayerManagerP)))))
        Control.Monad.void (WaypointInfoHudPaintable.setRtsLayer rtsLayerHudPaintable this)
        pure ((javaCast rtsLayerHudPaintable :: SelectionHudPaintable.SelectionHudPaintable))


getHudPaintable :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable object_ = jmethod object_ "getHudPaintable" (\() -> (getHudPaintable_impl (javaCast object_ :: VisualWaypointLayer))) ()

getHudPaintable_super :: (JavaObjectClass this_) => this_ -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_super object_ = (getHudPaintable_impl (javaCast object_ :: VisualWaypointLayer))

getHudPaintable_impl :: VisualWaypointLayer -> IO (SelectionHudPaintable.SelectionHudPaintable)
getHudPaintable_impl this = do
        rtsLayerHudPaintable <- (WaypointInfoHudPaintableSingleton.getInstance)
        pure ((javaCast rtsLayerHudPaintable :: SelectionHudPaintable.SelectionHudPaintable))


