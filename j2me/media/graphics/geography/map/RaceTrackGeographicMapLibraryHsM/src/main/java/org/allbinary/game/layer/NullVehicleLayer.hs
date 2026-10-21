{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.layer
module NullVehicleLayer where

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
import qualified VehicleProperties -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified Group -- org.allbinary.game.identification.Group
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPositionTracking -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified VehicleLayerInterface

-- implements VehicleLayerInterface
data NullVehicleLayer = NullVehicleLayer
    { header_ :: JavaHeader
    }

instance JavaNull NullVehicleLayer where
    javaNull = javaNullRecord "NullVehicleLayer"

instance JavaEquals NullVehicleLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullVehicleLayer where
    (==) = jrecordEquals

instance JavaObjectClass NullVehicleLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_VEHICLE_LAYER #-}
nULL_VEHICLE_LAYER = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullVehicleLayer
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullVehicleLayer header_
    jregisterLevel header_ this
    VehicleLayerInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getGroupInterface" (\() -> getGroupInterface_impl this)
    jregisterMethod header_ "setPosition" (\() -> setPosition_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHalfHeight" (\() -> getHalfHeight_impl this)
    jregisterMethod header_ "getHalfWidth" (\() -> getHalfWidth_impl this)
    jregisterMethod header_ "getXP" (\() -> getXP_impl this)
    jregisterMethod header_ "getYP" (\() -> getYP_impl this)
    jregisterMethod header_ "getZP" (\() -> getZP_impl this)
    jregisterMethod header_ "getX2" (\() -> getX2_impl this)
    jregisterMethod header_ "getY2" (\() -> getY2_impl this)
    jregisterMethod header_ "getZ2" (\() -> getZ2_impl this)
    jregisterMethod header_ "isVisible" (\() -> isVisible_impl this)
    jregisterMethod header_ "moveDXYZ" (\() -> moveDXYZ_impl this)
    jregisterMethod header_ "setVisible" (\() -> setVisible_impl this)
    jregisterMethod header_ "implmentsTickableInterface" (\() -> implmentsTickableInterface_impl this)
    jregisterMethod header_ "implmentsCollidableInterface" (\() -> implmentsCollidableInterface_impl this)
    jregisterMethod header_ "implmentsGameInputInterface" (\() -> implmentsGameInputInterface_impl this)
    jregisterMethod header_ "implmentsArtificialIntelligenceCompositeInterface" (\() -> implmentsArtificialIntelligenceCompositeInterface_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getVehicleProperties" (\() -> getVehicleProperties_impl this)
    jregisterMethod header_ "getGameKeyEventList" (\() -> getGameKeyEventList_impl this)
    jregisterMethod header_ "getSpeedBasicDecimal" (\() -> getSpeedBasicDecimal_impl this)
    jregisterMethod header_ "isReadyForExplosion" (\() -> isReadyForExplosion_impl this)
    jregisterMethod header_ "getRotationAnimationInterface" (\() -> getRotationAnimationInterface_impl this)
    jregisterMethod header_ "setRotationAnimationInterface" (\() -> setRotationAnimationInterface_impl this)
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "isFinish" (\() -> isFinish_impl this)
    jregisterMethod header_ "getFinalPosition" (\() -> getFinalPosition_impl this)
    jregisterMethod header_ "handleFinish" (\() -> handleFinish_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionTracking" (\() -> getGeographicMapCellPositionTracking_impl this)
    jregisterMethod header_ "getGeographicMapCellHistoryArray" (\() -> getGeographicMapCellHistoryArray_impl this)
    jregisterMethod header_ "setGeographicMapCellHistoryArray" (\() -> setGeographicMapCellHistoryArray_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: NullVehicleLayer -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullVehicleLayer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullVehicleLayer -> IO ()
init_ this = do
    initFields_ this


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: NullVehicleLayer))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: NullVehicleLayer))

getName_impl :: NullVehicleLayer -> IO (String)
getName_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getGroupInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface object_ = jmethod object_ "getGroupInterface" (\() -> (getGroupInterface_impl (javaCast object_ :: NullVehicleLayer))) ()

getGroupInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface_super object_ = (getGroupInterface_impl (javaCast object_ :: NullVehicleLayer))

getGroupInterface_impl :: NullVehicleLayer -> IO (JavaArray (Group.Group))
getGroupInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setPosition :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition object_ a1 a2 a3 = jmethod object_ "setPosition" (\() -> (setPosition_impl (javaCast object_ :: NullVehicleLayer))) () a1 a2 a3

setPosition_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition_super object_ a1 a2 a3 = (setPosition_impl (javaCast object_ :: NullVehicleLayer)) a1 a2 a3

setPosition_impl :: NullVehicleLayer -> Int -> Int -> Int -> IO (())
setPosition_impl this x y z = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: NullVehicleLayer))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: NullVehicleLayer))

