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
-- package org.allbinary.logic.communication.xmlrpc
module XmlRpcAbeClient where

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
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified NullXmlRpcHandler -- org.apache.xmlrpc.NullXmlRpcHandler
import qualified XmlRpcClient -- org.apache.xmlrpc.XmlRpcClient
import qualified XmlRpcHandler -- org.apache.xmlrpc.XmlRpcHandler

data XmlRpcAbeClient = XmlRpcAbeClient
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , remoteMethod :: IORef (String)
    , clientInfo :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , client :: IORef (XmlRpcHandler.XmlRpcHandler)
    , server :: IORef (Int)
    , start :: IORef (Int)
    , maxServers :: IORef (Int)
    , isDone :: IORef (Bool)
    , sTART_SERVER :: IORef (String)
    , tRYING :: IORef (String)
    , sEP :: IORef (String)
    , cLIENT_INFO :: IORef (String)
    , rESULT :: IORef (String)
    , iNVALID :: IORef (String)
    , eXCEPTION_IN_CLIENT :: IORef (String)
    , sERVER_REPORTED_ERROR :: IORef (String)
    , uNKNOWN_ERROR :: IORef (String)
    , tRYING_OTHER_SERVERS :: IORef (String)
    , hOST_NOT_RESOLVED_MSG :: IORef (String)
    , hOST_NOT_RESOLVED :: IORef (String)
    , myRandomFactory :: IORef (MyRandomFactory.MyRandomFactory)
    }

instance JavaNull XmlRpcAbeClient where
    javaNull = javaNullRecord "XmlRpcAbeClient"

instance JavaEquals XmlRpcAbeClient where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlRpcAbeClient where
    (==) = jrecordEquals

instance JavaObjectClass XmlRpcAbeClient where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE isOnline #-}
isOnline = unsafePerformIO (newIORef (True))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO XmlRpcAbeClient
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    remoteMethod <- newIORef ""
    clientInfo <- newIORef javaNull
    client <- newIORef javaNull
    server <- newIORef 0
    start <- newIORef 0
    maxServers <- newIORef 0
    isDone <- newIORef False
    sTART_SERVER <- newIORef ""
    tRYING <- newIORef ""
    sEP <- newIORef ""
    cLIENT_INFO <- newIORef ""
    rESULT <- newIORef ""
    iNVALID <- newIORef ""
    eXCEPTION_IN_CLIENT <- newIORef ""
    sERVER_REPORTED_ERROR <- newIORef ""
    uNKNOWN_ERROR <- newIORef ""
    tRYING_OTHER_SERVERS <- newIORef ""
    hOST_NOT_RESOLVED_MSG <- newIORef ""
    hOST_NOT_RESOLVED <- newIORef ""
    myRandomFactory <- newIORef javaNull
    let this = XmlRpcAbeClient header_ logUtil commonStrings remoteMethod clientInfo client server start maxServers isDone sTART_SERVER tRYING sEP cLIENT_INFO rESULT iNVALID eXCEPTION_IN_CLIENT sERVER_REPORTED_ERROR uNKNOWN_ERROR tRYING_OTHER_SERVERS hOST_NOT_RESOLVED_MSG hOST_NOT_RESOLVED myRandomFactory
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "tryAnother" (\() -> tryAnother_impl this)
    jregisterMethod header_ "getClientInfo" (\() -> getClientInfo_impl this)
    jregisterMethod header_ "getClient" (\() -> getClient_impl this)
    jregisterMethod header_ "setClient" (\() -> setClient_impl this)
    jregisterMethod header_ "getServer" (\() -> getServer_impl this)
    jregisterMethod header_ "setServer" (\() -> setServer_impl this)
    jregisterMethod header_ "getStart" (\() -> getStart_impl this)
    jregisterMethod header_ "setStart" (\() -> setStart_impl this)
    jregisterMethod header_ "getMaxServers" (\() -> getMaxServers_impl this)
    jregisterMethod header_ "setMaxServers" (\() -> setMaxServers_impl this)
    jregisterMethod header_ "isIsDone" (\() -> isIsDone_impl this)
    jregisterMethod header_ "setIsDone" (\() -> setIsDone_impl this)
    jregisterMethod header_ "getRemoteMethod" (\() -> getRemoteMethod_impl this)
    pure this

