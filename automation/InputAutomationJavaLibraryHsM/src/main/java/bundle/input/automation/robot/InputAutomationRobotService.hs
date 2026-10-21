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
-- package bundle.input.automation.robot
module InputAutomationRobotService where

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
import qualified InputAutomationRobotServiceInterface

-- implements InputAutomationRobotServiceInterface
data InputAutomationRobotService = InputAutomationRobotService
    { header_ :: JavaHeader
    , inputRobotInterfaceArray :: IORef (JavaArray (InputRobotInterface.InputRobotInterface))
    }

instance JavaNull InputAutomationRobotService where
    javaNull = javaNullRecord "InputAutomationRobotService"

instance JavaEquals InputAutomationRobotService where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationRobotService where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationRobotService where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationRobotService
newRecord_ = do
    header_ <- newJavaHeader
    inputRobotInterfaceArray <- newIORef javaNull
    let this = InputAutomationRobotService header_ inputRobotInterfaceArray
    jregisterLevel header_ this
    InputAutomationRobotServiceInterface.registerInterface_ header_
    jregisterMethod header_ "getInputRobotInterfaceArray" (\() -> getInputRobotInterfaceArray_impl this)
    jregisterMethod header_ "setInputRobotInterfaceArray" (\() -> setInputRobotInterfaceArray_impl this)
    pure this

initFields_ :: InputAutomationRobotService -> IO ()
initFields_ this = do
    jset this.inputRobotInterfaceArray (javaNull)
    pure ()

new_1 :: JavaArray (InputRobotInterface.InputRobotInterface) -> IO InputAutomationRobotService
new_1 inputRobotInterfaceArray = do
    this <- newRecord_
    init_1 this inputRobotInterfaceArray
    pure this

init_1 :: InputAutomationRobotService -> JavaArray (InputRobotInterface.InputRobotInterface) -> IO ()
init_1 this inputRobotInterfaceArray = do
        initFields_ this
        Control.Monad.void (InputAutomationRobotService.setInputRobotInterfaceArray this inputRobotInterfaceArray)
        pure ()


getInputRobotInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterfaceArray object_ = jmethod object_ "getInputRobotInterfaceArray" (\() -> (getInputRobotInterfaceArray_impl (javaCast object_ :: InputAutomationRobotService))) ()

getInputRobotInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterfaceArray_super object_ = (getInputRobotInterfaceArray_impl (javaCast object_ :: InputAutomationRobotService))

getInputRobotInterfaceArray_impl :: InputAutomationRobotService -> IO (JavaArray (InputRobotInterface.InputRobotInterface))
getInputRobotInterfaceArray_impl this = do
        pure ((jget (this).inputRobotInterfaceArray))


setInputRobotInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (InputRobotInterface.InputRobotInterface) -> IO (())
setInputRobotInterfaceArray object_ a1 = jmethod object_ "setInputRobotInterfaceArray" (\() -> (setInputRobotInterfaceArray_impl (javaCast object_ :: InputAutomationRobotService))) () a1

setInputRobotInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (InputRobotInterface.InputRobotInterface) -> IO (())
setInputRobotInterfaceArray_super object_ a1 = (setInputRobotInterfaceArray_impl (javaCast object_ :: InputAutomationRobotService)) a1

setInputRobotInterfaceArray_impl :: InputAutomationRobotService -> JavaArray (InputRobotInterface.InputRobotInterface) -> IO (())
setInputRobotInterfaceArray_impl this inputRobotInterfaceArray = do
        jset (this).inputRobotInterfaceArray (inputRobotInterfaceArray)
        pure ()


