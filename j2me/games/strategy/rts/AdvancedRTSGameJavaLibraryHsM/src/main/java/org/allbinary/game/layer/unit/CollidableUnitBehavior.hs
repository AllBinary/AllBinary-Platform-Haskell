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
-- package org.allbinary.game.layer.unit
module CollidableUnitBehavior (module CollidableUnitBehavior, module CollidableRTSBehavior) where

import CollidableRTSBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, collideNone, collideNone_super, collideNone_impl, steer, steer_super, steer_impl, chase, chase_super, chase_impl, collideUnit, collideUnit_super, collideUnit_impl, layerPartialCellPositionsUtil, simpleSteeringVisitor)
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
import qualified UnitLayer -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified SteeringVisitor -- org.allbinary.game.layer.SteeringVisitor
import qualified AdvancedRTSGameLayer -- org.allbinary.game.layer.AdvancedRTSGameLayer
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified CollidableRTSBehavior -- org.allbinary.game.layer.CollidableRTSBehavior
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified TiledLayerUtil -- org.allbinary.game.layer.TiledLayerUtil
import qualified LayerPartialCellPositionsUtil -- org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified DropCellPositionHistory -- org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data CollidableUnitBehavior = CollidableUnitBehavior
    { header_ :: JavaHeader
    , base :: CollidableRTSBehavior.CollidableRTSBehavior
    , layerPartialCellPositionsUtil :: IORef (LayerPartialCellPositionsUtil.LayerPartialCellPositionsUtil)
    , simpleSteeringVisitor :: IORef (SimpleSteeringVisitor.SimpleSteeringVisitor)
    }

instance JavaNull CollidableUnitBehavior where
    javaNull = javaNullRecord "CollidableUnitBehavior"

instance JavaEquals CollidableUnitBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableUnitBehavior where
    (==) = jrecordEquals

instance JavaObjectClass CollidableUnitBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollidableUnitBehavior
newRecord_ = do
    base <- CollidableRTSBehavior.newRecord_
    let header_ = base.header_
    layerPartialCellPositionsUtil <- newIORef javaNull
    simpleSteeringVisitor <- newIORef javaNull
    let this = CollidableUnitBehavior header_ base layerPartialCellPositionsUtil simpleSteeringVisitor
    jregisterLevel header_ this
    jregisterMethod header_ "collideNone" (\() -> collideNone_impl this)
    jregisterMethod header_ "steer" (\() -> steer_impl this)
    jregisterMethod header_ "chase" (\() -> chase_impl this)
    jregisterMethod header_ "collideUnit" (\() -> collideUnit_impl this)
    pure this

initFields_ :: CollidableUnitBehavior -> IO ()
initFields_ this = do
    jset this.layerPartialCellPositionsUtil =<< (LayerPartialCellPositionsUtil.getInstance)
    jset this.simpleSteeringVisitor =<< (SimpleSteeringVisitor.new_)
    pure ()

new_1 :: Bool -> IO CollidableUnitBehavior
new_1 collidable = do
    this <- newRecord_
    init_1 this collidable
    pure this

init_1 :: CollidableUnitBehavior -> Bool -> IO ()
init_1 this collidable = do
        CollidableRTSBehavior.init_1 this.base (collidable)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
collideNone :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collideNone object_ a1 a2 = jmethod object_ "collideNone" (\() -> (collideNone_impl (javaCast object_ :: CollidableUnitBehavior))) () a1 a2

collideNone_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collideNone_super object_ a1 a2 = (collideNone_impl (javaCast object_ :: CollidableUnitBehavior)) a1 a2

