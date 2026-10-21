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
-- package org.allbinary.logic.util.event.handler
module BasicEventHandler where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicEventHandlerInterface

-- implements BasicEventHandlerInterface
data BasicEventHandler = BasicEventHandler
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , eventListenerInterfaceList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicEventHandler where
    javaNull = javaNullRecord "BasicEventHandler"

instance JavaEquals BasicEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass BasicEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

pERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization"

newRecord_ :: IO BasicEventHandler
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    eventListenerInterfaceList <- newIORef javaNull
    let this = BasicEventHandler header_ logUtil eventListenerInterfaceList
    jregisterLevel header_ this
    BasicEventHandlerInterface.registerInterface_ header_
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "removeAllListeners" (\() -> removeAllListeners_impl this)
    jregisterMethod header_ "addListenerSingleThreaded" (\() -> addListenerSingleThreaded_impl this)
    jregisterMethod header_ "addListenerInterface" (\() -> addListenerInterface_impl this)
    jregisterMethod header_ "removeListenerSingleThreaded" (\() -> removeListenerSingleThreaded_impl this)
    jregisterMethod header_ "removeListener" (\() -> removeListener_impl this)
    jregisterMethod header_ "fireEvent" (\() -> fireEvent_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getEventListenerInterfaceListP" (\() -> getEventListenerInterfaceListP_impl this)
    pure this

initFields_ :: BasicEventHandler -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.eventListenerInterfaceList (javaNull)
    pure ()

new_ :: IO BasicEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicEventHandler -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).eventListenerInterfaceList (assignedValue)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicEventHandler))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicEventHandler))

toString_impl :: BasicEventHandler -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        let lISTENER = " Listener: "
        Control.Monad.void (StringMaker.append stringBuffer "Total Listeners: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget (this).eventListenerInterfaceList)))))
        eventListenerInterface <- newIORef (javaNull)
        index <- newIORef (0)
        fix $ \loop -> when ((jget index) < (jio (BasicArrayList.size ((jget (this).eventListenerInterfaceList))))) $ javaIteration (loop) $ do
            handle (\(e :: JavaException) -> do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).tOSTRING) e)
                ) $ do
                jset eventListenerInterface ((javaCast (jindex ((jget ((jget (this).eventListenerInterfaceList)).objectArray)) ((jget index))) :: EventListenerInterface.EventListenerInterface))
                Control.Monad.void (StringMaker.append stringBuffer lISTENER)
                Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget eventListenerInterface))))
            jset index ((jget index) + 1)
        (StringMaker.toString stringBuffer)


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: BasicEventHandler))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: BasicEventHandler))

removeAllListeners_impl :: BasicEventHandler -> IO (())
removeAllListeners_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).eventListenerInterfaceList (assignedValue)
        pure ()


addListenerSingleThreaded :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerSingleThreaded object_ a1 = jmethod object_ "addListenerSingleThreaded" (\() -> (addListenerSingleThreaded_impl (javaCast object_ :: BasicEventHandler))) () a1

addListenerSingleThreaded_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerSingleThreaded_super object_ a1 = (addListenerSingleThreaded_impl (javaCast object_ :: BasicEventHandler)) a1

addListenerSingleThreaded_impl :: BasicEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerSingleThreaded_impl this eventListenerInterface = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).eventListenerInterfaceList)) eventListenerInterface))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).eventListenerInterfaceList)) eventListenerInterface)
        pure ()


addListenerInterface :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerInterface object_ a1 = jmethod object_ "addListenerInterface" (\() -> (addListenerInterface_impl (javaCast object_ :: BasicEventHandler))) () a1

addListenerInterface_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerInterface_super object_ a1 = (addListenerInterface_impl (javaCast object_ :: BasicEventHandler)) a1

addListenerInterface_impl :: BasicEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerInterface_impl this eventListenerInterface = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).eventListenerInterfaceList)) eventListenerInterface))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).eventListenerInterfaceList)) eventListenerInterface)
        pure ()


removeListenerSingleThreaded :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded object_ a1 = jmethod object_ "removeListenerSingleThreaded" (\() -> (removeListenerSingleThreaded_impl (javaCast object_ :: BasicEventHandler))) () a1

removeListenerSingleThreaded_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded_super object_ a1 = (removeListenerSingleThreaded_impl (javaCast object_ :: BasicEventHandler)) a1

removeListenerSingleThreaded_impl :: BasicEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded_impl this eventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).eventListenerInterfaceList)) eventListenerInterface)
        pure ()


removeListener :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: BasicEventHandler))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: BasicEventHandler)) a1

removeListener_impl :: BasicEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_impl this eventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).eventListenerInterfaceList)) eventListenerInterface)
        pure ()


-- throws Exception
fireEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent object_ a1 = jmethod object_ "fireEvent" (\() -> (fireEvent_impl (javaCast object_ :: BasicEventHandler))) () a1

fireEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_super object_ a1 = (fireEvent_impl (javaCast object_ :: BasicEventHandler)) a1

fireEvent_impl :: BasicEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_impl this eventObject = do
        index <- newIORef (0)
        eventListenerInterface <- newIORef (javaNull)
        fix $ \loop -> when ((jget index) < (jio (BasicArrayList.size ((jget (this).eventListenerInterfaceList))))) $ javaIteration (loop) $ do
            handle (\(e :: JavaException) -> do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                jset eventListenerInterface ((javaCast (jindex ((jget ((jget (this).eventListenerInterfaceList)).objectArray)) ((jget index))) :: EventListenerInterface.EventListenerInterface))
                Control.Monad.void (BasicEventHandler.process this eventObject (jget eventListenerInterface))
            jset index ((jget index) + 1)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicEventHandler))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: BasicEventHandler)) a1 a2

process_impl :: BasicEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_impl this eventObject eventListenerInterface = do
        Control.Monad.void (EventListenerInterface.onEvent eventListenerInterface eventObject)
        pure ()


getEventListenerInterfaceListP :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEventListenerInterfaceListP object_ = jmethod object_ "getEventListenerInterfaceListP" (\() -> (getEventListenerInterfaceListP_impl (javaCast object_ :: BasicEventHandler))) ()

getEventListenerInterfaceListP_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEventListenerInterfaceListP_super object_ = (getEventListenerInterfaceListP_impl (javaCast object_ :: BasicEventHandler))

getEventListenerInterfaceListP_impl :: BasicEventHandler -> IO (BasicArrayList.BasicArrayList)
getEventListenerInterfaceListP_impl this = do
        pure ((jget (this).eventListenerInterfaceList))