getHeight_impl :: NullVehicleLayer -> IO (Int)
getHeight_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: NullVehicleLayer))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: NullVehicleLayer))

getWidth_impl :: NullVehicleLayer -> IO (Int)
getWidth_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getHalfHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfHeight object_ = jmethod object_ "getHalfHeight" (\() -> (getHalfHeight_impl (javaCast object_ :: NullVehicleLayer))) ()

getHalfHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfHeight_super object_ = (getHalfHeight_impl (javaCast object_ :: NullVehicleLayer))

getHalfHeight_impl :: NullVehicleLayer -> IO (Int)
getHalfHeight_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getHalfWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfWidth object_ = jmethod object_ "getHalfWidth" (\() -> (getHalfWidth_impl (javaCast object_ :: NullVehicleLayer))) ()

getHalfWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHalfWidth_super object_ = (getHalfWidth_impl (javaCast object_ :: NullVehicleLayer))

getHalfWidth_impl :: NullVehicleLayer -> IO (Int)
getHalfWidth_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getXP :: (JavaObjectClass this_) => this_ -> IO (Int)
getXP object_ = jmethod object_ "getXP" (\() -> (getXP_impl (javaCast object_ :: NullVehicleLayer))) ()

getXP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getXP_super object_ = (getXP_impl (javaCast object_ :: NullVehicleLayer))

getXP_impl :: NullVehicleLayer -> IO (Int)
getXP_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getYP :: (JavaObjectClass this_) => this_ -> IO (Int)
getYP object_ = jmethod object_ "getYP" (\() -> (getYP_impl (javaCast object_ :: NullVehicleLayer))) ()

getYP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getYP_super object_ = (getYP_impl (javaCast object_ :: NullVehicleLayer))

getYP_impl :: NullVehicleLayer -> IO (Int)
getYP_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getZP :: (JavaObjectClass this_) => this_ -> IO (Int)
getZP object_ = jmethod object_ "getZP" (\() -> (getZP_impl (javaCast object_ :: NullVehicleLayer))) ()

getZP_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZP_super object_ = (getZP_impl (javaCast object_ :: NullVehicleLayer))

getZP_impl :: NullVehicleLayer -> IO (Int)
getZP_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getX2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2 object_ = jmethod object_ "getX2" (\() -> (getX2_impl (javaCast object_ :: NullVehicleLayer))) ()

getX2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX2_super object_ = (getX2_impl (javaCast object_ :: NullVehicleLayer))

getX2_impl :: NullVehicleLayer -> IO (Int)
getX2_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getY2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2 object_ = jmethod object_ "getY2" (\() -> (getY2_impl (javaCast object_ :: NullVehicleLayer))) ()

getY2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY2_super object_ = (getY2_impl (javaCast object_ :: NullVehicleLayer))

getY2_impl :: NullVehicleLayer -> IO (Int)
getY2_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getZ2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2 object_ = jmethod object_ "getZ2" (\() -> (getZ2_impl (javaCast object_ :: NullVehicleLayer))) ()

getZ2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ2_super object_ = (getZ2_impl (javaCast object_ :: NullVehicleLayer))

getZ2_impl :: NullVehicleLayer -> IO (Int)
getZ2_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isVisible :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVisible object_ = jmethod object_ "isVisible" (\() -> (isVisible_impl (javaCast object_ :: NullVehicleLayer))) ()

isVisible_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVisible_super object_ = (isVisible_impl (javaCast object_ :: NullVehicleLayer))

isVisible_impl :: NullVehicleLayer -> IO (Bool)
isVisible_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


moveDXYZ :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
moveDXYZ object_ a1 a2 a3 = jmethod object_ "moveDXYZ" (\() -> (moveDXYZ_impl (javaCast object_ :: NullVehicleLayer))) () a1 a2 a3

moveDXYZ_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
moveDXYZ_super object_ a1 a2 a3 = (moveDXYZ_impl (javaCast object_ :: NullVehicleLayer)) a1 a2 a3

moveDXYZ_impl :: NullVehicleLayer -> Int -> Int -> Int -> IO (())
moveDXYZ_impl this dx dy dz = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


