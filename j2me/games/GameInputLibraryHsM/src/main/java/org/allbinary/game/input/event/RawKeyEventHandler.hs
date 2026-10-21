{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module RawKeyEventHandler where

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
import qualified RawKeyEventListener -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data RawKeyEventHandler = RawKeyEventHandler
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , eventListenerInterfaceList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull RawKeyEventHandler where
    javaNull = javaNullRecord "RawKeyEventHandler"

instance JavaEquals RawKeyEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RawKeyEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass RawKeyEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

tOTAL_LISTENERS = "Total Listeners: "

lISTENER_LABEL = " Listener: "

newRecord_ :: IO RawKeyEventHandler
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    eventListenerInterfaceList <- newIORef javaNull
    let this = RawKeyEventHandler header_ logUtil eventListenerInterfaceList
    jregisterLevel header_ this
    jregisterMethod header_ "removeAllListeners" (\() -> removeAllListeners_impl this)
    jregisterMethod header_ "addListeners" (\() -> addListeners_impl this)
    jregisterMethod header_ "addListenerSingleThreaded" (\() -> addListenerSingleThreaded_impl this)
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "removeListenerSingleThreaded" (\() -> removeListenerSingleThreaded_impl this)
    jregisterMethod header_ "removeListener" (\() -> removeListener_impl this)
    jregisterMethod header_ "fireEvent" (\() -> fireEvent_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getEventListenerInterfaceListP" (\() -> getEventListenerInterfaceListP_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: RawKeyEventHandler -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.eventListenerInterfaceList (javaNull)
    pure ()


getInstance :: IO (RawKeyEventHandler)
getInstance = do
        pure (RawKeyEventHandler.instance_)

new_ :: IO RawKeyEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RawKeyEventHandler -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).eventListenerInterfaceList (assignedValue)
        pure ()


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: RawKeyEventHandler))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: RawKeyEventHandler))

removeAllListeners_impl :: RawKeyEventHandler -> IO (())
removeAllListeners_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).eventListenerInterfaceList (assignedValue)
        pure ()


addListeners :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addListeners object_ a1 = jmethod object_ "addListeners" (\() -> (addListeners_impl (javaCast object_ :: RawKeyEventHandler))) () a1

addListeners_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addListeners_super object_ a1 = (addListeners_impl (javaCast object_ :: RawKeyEventHandler)) a1

addListeners_impl :: RawKeyEventHandler -> BasicArrayList.BasicArrayList -> IO (())
addListeners_impl this vector = do
        eventListenerInterface <- newIORef (javaNull)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset eventListenerInterface ((javaCast (jio (BasicArrayList.get vector index)) :: RawKeyEventListener.RawKeyEventListener))
            Control.Monad.void (RawKeyEventHandler.addListener this (jget eventListenerInterface))
        pure ()


addListenerSingleThreaded :: (JavaObjectClass this_) => this_ -> RawKeyEventListener.RawKeyEventListener -> IO (())
addListenerSingleThreaded object_ a1 = jmethod object_ "addListenerSingleThreaded" (\() -> (addListenerSingleThreaded_impl (javaCast object_ :: RawKeyEventHandler))) () a1

addListenerSingleThreaded_super :: (JavaObjectClass this_) => this_ -> RawKeyEventListener.RawKeyEventListener -> IO (())
addListenerSingleThreaded_super object_ a1 = (addListenerSingleThreaded_impl (javaCast object_ :: RawKeyEventHandler)) a1

addListenerSingleThreaded_impl :: RawKeyEventHandler -> RawKeyEventListener.RawKeyEventListener -> IO (())
addListenerSingleThreaded_impl this eventListenerInterface = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).eventListenerInterfaceList)) eventListenerInterface))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).eventListenerInterfaceList)) eventListenerInterface)
        pure ()


addListener :: (JavaObjectClass this_) => this_ -> RawKeyEventListener.RawKeyEventListener -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: RawKeyEventHandler))) () a1

addListener_super :: (JavaObjectClass this_) => this_ -> RawKeyEventListener.RawKeyEventListener -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: RawKeyEventHandler)) a1

addListener_impl :: RawKeyEventHandler -> RawKeyEventListener.RawKeyEventListener -> IO (())
addListener_impl this eventListenerInterface = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).eventListenerInterfaceList)) eventListenerInterface))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).eventListenerInterfaceList)) eventListenerInterface)
        pure ()


removeListenerSingleThreaded :: (JavaObjectClass this_) => this_ -> RawKeyEventListener.RawKeyEventListener -> IO (())
removeListenerSingleThreaded object_ a1 = jmethod object_ "removeListenerSingleThreaded" (\() -> (removeListenerSingleThreaded_impl (javaCast object_ :: RawKeyEventHandler))) () a1

