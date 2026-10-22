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
-- package org.allbinary.input.event
module VirtualKeyboardEventHandler (module VirtualKeyboardEventHandler, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, open, open_super, open_impl, close, close_super, close_impl, gameKeyEventHandler, sHOW_EVENT, hIDE_EVENT)
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
import qualified VirtualKeyboardEvent -- same package or java.lang
import qualified VirtualKeyboardEventListenerInterface -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler

data VirtualKeyboardEventHandler = VirtualKeyboardEventHandler
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    , sHOW_EVENT :: IORef (VirtualKeyboardEvent.VirtualKeyboardEvent)
    , hIDE_EVENT :: IORef (VirtualKeyboardEvent.VirtualKeyboardEvent)
    }

instance JavaNull VirtualKeyboardEventHandler where
    javaNull = javaNullRecord "VirtualKeyboardEventHandler"

instance JavaEquals VirtualKeyboardEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VirtualKeyboardEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass VirtualKeyboardEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE gameKeyEventHandler #-}
gameKeyEventHandler = unsafePerformIO ((new_))

newRecord_ :: IO VirtualKeyboardEventHandler
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    sHOW_EVENT <- newIORef javaNull
    hIDE_EVENT <- newIORef javaNull
    let this = VirtualKeyboardEventHandler header_ base sHOW_EVENT hIDE_EVENT
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    pure this

initFields_ :: VirtualKeyboardEventHandler -> IO ()
initFields_ this = do
    jset this.sHOW_EVENT =<< (VirtualKeyboardEvent.new_1 (jget ((jio (BooleanFactory.getInstance))).tRUE))
    jset this.hIDE_EVENT =<< (VirtualKeyboardEvent.new_1 (jget ((jio (BooleanFactory.getInstance))).fALSE))
    pure ()

new_ :: IO VirtualKeyboardEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VirtualKeyboardEventHandler -> IO ()
init_ this = do
        BasicEventHandler.init_ this.base
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (VirtualKeyboardEventHandler)
getInstance = do
        pure (VirtualKeyboardEventHandler.gameKeyEventHandler)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: VirtualKeyboardEventHandler))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: VirtualKeyboardEventHandler)) a1 a2

process_impl :: VirtualKeyboardEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_impl this eventObject eventListenerInterface = do
        let virtualKeyboardEventListenerInterface = (javaCast eventListenerInterface :: VirtualKeyboardEventListenerInterface.VirtualKeyboardEventListenerInterface)
        Control.Monad.void (VirtualKeyboardEventListenerInterface.onVirtualKeyboardEvent virtualKeyboardEventListenerInterface (javaCast eventObject :: VirtualKeyboardEvent.VirtualKeyboardEvent))
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: VirtualKeyboardEventHandler))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: VirtualKeyboardEventHandler))

open_impl :: VirtualKeyboardEventHandler -> IO (())
open_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "open" e)
            ) $ do
            Control.Monad.void (threadDelay (Prelude.fromIntegral 120 * 1000))
            Control.Monad.void (BasicEventHandler.fireEvent this (javaCast (jget (this).sHOW_EVENT)))
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: VirtualKeyboardEventHandler))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: VirtualKeyboardEventHandler))

close_impl :: VirtualKeyboardEventHandler -> IO (())
close_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).cLOSE) e)
            ) $ do
            Control.Monad.void (threadDelay (Prelude.fromIntegral 120 * 1000))
            Control.Monad.void (BasicEventHandler.fireEvent this (javaCast (jget (this).hIDE_EVENT)))
        pure ()


