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
module BasicEventHandlerInterface where

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
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface

-- Java interface: the classes that implement it have these functions
data BasicEventHandlerInterface = BasicEventHandlerInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicEventHandlerInterface where
    javaNull = javaNullRecord "BasicEventHandlerInterface"

instance JavaEquals BasicEventHandlerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicEventHandlerInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicEventHandlerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicEventHandlerInterface
fromHeader_ header = BasicEventHandlerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicEventHandlerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


addListenerInterface :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerInterface object_ a1 = jmethod object_ "addListenerInterface" (\() -> (addListenerInterface_impl (javaCast object_ :: BasicEventHandlerInterface))) () a1

addListenerInterface_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerInterface_super object_ a1 = (addListenerInterface_impl (javaCast object_ :: BasicEventHandlerInterface)) a1

addListenerInterface_impl :: BasicEventHandlerInterface -> EventListenerInterface.EventListenerInterface -> IO (())
addListenerInterface_impl this eventListenerInterface = javaAbstractMethod "addListenerInterface"


-- throws Exception
fireEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent object_ a1 = jmethod object_ "fireEvent" (\() -> (fireEvent_impl (javaCast object_ :: BasicEventHandlerInterface))) () a1

fireEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_super object_ a1 = (fireEvent_impl (javaCast object_ :: BasicEventHandlerInterface)) a1

fireEvent_impl :: BasicEventHandlerInterface -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
fireEvent_impl this eventObject = javaAbstractMethod "fireEvent"


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: BasicEventHandlerInterface))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: BasicEventHandlerInterface))

removeAllListeners_impl :: BasicEventHandlerInterface -> IO (())
removeAllListeners_impl this = javaAbstractMethod "removeAllListeners"


removeListener :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: BasicEventHandlerInterface))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: BasicEventHandlerInterface)) a1

removeListener_impl :: BasicEventHandlerInterface -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_impl this eventListenerInterface = javaAbstractMethod "removeListener"