setVisible :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setVisible object_ a1 = jmethod object_ "setVisible" (\() -> (setVisible_impl (javaCast object_ :: NullVehicleLayer))) () a1

setVisible_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setVisible_super object_ a1 = (setVisible_impl (javaCast object_ :: NullVehicleLayer)) a1

setVisible_impl :: NullVehicleLayer -> Bool -> IO (())
setVisible_impl this visible = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


implmentsTickableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface object_ = jmethod object_ "implmentsTickableInterface" (\() -> (implmentsTickableInterface_impl (javaCast object_ :: NullVehicleLayer))) ()

implmentsTickableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface_super object_ = (implmentsTickableInterface_impl (javaCast object_ :: NullVehicleLayer))

implmentsTickableInterface_impl :: NullVehicleLayer -> IO (Bool)
implmentsTickableInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


implmentsCollidableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsCollidableInterface object_ = jmethod object_ "implmentsCollidableInterface" (\() -> (implmentsCollidableInterface_impl (javaCast object_ :: NullVehicleLayer))) ()

implmentsCollidableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsCollidableInterface_super object_ = (implmentsCollidableInterface_impl (javaCast object_ :: NullVehicleLayer))

implmentsCollidableInterface_impl :: NullVehicleLayer -> IO (Bool)
implmentsCollidableInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


implmentsGameInputInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface object_ = jmethod object_ "implmentsGameInputInterface" (\() -> (implmentsGameInputInterface_impl (javaCast object_ :: NullVehicleLayer))) ()

implmentsGameInputInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsGameInputInterface_super object_ = (implmentsGameInputInterface_impl (javaCast object_ :: NullVehicleLayer))

implmentsGameInputInterface_impl :: NullVehicleLayer -> IO (Bool)
implmentsGameInputInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


implmentsArtificialIntelligenceCompositeInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface object_ = jmethod object_ "implmentsArtificialIntelligenceCompositeInterface" (\() -> (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: NullVehicleLayer))) ()

implmentsArtificialIntelligenceCompositeInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_super object_ = (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: NullVehicleLayer))

implmentsArtificialIntelligenceCompositeInterface_impl :: NullVehicleLayer -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: NullVehicleLayer))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: NullVehicleLayer))

getType_impl :: NullVehicleLayer -> IO (Int)
getType_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getVehicleProperties :: (JavaObjectClass this_) => this_ -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties object_ = jmethod object_ "getVehicleProperties" (\() -> (getVehicleProperties_impl (javaCast object_ :: NullVehicleLayer))) ()

getVehicleProperties_super :: (JavaObjectClass this_) => this_ -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties_super object_ = (getVehicleProperties_impl (javaCast object_ :: NullVehicleLayer))

getVehicleProperties_impl :: NullVehicleLayer -> IO (VehicleProperties.VehicleProperties)
getVehicleProperties_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getGameKeyEventList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList object_ = jmethod object_ "getGameKeyEventList" (\() -> (getGameKeyEventList_impl (javaCast object_ :: NullVehicleLayer))) ()

getGameKeyEventList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList_super object_ = (getGameKeyEventList_impl (javaCast object_ :: NullVehicleLayer))

getGameKeyEventList_impl :: NullVehicleLayer -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getSpeedBasicDecimal :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal object_ = jmethod object_ "getSpeedBasicDecimal" (\() -> (getSpeedBasicDecimal_impl (javaCast object_ :: NullVehicleLayer))) ()

getSpeedBasicDecimal_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal_super object_ = (getSpeedBasicDecimal_impl (javaCast object_ :: NullVehicleLayer))

getSpeedBasicDecimal_impl :: NullVehicleLayer -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isReadyForExplosion :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReadyForExplosion object_ = jmethod object_ "isReadyForExplosion" (\() -> (isReadyForExplosion_impl (javaCast object_ :: NullVehicleLayer))) ()

isReadyForExplosion_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReadyForExplosion_super object_ = (isReadyForExplosion_impl (javaCast object_ :: NullVehicleLayer))

isReadyForExplosion_impl :: NullVehicleLayer -> IO (Bool)
isReadyForExplosion_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getRotationAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface object_ = jmethod object_ "getRotationAnimationInterface" (\() -> (getRotationAnimationInterface_impl (javaCast object_ :: NullVehicleLayer))) ()

getRotationAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface_super object_ = (getRotationAnimationInterface_impl (javaCast object_ :: NullVehicleLayer))

