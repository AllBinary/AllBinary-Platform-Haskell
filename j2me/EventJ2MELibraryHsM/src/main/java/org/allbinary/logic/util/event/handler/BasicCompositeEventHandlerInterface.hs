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
module BasicCompositeEventHandlerInterface where

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
import qualified BasicEventHandlerInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data BasicCompositeEventHandlerInterface = BasicCompositeEventHandlerInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicCompositeEventHandlerInterface where
    javaNull = javaNullRecord "BasicCompositeEventHandlerInterface"

instance JavaEquals BasicCompositeEventHandlerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicCompositeEventHandlerInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicCompositeEventHandlerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicCompositeEventHandlerInterface
fromHeader_ header = BasicCompositeEventHandlerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicCompositeEventHandlerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getEventHandler :: (JavaObjectClass this_) => this_ -> IO (BasicEventHandlerInterface.BasicEventHandlerInterface)
getEventHandler object_ = jmethod object_ "getEventHandler" (\() -> (getEventHandler_impl (javaCast object_ :: BasicCompositeEventHandlerInterface))) ()

getEventHandler_super :: (JavaObjectClass this_) => this_ -> IO (BasicEventHandlerInterface.BasicEventHandlerInterface)
getEventHandler_super object_ = (getEventHandler_impl (javaCast object_ :: BasicCompositeEventHandlerInterface))

getEventHandler_impl :: BasicCompositeEventHandlerInterface -> IO (BasicEventHandlerInterface.BasicEventHandlerInterface)
getEventHandler_impl this = javaAbstractMethod "getEventHandler"


setEventHandler :: (JavaObjectClass this_) => this_ -> BasicEventHandlerInterface.BasicEventHandlerInterface -> IO (())
setEventHandler object_ a1 = jmethod object_ "setEventHandler" (\() -> (setEventHandler_impl (javaCast object_ :: BasicCompositeEventHandlerInterface))) () a1

setEventHandler_super :: (JavaObjectClass this_) => this_ -> BasicEventHandlerInterface.BasicEventHandlerInterface -> IO (())
setEventHandler_super object_ a1 = (setEventHandler_impl (javaCast object_ :: BasicCompositeEventHandlerInterface)) a1

setEventHandler_impl :: BasicCompositeEventHandlerInterface -> BasicEventHandlerInterface.BasicEventHandlerInterface -> IO (())
setEventHandler_impl this basicEventHandlerInterface = javaAbstractMethod "setEventHandler"


