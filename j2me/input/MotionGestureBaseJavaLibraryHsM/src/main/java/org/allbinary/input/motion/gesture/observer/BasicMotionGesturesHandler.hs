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
-- package org.allbinary.input.motion.gesture.observer
module BasicMotionGesturesHandler (module BasicMotionGesturesHandler, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, sINGLETON)
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
import qualified BaseMotionGestureEventListener -- same package or java.lang
import qualified MotionGestureEvent -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler

data BasicMotionGesturesHandler = BasicMotionGesturesHandler
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    }

instance JavaNull BasicMotionGesturesHandler where
    javaNull = javaNullRecord "BasicMotionGesturesHandler"

instance JavaEquals BasicMotionGesturesHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicMotionGesturesHandler where
    (==) = jrecordEquals

instance JavaObjectClass BasicMotionGesturesHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO BasicMotionGesturesHandler
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    let this = BasicMotionGesturesHandler header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: BasicMotionGesturesHandler -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (BasicMotionGesturesHandler)
getInstance = do
        pure (BasicMotionGesturesHandler.sINGLETON)

new_ :: IO BasicMotionGesturesHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicMotionGesturesHandler -> IO ()
init_ this = do
        BasicEventHandler.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicMotionGesturesHandler))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: BasicMotionGesturesHandler)) a1 a2

process_impl :: BasicMotionGesturesHandler -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_impl this eventObject eventListenerInterface = do
        let baseMotionGestureEventListener = (javaCast eventListenerInterface :: BaseMotionGestureEventListener.BaseMotionGestureEventListener)
        Control.Monad.void (BaseMotionGestureEventListener.onMotionGestureEvent baseMotionGestureEventListener (javaCast eventObject :: MotionGestureEvent.MotionGestureEvent))
        pure ()


