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
-- package org.allbinary.media.graphics.geography.map.event
module GeographicMapCellPositionEventHandler (module GeographicMapCellPositionEventHandler, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, addListener, addListener_super, addListener_impl, removeAllListeners, removeAllListeners_super, removeAllListeners_impl, removeListener, removeListener_super, removeListener_impl, fireEvent, fireEvent_super, fireEvent_impl, fireRemoveEvent, fireRemoveEvent_super, fireRemoveEvent_impl, process, process_super, process_impl, instance_, list)
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
import qualified GeographicMapCellPositionEvent -- same package or java.lang
import qualified GeographicMapCellPositionEventListenerInterface -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified MiniMapLayer -- org.allbinary.game.layer.geographic.map.MiniMapLayer
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler

data GeographicMapCellPositionEventHandler = GeographicMapCellPositionEventHandler
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull GeographicMapCellPositionEventHandler where
    javaNull = javaNullRecord "GeographicMapCellPositionEventHandler"

instance JavaEquals GeographicMapCellPositionEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO GeographicMapCellPositionEventHandler
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    list <- newIORef javaNull
    let this = GeographicMapCellPositionEventHandler header_ base list
    jregisterLevel header_ this
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "removeAllListeners" (\() -> removeAllListeners_impl this)
    jregisterMethod header_ "removeListener" (\() -> removeListener_impl this)
    jregisterMethod header_ "fireEvent" (\() -> fireEvent_impl this)
    jregisterMethod header_ "fireRemoveEvent" (\() -> fireRemoveEvent_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: GeographicMapCellPositionEventHandler -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


getInstance :: IO (GeographicMapCellPositionEventHandler)
getInstance = do
        pure ((jget GeographicMapCellPositionEventHandler.instance_))

new_ :: IO GeographicMapCellPositionEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellPositionEventHandler -> IO ()
init_ this = do
        BasicEventHandler.init_ this.base
        initFields_ this
        pure ()
        pure ()


addListener :: (JavaObjectClass this_) => this_ -> MiniMapLayer.MiniMapLayer -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: GeographicMapCellPositionEventHandler))) () a1

addListener_super :: (JavaObjectClass this_) => this_ -> MiniMapLayer.MiniMapLayer -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: GeographicMapCellPositionEventHandler)) a1

addListener_impl :: GeographicMapCellPositionEventHandler -> MiniMapLayer.MiniMapLayer -> IO (())
addListener_impl this miniMapLayer = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).list)) miniMapLayer))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) miniMapLayer)
        pure ()


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: GeographicMapCellPositionEventHandler))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: GeographicMapCellPositionEventHandler))

removeAllListeners_impl :: GeographicMapCellPositionEventHandler -> IO (())
removeAllListeners_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        Control.Monad.void (BasicEventHandler.removeAllListeners_super this.base)
        pure ()


removeListener :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: GeographicMapCellPositionEventHandler))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: GeographicMapCellPositionEventHandler)) a1

removeListener_impl :: GeographicMapCellPositionEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_impl this eventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).list)) eventListenerInterface)
        Control.Monad.void (BasicEventHandler.removeListener_super this.base eventListenerInterface)
        pure ()


-- throws Exception
fireEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent object_ a1 = jmethod object_ "fireEvent" (\() -> (fireEvent_impl (javaCast object_ :: GeographicMapCellPositionEventHandler))) () a1

fireEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_super object_ a1 = (fireEvent_impl (javaCast object_ :: GeographicMapCellPositionEventHandler)) a1

fireEvent_impl :: GeographicMapCellPositionEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_impl this eventObject = do
        index <- newIORef =<< (BasicArrayList.size ((jget (this).list)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                let miniMapLayer = (javaCast (jio (BasicArrayList.get ((jget (this).list)) (jget index))) :: MiniMapLayer.MiniMapLayer)
                Control.Monad.void (MiniMapLayer.onGeographicMapCellPositionEvent miniMapLayer (javaCast eventObject :: GeographicMapCellPositionEvent.GeographicMapCellPositionEvent))
        Control.Monad.void (BasicEventHandler.fireEvent_super this.base eventObject)
        pure ()


-- throws Exception
fireRemoveEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireRemoveEvent object_ a1 = jmethod object_ "fireRemoveEvent" (\() -> (fireRemoveEvent_impl (javaCast object_ :: GeographicMapCellPositionEventHandler))) () a1

fireRemoveEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireRemoveEvent_super object_ a1 = (fireRemoveEvent_impl (javaCast object_ :: GeographicMapCellPositionEventHandler)) a1

fireRemoveEvent_impl :: GeographicMapCellPositionEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireRemoveEvent_impl this eventObject = do
        let list = (jget (this).base.eventListenerInterfaceList)
        index <- newIORef =<< (BasicArrayList.size ((jget (this).list)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                let miniMapLayer = (javaCast (jio (BasicArrayList.get ((jget (this).list)) (jget index))) :: MiniMapLayer.MiniMapLayer)
                Control.Monad.void (MiniMapLayer.onRemoveGeographicMapCellPositionEvent miniMapLayer (javaCast eventObject :: GeographicMapCellPositionEvent.GeographicMapCellPositionEvent))
        eventListenerInterface <- newIORef (javaNull)
        geographicMapCellPositionEventListenerInterface <- newIORef (javaNull)
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                jset eventListenerInterface ((javaCast (jio (BasicArrayList.get list index)) :: EventListenerInterface.EventListenerInterface))
                jset geographicMapCellPositionEventListenerInterface (((javaCast (jget eventListenerInterface) :: GeographicMapCellPositionEventListenerInterface.GeographicMapCellPositionEventListenerInterface)))
                Control.Monad.void (GeographicMapCellPositionEventListenerInterface.onRemoveGeographicMapCellPositionEvent ((jget geographicMapCellPositionEventListenerInterface)) (javaCast eventObject :: GeographicMapCellPositionEvent.GeographicMapCellPositionEvent))
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: GeographicMapCellPositionEventHandler))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: GeographicMapCellPositionEventHandler)) a1 a2

process_impl :: GeographicMapCellPositionEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_impl this eventObject eventListenerInterface = do
        let geographicMapCellPositionEventListenerInterface = ((javaCast eventListenerInterface :: GeographicMapCellPositionEventListenerInterface.GeographicMapCellPositionEventListenerInterface))
        Control.Monad.void (GeographicMapCellPositionEventListenerInterface.onGeographicMapCellPositionEvent geographicMapCellPositionEventListenerInterface (javaCast eventObject :: GeographicMapCellPositionEvent.GeographicMapCellPositionEvent))
        pure ()


