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
-- package org.allbinary.game.layer.hud.event
module GameNotificationEventHandler (module GameNotificationEventHandler, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, removeAllListeners, removeAllListeners_super, removeAllListeners_impl, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, instance_, enabled)
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
import qualified GameNotificationListenerInterface -- same package or java.lang
import qualified GameNotificationEvent -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified NullEventListener -- org.allbinary.logic.util.event.NullEventListener
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data GameNotificationEventHandler = GameNotificationEventHandler
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , enabled :: IORef (Bool)
    }

instance JavaNull GameNotificationEventHandler where
    javaNull = javaNullRecord "GameNotificationEventHandler"

instance JavaEquals GameNotificationEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameNotificationEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass GameNotificationEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO GameNotificationEventHandler
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    enabled <- newIORef False
    let this = GameNotificationEventHandler header_ base enabled
    jregisterLevel header_ this
    jregisterMethod header_ "removeAllListeners" (\() -> removeAllListeners_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: GameNotificationEventHandler -> IO ()
initFields_ this = do
    jset this.enabled (True)
    pure ()

new_ :: IO GameNotificationEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameNotificationEventHandler -> IO ()
init_ this = do
        BasicEventHandler.init_ this.base
        initFields_ this
        pure ()
        pure ()


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: GameNotificationEventHandler))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: GameNotificationEventHandler))

removeAllListeners_impl :: GameNotificationEventHandler -> IO (())
removeAllListeners_impl this = do
        eventListenerInterface <- newIORef ((javaCast NullEventListener.nULL_EVENT_LISTENER :: EventListenerInterface.EventListenerInterface))
        let list = (jget (this).base.eventListenerInterfaceList)
        when ((jio (BasicArrayList.size list)) > 0) $ do
            jset eventListenerInterface ((javaCast (jindex ((jget (list).objectArray)) (0)) :: EventListenerInterface.EventListenerInterface))
        Control.Monad.void (BasicEventHandler.removeAllListeners_super this.base)
        when ((jtoObject (jget eventListenerInterface)) /= (jtoObject NullEventListener.nULL_EVENT_LISTENER)) $ do
            Control.Monad.void (BasicEventHandler.addListenerInterface this (jget eventListenerInterface))
        pure ()


getInstance :: IO (GameNotificationEventHandler)
getInstance = do
        pure (GameNotificationEventHandler.instance_)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: GameNotificationEventHandler))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: GameNotificationEventHandler)) a1 a2

process_impl :: GameNotificationEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_impl this eventObject eventListenerInterface = do
    javaCatchReturn $ do
        when (Prelude.not (jget (this).enabled)) $ do
            javaReturn (())
        let gameNotificationListenerInterface = (javaCast eventListenerInterface :: GameNotificationListenerInterface.GameNotificationListenerInterface)
        Control.Monad.void (GameNotificationListenerInterface.onGameNotificationEvent gameNotificationListenerInterface (javaCast eventObject :: GameNotificationEvent.GameNotificationEvent))
    pure ()


