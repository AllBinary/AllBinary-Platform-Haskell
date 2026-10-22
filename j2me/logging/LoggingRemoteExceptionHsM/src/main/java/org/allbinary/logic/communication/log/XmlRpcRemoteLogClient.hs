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
-- package org.allbinary.logic.communication.log
module XmlRpcRemoteLogClient (module XmlRpcRemoteLogClient, module XmlRpcAbeClient) where

import XmlRpcAbeClient hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, noCrypt)
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
import qualified IOException -- java.io.IOException
import qualified XmlRpcClient -- org.apache.xmlrpc.XmlRpcClient
import qualified XmlRpcException -- org.apache.xmlrpc.XmlRpcException
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified XmlRpcAbeClient -- org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient
import qualified NoCrypt -- org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data XmlRpcRemoteLogClient = XmlRpcRemoteLogClient
    { header_ :: JavaHeader
    , base :: XmlRpcAbeClient.XmlRpcAbeClient
    , noCrypt :: IORef (NoCrypt.NoCrypt)
    }

instance JavaNull XmlRpcRemoteLogClient where
    javaNull = javaNullRecord "XmlRpcRemoteLogClient"

instance JavaEquals XmlRpcRemoteLogClient where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlRpcRemoteLogClient where
    (==) = jrecordEquals

instance JavaObjectClass XmlRpcRemoteLogClient where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO XmlRpcRemoteLogClient
newRecord_ = do
    base <- XmlRpcAbeClient.newRecord_
    let header_ = base.header_
    noCrypt <- newIORef javaNull
    let this = XmlRpcRemoteLogClient header_ base noCrypt
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: XmlRpcRemoteLogClient -> IO ()
initFields_ this = do
    jset this.noCrypt =<< (NoCrypt.new_)
    pure ()

new_1 :: AbeClientInformationInterface.AbeClientInformationInterface -> IO XmlRpcRemoteLogClient
new_1 clientInfo = do
    this <- newRecord_
    init_1 this clientInfo
    pure this

init_1 :: XmlRpcRemoteLogClient -> AbeClientInformationInterface.AbeClientInformationInterface -> IO ()
init_1 this clientInfo = do
        XmlRpcAbeClient.init_2 this.base (clientInfo) ("SSLLogServ.logUtil")
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
get :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: XmlRpcRemoteLogClient))) () (jtoObject a1)

get_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
get_super object_ a1 = (get_impl (javaCast object_ :: XmlRpcRemoteLogClient)) (jtoObject a1)

get_impl :: XmlRpcRemoteLogClient -> JavaObject -> IO (Any.Any)
get_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (putStrLn (javaToString "IOException Trying Other Servers"))
            if (Prelude.not (jio (startsWith ((Control.Exception.displayException e)) hOST_NOT_RESOLVED))) then do
                javaReturn =<< (fmap jtoObject (XmlRpcAbeClient.tryAnother this anyType))
            else do
                javaThrow ((JavaException "Exception" hOST_NOT_RESOLVED_MSG))
            ) $ do
            param <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            serverUrl <- newIORef =<< (AbeClientInformationInterface.getLicenseServer ((jio (XmlRpcAbeClient.getClientInfo this))) (jio (XmlRpcAbeClient.getServer this)))
            let index = (jstringLastIndexOf (jget serverUrl) "/")
            jset serverUrl (((Prelude.take (((index + 1)) - (0)) (Prelude.drop (0) (jget serverUrl))) ++ "logservssl.php"))
            xmlRpcClient <- (XmlRpcClient.new_1 (jget serverUrl))
            Control.Monad.void (XmlRpcAbeClient.setClient this xmlRpcClient)
            Control.Monad.void (XmlRpcClient.setBasicAuthentication xmlRpcClient javaNull javaNull)
            let hashtable = (javaCast anyType :: ABHashtable.ABHashtable)
            Control.Monad.void (BasicArrayList.add param hashtable)
            result <- (XmlRpcClient.execute_3 xmlRpcClient (jio (XmlRpcAbeClient.getRemoteMethod this)) param (javaCast (jget (this).noCrypt)))
            Control.Monad.void (putStrLn (javaToString (javaToString ((jget ((jio (CommonLabels.getInstance))).rESULT_) + (jget ((jio (CommonSeps.getInstance))).nEW_LINE)) ++ (jio (Any.toString result)))))
            pure ((jtoObject result))


