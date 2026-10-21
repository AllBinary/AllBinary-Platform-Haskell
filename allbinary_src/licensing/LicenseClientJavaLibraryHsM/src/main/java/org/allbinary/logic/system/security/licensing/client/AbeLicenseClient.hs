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
-- package org.allbinary.logic.system.security.licensing.client
module AbeLicenseClient where

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
import qualified XmlRpcAbeLicenseRetrievalClient -- same package or java.lang
import qualified LicenseInitInfo -- org.allbinary.business.init.LicenseInitInfo
import qualified LicenseInitInfoUtil -- org.allbinary.business.init.LicenseInitInfoUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified XmlRpcAbeClient -- org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified AbeLicenseInterface -- org.allbinary.logic.system.security.licensing.AbeLicenseInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data AbeLicenseClient = AbeLicenseClient
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , mINSERVERS :: IORef (Int)
    }

instance JavaNull AbeLicenseClient where
    javaNull = javaNullRecord "AbeLicenseClient"

instance JavaEquals AbeLicenseClient where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeLicenseClient where
    (==) = jrecordEquals

instance JavaObjectClass AbeLicenseClient where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbeLicenseClient
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    mINSERVERS <- newIORef 0
    let this = AbeLicenseClient header_ logUtil commonStrings mINSERVERS
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: AbeLicenseClient -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.mINSERVERS (3)
    pure ()

new_ :: IO AbeLicenseClient
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbeLicenseClient -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AbeLicenseClient))) () a1

get_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
get_super object_ a1 = (get_impl (javaCast object_ :: AbeLicenseClient)) a1

get_impl :: AbeLicenseClient -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
get_impl this abeClientInformation = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).gET))
            xmlRpcAbeLicenseClient <- (fmap (\value_ -> javaCast value_ :: XmlRpcAbeClient.XmlRpcAbeClient) (XmlRpcAbeLicenseRetrievalClient.new_1 abeClientInformation))
            let abeLicenseInterface = (javaCast (jio (XmlRpcAbeClient.get xmlRpcAbeLicenseClient javaNull)) :: AbeLicenseInterface.AbeLicenseInterface)
            licenseId <- (AbeLicenseInterface.getLicenseId abeLicenseInterface)
            servers <- (AbeLicenseInterface.getServers abeLicenseInterface)
            isNewLicenseId <- newIORef (False)
            isBetterServerList <- newIORef (False)
            stringValidationUtil <- (StringValidationUtil.getInstance)
            when ((jio (StringValidationUtil.isEmpty stringValidationUtil (jio (AbeClientInformationInterface.getLicenseId abeClientInformation)))) && (Prelude.not (jio (AbeClientInformationInterface.isSameId abeClientInformation licenseId)))) $ do
                jset isNewLicenseId (True)
            when (((jio (BasicArrayList.size servers)) >= (jget (this).mINSERVERS)) && (jio (AbeClientInformationInterface.isLargerOrDifferentServerList abeClientInformation servers))) $ do
                jset isBetterServerList (True)
            when ((jget isBetterServerList) || (jget isNewLicenseId)) $ do
                initInfo <- (LicenseInitInfoUtil.read ((jio (LicenseInitInfoUtil.getInstance))))
                Control.Monad.void (LicenseInitInfo.setLicenseId initInfo licenseId)
                Control.Monad.void (LicenseInitInfo.setServerList initInfo servers)
                Control.Monad.void (LicenseInitInfoUtil.write ((jio (LicenseInitInfoUtil.getInstance))) initInfo)
                Control.Monad.void (AbeClientInformationInterface.init abeClientInformation)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eND) this (jget ((jget (this).commonStrings)).gET))
            pure (abeLicenseInterface)


