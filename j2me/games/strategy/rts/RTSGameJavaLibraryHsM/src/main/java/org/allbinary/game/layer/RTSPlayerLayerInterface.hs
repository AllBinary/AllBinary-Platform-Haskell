{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
module RTSPlayerLayerInterface (module RTSPlayerLayerInterface, module GameNotificationHudCompositeInterface, module BuildMenuCompositeInterface, module PlayerGameInputCompositeInterface, module DestroyedEventListenerInterface, module TickableInterface, module PathFindingLayerInterface) where

import GameNotificationHudCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCapital, getCapital_super, getCapital_impl, getRTSFormInput, getRTSFormInput_super, getRTSFormInput_impl, add, add_super, add_impl, getPlayerOwnedRTSLayers, getPlayerOwnedRTSLayers_super, getPlayerOwnedRTSLayers_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, toString)
import BuildMenuCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCapital, getCapital_super, getCapital_impl, getRTSFormInput, getRTSFormInput_super, getRTSFormInput_impl, add, add_super, add_impl, getPlayerOwnedRTSLayers, getPlayerOwnedRTSLayers_super, getPlayerOwnedRTSLayers_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, toString)
import PlayerGameInputCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCapital, getCapital_super, getCapital_impl, getRTSFormInput, getRTSFormInput_super, getRTSFormInput_impl, add, add_super, add_impl, getPlayerOwnedRTSLayers, getPlayerOwnedRTSLayers_super, getPlayerOwnedRTSLayers_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, toString)
import DestroyedEventListenerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCapital, getCapital_super, getCapital_impl, getRTSFormInput, getRTSFormInput_super, getRTSFormInput_impl, add, add_super, add_impl, getPlayerOwnedRTSLayers, getPlayerOwnedRTSLayers_super, getPlayerOwnedRTSLayers_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, toString)
import TickableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCapital, getCapital_super, getCapital_impl, getRTSFormInput, getRTSFormInput_super, getRTSFormInput_impl, add, add_super, add_impl, getPlayerOwnedRTSLayers, getPlayerOwnedRTSLayers_super, getPlayerOwnedRTSLayers_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, toString)
import PathFindingLayerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCapital, getCapital_super, getCapital_impl, getRTSFormInput, getRTSFormInput_super, getRTSFormInput_impl, add, add_super, add_impl, getPlayerOwnedRTSLayers, getPlayerOwnedRTSLayers_super, getPlayerOwnedRTSLayers_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, toString)
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
import qualified PlayerOwnedRTSLayers -- same package or java.lang
import qualified GameNotificationHudCompositeInterface -- org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface
import qualified BuildMenuCompositeInterface -- org.allbinary.game.input.BuildMenuCompositeInterface
import qualified RTSFormInput -- org.allbinary.game.input.form.RTSFormInput
import qualified Capital -- org.allbinary.game.layer.capital.Capital
import qualified DestroyedEventListenerInterface -- org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface
import qualified PlayerGameInputCompositeInterface -- org.allbinary.game.input.PlayerGameInputCompositeInterface
import qualified TickableInterface -- org.allbinary.game.tick.TickableInterface
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified PathFindingLayerInterface

-- Java interface: the classes that implement it have these functions
data RTSPlayerLayerInterface = RTSPlayerLayerInterface
    { header_ :: JavaHeader
    }

instance JavaNull RTSPlayerLayerInterface where
    javaNull = javaNullRecord "RTSPlayerLayerInterface"

instance JavaEquals RTSPlayerLayerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSPlayerLayerInterface where
    (==) = jrecordEquals

instance JavaObjectClass RTSPlayerLayerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RTSPlayerLayerInterface
fromHeader_ header = RTSPlayerLayerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RTSPlayerLayerInterface header)
    GameNotificationHudCompositeInterface.registerInterface_ header
    BuildMenuCompositeInterface.registerInterface_ header
    PlayerGameInputCompositeInterface.registerInterface_ header
    DestroyedEventListenerInterface.registerInterface_ header
    TickableInterface.registerInterface_ header
    PathFindingLayerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getCapital :: (JavaObjectClass this_) => this_ -> IO (Capital.Capital)
getCapital object_ = jmethod object_ "getCapital" (\() -> (getCapital_impl (javaCast object_ :: RTSPlayerLayerInterface))) ()

getCapital_super :: (JavaObjectClass this_) => this_ -> IO (Capital.Capital)
getCapital_super object_ = (getCapital_impl (javaCast object_ :: RTSPlayerLayerInterface))

getCapital_impl :: RTSPlayerLayerInterface -> IO (Capital.Capital)
getCapital_impl this = javaAbstractMethod "getCapital"


getRTSFormInput :: (JavaObjectClass this_) => this_ -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput object_ = jmethod object_ "getRTSFormInput" (\() -> (getRTSFormInput_impl (javaCast object_ :: RTSPlayerLayerInterface))) ()

getRTSFormInput_super :: (JavaObjectClass this_) => this_ -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput_super object_ = (getRTSFormInput_impl (javaCast object_ :: RTSPlayerLayerInterface))

getRTSFormInput_impl :: RTSPlayerLayerInterface -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput_impl this = javaAbstractMethod "getRTSFormInput"


add :: (JavaObjectClass this_) => this_ -> Sound.Sound -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: RTSPlayerLayerInterface))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Sound.Sound -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: RTSPlayerLayerInterface)) a1

add_impl :: RTSPlayerLayerInterface -> Sound.Sound -> IO (())
add_impl this sound = javaAbstractMethod "add"


getPlayerOwnedRTSLayers :: (JavaObjectClass this_) => this_ -> IO (PlayerOwnedRTSLayers.PlayerOwnedRTSLayers)
getPlayerOwnedRTSLayers object_ = jmethod object_ "getPlayerOwnedRTSLayers" (\() -> (getPlayerOwnedRTSLayers_impl (javaCast object_ :: RTSPlayerLayerInterface))) ()

getPlayerOwnedRTSLayers_super :: (JavaObjectClass this_) => this_ -> IO (PlayerOwnedRTSLayers.PlayerOwnedRTSLayers)
getPlayerOwnedRTSLayers_super object_ = (getPlayerOwnedRTSLayers_impl (javaCast object_ :: RTSPlayerLayerInterface))

getPlayerOwnedRTSLayers_impl :: RTSPlayerLayerInterface -> IO (PlayerOwnedRTSLayers.PlayerOwnedRTSLayers)
getPlayerOwnedRTSLayers_impl this = javaAbstractMethod "getPlayerOwnedRTSLayers"


implmentsArtificialIntelligenceCompositeInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface object_ = jmethod object_ "implmentsArtificialIntelligenceCompositeInterface" (\() -> (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: RTSPlayerLayerInterface))) ()

implmentsArtificialIntelligenceCompositeInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_super object_ = (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: RTSPlayerLayerInterface))

implmentsArtificialIntelligenceCompositeInterface_impl :: RTSPlayerLayerInterface -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_impl this = javaAbstractMethod "implmentsArtificialIntelligenceCompositeInterface"


