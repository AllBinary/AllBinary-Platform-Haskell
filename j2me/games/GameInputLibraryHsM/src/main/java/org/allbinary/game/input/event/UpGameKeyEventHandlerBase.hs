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
module UpGameKeyEventHandlerBase (module UpGameKeyEventHandlerBase, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addListener, addListener_super, addListener_impl, removeAllListeners, removeAllListeners_super, removeAllListeners_impl, removeListenerSingleThreaded, removeListenerSingleThreaded_super, removeListenerSingleThreaded_impl, removeListener, removeListener_super, removeListener_impl, fireEvent, fireEvent_super, fireEvent_impl, process, process_super, process_impl, toString, toString_super, toString_impl, list, tOTAL_LISTENERS, lISTENER_LABEL)
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
import qualified GameKeyEvent -- same package or java.lang
import qualified UpGameKeyEventListenerInterface -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified PlayerGameInput -- org.allbinary.game.input.PlayerGameInput
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data UpGameKeyEventHandlerBase = UpGameKeyEventHandlerBase
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull UpGameKeyEventHandlerBase where
    javaNull = javaNullRecord "UpGameKeyEventHandlerBase"

instance JavaEquals UpGameKeyEventHandlerBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpGameKeyEventHandlerBase where
    (==) = jrecordEquals

instance JavaObjectClass UpGameKeyEventHandlerBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

tOTAL_LISTENERS = " Total PlayerGameInput Listeners: "

lISTENER_LABEL = " PlayerGameInput Listener: "

newRecord_ :: IO UpGameKeyEventHandlerBase
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    list <- newIORef javaNull
    let this = UpGameKeyEventHandlerBase header_ base list
    jregisterLevel header_ this
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "removeAllListeners" (\() -> removeAllListeners_impl this)
    jregisterMethod header_ "removeListenerSingleThreaded" (\() -> removeListenerSingleThreaded_impl this)
    jregisterMethod header_ "removeListener" (\() -> removeListener_impl this)
    jregisterMethod header_ "fireEvent" (\() -> fireEvent_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: UpGameKeyEventHandlerBase -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO UpGameKeyEventHandlerBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UpGameKeyEventHandlerBase -> IO ()
init_ this = do
        BasicEventHandler.init_ this.base
        initFields_ this
        pure ()
        pure ()


addListener :: (JavaObjectClass this_) => this_ -> PlayerGameInput.PlayerGameInput -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: UpGameKeyEventHandlerBase))) () a1

addListener_super :: (JavaObjectClass this_) => this_ -> PlayerGameInput.PlayerGameInput -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: UpGameKeyEventHandlerBase)) a1

addListener_impl :: UpGameKeyEventHandlerBase -> PlayerGameInput.PlayerGameInput -> IO (())
addListener_impl this playerGameInput = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).list)) playerGameInput))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) playerGameInput)
        pure ()


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: UpGameKeyEventHandlerBase))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: UpGameKeyEventHandlerBase))

removeAllListeners_impl :: UpGameKeyEventHandlerBase -> IO (())
removeAllListeners_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        Control.Monad.void (BasicEventHandler.removeAllListeners_super this.base)
        pure ()


removeListenerSingleThreaded :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded object_ a1 = jmethod object_ "removeListenerSingleThreaded" (\() -> (removeListenerSingleThreaded_impl (javaCast object_ :: UpGameKeyEventHandlerBase))) () a1

removeListenerSingleThreaded_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded_super object_ a1 = (removeListenerSingleThreaded_impl (javaCast object_ :: UpGameKeyEventHandlerBase)) a1

removeListenerSingleThreaded_impl :: UpGameKeyEventHandlerBase -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded_impl this eventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).list)) eventListenerInterface)
        Control.Monad.void (BasicEventHandler.removeListenerSingleThreaded_super this.base eventListenerInterface)
        pure ()


removeListener :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: UpGameKeyEventHandlerBase))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: UpGameKeyEventHandlerBase)) a1

removeListener_impl :: UpGameKeyEventHandlerBase -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_impl this eventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).list)) eventListenerInterface)
        Control.Monad.void (BasicEventHandler.removeListener_super this.base eventListenerInterface)
        pure ()


-- throws Exception
fireEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent object_ a1 = jmethod object_ "fireEvent" (\() -> (fireEvent_impl (javaCast object_ :: UpGameKeyEventHandlerBase))) () a1

fireEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_super object_ a1 = (fireEvent_impl (javaCast object_ :: UpGameKeyEventHandlerBase)) a1

fireEvent_impl :: UpGameKeyEventHandlerBase -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_impl this eventObject = do
        index <- newIORef =<< (BasicArrayList.size ((jget (this).list)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                let playerGameInput = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((jget index))) :: PlayerGameInput.PlayerGameInput)
                Control.Monad.void (PlayerGameInput.onUpGameKeyEvent playerGameInput (javaCast eventObject :: GameKeyEvent.GameKeyEvent))
        Control.Monad.void (BasicEventHandler.fireEvent_super this.base eventObject)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: UpGameKeyEventHandlerBase))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: UpGameKeyEventHandlerBase)) a1 a2

process_impl :: UpGameKeyEventHandlerBase -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_impl this eventObject eventListenerInterface = do
        let upGameKeyEventListenerInterface = (javaCast eventListenerInterface :: UpGameKeyEventListenerInterface.UpGameKeyEventListenerInterface)
        Control.Monad.void (UpGameKeyEventListenerInterface.onUpGameKeyEvent upGameKeyEventListenerInterface (javaCast eventObject :: GameKeyEvent.GameKeyEvent))
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: UpGameKeyEventHandlerBase))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: UpGameKeyEventHandlerBase))

toString_impl :: UpGameKeyEventHandlerBase -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        size <- (BasicArrayList.size ((jget (this).list)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicEventHandler.toString_super this.base)))
        Control.Monad.void (StringMaker.append stringBuffer (UpGameKeyEventHandlerBase.tOTAL_LISTENERS))
        Control.Monad.void (StringMaker.appendint stringBuffer size)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).tOSTRING) e)
                ) $ do
                let eventListenerInterface = (javaCast (jio (BasicArrayList.get ((jget (this).list)) index)) :: EventListenerInterface.EventListenerInterface)
                Control.Monad.void (StringMaker.append stringBuffer (UpGameKeyEventHandlerBase.lISTENER_LABEL))
                Control.Monad.void (StringMaker.append stringBuffer (jio (EventListenerInterface.toString eventListenerInterface)))
        (StringMaker.toString stringBuffer)


