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
-- package org.allbinary.game.input.event
module GameKeyEventHandler where

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
import qualified PressGameKeyEventHandler -- same package or java.lang
import qualified UpGameKeyEventHandler -- same package or java.lang
import qualified DownGameKeyEventHandler -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data GameKeyEventHandler = GameKeyEventHandler
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , pressGameKeyEventHandler :: IORef (PressGameKeyEventHandler.PressGameKeyEventHandler)
    , upGameKeyEventHandler :: IORef (UpGameKeyEventHandler.UpGameKeyEventHandler)
    , downGameKeyEventHandler :: IORef (DownGameKeyEventHandler.DownGameKeyEventHandler)
    }

instance JavaNull GameKeyEventHandler where
    javaNull = javaNullRecord "GameKeyEventHandler"

instance JavaEquals GameKeyEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameKeyEventHandler
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    pressGameKeyEventHandler <- newIORef javaNull
    upGameKeyEventHandler <- newIORef javaNull
    downGameKeyEventHandler <- newIORef javaNull
    let this = GameKeyEventHandler header_ logUtil commonStrings pressGameKeyEventHandler upGameKeyEventHandler downGameKeyEventHandler
    jregisterLevel header_ this
    jregisterMethod header_ "removeAllListeners" (\() -> removeAllListeners_impl this)
    jregisterMethod header_ "addListenerForPlayer" (\() -> addListenerForPlayer_impl this)
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "removeListener" (\() -> removeListener_impl this)
    pure this

initFields_ :: GameKeyEventHandler -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.pressGameKeyEventHandler =<< (PressGameKeyEventHandler.getInstance)
    jset this.upGameKeyEventHandler =<< (UpGameKeyEventHandler.getInstance)
    jset this.downGameKeyEventHandler =<< (DownGameKeyEventHandler.getInstance)
    pure ()

new_ :: IO GameKeyEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameKeyEventHandler -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameKeyEventHandler)
getInstance = do
        pure (GameKeyEventHandler.instance_)


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: GameKeyEventHandler))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: GameKeyEventHandler))

removeAllListeners_impl :: GameKeyEventHandler -> IO (())
removeAllListeners_impl this = do
        Control.Monad.void (PressGameKeyEventHandler.removeAllListeners ((jget (this).pressGameKeyEventHandler)))
        Control.Monad.void (UpGameKeyEventHandler.removeAllListeners ((jget (this).upGameKeyEventHandler)))
        Control.Monad.void (DownGameKeyEventHandler.removeAllListeners ((jget (this).downGameKeyEventHandler)))
        pure ()


addListenerForPlayer :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> Int -> IO (())
addListenerForPlayer object_ a1 a2 = jmethod object_ "addListenerForPlayer" (\() -> (addListenerForPlayer_impl (javaCast object_ :: GameKeyEventHandler))) () a1 a2

addListenerForPlayer_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> Int -> IO (())
addListenerForPlayer_super object_ a1 a2 = (addListenerForPlayer_impl (javaCast object_ :: GameKeyEventHandler)) a1 a2

addListenerForPlayer_impl :: GameKeyEventHandler -> EventListenerInterface.EventListenerInterface -> Int -> IO (())
addListenerForPlayer_impl this eventListenerInterface playerInputId = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (EventListenerInterface.toString eventListenerInterface)) this (jget ((jget (this).commonStrings)).aDD_LISTENER))
        Control.Monad.void (PressGameKeyEventHandler.addListenerSingleThreaded ((jget (this).pressGameKeyEventHandler)) eventListenerInterface)
        Control.Monad.void (UpGameKeyEventHandlerBase.addListenerSingleThreaded ((jio (UpGameKeyEventHandler.getInstanceForPlayer ((jget (this).upGameKeyEventHandler)) playerInputId))) eventListenerInterface)
        Control.Monad.void (DownGameKeyEventHandlerBase.addListenerSingleThreaded ((jio (DownGameKeyEventHandler.getInstanceForPlayer ((jget (this).downGameKeyEventHandler)) playerInputId))) eventListenerInterface)
        pure ()


addListener :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: GameKeyEventHandler))) () a1

addListener_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: GameKeyEventHandler)) a1

addListener_impl :: GameKeyEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
addListener_impl this eventListenerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (EventListenerInterface.toString eventListenerInterface)) this (jget ((jget (this).commonStrings)).aDD_LISTENER))
        Control.Monad.void (PressGameKeyEventHandler.addListenerSingleThreaded ((jget (this).pressGameKeyEventHandler)) eventListenerInterface)
        Control.Monad.void (UpGameKeyEventHandler.addListenerSingleThreaded ((jget (this).upGameKeyEventHandler)) eventListenerInterface)
        Control.Monad.void (DownGameKeyEventHandler.addListenerSingleThreaded ((jget (this).downGameKeyEventHandler)) eventListenerInterface)
        pure ()


removeListener :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: GameKeyEventHandler))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: GameKeyEventHandler)) a1

removeListener_impl :: GameKeyEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_impl this eventListenerInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (EventListenerInterface.toString eventListenerInterface)) this (jget ((jget (this).commonStrings)).rEMOVE_LISTENER))
        Control.Monad.void (PressGameKeyEventHandler.removeListenerSingleThreaded ((jget (this).pressGameKeyEventHandler)) eventListenerInterface)
        Control.Monad.void (UpGameKeyEventHandler.removeListenerSingleThreaded ((jget (this).upGameKeyEventHandler)) eventListenerInterface)
        Control.Monad.void (DownGameKeyEventHandler.removeListenerSingleThreaded ((jget (this).downGameKeyEventHandler)) eventListenerInterface)
        pure ()


