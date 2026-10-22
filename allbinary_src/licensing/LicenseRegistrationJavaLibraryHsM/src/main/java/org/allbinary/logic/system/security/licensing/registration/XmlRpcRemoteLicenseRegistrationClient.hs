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
-- package org.allbinary.logic.system.security.licensing.registration
module XmlRpcRemoteLicenseRegistrationClient (module XmlRpcRemoteLicenseRegistrationClient, module XmlRpcAbeClient) where

import XmlRpcAbeClient hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, logUtil, pAGE)
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
import qualified CommonStrings -- same package or java.lang
import qualified IOException -- java.io.IOException
import qualified XmlRpcClient -- org.apache.xmlrpc.XmlRpcClient
import qualified XmlRpcException -- org.apache.xmlrpc.XmlRpcException
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CryptInterface -- org.allbinary.init.crypt.jcehelper.CryptInterface
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified XmlRpcAbeClient -- org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient
import qualified ExceptionUtil -- org.allbinary.logic.java.exception.ExceptionUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data XmlRpcRemoteLicenseRegistrationClient = XmlRpcRemoteLicenseRegistrationClient
    { header_ :: JavaHeader
    , base :: XmlRpcAbeClient.XmlRpcAbeClient
    , logUtil :: IORef (LogUtil.LogUtil)
    , pAGE :: IORef (String)
    }

instance JavaNull XmlRpcRemoteLicenseRegistrationClient where
    javaNull = javaNullRecord "XmlRpcRemoteLicenseRegistrationClient"

instance JavaEquals XmlRpcRemoteLicenseRegistrationClient where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlRpcRemoteLicenseRegistrationClient where
    (==) = jrecordEquals

instance JavaObjectClass XmlRpcRemoteLicenseRegistrationClient where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO XmlRpcRemoteLicenseRegistrationClient
newRecord_ = do
    base <- XmlRpcAbeClient.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    pAGE <- newIORef ""
    let this = XmlRpcRemoteLicenseRegistrationClient header_ base logUtil pAGE
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: XmlRpcRemoteLicenseRegistrationClient -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.pAGE ("licenseregistrationserverssl.php")
    pure ()

new_1 :: AbeClientInformationInterface.AbeClientInformationInterface -> IO XmlRpcRemoteLicenseRegistrationClient
new_1 clientInfo = do
    this <- newRecord_
    init_1 this clientInfo
    pure this

init_1 :: XmlRpcRemoteLicenseRegistrationClient -> AbeClientInformationInterface.AbeClientInformationInterface -> IO ()
init_1 this clientInfo = do
        XmlRpcAbeClient.init_2 this.base (clientInfo) ("LicenseRegistrationServer.process")
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (XmlRpcAbeClient.setServer this 0)
        pure ()


-- throws Exception
get :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> CryptInterface.CryptInterface -> IO (Any.Any)
get object_ a1 a2 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: XmlRpcRemoteLicenseRegistrationClient))) () (jtoObject a1) a2

get_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> CryptInterface.CryptInterface -> IO (Any.Any)
get_super object_ a1 a2 = (get_impl (javaCast object_ :: XmlRpcRemoteLicenseRegistrationClient)) (jtoObject a1) a2

get_impl :: XmlRpcRemoteLicenseRegistrationClient -> JavaObject -> CryptInterface.CryptInterface -> IO (Any.Any)
get_impl this anyTypeObject_ cryptInterface = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (tRYING_OTHER_SERVERS ++ javaToString (jio (ExceptionUtil.getStackTrace ((jio (ExceptionUtil.getInstance))) e))) this (jget ((jget (this).base.commonStrings)).gET))
            if (Prelude.not (jio (startsWith ((Control.Exception.displayException e)) hOST_NOT_RESOLVED))) then do
                javaReturn =<< (fmap jtoObject (XmlRpcAbeClient.tryAnother this anyType))
            else do
                javaThrow ((JavaException "Exception" hOST_NOT_RESOLVED_MSG))
            ) $ do
            server <- (AbeClientInformationInterface.getLicenseServer ((jio (XmlRpcAbeClient.getClientInfo this))) (jio (XmlRpcAbeClient.getServer this)))
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer tRYING)
            Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (XmlRpcAbeClient.getServer this)))))
            Control.Monad.void (StringMaker.append stringBuffer SEP)
            Control.Monad.void (StringMaker.append stringBuffer server)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jio (CommonLabels.getInstance))).sTART_LABEL) ++ (jio (StringMaker.toString stringBuffer))) this (jget ((jget (this).base.commonStrings)).gET))
            param <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            serverUrl <- newIORef =<< (AbeClientInformationInterface.getLicenseServer ((jio (XmlRpcAbeClient.getClientInfo this))) (jio (XmlRpcAbeClient.getServer this)))
            let index = (jstringLastIndexOf (jget serverUrl) "/")
            jset serverUrl (((Prelude.take (((index + 1)) - (0)) (Prelude.drop (0) (jget serverUrl))) ++ (jget (this).pAGE)))
            xmlRpcClient <- (XmlRpcClient.new_1 (jget serverUrl))
            Control.Monad.void (XmlRpcAbeClient.setClient this xmlRpcClient)
            Control.Monad.void (XmlRpcClient.setBasicAuthentication xmlRpcClient javaNull javaNull)
            let hashtable = (javaCast anyType :: ABHashtable.ABHashtable)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (cLIENT_INFO ++ (jio (ABHashtable.toString hashtable))) this (jget ((jget (this).base.commonStrings)).gET))
            Control.Monad.void (BasicArrayList.add param hashtable)
            result <- (XmlRpcClient.execute_3 xmlRpcClient (jio (XmlRpcAbeClient.getRemoteMethod this)) param cryptInterface)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (rESULT ++ (jio (Any.toString result))) this (jget ((jget (this).base.commonStrings)).gET))
            isOnline <- pure (True)
            pure ((jtoObject result))