initFields_ :: XmlRpcAbeClient -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.remoteMethod (javaNull)
    jset this.clientInfo (javaNull)
    jset this.client ((javaCast NullXmlRpcHandler.nULL_XML_RPC_HANDLER :: XmlRpcHandler.XmlRpcHandler))
    jset this.server (0)
    jset this.start (0)
    jset this.maxServers (0)
    jset this.isDone (False)
    jset this.sTART_SERVER ("Start With Server #")
    jset this.tRYING ("Trying Server #")
    jset this.sEP ((jget ((jio (CommonLabels.getInstance))).cOLON_SEP))
    jset this.cLIENT_INFO ("Client Info: \n")
    jset this.rESULT (((jget ((jio (CommonLabels.getInstance))).rESULT_) + (jget ((jio (CommonSeps.getInstance))).nEW_LINE)))
    jset this.iNVALID ("License data is Invalid Trying Other Servers")
    jset this.eXCEPTION_IN_CLIENT ("Exception in client")
    jset this.sERVER_REPORTED_ERROR ("Server reported error")
    jset this.uNKNOWN_ERROR ("Unknown License Retrieval Failure")
    jset this.tRYING_OTHER_SERVERS ("IOException Trying Other Servers")
    jset this.hOST_NOT_RESOLVED_MSG ("Not Trying Again Since Host Unresolved")
    jset this.hOST_NOT_RESOLVED ("Host is unresolved")
    jset this.myRandomFactory =<< (MyRandomFactory.getInstance)
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO XmlRpcAbeClient
new_2 clientInfo remoteMethod = do
    this <- newRecord_
    init_2 this clientInfo remoteMethod
    pure this

init_2 :: XmlRpcAbeClient -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO ()
init_2 this clientInfo remoteMethod = do
        initFields_ this
        jset (this).remoteMethod (remoteMethod)
        jset (this).clientInfo (clientInfo)
        if ((jio (AbeClientInformationInterface.getNumberOfLicenseServers clientInfo)) > 1) then do
            jset (this).maxServers (((jio (AbeClientInformationInterface.getNumberOfLicenseServers clientInfo)) - 2))
            jset (this).start (((jio (MyRandomFactory.getAbsoluteNextInt ((jget (this).myRandomFactory)) (jget (this).maxServers))) + 1))
        else when ((jio (AbeClientInformationInterface.getNumberOfLicenseServers clientInfo)) == 1) $ do
            jset (this).maxServers (0)
            jset (this).start (0)
        jset (this).isDone (False)
        jset (this).server ((jget (this).start))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sTART_SERVER))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (XmlRpcAbeClient.getServer this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbeClientInformationInterface.getLicenseServer clientInfo (jio (XmlRpcAbeClient.getServer this)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
get :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: XmlRpcAbeClient))) () (jtoObject a1)

get_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
get_super object_ a1 = (get_impl (javaCast object_ :: XmlRpcAbeClient)) (jtoObject a1)

get_impl :: XmlRpcAbeClient -> JavaObject -> IO (Any.Any)
get_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED) this)
        pure ((jtoObject (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))


-- throws Exception
tryAnother :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
tryAnother object_ a1 = jmethod object_ "tryAnother" (\() -> (tryAnother_impl (javaCast object_ :: XmlRpcAbeClient))) () (jtoObject a1)

tryAnother_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
tryAnother_super object_ a1 = (tryAnother_impl (javaCast object_ :: XmlRpcAbeClient)) (jtoObject a1)

tryAnother_impl :: XmlRpcAbeClient -> JavaObject -> IO (Any.Any)
tryAnother_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        if ((jio (XmlRpcAbeClient.getServer this)) < (jio (XmlRpcAbeClient.getMaxServers this))) then do
            Control.Monad.void (XmlRpcAbeClient.setServer this ((jio (XmlRpcAbeClient.getServer this)) + 1))
        else do
            Control.Monad.void (XmlRpcAbeClient.setServer this 0)
        if (((jio (XmlRpcAbeClient.getServer this)) /= (jio (XmlRpcAbeClient.getStart this))) && (Prelude.not (jio (XmlRpcAbeClient.isIsDone this)))) then do
            javaReturn =<< (fmap jtoObject (XmlRpcAbeClient.get this anyType))
        else do
            Control.Monad.void (XmlRpcAbeClient.setIsDone this True)
        javaThrow ((JavaException "Exception" "Tried All Servers But Still Failed"))


getClientInfo :: (JavaObjectClass this_) => this_ -> IO (AbeClientInformationInterface.AbeClientInformationInterface)
getClientInfo object_ = jmethod object_ "getClientInfo" (\() -> (getClientInfo_impl (javaCast object_ :: XmlRpcAbeClient))) ()

getClientInfo_super :: (JavaObjectClass this_) => this_ -> IO (AbeClientInformationInterface.AbeClientInformationInterface)
getClientInfo_super object_ = (getClientInfo_impl (javaCast object_ :: XmlRpcAbeClient))

getClientInfo_impl :: XmlRpcAbeClient -> IO (AbeClientInformationInterface.AbeClientInformationInterface)
getClientInfo_impl this = do
        pure ((jget (this).clientInfo))


getClient :: (JavaObjectClass this_) => this_ -> IO (XmlRpcHandler.XmlRpcHandler)
getClient object_ = jmethod object_ "getClient" (\() -> (getClient_impl (javaCast object_ :: XmlRpcAbeClient))) ()

getClient_super :: (JavaObjectClass this_) => this_ -> IO (XmlRpcHandler.XmlRpcHandler)
getClient_super object_ = (getClient_impl (javaCast object_ :: XmlRpcAbeClient))

getClient_impl :: XmlRpcAbeClient -> IO (XmlRpcHandler.XmlRpcHandler)
getClient_impl this = do
        pure ((jget (this).client))


setClient :: (JavaObjectClass this_) => this_ -> XmlRpcClient.XmlRpcClient -> IO (())
setClient object_ a1 = jmethod object_ "setClient" (\() -> (setClient_impl (javaCast object_ :: XmlRpcAbeClient))) () a1

setClient_super :: (JavaObjectClass this_) => this_ -> XmlRpcClient.XmlRpcClient -> IO (())
setClient_super object_ a1 = (setClient_impl (javaCast object_ :: XmlRpcAbeClient)) a1

setClient_impl :: XmlRpcAbeClient -> XmlRpcClient.XmlRpcClient -> IO (())
setClient_impl this client = do
        jset (this).client (client)
        pure ()


getServer :: (JavaObjectClass this_) => this_ -> IO (Int)
getServer object_ = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: XmlRpcAbeClient))) ()

