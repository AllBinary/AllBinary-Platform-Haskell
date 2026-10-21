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
-- package org.allbinary.game.layer
module VehicleLayerInterface (module VehicleLayerInterface, module LayerInterface, module VehiclePropertiesCompositeInterface) where

import LayerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getGameKeyEventList, getGameKeyEventList_super, getGameKeyEventList_impl, getSpeedBasicDecimal, getSpeedBasicDecimal_super, getSpeedBasicDecimal_impl, isReadyForExplosion, isReadyForExplosion_super, isReadyForExplosion_impl, getRotationAnimationInterface, getRotationAnimationInterface_super, getRotationAnimationInterface_impl, setRotationAnimationInterface, setRotationAnimationInterface_super, setRotationAnimationInterface_impl, isDestroyed, isDestroyed_super, isDestroyed_impl, isFinish, isFinish_super, isFinish_impl, getFinalPosition, getFinalPosition_super, getFinalPosition_impl, handleFinish, handleFinish_super, handleFinish_impl, getGeographicMapCellPositionTracking, getGeographicMapCellPositionTracking_super, getGeographicMapCellPositionTracking_impl, getGeographicMapCellHistoryArray, getGeographicMapCellHistoryArray_super, getGeographicMapCellHistoryArray_impl, setGeographicMapCellHistoryArray, setGeographicMapCellHistoryArray_super, setGeographicMapCellHistoryArray_impl, toString)
import VehiclePropertiesCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getGameKeyEventList, getGameKeyEventList_super, getGameKeyEventList_impl, getSpeedBasicDecimal, getSpeedBasicDecimal_super, getSpeedBasicDecimal_impl, isReadyForExplosion, isReadyForExplosion_super, isReadyForExplosion_impl, getRotationAnimationInterface, getRotationAnimationInterface_super, getRotationAnimationInterface_impl, setRotationAnimationInterface, setRotationAnimationInterface_super, setRotationAnimationInterface_impl, isDestroyed, isDestroyed_super, isDestroyed_impl, isFinish, isFinish_super, isFinish_impl, getFinalPosition, getFinalPosition_super, getFinalPosition_impl, handleFinish, handleFinish_super, handleFinish_impl, getGeographicMapCellPositionTracking, getGeographicMapCellPositionTracking_super, getGeographicMapCellPositionTracking_impl, getGeographicMapCellHistoryArray, getGeographicMapCellHistoryArray_super, getGeographicMapCellHistoryArray_impl, setGeographicMapCellHistoryArray, setGeographicMapCellHistoryArray_super, setGeographicMapCellHistoryArray_impl, toString)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified LayerInterface -- org.allbinary.layer.LayerInterface
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPositionTracking -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking
import qualified VehiclePropertiesCompositeInterface

-- Java interface: the classes that implement it have these functions
data VehicleLayerInterface = VehicleLayerInterface
    { header_ :: JavaHeader
    }

instance JavaNull VehicleLayerInterface where
    javaNull = javaNullRecord "VehicleLayerInterface"

instance JavaEquals VehicleLayerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VehicleLayerInterface where
    (==) = jrecordEquals

instance JavaObjectClass VehicleLayerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> VehicleLayerInterface
fromHeader_ header = VehicleLayerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (VehicleLayerInterface header)
    LayerInterface.registerInterface_ header
    VehiclePropertiesCompositeInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getGameKeyEventList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList object_ = jmethod object_ "getGameKeyEventList" (\() -> (getGameKeyEventList_impl (javaCast object_ :: VehicleLayerInterface))) ()

getGameKeyEventList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList_super object_ = (getGameKeyEventList_impl (javaCast object_ :: VehicleLayerInterface))

getGameKeyEventList_impl :: VehicleLayerInterface -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList_impl this = javaAbstractMethod "getGameKeyEventList"


getSpeedBasicDecimal :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal object_ = jmethod object_ "getSpeedBasicDecimal" (\() -> (getSpeedBasicDecimal_impl (javaCast object_ :: VehicleLayerInterface))) ()

getSpeedBasicDecimal_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal_super object_ = (getSpeedBasicDecimal_impl (javaCast object_ :: VehicleLayerInterface))

getSpeedBasicDecimal_impl :: VehicleLayerInterface -> IO (BasicDecimal.BasicDecimal)
getSpeedBasicDecimal_impl this = javaAbstractMethod "getSpeedBasicDecimal"


isReadyForExplosion :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReadyForExplosion object_ = jmethod object_ "isReadyForExplosion" (\() -> (isReadyForExplosion_impl (javaCast object_ :: VehicleLayerInterface))) ()

isReadyForExplosion_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReadyForExplosion_super object_ = (isReadyForExplosion_impl (javaCast object_ :: VehicleLayerInterface))

isReadyForExplosion_impl :: VehicleLayerInterface -> IO (Bool)
isReadyForExplosion_impl this = javaAbstractMethod "isReadyForExplosion"


getRotationAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface object_ = jmethod object_ "getRotationAnimationInterface" (\() -> (getRotationAnimationInterface_impl (javaCast object_ :: VehicleLayerInterface))) ()

getRotationAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface_super object_ = (getRotationAnimationInterface_impl (javaCast object_ :: VehicleLayerInterface))

getRotationAnimationInterface_impl :: VehicleLayerInterface -> IO (RotationAnimation.RotationAnimation)
getRotationAnimationInterface_impl this = javaAbstractMethod "getRotationAnimationInterface"


setRotationAnimationInterface :: (JavaObjectClass this_) => this_ -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface object_ a1 = jmethod object_ "setRotationAnimationInterface" (\() -> (setRotationAnimationInterface_impl (javaCast object_ :: VehicleLayerInterface))) () a1

setRotationAnimationInterface_super :: (JavaObjectClass this_) => this_ -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface_super object_ a1 = (setRotationAnimationInterface_impl (javaCast object_ :: VehicleLayerInterface)) a1

setRotationAnimationInterface_impl :: VehicleLayerInterface -> RotationAnimation.RotationAnimation -> IO (())
setRotationAnimationInterface_impl this animationInterface = javaAbstractMethod "setRotationAnimationInterface"


isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: VehicleLayerInterface))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: VehicleLayerInterface))

isDestroyed_impl :: VehicleLayerInterface -> IO (Bool)
isDestroyed_impl this = javaAbstractMethod "isDestroyed"


isFinish :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFinish object_ = jmethod object_ "isFinish" (\() -> (isFinish_impl (javaCast object_ :: VehicleLayerInterface))) ()

isFinish_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFinish_super object_ = (isFinish_impl (javaCast object_ :: VehicleLayerInterface))

isFinish_impl :: VehicleLayerInterface -> IO (Bool)
isFinish_impl this = javaAbstractMethod "isFinish"


getFinalPosition :: (JavaObjectClass this_) => this_ -> IO (Int)
getFinalPosition object_ = jmethod object_ "getFinalPosition" (\() -> (getFinalPosition_impl (javaCast object_ :: VehicleLayerInterface))) ()

getFinalPosition_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFinalPosition_super object_ = (getFinalPosition_impl (javaCast object_ :: VehicleLayerInterface))

getFinalPosition_impl :: VehicleLayerInterface -> IO (Int)
getFinalPosition_impl this = javaAbstractMethod "getFinalPosition"


-- throws Exception
handleFinish :: (JavaObjectClass this_) => this_ -> IO (())
handleFinish object_ = jmethod object_ "handleFinish" (\() -> (handleFinish_impl (javaCast object_ :: VehicleLayerInterface))) ()

handleFinish_super :: (JavaObjectClass this_) => this_ -> IO (())
handleFinish_super object_ = (handleFinish_impl (javaCast object_ :: VehicleLayerInterface))

handleFinish_impl :: VehicleLayerInterface -> IO (())
handleFinish_impl this = javaAbstractMethod "handleFinish"


getGeographicMapCellPositionTracking :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking object_ = jmethod object_ "getGeographicMapCellPositionTracking" (\() -> (getGeographicMapCellPositionTracking_impl (javaCast object_ :: VehicleLayerInterface))) ()

getGeographicMapCellPositionTracking_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking_super object_ = (getGeographicMapCellPositionTracking_impl (javaCast object_ :: VehicleLayerInterface))

getGeographicMapCellPositionTracking_impl :: VehicleLayerInterface -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking_impl this = javaAbstractMethod "getGeographicMapCellPositionTracking"


getGeographicMapCellHistoryArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellHistory.GeographicMapCellHistory))
getGeographicMapCellHistoryArray object_ = jmethod object_ "getGeographicMapCellHistoryArray" (\() -> (getGeographicMapCellHistoryArray_impl (javaCast object_ :: VehicleLayerInterface))) ()

getGeographicMapCellHistoryArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellHistory.GeographicMapCellHistory))
getGeographicMapCellHistoryArray_super object_ = (getGeographicMapCellHistoryArray_impl (javaCast object_ :: VehicleLayerInterface))

getGeographicMapCellHistoryArray_impl :: VehicleLayerInterface -> IO (JavaArray (GeographicMapCellHistory.GeographicMapCellHistory))
getGeographicMapCellHistoryArray_impl this = javaAbstractMethod "getGeographicMapCellHistoryArray"


setGeographicMapCellHistoryArray :: (JavaObjectClass this_) => this_ -> JavaArray (GeographicMapCellHistory.GeographicMapCellHistory) -> IO (())
setGeographicMapCellHistoryArray object_ a1 = jmethod object_ "setGeographicMapCellHistoryArray" (\() -> (setGeographicMapCellHistoryArray_impl (javaCast object_ :: VehicleLayerInterface))) () a1

setGeographicMapCellHistoryArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (GeographicMapCellHistory.GeographicMapCellHistory) -> IO (())
setGeographicMapCellHistoryArray_super object_ a1 = (setGeographicMapCellHistoryArray_impl (javaCast object_ :: VehicleLayerInterface)) a1

setGeographicMapCellHistoryArray_impl :: VehicleLayerInterface -> JavaArray (GeographicMapCellHistory.GeographicMapCellHistory) -> IO (())
setGeographicMapCellHistoryArray_impl this geographicMapCellHistory = javaAbstractMethod "setGeographicMapCellHistoryArray"