collideNone_impl :: CollidableUnitBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
collideNone_impl this ownerLayer collidableInterfaceCompositeInterface = do
        Control.Monad.void (CollidableUnitBehavior.chase this ownerLayer collidableInterfaceCompositeInterface)
        let rtsLayer = (javaCast collidableInterfaceCompositeInterface :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
        when ((jio (AdvancedRTSGameLayer.getType rtsLayer)) == (jio (UnitLayer.getStaticType))) $ do
            Control.Monad.void (CollidableUnitBehavior.collideUnit this ownerLayer (javaCast rtsLayer :: UnitLayer.UnitLayer))
        pure ()


-- throws Exception
steer :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
steer object_ a1 a2 = jmethod object_ "steer" (\() -> (steer_impl (javaCast object_ :: CollidableUnitBehavior))) () a1 a2

steer_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
steer_super object_ a1 a2 = (steer_impl (javaCast object_ :: CollidableUnitBehavior)) a1 a2

steer_impl :: CollidableUnitBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (Bool)
steer_impl this ownerLayer collidableInterfaceCompositeInterface = do
    javaCatchReturn $ do
        let ownerUnitLayer = (javaCast ownerLayer :: UnitLayer.UnitLayer)
        let unitLayer = (javaCast collidableInterfaceCompositeInterface :: UnitLayer.UnitLayer)
        angleInfo2 <- (RotationAnimation.getAngleInfoP ((jio (UnitLayer.getRotationAnimationInterface unitLayer))))
        angleInfo <- (RotationAnimation.getAngleInfoP ((jio (UnitLayer.getRotationAnimationInterface ownerUnitLayer))))
        let angle = (((Prelude.fromIntegral (jio (AngleInfo.getAngle angleInfo))) - (Prelude.fromIntegral (jio (AngleInfo.getAngle angleInfo2)))) :: Int)
        if ((angle < 90) || (angle > 270)) then do
            javaReturn (True)
        else when ((angle >= 90) || (angle <= 270)) $ do
            Control.Monad.void (BasicArrayList.add ((jio (UnitLayer.getGameKeyEventList ownerUnitLayer))) (jio (GameKeyEventFactory.getInstanceForKey ((jio (GameKeyEventFactory.getInstance))) (javaCast ownerUnitLayer) (Canvas.rIGHT))))
            javaReturn (False)
        javaThrow ((JavaException "Exception" "Error"))


-- throws Exception
chase :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
chase object_ a1 a2 = jmethod object_ "chase" (\() -> (chase_impl (javaCast object_ :: CollidableUnitBehavior))) () a1 a2

chase_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
chase_super object_ a1 a2 = (chase_impl (javaCast object_ :: CollidableUnitBehavior)) a1 a2

chase_impl :: CollidableUnitBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
chase_impl this ownerLayer collidableInterfaceCompositeInterface = do
        let rtsLayer = (javaCast collidableInterfaceCompositeInterface :: AdvancedRTSGameLayer.AdvancedRTSGameLayer)
        when ((jio (AdvancedRTSGameLayer.getType rtsLayer)) == (jio (UnitLayer.getStaticType))) $ do
            when (Prelude.not (jio (SimpleSteeringVisitor.contains ((jio (SimpleSteeringVisitor.getList ((jget (this).simpleSteeringVisitor))))) collidableInterfaceCompositeInterface))) $ do
                Control.Monad.void (SimpleSteeringVisitor.add ((jio (SimpleSteeringVisitor.getList ((jget (this).simpleSteeringVisitor))))) collidableInterfaceCompositeInterface)
            let ownerUnitLayer = (javaCast ownerLayer :: UnitLayer.UnitLayer)
            list <- (UnitWaypointBehavior.getSteeringVisitorList ((jio (UnitLayer.getUnitWaypointBehavior ownerUnitLayer))))
            when (Prelude.not (jio (BasicArrayList.contains list (jget (this).simpleSteeringVisitor)))) $ do
                Control.Monad.void (BasicArrayList.add list (jget (this).simpleSteeringVisitor))
        pure ()


-- throws Exception
collideUnit :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> UnitLayer.UnitLayer -> IO (())
collideUnit object_ a1 a2 = jmethod object_ "collideUnit" (\() -> (collideUnit_impl (javaCast object_ :: CollidableUnitBehavior))) () a1 a2

collideUnit_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> UnitLayer.UnitLayer -> IO (())
collideUnit_super object_ a1 a2 = (collideUnit_impl (javaCast object_ :: CollidableUnitBehavior)) a1 a2

collideUnit_impl :: CollidableUnitBehavior -> CollidableCompositeLayer.CollidableCompositeLayer -> UnitLayer.UnitLayer -> IO (())
collideUnit_impl this ownerLayer unitLayer = do
        let ownerUnitLayer = (javaCast ownerLayer :: UnitLayer.UnitLayer)
        partialPositionList <- (UnitLayer.getPartialpositionlist)
        let geographicMapCompositeInterface = (javaCast (jget (ownerUnitLayer).allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        let basicGeographicMap = geographicMapInterface
        dropCellPositionHistory <- (DropCellPositionHistory.getInstance)
        tiledLayerUtil <- (TiledLayerUtil.getInstance)
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer basicGeographicMap)
        when (((jio (CollidableCompositeLayer.getXP ownerLayer)) < (jio (UnitLayer.getXP unitLayer))) && ((jio (CollidableCompositeLayer.getX2 ownerLayer)) > (jio (UnitLayer.getXP unitLayer)))) $ do
            let diff = ((jio (CollidableCompositeLayer.getWidth ownerLayer)) + 1)
            Control.Monad.void (LayerPartialCellPositionsUtil.getAllDXY ((jget (this).layerPartialCellPositionsUtil)) basicGeographicMap (javaCast ownerLayer) (Prelude.negate diff) 0 partialPositionList)
            when (Prelude.not (jio (DropCellPositionHistory.anyCellPositionWithDrop dropCellPositionHistory partialPositionList))) $ do
                x <- newIORef (((jio (UnitLayer.getXP unitLayer)) - diff))
                y <- newIORef =<< (CollidableCompositeLayer.getYP ownerLayer)
                assignedValue <- (TiledLayerUtil.keepOnMapX tiledLayerUtil tiledLayer (jget x) (jio (CollidableCompositeLayer.getWidth ownerLayer)))
                jset x (assignedValue)
                assignedValue <- (TiledLayerUtil.keepOnMapY tiledLayerUtil tiledLayer (jget y) (jio (CollidableCompositeLayer.getHeight ownerLayer)))
                jset y (assignedValue)
                Control.Monad.void (CollidableCompositeLayer.setPosition ownerLayer (jget x) (jget y) (jio (CollidableCompositeLayer.getZP ownerLayer)))
            Control.Monad.void (LayerPartialCellPositionsUtil.getAllDXY ((jget (this).layerPartialCellPositionsUtil)) basicGeographicMap (javaCast unitLayer) diff 0 partialPositionList)
            when (Prelude.not (jio (DropCellPositionHistory.anyCellPositionWithDrop dropCellPositionHistory partialPositionList))) $ do
                x <- newIORef (((jio (UnitLayer.getXP unitLayer)) + diff))
                y <- newIORef =<< (UnitLayer.getYP unitLayer)
                assignedValue <- (TiledLayerUtil.keepOnMapX tiledLayerUtil tiledLayer (jget x) (jio (UnitLayer.getWidth unitLayer)))
                jset x (assignedValue)
                assignedValue <- (TiledLayerUtil.keepOnMapY tiledLayerUtil tiledLayer (jget y) (jio (UnitLayer.getHeight unitLayer)))
                jset y (assignedValue)
                Control.Monad.void (UnitLayer.setPosition unitLayer (jget x) (jget y) (jio (UnitLayer.getZP unitLayer)))
        when (((jio (CollidableCompositeLayer.getYP ownerLayer)) < (jio (UnitLayer.getYP unitLayer))) && ((jio (CollidableCompositeLayer.getY2 ownerLayer)) > (jio (UnitLayer.getYP unitLayer)))) $ do
            let diff = ((jio (CollidableCompositeLayer.getHeight ownerLayer)) + 1)
            Control.Monad.void (LayerPartialCellPositionsUtil.getAllDXY ((jget (this).layerPartialCellPositionsUtil)) basicGeographicMap (javaCast ownerLayer) 0 (Prelude.negate diff) partialPositionList)
            when (Prelude.not (jio (DropCellPositionHistory.anyCellPositionWithDrop dropCellPositionHistory partialPositionList))) $ do
                x <- newIORef =<< (CollidableCompositeLayer.getXP ownerLayer)
                y <- newIORef (((jio (UnitLayer.getYP unitLayer)) - diff))
                assignedValue <- (TiledLayerUtil.keepOnMapX tiledLayerUtil tiledLayer (jget x) (jio (CollidableCompositeLayer.getWidth ownerLayer)))
                jset x (assignedValue)
                assignedValue <- (TiledLayerUtil.keepOnMapY tiledLayerUtil tiledLayer (jget y) (jio (CollidableCompositeLayer.getHeight ownerLayer)))
                jset y (assignedValue)
                Control.Monad.void (CollidableCompositeLayer.setPosition ownerLayer (jget x) (jget y) (jio (CollidableCompositeLayer.getZP ownerLayer)))
            Control.Monad.void (LayerPartialCellPositionsUtil.getAllDXY ((jget (this).layerPartialCellPositionsUtil)) basicGeographicMap (javaCast unitLayer) 0 diff partialPositionList)
            when (Prelude.not (jio (DropCellPositionHistory.anyCellPositionWithDrop dropCellPositionHistory partialPositionList))) $ do
                x <- newIORef =<< (UnitLayer.getXP unitLayer)
                y <- newIORef (((jio (UnitLayer.getYP unitLayer)) + diff))
                assignedValue <- (TiledLayerUtil.keepOnMapX tiledLayerUtil tiledLayer (jget x) (jio (UnitLayer.getWidth unitLayer)))
                jset x (assignedValue)
                assignedValue <- (TiledLayerUtil.keepOnMapY tiledLayerUtil tiledLayer (jget y) (jio (UnitLayer.getHeight unitLayer)))
                jset y (assignedValue)
                Control.Monad.void (UnitLayer.setPosition unitLayer (jget x) (jget y) (jio (UnitLayer.getZP unitLayer)))
        pure ()

-- Java nested class SimpleSteeringVisitor: move it to its own module SimpleSteeringVisitor

