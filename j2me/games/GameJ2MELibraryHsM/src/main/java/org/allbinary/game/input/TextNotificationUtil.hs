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
-- package org.allbinary.game.input
module TextNotificationUtil where

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
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ErrorSound -- org.allbinary.media.audio.ErrorSound
import qualified PrimaryPlayerQueueFactory -- org.allbinary.media.audio.PrimaryPlayerQueueFactory
import qualified SelectSound -- org.allbinary.media.audio.SelectSound

data TextNotificationUtil = TextNotificationUtil
    { header_ :: JavaHeader
    , tWO :: IORef (Int)
    , fALSE :: IORef (Bool)
    , gameNotificationEventHandler :: IORef (GameNotificationEventHandler.GameNotificationEventHandler)
    }

instance JavaNull TextNotificationUtil where
    javaNull = javaNullRecord "TextNotificationUtil"

instance JavaEquals TextNotificationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TextNotificationUtil where
    (==) = jrecordEquals

instance JavaObjectClass TextNotificationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TextNotificationUtil
newRecord_ = do
    header_ <- newJavaHeader
    tWO <- newIORef javaNull
    fALSE <- newIORef javaNull
    gameNotificationEventHandler <- newIORef javaNull
    let this = TextNotificationUtil header_ tWO fALSE gameNotificationEventHandler
    jregisterLevel header_ this
    jregisterMethod header_ "fireError" (\() -> fireError_impl this)
    jregisterMethod header_ "fireNew" (\() -> fireNew_impl this)
    jregisterMethod header_ "fireSuccess" (\() -> fireSuccess_impl this)
    jregisterMethod header_ "fire" (\() -> fire_impl this)
    pure this

initFields_ :: TextNotificationUtil -> IO ()
initFields_ this = do
    jset this.tWO =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 2)
    jset this.fALSE ((jget ((jio (BooleanFactory.getInstance))).fALSE))
    jset this.gameNotificationEventHandler =<< (GameNotificationEventHandler.getInstance)
    pure ()

new_ :: IO TextNotificationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TextNotificationUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TextNotificationUtil)
getInstance = do
        pure (TextNotificationUtil.instance_)


-- throws Exception
fireError :: (JavaObjectClass this_) => this_ -> String -> IO (())
fireError object_ a1 = jmethod object_ "fireError" (\() -> (fireError_impl (javaCast object_ :: TextNotificationUtil))) () a1

fireError_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
fireError_super object_ a1 = (fireError_impl (javaCast object_ :: TextNotificationUtil)) a1

fireError_impl :: TextNotificationUtil -> String -> IO (())
fireError_impl this message = do
        Control.Monad.void (PlayerQueue.add ((jio (PrimaryPlayerQueueFactory.getInstance))) (jio (ErrorSound.getInstance)))
        Control.Monad.void (TextNotificationUtil.fire this message)
        pure ()


-- throws Exception
fireNew :: (JavaObjectClass this_) => this_ -> String -> IO (())
fireNew object_ a1 = jmethod object_ "fireNew" (\() -> (fireNew_impl (javaCast object_ :: TextNotificationUtil))) () a1

fireNew_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
fireNew_super object_ a1 = (fireNew_impl (javaCast object_ :: TextNotificationUtil)) a1

fireNew_impl :: TextNotificationUtil -> String -> IO (())
fireNew_impl this message = do
        Control.Monad.void (PlayerQueue.add ((jio (PrimaryPlayerQueueFactory.getInstance))) (jio (SelectSound.getInstance)))
        Control.Monad.void (TextNotificationUtil.fire this message)
        pure ()


-- throws Exception
fireSuccess :: (JavaObjectClass this_) => this_ -> String -> IO (())
fireSuccess object_ a1 = jmethod object_ "fireSuccess" (\() -> (fireSuccess_impl (javaCast object_ :: TextNotificationUtil))) () a1

fireSuccess_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
fireSuccess_super object_ a1 = (fireSuccess_impl (javaCast object_ :: TextNotificationUtil)) a1

fireSuccess_impl :: TextNotificationUtil -> String -> IO (())
fireSuccess_impl this message = do
        Control.Monad.void (PlayerQueue.add ((jio (PrimaryPlayerQueueFactory.getInstance))) (jio (SelectSound.getInstance)))
        Control.Monad.void (TextNotificationUtil.fire this message)
        pure ()


-- throws Exception
fire :: (JavaObjectClass this_) => this_ -> String -> IO (())
fire object_ a1 = jmethod object_ "fire" (\() -> (fire_impl (javaCast object_ :: TextNotificationUtil))) () a1

fire_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
fire_super object_ a1 = (fire_impl (javaCast object_ :: TextNotificationUtil)) a1

fire_impl :: TextNotificationUtil -> String -> IO (())
fire_impl this message = do
        gameNotificationEvent <- (GameNotificationEvent.new_5 this message (jget (this).tWO) (jget ((jio (BasicColorFactory.getInstance))).rED) (jget (this).fALSE))
        Control.Monad.void (GameNotificationEventHandler.fireEvent ((jget (this).gameNotificationEventHandler)) (javaCast gameNotificationEvent))
        pure ()


