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
-- package org.allbinary.game.ag.layer.hud.basic.notification
module GameNotificationHudCompositeInterface where

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
import qualified GameNotificationHud -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data GameNotificationHudCompositeInterface = GameNotificationHudCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull GameNotificationHudCompositeInterface where
    javaNull = javaNullRecord "GameNotificationHudCompositeInterface"

instance JavaEquals GameNotificationHudCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameNotificationHudCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass GameNotificationHudCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameNotificationHudCompositeInterface
fromHeader_ header = GameNotificationHudCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameNotificationHudCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getGameNotificationHud :: (JavaObjectClass this_) => this_ -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud object_ = jmethod object_ "getGameNotificationHud" (\() -> (getGameNotificationHud_impl (javaCast object_ :: GameNotificationHudCompositeInterface))) ()

getGameNotificationHud_super :: (JavaObjectClass this_) => this_ -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud_super object_ = (getGameNotificationHud_impl (javaCast object_ :: GameNotificationHudCompositeInterface))

getGameNotificationHud_impl :: GameNotificationHudCompositeInterface -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud_impl this = javaAbstractMethod "getGameNotificationHud"


