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
-- package org.allbinary.game.layer
module AdvancedRTSPlayerLayerInterface (module AdvancedRTSPlayerLayerInterface, module RTSPlayerLayerInterface) where

import RTSPlayerLayerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAdvancedPlayerOwnedRTSLayers, getAdvancedPlayerOwnedRTSLayers_super, getAdvancedPlayerOwnedRTSLayers_impl, isLocalPlayer, isLocalPlayer_super, isLocalPlayer_impl, getGameType, getGameType_super, getGameType_impl, getDecalBasicColor, getDecalBasicColor_super, getDecalBasicColor_impl, toString)
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
import qualified AdvancedPlayerOwnedRTSLayers -- same package or java.lang
import qualified GameType -- org.allbinary.game.GameType
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified RTSPlayerLayerInterface

-- Java interface: the classes that implement it have these functions
data AdvancedRTSPlayerLayerInterface = AdvancedRTSPlayerLayerInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvancedRTSPlayerLayerInterface where
    javaNull = javaNullRecord "AdvancedRTSPlayerLayerInterface"

instance JavaEquals AdvancedRTSPlayerLayerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvancedRTSPlayerLayerInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvancedRTSPlayerLayerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvancedRTSPlayerLayerInterface
fromHeader_ header = AdvancedRTSPlayerLayerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvancedRTSPlayerLayerInterface header)
    RTSPlayerLayerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getAdvancedPlayerOwnedRTSLayers :: (JavaObjectClass this_) => this_ -> IO (AdvancedPlayerOwnedRTSLayers.AdvancedPlayerOwnedRTSLayers)
getAdvancedPlayerOwnedRTSLayers object_ = jmethod object_ "getAdvancedPlayerOwnedRTSLayers" (\() -> (getAdvancedPlayerOwnedRTSLayers_impl (javaCast object_ :: AdvancedRTSPlayerLayerInterface))) ()

getAdvancedPlayerOwnedRTSLayers_super :: (JavaObjectClass this_) => this_ -> IO (AdvancedPlayerOwnedRTSLayers.AdvancedPlayerOwnedRTSLayers)
getAdvancedPlayerOwnedRTSLayers_super object_ = (getAdvancedPlayerOwnedRTSLayers_impl (javaCast object_ :: AdvancedRTSPlayerLayerInterface))

getAdvancedPlayerOwnedRTSLayers_impl :: AdvancedRTSPlayerLayerInterface -> IO (AdvancedPlayerOwnedRTSLayers.AdvancedPlayerOwnedRTSLayers)
getAdvancedPlayerOwnedRTSLayers_impl this = javaAbstractMethod "getAdvancedPlayerOwnedRTSLayers"


isLocalPlayer :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLocalPlayer object_ = jmethod object_ "isLocalPlayer" (\() -> (isLocalPlayer_impl (javaCast object_ :: AdvancedRTSPlayerLayerInterface))) ()

isLocalPlayer_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLocalPlayer_super object_ = (isLocalPlayer_impl (javaCast object_ :: AdvancedRTSPlayerLayerInterface))

isLocalPlayer_impl :: AdvancedRTSPlayerLayerInterface -> IO (Bool)
isLocalPlayer_impl this = javaAbstractMethod "isLocalPlayer"


getGameType :: (JavaObjectClass this_) => this_ -> IO (GameType.GameType)
getGameType object_ = jmethod object_ "getGameType" (\() -> (getGameType_impl (javaCast object_ :: AdvancedRTSPlayerLayerInterface))) ()

getGameType_super :: (JavaObjectClass this_) => this_ -> IO (GameType.GameType)
getGameType_super object_ = (getGameType_impl (javaCast object_ :: AdvancedRTSPlayerLayerInterface))

getGameType_impl :: AdvancedRTSPlayerLayerInterface -> IO (GameType.GameType)
getGameType_impl this = javaAbstractMethod "getGameType"


getDecalBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getDecalBasicColor object_ = jmethod object_ "getDecalBasicColor" (\() -> (getDecalBasicColor_impl (javaCast object_ :: AdvancedRTSPlayerLayerInterface))) ()

getDecalBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getDecalBasicColor_super object_ = (getDecalBasicColor_impl (javaCast object_ :: AdvancedRTSPlayerLayerInterface))

getDecalBasicColor_impl :: AdvancedRTSPlayerLayerInterface -> IO (BasicColor.BasicColor)
getDecalBasicColor_impl this = javaAbstractMethod "getDecalBasicColor"


