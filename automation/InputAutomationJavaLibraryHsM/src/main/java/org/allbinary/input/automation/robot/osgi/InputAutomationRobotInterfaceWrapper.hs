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
module InputAutomationRobotInterfaceWrapper where

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
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface

data InputAutomationRobotInterfaceWrapper = InputAutomationRobotInterfaceWrapper
    { header_ :: JavaHeader
    , inputRobotInterface :: IORef (InputRobotInterface.InputRobotInterface)
    }

instance JavaNull InputAutomationRobotInterfaceWrapper where
    javaNull = javaNullRecord "InputAutomationRobotInterfaceWrapper"

instance JavaEquals InputAutomationRobotInterfaceWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationRobotInterfaceWrapper where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationRobotInterfaceWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationRobotInterfaceWrapper
newRecord_ = do
    header_ <- newJavaHeader
    inputRobotInterface <- newIORef javaNull
    let this = InputAutomationRobotInterfaceWrapper header_ inputRobotInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getInputRobotInterface" (\() -> getInputRobotInterface_impl this)
    jregisterMethod header_ "setInputRobotInterface" (\() -> setInputRobotInterface_impl this)
    pure this

initFields_ :: InputAutomationRobotInterfaceWrapper -> IO ()
initFields_ this = do
    jset this.inputRobotInterface (javaNull)
    pure ()

new_1 :: InputRobotInterface.InputRobotInterface -> IO InputAutomationRobotInterfaceWrapper
new_1 inputRobotInterface = do
    this <- newRecord_
    init_1 this inputRobotInterface
    pure this

init_1 :: InputAutomationRobotInterfaceWrapper -> InputRobotInterface.InputRobotInterface -> IO ()
init_1 this inputRobotInterface = do
        initFields_ this
        Control.Monad.void (InputAutomationRobotInterfaceWrapper.setInputRobotInterface this inputRobotInterface)
        pure ()


getInputRobotInterface :: (JavaObjectClass this_) => this_ -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface object_ = jmethod object_ "getInputRobotInterface" (\() -> (getInputRobotInterface_impl (javaCast object_ :: InputAutomationRobotInterfaceWrapper))) ()

getInputRobotInterface_super :: (JavaObjectClass this_) => this_ -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface_super object_ = (getInputRobotInterface_impl (javaCast object_ :: InputAutomationRobotInterfaceWrapper))

getInputRobotInterface_impl :: InputAutomationRobotInterfaceWrapper -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface_impl this = do
        pure ((jget (this).inputRobotInterface))


setInputRobotInterface :: (JavaObjectClass this_) => this_ -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface object_ a1 = jmethod object_ "setInputRobotInterface" (\() -> (setInputRobotInterface_impl (javaCast object_ :: InputAutomationRobotInterfaceWrapper))) () a1

setInputRobotInterface_super :: (JavaObjectClass this_) => this_ -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface_super object_ a1 = (setInputRobotInterface_impl (javaCast object_ :: InputAutomationRobotInterfaceWrapper)) a1

setInputRobotInterface_impl :: InputAutomationRobotInterfaceWrapper -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface_impl this inputRobotInterface = do
        jset (this).inputRobotInterface (inputRobotInterface)
        pure ()