removeListenerSingleThreaded_super :: (JavaObjectClass this_) => this_ -> RawKeyEventListener.RawKeyEventListener -> IO (())
removeListenerSingleThreaded_super object_ a1 = (removeListenerSingleThreaded_impl (javaCast object_ :: RawKeyEventHandler)) a1

removeListenerSingleThreaded_impl :: RawKeyEventHandler -> RawKeyEventListener.RawKeyEventListener -> IO (())
removeListenerSingleThreaded_impl this eventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).eventListenerInterfaceList)) eventListenerInterface)
        pure ()


removeListener :: (JavaObjectClass this_) => this_ -> RawKeyEventListener.RawKeyEventListener -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: RawKeyEventHandler))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> RawKeyEventListener.RawKeyEventListener -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: RawKeyEventHandler)) a1

removeListener_impl :: RawKeyEventHandler -> RawKeyEventListener.RawKeyEventListener -> IO (())
removeListener_impl this eventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).eventListenerInterfaceList)) eventListenerInterface)
        pure ()


-- throws Exception
fireEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
fireEvent object_ a1 a2 a3 = jmethod object_ "fireEvent" (\() -> (fireEvent_impl (javaCast object_ :: RawKeyEventHandler))) () a1 a2 a3

fireEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
fireEvent_super object_ a1 a2 a3 = (fireEvent_impl (javaCast object_ :: RawKeyEventHandler)) a1 a2 a3

fireEvent_impl :: RawKeyEventHandler -> Int -> Int -> Bool -> IO (())
fireEvent_impl this keyCode deviceId repeated = do
        eventListenerInterface <- newIORef (javaNull)
        index <- newIORef (0)
        fix $ \loop -> when ((jget index) < (jio (BasicArrayList.size ((jget (this).eventListenerInterfaceList))))) $ javaIteration (loop) $ do
            handle (\(e :: JavaException) -> do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget ((jio (EventStrings.getInstance))).fIRE_EVENT) e)
                ) $ do
                jset eventListenerInterface ((javaCast (jio (BasicArrayList.get ((jget (this).eventListenerInterfaceList)) (jget index))) :: RawKeyEventListener.RawKeyEventListener))
                Control.Monad.void (RawKeyEventHandler.process this keyCode deviceId repeated (jget eventListenerInterface))
            jset index ((jget index) + 1)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> RawKeyEventListener.RawKeyEventListener -> IO (())
process object_ a1 a2 a3 a4 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: RawKeyEventHandler))) () a1 a2 a3 a4

process_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> RawKeyEventListener.RawKeyEventListener -> IO (())
process_super object_ a1 a2 a3 a4 = (process_impl (javaCast object_ :: RawKeyEventHandler)) a1 a2 a3 a4

process_impl :: RawKeyEventHandler -> Int -> Int -> Bool -> RawKeyEventListener.RawKeyEventListener -> IO (())
process_impl this keyCode deviceId repeated eventListenerInterface = do
        Control.Monad.void (RawKeyEventListener.onEventRaw eventListenerInterface keyCode deviceId repeated)
        pure ()


getEventListenerInterfaceListP :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEventListenerInterfaceListP object_ = jmethod object_ "getEventListenerInterfaceListP" (\() -> (getEventListenerInterfaceListP_impl (javaCast object_ :: RawKeyEventHandler))) ()

getEventListenerInterfaceListP_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEventListenerInterfaceListP_super object_ = (getEventListenerInterfaceListP_impl (javaCast object_ :: RawKeyEventHandler))

getEventListenerInterfaceListP_impl :: RawKeyEventHandler -> IO (BasicArrayList.BasicArrayList)
getEventListenerInterfaceListP_impl this = do
        pure ((jget (this).eventListenerInterfaceList))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: RawKeyEventHandler))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: RawKeyEventHandler))

toString_impl :: RawKeyEventHandler -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (RawKeyEventHandler.tOTAL_LISTENERS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget (this).eventListenerInterfaceList)))))
        eventListenerInterface <- newIORef (javaNull)
        index <- newIORef (0)
        fix $ \loop -> when ((jget index) < (jio (BasicArrayList.size ((jget (this).eventListenerInterfaceList))))) $ javaIteration (loop) $ do
            handle (\(e :: JavaException) -> do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).tOSTRING) e)
                ) $ do
                jset eventListenerInterface ((javaCast (jio (BasicArrayList.get ((jget (this).eventListenerInterfaceList)) (jget index))) :: RawKeyEventListener.RawKeyEventListener))
                Control.Monad.void (StringMaker.append stringBuffer (RawKeyEventHandler.lISTENER_LABEL))
                Control.Monad.void (StringMaker.append stringBuffer (jio (RawKeyEventListener.toString ((jget eventListenerInterface)))))
            jset index ((jget index) + 1)
        (StringMaker.toString stringBuffer)


