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
-- package bundle.input.automation.module
module InputAutomationModuleService where

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
import qualified InputAutomationModuleFactoryInterface -- org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface
import qualified InputAutomationModuleServiceInterface

-- implements InputAutomationModuleServiceInterface
data InputAutomationModuleService = InputAutomationModuleService
    { header_ :: JavaHeader
    , inputAutomationModuleInterfaceArray :: IORef (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
    }

instance JavaNull InputAutomationModuleService where
    javaNull = javaNullRecord "InputAutomationModuleService"

instance JavaEquals InputAutomationModuleService where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationModuleService where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationModuleService where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationModuleService
newRecord_ = do
    header_ <- newJavaHeader
    inputAutomationModuleInterfaceArray <- newIORef javaNull
    let this = InputAutomationModuleService header_ inputAutomationModuleInterfaceArray
    jregisterLevel header_ this
    InputAutomationModuleServiceInterface.registerInterface_ header_
    jregisterMethod header_ "getInputAutomationModuleInterfaceArray" (\() -> getInputAutomationModuleInterfaceArray_impl this)
    jregisterMethod header_ "setInputAutomationModuleInterfaceArray" (\() -> setInputAutomationModuleInterfaceArray_impl this)
    pure this

initFields_ :: InputAutomationModuleService -> IO ()
initFields_ this = do
    jset this.inputAutomationModuleInterfaceArray (javaNull)
    pure ()

new_1 :: JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO InputAutomationModuleService
new_1 inputAutomationModuleInterfaceArray = do
    this <- newRecord_
    init_1 this inputAutomationModuleInterfaceArray
    pure this

init_1 :: InputAutomationModuleService -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO ()
init_1 this inputAutomationModuleInterfaceArray = do
        initFields_ this
        Control.Monad.void (InputAutomationModuleService.setInputAutomationModuleInterfaceArray this inputAutomationModuleInterfaceArray)
        pure ()


getInputAutomationModuleInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterfaceArray object_ = jmethod object_ "getInputAutomationModuleInterfaceArray" (\() -> (getInputAutomationModuleInterfaceArray_impl (javaCast object_ :: InputAutomationModuleService))) ()

getInputAutomationModuleInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterfaceArray_super object_ = (getInputAutomationModuleInterfaceArray_impl (javaCast object_ :: InputAutomationModuleService))

getInputAutomationModuleInterfaceArray_impl :: InputAutomationModuleService -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterfaceArray_impl this = do
        pure ((jget (this).inputAutomationModuleInterfaceArray))


setInputAutomationModuleInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterfaceArray object_ a1 = jmethod object_ "setInputAutomationModuleInterfaceArray" (\() -> (setInputAutomationModuleInterfaceArray_impl (javaCast object_ :: InputAutomationModuleService))) () a1

setInputAutomationModuleInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterfaceArray_super object_ a1 = (setInputAutomationModuleInterfaceArray_impl (javaCast object_ :: InputAutomationModuleService)) a1

setInputAutomationModuleInterfaceArray_impl :: InputAutomationModuleService -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterfaceArray_impl this inputAutomationModuleInterfaceArray = do
        jset (this).inputAutomationModuleInterfaceArray (inputAutomationModuleInterfaceArray)
        pure ()