getRotationAnimationInterface_impl :: NullVehicleLayer -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setRotationAnimationInterface :: (JavaObjectClass this_) => this_ -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface object_ a1 = jmethod object_ "setRotationAnimationInterface" (\() -> (setRotationAnimationInterface_impl (javaCast object_ :: NullVehicleLayer))) () a1

setRotationAnimationInterface_super :: (JavaObjectClass this_) => this_ -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface_super object_ a1 = (setRotationAnimationInterface_impl (javaCast object_ :: NullVehicleLayer)) a1

setRotationAnimationInterface_impl :: NullVehicleLayer -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface_impl this animationInterface = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: NullVehicleLayer))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: NullVehicleLayer))

isDestroyed_impl :: NullVehicleLayer -> IO (Bool)
isDestroyed_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isFinish :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFinish object_ = jmethod object_ "isFinish" (\() -> (isFinish_impl (javaCast object_ :: NullVehicleLayer))) ()

isFinish_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFinish_super object_ = (isFinish_impl (javaCast object_ :: NullVehicleLayer))

isFinish_impl :: NullVehicleLayer -> IO (Bool)
isFinish_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getFinalPosition :: (JavaObjectClass this_) => this_ -> IO (Int)
getFinalPosition object_ = jmethod object_ "getFinalPosition" (\() -> (getFinalPosition_impl (javaCast object_ :: NullVehicleLayer))) ()

getFinalPosition_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFinalPosition_super object_ = (getFinalPosition_impl (javaCast object_ :: NullVehicleLayer))

getFinalPosition_impl :: NullVehicleLayer -> IO (Int)
getFinalPosition_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
handleFinish :: (JavaObjectClass this_) => this_ -> IO (())
handleFinish object_ = jmethod object_ "handleFinish" (\() -> (handleFinish_impl (javaCast object_ :: NullVehicleLayer))) ()

handleFinish_super :: (JavaObjectClass this_) => this_ -> IO (())
handleFinish_super object_ = (handleFinish_impl (javaCast object_ :: NullVehicleLayer))

handleFinish_impl :: NullVehicleLayer -> IO (())
handleFinish_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getGeographicMapCellPositionTracking :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking object_ = jmethod object_ "getGeographicMapCellPositionTracking" (\() -> (getGeographicMapCellPositionTracking_impl (javaCast object_ :: NullVehicleLayer))) ()

getGeographicMapCellPositionTracking_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking_super object_ = (getGeographicMapCellPositionTracking_impl (javaCast object_ :: NullVehicleLayer))

getGeographicMapCellPositionTracking_impl :: NullVehicleLayer -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getGeographicMapCellHistoryArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellHistory.GeographicMapCellHistory))
getGeographicMapCellHistoryArray object_ = jmethod object_ "getGeographicMapCellHistoryArray" (\() -> (getGeographicMapCellHistoryArray_impl (javaCast object_ :: NullVehicleLayer))) ()

getGeographicMapCellHistoryArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellHistory.GeographicMapCellHistory))
getGeographicMapCellHistoryArray_super object_ = (getGeographicMapCellHistoryArray_impl (javaCast object_ :: NullVehicleLayer))

getGeographicMapCellHistoryArray_impl :: NullVehicleLayer -> IO (JavaArray (GeographicMapCellHistory.GeographicMapCellHistory))
getGeographicMapCellHistoryArray_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setGeographicMapCellHistoryArray :: (JavaObjectClass this_) => this_ -> JavaArray (GeographicMapCellHistory.GeographicMapCellHistory) -> IO (())
setGeographicMapCellHistoryArray object_ a1 = jmethod object_ "setGeographicMapCellHistoryArray" (\() -> (setGeographicMapCellHistoryArray_impl (javaCast object_ :: NullVehicleLayer))) () a1

setGeographicMapCellHistoryArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (GeographicMapCellHistory.GeographicMapCellHistory) -> IO (())
setGeographicMapCellHistoryArray_super object_ a1 = (setGeographicMapCellHistoryArray_impl (javaCast object_ :: NullVehicleLayer)) a1

setGeographicMapCellHistoryArray_impl :: NullVehicleLayer -> JavaArray (GeographicMapCellHistory.GeographicMapCellHistory) -> IO (())
setGeographicMapCellHistoryArray_impl this geographicMapCellHistory = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: NullVehicleLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: NullVehicleLayer)) a1

paint_impl :: NullVehicleLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: NullVehicleLayer))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: NullVehicleLayer)) a1

paintThreed_impl :: NullVehicleLayer -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