getServer_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getServer_super object_ = (getServer_impl (javaCast object_ :: XmlRpcAbeClient))

getServer_impl :: XmlRpcAbeClient -> IO (Int)
getServer_impl this = do
        pure ((jget (this).server))


setServer :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setServer object_ a1 = jmethod object_ "setServer" (\() -> (setServer_impl (javaCast object_ :: XmlRpcAbeClient))) () a1

setServer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setServer_super object_ a1 = (setServer_impl (javaCast object_ :: XmlRpcAbeClient)) a1

setServer_impl :: XmlRpcAbeClient -> Int -> IO (())
setServer_impl this server = do
        jset (this).server (server)
        pure ()


getStart :: (JavaObjectClass this_) => this_ -> IO (Int)
getStart object_ = jmethod object_ "getStart" (\() -> (getStart_impl (javaCast object_ :: XmlRpcAbeClient))) ()

getStart_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStart_super object_ = (getStart_impl (javaCast object_ :: XmlRpcAbeClient))

getStart_impl :: XmlRpcAbeClient -> IO (Int)
getStart_impl this = do
        pure ((jget (this).start))


setStart :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStart object_ a1 = jmethod object_ "setStart" (\() -> (setStart_impl (javaCast object_ :: XmlRpcAbeClient))) () a1

setStart_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStart_super object_ a1 = (setStart_impl (javaCast object_ :: XmlRpcAbeClient)) a1

setStart_impl :: XmlRpcAbeClient -> Int -> IO (())
setStart_impl this start = do
        jset (this).start (start)
        pure ()


getMaxServers :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxServers object_ = jmethod object_ "getMaxServers" (\() -> (getMaxServers_impl (javaCast object_ :: XmlRpcAbeClient))) ()

getMaxServers_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxServers_super object_ = (getMaxServers_impl (javaCast object_ :: XmlRpcAbeClient))

getMaxServers_impl :: XmlRpcAbeClient -> IO (Int)
getMaxServers_impl this = do
        pure ((jget (this).maxServers))


setMaxServers :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxServers object_ a1 = jmethod object_ "setMaxServers" (\() -> (setMaxServers_impl (javaCast object_ :: XmlRpcAbeClient))) () a1

setMaxServers_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxServers_super object_ a1 = (setMaxServers_impl (javaCast object_ :: XmlRpcAbeClient)) a1

setMaxServers_impl :: XmlRpcAbeClient -> Int -> IO (())
setMaxServers_impl this maxServers = do
        jset (this).maxServers (maxServers)
        pure ()


isIsDone :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIsDone object_ = jmethod object_ "isIsDone" (\() -> (isIsDone_impl (javaCast object_ :: XmlRpcAbeClient))) ()

isIsDone_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIsDone_super object_ = (isIsDone_impl (javaCast object_ :: XmlRpcAbeClient))

isIsDone_impl :: XmlRpcAbeClient -> IO (Bool)
isIsDone_impl this = do
        pure ((jget (this).isDone))


setIsDone :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setIsDone object_ a1 = jmethod object_ "setIsDone" (\() -> (setIsDone_impl (javaCast object_ :: XmlRpcAbeClient))) () a1

setIsDone_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setIsDone_super object_ a1 = (setIsDone_impl (javaCast object_ :: XmlRpcAbeClient)) a1

setIsDone_impl :: XmlRpcAbeClient -> Bool -> IO (())
setIsDone_impl this isDone = do
        jset (this).isDone (isDone)
        pure ()


getRemoteMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getRemoteMethod object_ = jmethod object_ "getRemoteMethod" (\() -> (getRemoteMethod_impl (javaCast object_ :: XmlRpcAbeClient))) ()

getRemoteMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getRemoteMethod_super object_ = (getRemoteMethod_impl (javaCast object_ :: XmlRpcAbeClient))

getRemoteMethod_impl :: XmlRpcAbeClient -> IO (String)
getRemoteMethod_impl this = do
        pure ((jget (this).remoteMethod))


