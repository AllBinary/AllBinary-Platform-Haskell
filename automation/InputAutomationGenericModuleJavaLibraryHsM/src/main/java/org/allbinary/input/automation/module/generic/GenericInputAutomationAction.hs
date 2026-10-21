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
-- package org.allbinary.input.automation.module.generic
module GenericInputAutomationAction where

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
import qualified InputAutomationActionInterface -- org.allbinary.input.automation.module.InputAutomationActionInterface
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface

-- implements InputAutomationActionInterface
data GenericInputAutomationAction = GenericInputAutomationAction
    { header_ :: JavaHeader
    }

instance JavaNull GenericInputAutomationAction where
    javaNull = javaNullRecord "GenericInputAutomationAction"

instance JavaEquals GenericInputAutomationAction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericInputAutomationAction where
    (==) = jrecordEquals

instance JavaObjectClass GenericInputAutomationAction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GenericInputAutomationAction
newRecord_ = do
    header_ <- newJavaHeader
    let this = GenericInputAutomationAction header_
    jregisterLevel header_ this
    InputAutomationActionInterface.registerInterface_ header_
    jregisterMethod header_ "test" (\() -> test_impl this)
    jregisterMethod header_ "getInputRobotInterfaceArray" (\() -> getInputRobotInterfaceArray_impl this)
    pure this

initFields_ :: GenericInputAutomationAction -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GenericInputAutomationAction
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericInputAutomationAction -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
test :: (JavaObjectClass this_) => this_ -> IO (())
test object_ = jmethod object_ "test" (\() -> (test_impl (javaCast object_ :: GenericInputAutomationAction))) ()

test_super :: (JavaObjectClass this_) => this_ -> IO (())
test_super object_ = (test_impl (javaCast object_ :: GenericInputAutomationAction))

test_impl :: GenericInputAutomationAction -> IO (())
test_impl this = do
        pure ()


getInputRobotInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterfaceArray object_ = jmethod object_ "getInputRobotInterfaceArray" (\() -> (getInputRobotInterfaceArray_impl (javaCast object_ :: GenericInputAutomationAction))) ()

getInputRobotInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterfaceArray_super object_ = (getInputRobotInterfaceArray_impl (javaCast object_ :: GenericInputAutomationAction))

getInputRobotInterfaceArray_impl :: GenericInputAutomationAction -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterfaceArray_impl this = do
        pure (javaNull)


