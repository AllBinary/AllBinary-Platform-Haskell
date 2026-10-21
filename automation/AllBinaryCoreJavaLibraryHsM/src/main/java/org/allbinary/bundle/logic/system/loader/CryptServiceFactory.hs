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
-- package org.allbinary.bundle.logic.system.loader
module CryptServiceFactory where

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
import qualified CryptService -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Bundle -- org.osgi.framework.Bundle
import qualified ServiceFactory -- org.osgi.framework.ServiceFactory
import qualified ServiceRegistration -- org.osgi.framework.ServiceRegistration
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements ServiceFactory
data CryptServiceFactory = CryptServiceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , cryptService :: IORef (CryptService.CryptService)
    }

instance JavaNull CryptServiceFactory where
    javaNull = javaNullRecord "CryptServiceFactory"

instance JavaEquals CryptServiceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CryptServiceFactory where
    (==) = jrecordEquals

instance JavaObjectClass CryptServiceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CryptServiceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    cryptService <- newIORef javaNull
    let this = CryptServiceFactory header_ logUtil commonStrings cryptService
    jregisterLevel header_ this
    ServiceFactory.registerInterface_ header_
    jregisterMethod header_ "getService" (\() -> getService_impl this)
    jregisterMethod header_ "ungetService" (\() -> ungetService_impl this)
    pure this

initFields_ :: CryptServiceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.cryptService =<< (CryptService.new_)
    pure ()

new_ :: IO CryptServiceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CryptServiceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getService :: (JavaObjectClass this_) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService object_ a1 a2 = jmethod object_ "getService" (\() -> (getService_impl (javaCast object_ :: CryptServiceFactory))) () a1 a2

getService_super :: (JavaObjectClass this_) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService_super object_ a1 a2 = (getService_impl (javaCast object_ :: CryptServiceFactory)) a1 a2

getService_impl :: CryptServiceFactory -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> IO (Any.Any)
getService_impl this bundle registration = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getService")
        pure ((jtoObject (jget (this).cryptService)))


ungetService :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> o3 -> IO (())
ungetService object_ a1 a2 a3 = jmethod object_ "ungetService" (\() -> (ungetService_impl (javaCast object_ :: CryptServiceFactory))) () a1 a2 (jtoObject a3)

ungetService_super :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> o3 -> IO (())
ungetService_super object_ a1 a2 a3 = (ungetService_impl (javaCast object_ :: CryptServiceFactory)) a1 a2 (jtoObject a3)

ungetService_impl :: CryptServiceFactory -> Bundle.Bundle -> ServiceRegistration.ServiceRegistration -> JavaObject -> IO (())
ungetService_impl this bundle registration serviceObject_ = do
        let service = jtoObject serviceObject_
        pure ()


