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
-- package org.allbinary.game.midlet
module DemoGameMidletEvent (module DemoGameMidletEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, setDemoGameMidletState, setDemoGameMidletState_super, setDemoGameMidletState_impl, getDemoGameMidletState, getDemoGameMidletState_super, getDemoGameMidletState_impl, demoGameMidletState)
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
import qualified DemoGameMidletState -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data DemoGameMidletEvent = DemoGameMidletEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , demoGameMidletState :: IORef (DemoGameMidletState.DemoGameMidletState)
    }

instance JavaNull DemoGameMidletEvent where
    javaNull = javaNullRecord "DemoGameMidletEvent"

instance JavaEquals DemoGameMidletEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoGameMidletEvent where
    (==) = jrecordEquals

instance JavaObjectClass DemoGameMidletEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DemoGameMidletEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    demoGameMidletState <- newIORef javaNull
    let this = DemoGameMidletEvent header_ base demoGameMidletState
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "setDemoGameMidletState" (\() -> setDemoGameMidletState_impl this)
    jregisterMethod header_ "getDemoGameMidletState" (\() -> getDemoGameMidletState_impl this)
    pure this

initFields_ :: DemoGameMidletEvent -> IO ()
initFields_ this = do
    jset this.demoGameMidletState (javaNull)
    pure ()

new_2 :: (JavaObjectClass o1) => o1 -> DemoGameMidletState.DemoGameMidletState -> IO DemoGameMidletEvent
new_2 anyTypeObject_ demoGameMidletState = do
    this <- newRecord_
    init_2 this anyTypeObject_ demoGameMidletState
    pure this

init_2 :: (JavaObjectClass o1) => DemoGameMidletEvent -> o1 -> DemoGameMidletState.DemoGameMidletState -> IO ()
init_2 this anyTypeObject_ demoGameMidletState = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).demoGameMidletState (demoGameMidletState)
        pure ()


init :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: DemoGameMidletEvent))) () (jtoObject a1)

init_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: DemoGameMidletEvent)) (jtoObject a1)

init_impl :: DemoGameMidletEvent -> JavaObject -> IO (())
init_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (AllBinaryEventObject.setSource this anyType)
        pure ()


setDemoGameMidletState :: (JavaObjectClass this_) => this_ -> DemoGameMidletState.DemoGameMidletState -> IO (())
setDemoGameMidletState object_ a1 = jmethod object_ "setDemoGameMidletState" (\() -> (setDemoGameMidletState_impl (javaCast object_ :: DemoGameMidletEvent))) () a1

setDemoGameMidletState_super :: (JavaObjectClass this_) => this_ -> DemoGameMidletState.DemoGameMidletState -> IO (())
setDemoGameMidletState_super object_ a1 = (setDemoGameMidletState_impl (javaCast object_ :: DemoGameMidletEvent)) a1

setDemoGameMidletState_impl :: DemoGameMidletEvent -> DemoGameMidletState.DemoGameMidletState -> IO (())
setDemoGameMidletState_impl this demoGameMidletState = do
        jset (this).demoGameMidletState (demoGameMidletState)
        pure ()


getDemoGameMidletState :: (JavaObjectClass this_) => this_ -> IO (DemoGameMidletState.DemoGameMidletState)
getDemoGameMidletState object_ = jmethod object_ "getDemoGameMidletState" (\() -> (getDemoGameMidletState_impl (javaCast object_ :: DemoGameMidletEvent))) ()

getDemoGameMidletState_super :: (JavaObjectClass this_) => this_ -> IO (DemoGameMidletState.DemoGameMidletState)
getDemoGameMidletState_super object_ = (getDemoGameMidletState_impl (javaCast object_ :: DemoGameMidletEvent))

getDemoGameMidletState_impl :: DemoGameMidletEvent -> IO (DemoGameMidletState.DemoGameMidletState)
getDemoGameMidletState_impl this = do
        pure ((jget (this).demoGameMidletState))


