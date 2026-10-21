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
-- package org.allbinary.logic.system.security.licensing
module LockedFeatureNotificationUtil where

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
import qualified LicenseStrings -- same package or java.lang
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ErrorSound -- org.allbinary.media.audio.ErrorSound
import qualified PrimaryPlayerQueueFactory -- org.allbinary.media.audio.PrimaryPlayerQueueFactory

data LockedFeatureNotificationUtil = LockedFeatureNotificationUtil
    { header_ :: JavaHeader
    , gameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    }

instance JavaNull LockedFeatureNotificationUtil where
    javaNull = javaNullRecord "LockedFeatureNotificationUtil"

instance JavaEquals LockedFeatureNotificationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LockedFeatureNotificationUtil where
    (==) = jrecordEquals

instance JavaObjectClass LockedFeatureNotificationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LockedFeatureNotificationUtil
newRecord_ = do
    header_ <- newJavaHeader
    gameNotificationEvent <- newIORef javaNull
    let this = LockedFeatureNotificationUtil header_ gameNotificationEvent
    jregisterLevel header_ this
    jregisterMethod header_ "fire" (\() -> fire_impl this)
    jregisterMethod header_ "fireWithColor" (\() -> fireWithColor_impl this)
    pure this

initFields_ :: LockedFeatureNotificationUtil -> IO ()
initFields_ this = do
    jset this.gameNotificationEvent =<< (GameNotificationEvent.new_5 this (jget ((jio (LicenseStrings.getInstance))).lOCKED) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 3)) (jget ((jio (BasicColorFactory.getInstance))).rED) (jget ((jio (BooleanFactory.getInstance))).fALSE))
    pure ()

new_ :: IO LockedFeatureNotificationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LockedFeatureNotificationUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LockedFeatureNotificationUtil)
getInstance = do
        pure (LockedFeatureNotificationUtil.instance_)


-- throws Exception
fire :: (JavaObjectClass this_) => this_ -> IO (())
fire object_ = jmethod object_ "fire" (\() -> (fire_impl (javaCast object_ :: LockedFeatureNotificationUtil))) ()

fire_super :: (JavaObjectClass this_) => this_ -> IO (())
fire_super object_ = (fire_impl (javaCast object_ :: LockedFeatureNotificationUtil))

fire_impl :: LockedFeatureNotificationUtil -> IO (())
fire_impl this = do
        Control.Monad.void (PlayerQueue.add ((jio (PrimaryPlayerQueueFactory.getInstance))) (jio (ErrorSound.getInstance)))
        Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).gameNotificationEvent))
        pure ()


-- throws Exception
fireWithColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
fireWithColor object_ a1 = jmethod object_ "fireWithColor" (\() -> (fireWithColor_impl (javaCast object_ :: LockedFeatureNotificationUtil))) () a1

fireWithColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
fireWithColor_super object_ a1 = (fireWithColor_impl (javaCast object_ :: LockedFeatureNotificationUtil)) a1

fireWithColor_impl :: LockedFeatureNotificationUtil -> BasicColor.BasicColor -> IO (())
fireWithColor_impl this basicColor = do
        Control.Monad.void (PlayerQueue.add ((jio (PrimaryPlayerQueueFactory.getInstance))) (jio (ErrorSound.getInstance)))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).gameNotificationEvent)) basicColor)
        Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).gameNotificationEvent))
        pure ()


