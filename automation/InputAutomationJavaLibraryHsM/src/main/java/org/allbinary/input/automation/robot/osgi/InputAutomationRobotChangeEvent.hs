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
-- package org.allbinary.input.automation.robot.osgi
module InputAutomationRobotChangeEvent where

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
import qualified InputAutomationRobotInterfaceWrapper -- same package or java.lang

data InputAutomationRobotChangeEvent = InputAutomationRobotChangeEvent
    { header_ :: JavaHeader
    , inputAutomationRobotInterfaceWrapper :: IORef (InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper)
    }

instance JavaNull InputAutomationRobotChangeEvent where
    javaNull = javaNullRecord "InputAutomationRobotChangeEvent"

instance JavaEquals InputAutomationRobotChangeEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationRobotChangeEvent where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationRobotChangeEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationRobotChangeEvent
newRecord_ = do
    header_ <- newJavaHeader
    inputAutomationRobotInterfaceWrapper <- newIORef javaNull
    let this = InputAutomationRobotChangeEvent header_ inputAutomationRobotInterfaceWrapper
    jregisterLevel header_ this
    jregisterMethod header_ "getInputAutomationRobotInterfaceWrapper" (\() -> getInputAutomationRobotInterfaceWrapper_impl this)
    jregisterMethod header_ "setInputAutomationRobotInterfaceWrapper" (\() -> setInputAutomationRobotInterfaceWrapper_impl this)
    pure this

initFields_ :: InputAutomationRobotChangeEvent -> IO ()
initFields_ this = do
    jset this.inputAutomationRobotInterfaceWrapper (javaNull)
    pure ()

new_1 :: InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper -> IO InputAutomationRobotChangeEvent
new_1 inputAutomationRobotInterfaceWrapper = do
    this <- newRecord_
    init_1 this inputAutomationRobotInterfaceWrapper
    pure this

init_1 :: InputAutomationRobotChangeEvent -> InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper -> IO ()
init_1 this inputAutomationRobotInterfaceWrapper = do
        initFields_ this
        Control.Monad.void (InputAutomationRobotChangeEvent.setInputAutomationRobotInterfaceWrapper this inputAutomationRobotInterfaceWrapper)
        pure ()


getInputAutomationRobotInterfaceWrapper :: (JavaObjectClass this_) => this_ -> IO (InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper)
getInputAutomationRobotInterfaceWrapper object_ = jmethod object_ "getInputAutomationRobotInterfaceWrapper" (\() -> (getInputAutomationRobotInterfaceWrapper_impl (javaCast object_ :: InputAutomationRobotChangeEvent))) ()

getInputAutomationRobotInterfaceWrapper_super :: (JavaObjectClass this_) => this_ -> IO (InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper)
getInputAutomationRobotInterfaceWrapper_super object_ = (getInputAutomationRobotInterfaceWrapper_impl (javaCast object_ :: InputAutomationRobotChangeEvent))

getInputAutomationRobotInterfaceWrapper_impl :: InputAutomationRobotChangeEvent -> IO (InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper)
getInputAutomationRobotInterfaceWrapper_impl this = do
        pure ((jget (this).inputAutomationRobotInterfaceWrapper))


setInputAutomationRobotInterfaceWrapper :: (JavaObjectClass this_) => this_ -> InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper -> IO (())
setInputAutomationRobotInterfaceWrapper object_ a1 = jmethod object_ "setInputAutomationRobotInterfaceWrapper" (\() -> (setInputAutomationRobotInterfaceWrapper_impl (javaCast object_ :: InputAutomationRobotChangeEvent))) () a1

setInputAutomationRobotInterfaceWrapper_super :: (JavaObjectClass this_) => this_ -> InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper -> IO (())
setInputAutomationRobotInterfaceWrapper_super object_ a1 = (setInputAutomationRobotInterfaceWrapper_impl (javaCast object_ :: InputAutomationRobotChangeEvent)) a1

setInputAutomationRobotInterfaceWrapper_impl :: InputAutomationRobotChangeEvent -> InputAutomationRobotInterfaceWrapper.InputAutomationRobotInterfaceWrapper -> IO (())
setInputAutomationRobotInterfaceWrapper_impl this inputAutomationRobotInterfaceWrapper = do
        jset (this).inputAutomationRobotInterfaceWrapper (inputAutomationRobotInterfaceWrapper)
        pure ()


