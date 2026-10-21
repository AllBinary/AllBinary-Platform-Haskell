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
-- package org.allbinary.layer.event
module LayerManagerEventHandler (module LayerManagerEventHandler, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, addListener, addListener_super, addListener_impl, removeAllListeners, removeAllListeners_super, removeAllListeners_impl, removeListener, removeListener_super, removeListener_impl, fireEvent, fireEvent_super, fireEvent_impl, fireDeleteEvent, fireDeleteEvent_super, fireDeleteEvent_impl, process, process_super, process_impl, instance_, list, cREATE, dELETE)
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
import qualified LayerManagerEventListener -- same package or java.lang
import qualified LayerManagerEvent -- same package or java.lang
import qualified LayerManagerEventListenerInterface -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data LayerManagerEventHandler = LayerManagerEventHandler
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , list :: IORef (BasicArrayList.BasicArrayList)
    , cREATE :: IORef (String)
    , dELETE :: IORef (String)
    }

instance JavaNull LayerManagerEventHandler where
    javaNull = javaNullRecord "LayerManagerEventHandler"

instance JavaEquals LayerManagerEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerManagerEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass LayerManagerEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO LayerManagerEventHandler
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    list <- newIORef javaNull
    cREATE <- newIORef ""
    dELETE <- newIORef ""
    let this = LayerManagerEventHandler header_ base list cREATE dELETE
    jregisterLevel header_ this
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "removeAllListeners" (\() -> removeAllListeners_impl this)
    jregisterMethod header_ "removeListener" (\() -> removeListener_impl this)
    jregisterMethod header_ "fireEvent" (\() -> fireEvent_impl this)
    jregisterMethod header_ "fireDeleteEvent" (\() -> fireDeleteEvent_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: LayerManagerEventHandler -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.cREATE ("Create")
    jset this.dELETE ("Delete")
    pure ()


getInstance :: IO (LayerManagerEventHandler)
getInstance = do
        pure ((jget LayerManagerEventHandler.instance_))

new_ :: IO LayerManagerEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerManagerEventHandler -> IO ()
init_ this = do
        BasicEventHandler.init_ this.base
        initFields_ this
        pure ()
        pure ()


addListener :: (JavaObjectClass this_) => this_ -> LayerManagerEventListener.LayerManagerEventListener -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: LayerManagerEventHandler))) () a1

addListener_super :: (JavaObjectClass this_) => this_ -> LayerManagerEventListener.LayerManagerEventListener -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: LayerManagerEventHandler)) a1

addListener_impl :: LayerManagerEventHandler -> LayerManagerEventListener.LayerManagerEventListener -> IO (())
addListener_impl this layerManagerEventListener = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).list)) layerManagerEventListener))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) layerManagerEventListener)
        pure ()


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: LayerManagerEventHandler))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: LayerManagerEventHandler))

removeAllListeners_impl :: LayerManagerEventHandler -> IO (())
removeAllListeners_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        Control.Monad.void (BasicEventHandler.removeAllListeners_super this.base)
        pure ()


removeListener :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: LayerManagerEventHandler))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: LayerManagerEventHandler)) a1

removeListener_impl :: LayerManagerEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_impl this eventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).list)) eventListenerInterface)
        Control.Monad.void (BasicEventHandler.removeListener_super this.base eventListenerInterface)
        pure ()


-- throws Exception
fireEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent object_ a1 = jmethod object_ "fireEvent" (\() -> (fireEvent_impl (javaCast object_ :: LayerManagerEventHandler))) () a1

fireEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_super object_ a1 = (fireEvent_impl (javaCast object_ :: LayerManagerEventHandler)) a1

fireEvent_impl :: LayerManagerEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_impl this eventObject = do
        index <- newIORef =<< (BasicArrayList.size ((jget (this).list)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                let layerManagerEventListener = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((jget index))) :: LayerManagerEventListener.LayerManagerEventListener)
                Control.Monad.void (LayerManagerEventListener.onCreateLayerManagerEvent layerManagerEventListener (javaCast eventObject :: LayerManagerEvent.LayerManagerEvent))
        Control.Monad.void (BasicEventHandler.fireEvent_super this.base eventObject)
        pure ()


-- throws Exception
fireDeleteEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireDeleteEvent object_ a1 = jmethod object_ "fireDeleteEvent" (\() -> (fireDeleteEvent_impl (javaCast object_ :: LayerManagerEventHandler))) () a1

fireDeleteEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireDeleteEvent_super object_ a1 = (fireDeleteEvent_impl (javaCast object_ :: LayerManagerEventHandler)) a1

fireDeleteEvent_impl :: LayerManagerEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireDeleteEvent_impl this eventObject = do
        index <- newIORef =<< (BasicArrayList.size ((jget (this).list)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                let layerManagerEventListener = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((jget index))) :: LayerManagerEventListener.LayerManagerEventListener)
                Control.Monad.void (LayerManagerEventListener.onDeleteLayerManagerEvent layerManagerEventListener (javaCast eventObject :: LayerManagerEvent.LayerManagerEvent))
        let eventListenerInterfaceList = (jget (this).base.eventListenerInterfaceList)
        eventListenerInterface <- newIORef (javaNull)
        layerManagerEventListenerInterface <- newIORef (javaNull)
        index <- newIORef (0)
        fix $ \loop -> when ((jget index) < (jio (BasicArrayList.size eventListenerInterfaceList))) $ javaIteration (loop) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                jset eventListenerInterface ((javaCast (jindex ((jget (eventListenerInterfaceList).objectArray)) ((jget index))) :: EventListenerInterface.EventListenerInterface))
                jset layerManagerEventListenerInterface (((javaCast (jget eventListenerInterface) :: LayerManagerEventListenerInterface.LayerManagerEventListenerInterface)))
                Control.Monad.void (LayerManagerEventListenerInterface.onDeleteLayerManagerEvent ((jget layerManagerEventListenerInterface)) (javaCast eventObject :: LayerManagerEvent.LayerManagerEvent))
            jset index ((jget index) + 1)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: LayerManagerEventHandler))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: LayerManagerEventHandler)) a1 a2

process_impl :: LayerManagerEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_impl this eventObject eventListenerInterface = do
        let layerManagerEventListenerInterface = ((javaCast eventListenerInterface :: LayerManagerEventListenerInterface.LayerManagerEventListenerInterface))
        Control.Monad.void (LayerManagerEventListenerInterface.onCreateLayerManagerEvent layerManagerEventListenerInterface (javaCast eventObject :: LayerManagerEvent.LayerManagerEvent))
        pure ()


