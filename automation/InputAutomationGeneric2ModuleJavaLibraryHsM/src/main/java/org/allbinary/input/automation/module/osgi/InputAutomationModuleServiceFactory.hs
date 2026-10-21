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
-- package org.allbinary.input.automation.module.osgi
module InputAutomationModuleServiceFactory where

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
import qualified Any -- same package or java.lang
import qualified Bundle -- org.osgi.framework.Bundle
import qualified ServiceFactory -- org.osgi.framework.ServiceFactory
import qualified ServiceRegistration -- org.osgi.framework.ServiceRegistration
import qualified InputAutomationModuleService -- bundle.input.automation.module.InputAutomationModuleService
import qualified InputAutomationModuleFactoryInterface -- org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements ServiceFactory
data InputAutomationModuleServiceFactory = InputAutomationModuleServiceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , inputAutomationModuleInterfaceArray :: IORef (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
    }

instance JavaNull InputAutomationModuleServiceFactory where
    javaNull = javaNullRecord "InputAutomationModuleServiceFactory"

instance JavaEquals InputAutomationModuleServiceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationModuleServiceFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationModuleServiceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationModuleServiceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    inputAutomationModuleInterfaceArray <- newIORef javaNull
    let this = InputAutomationModuleServiceFactory header_ logUtil commonStrings inputAutomationModuleInterfaceArray
    jregisterLevel header_ this
    ServiceFactory.registerInterface_ header_
    jregisterMethod header_ "getService" (\() -> getService_impl this)
    jregisterMethod header_ "ungetService" (\() -> ungetService_impl this)
    jregisterMethod header_ "getInputAutomationModuleInterfaceArray" (\() -> getInputAutomationModuleInterfaceArray_impl this)
    jregisterMethod header_ "setInputAutomationModuleInterfaceArray" (\() -> setInputAutomationModuleInterfaceArray_impl this)
    pure this

initFields_ :: InputAutomationModuleServiceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.inputAutomationModuleInterfaceArray (javaNull)
    pure ()

new_ :: IO InputAutomationModuleServiceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationModuleServiceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getService :: (JavaObjectClass this_) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService object_ a1 a2 = jmethod object_ "getService" (\() -> (getService_impl (javaCast object_ :: InputAutomationModuleServiceFactory))) () a1 a2

getService_super :: (JavaObjectClass this_) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService_super object_ a1 a2 = (getService_impl (javaCast object_ :: InputAutomationModuleServiceFactory)) a1 a2

getService_impl :: InputAutomationModuleServiceFactory -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService_impl this bundle registration = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getService")
        (fmap jtoObject (InputAutomationModuleService.new_1 (jio (InputAutomationModuleServiceFactory.getInputAutomationModuleInterfaceArray this))))


ungetService :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> o3 -> IO (())
ungetService object_ a1 a2 a3 = jmethod object_ "ungetService" (\() -> (ungetService_impl (javaCast object_ :: InputAutomationModuleServiceFactory))) () a1 a2 (jtoObject a3)

ungetService_super :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> o3 -> IO (())
ungetService_super object_ a1 a2 a3 = (ungetService_impl (javaCast object_ :: InputAutomationModuleServiceFactory)) a1 a2 (jtoObject a3)

ungetService_impl :: InputAutomationModuleServiceFactory -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> JavaObject -> IO (())
ungetService_impl this bundle registration serviceObject_ = do
        let service = jtoObject serviceObject_
        pure ()


getInputAutomationModuleInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterfaceArray object_ = jmethod object_ "getInputAutomationModuleInterfaceArray" (\() -> (getInputAutomationModuleInterfaceArray_impl (javaCast object_ :: InputAutomationModuleServiceFactory))) ()

getInputAutomationModuleInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterfaceArray_super object_ = (getInputAutomationModuleInterfaceArray_impl (javaCast object_ :: InputAutomationModuleServiceFactory))

getInputAutomationModuleInterfaceArray_impl :: InputAutomationModuleServiceFactory -> IO (JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface))
getInputAutomationModuleInterfaceArray_impl this = do
        pure ((jget (this).inputAutomationModuleInterfaceArray))


setInputAutomationModuleInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterfaceArray object_ a1 = jmethod object_ "setInputAutomationModuleInterfaceArray" (\() -> (setInputAutomationModuleInterfaceArray_impl (javaCast object_ :: InputAutomationModuleServiceFactory))) () a1

setInputAutomationModuleInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterfaceArray_super object_ a1 = (setInputAutomationModuleInterfaceArray_impl (javaCast object_ :: InputAutomationModuleServiceFactory)) a1

setInputAutomationModuleInterfaceArray_impl :: InputAutomationModuleServiceFactory -> JavaArray (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface) -> IO (())
setInputAutomationModuleInterfaceArray_impl this inputAutomationModuleInterfaceArray = do
        jset (this).inputAutomationModuleInterfaceArray (inputAutomationModuleInterfaceArray)
        pure ()


