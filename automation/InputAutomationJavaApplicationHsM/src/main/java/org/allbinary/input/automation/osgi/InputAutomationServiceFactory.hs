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
-- package org.allbinary.input.automation.osgi
module InputAutomationServiceFactory where

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
import qualified InputAutomationJFrame -- org.allbinary.input.automation.InputAutomationJFrame
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements ServiceFactory
data InputAutomationServiceFactory = InputAutomationServiceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull InputAutomationServiceFactory where
    javaNull = javaNullRecord "InputAutomationServiceFactory"

instance JavaEquals InputAutomationServiceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationServiceFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationServiceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE inputAutomationServiceFactory #-}
inputAutomationServiceFactory = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationServiceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = InputAutomationServiceFactory header_ logUtil commonStrings
    jregisterLevel header_ this
    ServiceFactory.registerInterface_ header_
    jregisterMethod header_ "getService" (\() -> getService_impl this)
    jregisterMethod header_ "ungetService" (\() -> ungetService_impl this)
    pure this

initFields_ :: InputAutomationServiceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO InputAutomationServiceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationServiceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (InputAutomationServiceFactory)
getInstance = do
        pure (InputAutomationServiceFactory.inputAutomationServiceFactory)


getService :: (JavaObjectClass this_) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService object_ a1 a2 = jmethod object_ "getService" (\() -> (getService_impl (javaCast object_ :: InputAutomationServiceFactory))) () a1 a2

getService_super :: (JavaObjectClass this_) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService_super object_ a1 a2 = (getService_impl (javaCast object_ :: InputAutomationServiceFactory)) a1 a2

getService_impl :: InputAutomationServiceFactory -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService_impl this bundle registration = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getService")
        (fmap jtoObject (InputAutomationJFrame.getInstance))


ungetService :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> o3 -> IO (())
ungetService object_ a1 a2 a3 = jmethod object_ "ungetService" (\() -> (ungetService_impl (javaCast object_ :: InputAutomationServiceFactory))) () a1 a2 (jtoObject a3)

ungetService_super :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> o3 -> IO (())
ungetService_super object_ a1 a2 a3 = (ungetService_impl (javaCast object_ :: InputAutomationServiceFactory)) a1 a2 (jtoObject a3)

ungetService_impl :: InputAutomationServiceFactory -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> JavaObject -> IO (())
ungetService_impl this bundle registration serviceObject_ = do
        let service = jtoObject serviceObject_
        pure ()


