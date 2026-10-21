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
-- package org.allbinary.business.user.commerce.money.payment.gateway
module PaymentGateway where

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
import qualified PaymentGatewayData -- same package or java.lang
import qualified PaymentGatewayPrimaryKey -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified SuperCrypt -- org.allbinary.logic.control.crypt.SuperCrypt
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified PaymentGatewayInterface

-- implements PaymentGatewayInterface
data PaymentGateway = PaymentGateway
    { header_ :: JavaHeader
    , storeName :: IORef (String)
    , name :: IORef (String)
    , enable :: IORef (String)
    , paymentMethod :: IORef (String)
    , mode :: IORef (String)
    , testProtocol :: IORef (String)
    , testServer :: IORef (String)
    , testPort :: IORef (String)
    , testPath :: IORef (String)
    , serverProtocol :: IORef (String)
    , server :: IORef (String)
    , serverPort :: IORef (String)
    , serverPath :: IORef (String)
    , timeout :: IORef (String)
    , userName :: IORef (String)
    , password :: IORef (String)
    , proxyProtocol :: IORef (String)
    , proxyServer :: IORef (String)
    , proxyPort :: IORef (String)
    , proxyPath :: IORef (String)
    , proxyUserName :: IORef (String)
    , proxyPassword :: IORef (String)
    , proxyTimeout :: IORef (String)
    , special1 :: IORef (String)
    , special2 :: IORef (String)
    , special3 :: IORef (String)
    , special4 :: IORef (String)
    , special5 :: IORef (String)
    , special6 :: IORef (String)
    , special7 :: IORef (String)
    , special8 :: IORef (String)
    , special9 :: IORef (String)
    , lastModified :: IORef (String)
    , timeEntered :: IORef (String)
    }

instance JavaNull PaymentGateway where
    javaNull = javaNullRecord "PaymentGateway"

instance JavaEquals PaymentGateway where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGateway where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGateway where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentGateway
newRecord_ = do
    header_ <- newJavaHeader
    storeName <- newIORef ""
    name <- newIORef ""
    enable <- newIORef ""
    paymentMethod <- newIORef ""
    mode <- newIORef ""
    testProtocol <- newIORef ""
    testServer <- newIORef ""
    testPort <- newIORef ""
    testPath <- newIORef ""
    serverProtocol <- newIORef ""
    server <- newIORef ""
    serverPort <- newIORef ""
    serverPath <- newIORef ""
    timeout <- newIORef ""
    userName <- newIORef ""
    password <- newIORef ""
    proxyProtocol <- newIORef ""
    proxyServer <- newIORef ""
    proxyPort <- newIORef ""
    proxyPath <- newIORef ""
    proxyUserName <- newIORef ""
    proxyPassword <- newIORef ""
    proxyTimeout <- newIORef ""
    special1 <- newIORef ""
    special2 <- newIORef ""
    special3 <- newIORef ""
    special4 <- newIORef ""
    special5 <- newIORef ""
    special6 <- newIORef ""
    special7 <- newIORef ""
    special8 <- newIORef ""
    special9 <- newIORef ""
    lastModified <- newIORef ""
    timeEntered <- newIORef ""
    let this = PaymentGateway header_ storeName name enable paymentMethod mode testProtocol testServer testPort testPath serverProtocol server serverPort serverPath timeout userName password proxyProtocol proxyServer proxyPort proxyPath proxyUserName proxyPassword proxyTimeout special1 special2 special3 special4 special5 special6 special7 special8 special9 lastModified timeEntered
    jregisterLevel header_ this
    PaymentGatewayInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getEnable" (\() -> getEnable_impl this)
    jregisterMethod header_ "getPaymentMethod" (\() -> getPaymentMethod_impl this)
    jregisterMethod header_ "getMode" (\() -> getMode_impl this)
    jregisterMethod header_ "getTestProtocol" (\() -> getTestProtocol_impl this)
    jregisterMethod header_ "getTestServer" (\() -> getTestServer_impl this)
    jregisterMethod header_ "getTestPort" (\() -> getTestPort_impl this)
    jregisterMethod header_ "getTestPath" (\() -> getTestPath_impl this)
    jregisterMethod header_ "getServerProtocol" (\() -> getServerProtocol_impl this)
    jregisterMethod header_ "getServer" (\() -> getServer_impl this)
    jregisterMethod header_ "getServerPort" (\() -> getServerPort_impl this)
    jregisterMethod header_ "getServerPath" (\() -> getServerPath_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getPassword" (\() -> getPassword_impl this)
    jregisterMethod header_ "getProxyProtocol" (\() -> getProxyProtocol_impl this)
    jregisterMethod header_ "getProxyServer" (\() -> getProxyServer_impl this)
    jregisterMethod header_ "getProxyPath" (\() -> getProxyPath_impl this)
    jregisterMethod header_ "getProxyPort" (\() -> getProxyPort_impl this)
    jregisterMethod header_ "getProxyUserName" (\() -> getProxyUserName_impl this)
    jregisterMethod header_ "getProxyPassword" (\() -> getProxyPassword_impl this)
    jregisterMethod header_ "getTimeout" (\() -> getTimeout_impl this)
    jregisterMethod header_ "getProxyTimeout" (\() -> getProxyTimeout_impl this)
    jregisterMethod header_ "getSpecial1" (\() -> getSpecial1_impl this)
    jregisterMethod header_ "getSpecial2" (\() -> getSpecial2_impl this)
    jregisterMethod header_ "getSpecial3" (\() -> getSpecial3_impl this)
    jregisterMethod header_ "getSpecial4" (\() -> getSpecial4_impl this)
    jregisterMethod header_ "getSpecial5" (\() -> getSpecial5_impl this)
    jregisterMethod header_ "getSpecial6" (\() -> getSpecial6_impl this)
    jregisterMethod header_ "getSpecial7" (\() -> getSpecial7_impl this)
    jregisterMethod header_ "getSpecial8" (\() -> getSpecial8_impl this)
    jregisterMethod header_ "getSpecial9" (\() -> getSpecial9_impl this)
    jregisterMethod header_ "getLastModified" (\() -> getLastModified_impl this)
    jregisterMethod header_ "getTimeEntered" (\() -> getTimeEntered_impl this)
    jregisterMethod header_ "setEnable" (\() -> setEnable_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setPaymentMethod" (\() -> setPaymentMethod_impl this)
    jregisterMethod header_ "setMode" (\() -> setMode_impl this)
    jregisterMethod header_ "setTestProtocol" (\() -> setTestProtocol_impl this)
    jregisterMethod header_ "setTestServer" (\() -> setTestServer_impl this)
    jregisterMethod header_ "setTestPort" (\() -> setTestPort_impl this)
    jregisterMethod header_ "setTestPath" (\() -> setTestPath_impl this)
    jregisterMethod header_ "setServerProtocol" (\() -> setServerProtocol_impl this)
    jregisterMethod header_ "setServer" (\() -> setServer_impl this)
    jregisterMethod header_ "setServerPort" (\() -> setServerPort_impl this)
    jregisterMethod header_ "setServerPath" (\() -> setServerPath_impl this)
    jregisterMethod header_ "setTimeout" (\() -> setTimeout_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "setProxyProtocol" (\() -> setProxyProtocol_impl this)
    jregisterMethod header_ "setProxyServer" (\() -> setProxyServer_impl this)
    jregisterMethod header_ "setProxyPort" (\() -> setProxyPort_impl this)
    jregisterMethod header_ "setProxyPath" (\() -> setProxyPath_impl this)
    jregisterMethod header_ "setProxyUserName" (\() -> setProxyUserName_impl this)
    jregisterMethod header_ "setProxyPassword" (\() -> setProxyPassword_impl this)
    jregisterMethod header_ "setProxyTimeout" (\() -> setProxyTimeout_impl this)
    jregisterMethod header_ "setSpecial1" (\() -> setSpecial1_impl this)
    jregisterMethod header_ "setSpecial2" (\() -> setSpecial2_impl this)
    jregisterMethod header_ "setSpecial3" (\() -> setSpecial3_impl this)
    jregisterMethod header_ "setSpecial4" (\() -> setSpecial4_impl this)
    jregisterMethod header_ "setSpecial5" (\() -> setSpecial5_impl this)
    jregisterMethod header_ "setSpecial6" (\() -> setSpecial6_impl this)
    jregisterMethod header_ "setSpecial7" (\() -> setSpecial7_impl this)
    jregisterMethod header_ "setSpecial8" (\() -> setSpecial8_impl this)
    jregisterMethod header_ "setSpecial9" (\() -> setSpecial9_impl this)
    jregisterMethod header_ "setLastModified" (\() -> setLastModified_impl this)
    jregisterMethod header_ "setTimeEntered" (\() -> setTimeEntered_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    pure this

initFields_ :: PaymentGateway -> IO ()
initFields_ this = do
    jset this.storeName ("")
    jset this.name ("")
    jset this.enable ("")
    jset this.paymentMethod ("")
    jset this.mode ("")
    jset this.testProtocol ("")
    jset this.testServer ("")
    jset this.testPort ("")
    jset this.testPath ("")
    jset this.serverProtocol ("")
    jset this.server ("")
    jset this.serverPort ("")
    jset this.serverPath ("")
    jset this.timeout ("")
    jset this.userName ("")
    jset this.password ("")
    jset this.proxyProtocol ("")
    jset this.proxyServer ("")
    jset this.proxyPort ("")
    jset this.proxyPath ("")
    jset this.proxyUserName ("")
    jset this.proxyPassword ("")
    jset this.proxyTimeout ("")
    jset this.special1 ("")
    jset this.special2 ("")
    jset this.special3 ("")
    jset this.special4 ("")
    jset this.special5 ("")
    jset this.special6 ("")
    jset this.special7 ("")
    jset this.special8 ("")
    jset this.special9 ("")
    jset this.lastModified ("")
    jset this.timeEntered ("")
    pure ()

new_1 :: HashMap.HashMap -> IO PaymentGateway
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: PaymentGateway -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        Control.Monad.void (PaymentGateway.getFormData this hashMap)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: PaymentGateway))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: PaymentGateway)) a1

getFormData_impl :: PaymentGateway -> HashMap.HashMap -> IO (())
getFormData_impl this hashMap = do
        stringUtil <- (StringUtil.getInstance)
        let empty = (jget (stringUtil).eMPTY_STRING)
        jset (this).storeName ((javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))
        jset (this).name ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)))) :: String))
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jget ((jio (EntryData.getInstance))).eNABLE))) :: String))
        jset (this).enable (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (PaymentData.mETHOD))) :: String))
        jset (this).paymentMethod (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.mODE)))) :: String))
        jset (this).mode (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPROTOCOL)))) :: String))
        jset (this).testProtocol (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tESTSERVER)))) :: String))
        jset (this).testServer (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPORT)))) :: String))
        jset (this).testPort (assignedValue)
        jset (this).testPath ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPATH)))) :: String))
        when ((jget (this).testPath) == javaNull) $ do
            jset (this).testPath (empty)
        jset (this).serverProtocol ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPROTOCOL)))) :: String))
        when ((jget (this).serverProtocol) == javaNull) $ do
            jset (this).serverProtocol (empty)
        jset (this).server ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sERVER)))) :: String))
        when ((jget (this).server) == javaNull) $ do
            jset (this).server (empty)
        jset (this).serverPort ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPORT)))) :: String))
        when ((jget (this).serverPort) == javaNull) $ do
            jset (this).serverPort (empty)
        jset (this).serverPath ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPATH)))) :: String))
        when ((jget (this).serverPath) == javaNull) $ do
            jset (this).serverPath (empty)
        jset (this).userName ((javaCast (jio (HashMap.get hashMap (UserData.uSERNAME))) :: String))
        when ((jget (this).userName) == javaNull) $ do
            jset (this).userName (empty)
        jset (this).password ((javaCast (jio (HashMap.get hashMap (UserData.pASSWORD))) :: String))
        when ((jget (this).password) == javaNull) $ do
            jset (this).password (empty)
        jset (this).timeout ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tIMEOUT)))) :: String))
        when ((jget (this).timeout) == javaNull) $ do
            jset (this).timeout (empty)
        jset (this).proxyProtocol ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPROTOCOL)))) :: String))
        when ((jget (this).proxyProtocol) == javaNull) $ do
            jset (this).proxyProtocol (empty)
        jset (this).proxyServer ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYSERVER)))) :: String))
        when ((jget (this).proxyServer) == javaNull) $ do
            jset (this).proxyServer (empty)
        jset (this).proxyPort ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPORT)))) :: String))
        when ((jget (this).proxyPort) == javaNull) $ do
            jset (this).proxyPort (empty)
        jset (this).proxyPath ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPATH)))) :: String))
        when ((jget (this).proxyPath) == javaNull) $ do
            jset (this).proxyPath (empty)
        jset (this).proxyUserName ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYUSERNAME)))) :: String))
        when ((jget (this).proxyUserName) == javaNull) $ do
            jset (this).proxyUserName (empty)
        jset (this).proxyPassword ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPASSWORD)))) :: String))
        when ((jget (this).proxyPassword) == javaNull) $ do
            jset (this).proxyPassword (empty)
        jset (this).proxyTimeout ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYTIMEOUT)))) :: String))
        when ((jget (this).proxyTimeout) == javaNull) $ do
            jset (this).proxyTimeout (empty)
        jset (this).special1 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL1)))) :: String))
        when ((jget (this).special1) == javaNull) $ do
            jset (this).special1 (empty)
        jset (this).special2 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL2)))) :: String))
        when ((jget (this).special2) == javaNull) $ do
            jset (this).special2 (empty)
        jset (this).special3 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL3)))) :: String))
        when ((jget (this).special3) == javaNull) $ do
            jset (this).special3 (empty)
        jset (this).special4 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL4)))) :: String))
        when ((jget (this).special4) == javaNull) $ do
            jset (this).special4 (empty)
        jset (this).special5 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL5)))) :: String))
        when ((jget (this).special5) == javaNull) $ do
            jset (this).special5 (empty)
        jset (this).special6 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL6)))) :: String))
        when ((jget (this).special6) == javaNull) $ do
            jset (this).special6 (empty)
        jset (this).special7 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL7)))) :: String))
        when ((jget (this).special7) == javaNull) $ do
            jset (this).special7 (empty)
        jset (this).special8 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL8)))) :: String))
        when ((jget (this).special8) == javaNull) $ do
            jset (this).special8 (empty)
        jset (this).special9 ((javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL9)))) :: String))
        when ((jget (this).special9) == javaNull) $ do
            jset (this).special9 (empty)
        jset (this).lastModified ((javaCast (jio (HashMap.get hashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED))) :: String))
        when ((jget (this).lastModified) == javaNull) $ do
            jset (this).lastModified (empty)
        jset (this).timeEntered ((javaCast (jio (HashMap.get hashMap (jget ((jio (EntryData.getInstance))).tIMECREATED))) :: String))
        when ((jget (this).timeEntered) == javaNull) $ do
            jset (this).timeEntered (empty)
        pure ()


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: PaymentGateway))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: PaymentGateway))

getStoreName_impl :: PaymentGateway -> IO (String)
getStoreName_impl this = do
        pure ((jget (this).storeName))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: PaymentGateway))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: PaymentGateway))

getName_impl :: PaymentGateway -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getEnable :: (JavaObjectClass this_) => this_ -> IO (String)
getEnable object_ = jmethod object_ "getEnable" (\() -> (getEnable_impl (javaCast object_ :: PaymentGateway))) ()

getEnable_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEnable_super object_ = (getEnable_impl (javaCast object_ :: PaymentGateway))

getEnable_impl :: PaymentGateway -> IO (String)
getEnable_impl this = do
        pure ((jget (this).enable))


getPaymentMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod object_ = jmethod object_ "getPaymentMethod" (\() -> (getPaymentMethod_impl (javaCast object_ :: PaymentGateway))) ()

getPaymentMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod_super object_ = (getPaymentMethod_impl (javaCast object_ :: PaymentGateway))

getPaymentMethod_impl :: PaymentGateway -> IO (String)
getPaymentMethod_impl this = do
        pure ((jget (this).paymentMethod))


getMode :: (JavaObjectClass this_) => this_ -> IO (String)
getMode object_ = jmethod object_ "getMode" (\() -> (getMode_impl (javaCast object_ :: PaymentGateway))) ()

getMode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMode_super object_ = (getMode_impl (javaCast object_ :: PaymentGateway))

getMode_impl :: PaymentGateway -> IO (String)
getMode_impl this = do
        pure ((jget (this).mode))


getTestProtocol :: (JavaObjectClass this_) => this_ -> IO (String)
getTestProtocol object_ = jmethod object_ "getTestProtocol" (\() -> (getTestProtocol_impl (javaCast object_ :: PaymentGateway))) ()

getTestProtocol_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestProtocol_super object_ = (getTestProtocol_impl (javaCast object_ :: PaymentGateway))

getTestProtocol_impl :: PaymentGateway -> IO (String)
getTestProtocol_impl this = do
        pure ((jget (this).testProtocol))


getTestServer :: (JavaObjectClass this_) => this_ -> IO (String)
getTestServer object_ = jmethod object_ "getTestServer" (\() -> (getTestServer_impl (javaCast object_ :: PaymentGateway))) ()

getTestServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestServer_super object_ = (getTestServer_impl (javaCast object_ :: PaymentGateway))

getTestServer_impl :: PaymentGateway -> IO (String)
getTestServer_impl this = do
        pure ((jget (this).testServer))


getTestPort :: (JavaObjectClass this_) => this_ -> IO (String)
getTestPort object_ = jmethod object_ "getTestPort" (\() -> (getTestPort_impl (javaCast object_ :: PaymentGateway))) ()

getTestPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestPort_super object_ = (getTestPort_impl (javaCast object_ :: PaymentGateway))

getTestPort_impl :: PaymentGateway -> IO (String)
getTestPort_impl this = do
        pure ((jget (this).testPort))


getTestPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestPath object_ = jmethod object_ "getTestPath" (\() -> (getTestPath_impl (javaCast object_ :: PaymentGateway))) ()

getTestPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestPath_super object_ = (getTestPath_impl (javaCast object_ :: PaymentGateway))

getTestPath_impl :: PaymentGateway -> IO (String)
getTestPath_impl this = do
        pure ((jget (this).testPath))


getServerProtocol :: (JavaObjectClass this_) => this_ -> IO (String)
getServerProtocol object_ = jmethod object_ "getServerProtocol" (\() -> (getServerProtocol_impl (javaCast object_ :: PaymentGateway))) ()

getServerProtocol_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServerProtocol_super object_ = (getServerProtocol_impl (javaCast object_ :: PaymentGateway))

getServerProtocol_impl :: PaymentGateway -> IO (String)
getServerProtocol_impl this = do
        pure ((jget (this).serverProtocol))


getServer :: (JavaObjectClass this_) => this_ -> IO (String)
getServer object_ = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: PaymentGateway))) ()

getServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServer_super object_ = (getServer_impl (javaCast object_ :: PaymentGateway))

getServer_impl :: PaymentGateway -> IO (String)
getServer_impl this = do
        pure ((jget (this).server))


getServerPort :: (JavaObjectClass this_) => this_ -> IO (String)
getServerPort object_ = jmethod object_ "getServerPort" (\() -> (getServerPort_impl (javaCast object_ :: PaymentGateway))) ()

getServerPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServerPort_super object_ = (getServerPort_impl (javaCast object_ :: PaymentGateway))

getServerPort_impl :: PaymentGateway -> IO (String)
getServerPort_impl this = do
        pure ((jget (this).serverPort))


getServerPath :: (JavaObjectClass this_) => this_ -> IO (String)
getServerPath object_ = jmethod object_ "getServerPath" (\() -> (getServerPath_impl (javaCast object_ :: PaymentGateway))) ()

getServerPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServerPath_super object_ = (getServerPath_impl (javaCast object_ :: PaymentGateway))

getServerPath_impl :: PaymentGateway -> IO (String)
getServerPath_impl this = do
        pure ((jget (this).serverPath))


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: PaymentGateway))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: PaymentGateway))

getUserName_impl :: PaymentGateway -> IO (String)
getUserName_impl this = do
        pure ((jget (this).userName))


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: PaymentGateway))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: PaymentGateway))

getPassword_impl :: PaymentGateway -> IO (String)
getPassword_impl this = do
        pure ((jget (this).password))


getProxyProtocol :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyProtocol object_ = jmethod object_ "getProxyProtocol" (\() -> (getProxyProtocol_impl (javaCast object_ :: PaymentGateway))) ()

getProxyProtocol_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyProtocol_super object_ = (getProxyProtocol_impl (javaCast object_ :: PaymentGateway))

getProxyProtocol_impl :: PaymentGateway -> IO (String)
getProxyProtocol_impl this = do
        pure ((jget (this).proxyProtocol))


getProxyServer :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyServer object_ = jmethod object_ "getProxyServer" (\() -> (getProxyServer_impl (javaCast object_ :: PaymentGateway))) ()

getProxyServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyServer_super object_ = (getProxyServer_impl (javaCast object_ :: PaymentGateway))

getProxyServer_impl :: PaymentGateway -> IO (String)
getProxyServer_impl this = do
        pure ((jget (this).proxyServer))


getProxyPath :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPath object_ = jmethod object_ "getProxyPath" (\() -> (getProxyPath_impl (javaCast object_ :: PaymentGateway))) ()

getProxyPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPath_super object_ = (getProxyPath_impl (javaCast object_ :: PaymentGateway))

getProxyPath_impl :: PaymentGateway -> IO (String)
getProxyPath_impl this = do
        pure ((jget (this).proxyPath))


getProxyPort :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPort object_ = jmethod object_ "getProxyPort" (\() -> (getProxyPort_impl (javaCast object_ :: PaymentGateway))) ()

getProxyPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPort_super object_ = (getProxyPort_impl (javaCast object_ :: PaymentGateway))

getProxyPort_impl :: PaymentGateway -> IO (String)
getProxyPort_impl this = do
        pure ((jget (this).proxyPort))


getProxyUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyUserName object_ = jmethod object_ "getProxyUserName" (\() -> (getProxyUserName_impl (javaCast object_ :: PaymentGateway))) ()

getProxyUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyUserName_super object_ = (getProxyUserName_impl (javaCast object_ :: PaymentGateway))

getProxyUserName_impl :: PaymentGateway -> IO (String)
getProxyUserName_impl this = do
        pure ((jget (this).proxyUserName))


getProxyPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPassword object_ = jmethod object_ "getProxyPassword" (\() -> (getProxyPassword_impl (javaCast object_ :: PaymentGateway))) ()

getProxyPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPassword_super object_ = (getProxyPassword_impl (javaCast object_ :: PaymentGateway))

getProxyPassword_impl :: PaymentGateway -> IO (String)
getProxyPassword_impl this = do
        pure ((jget (this).proxyPassword))


getTimeout :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout object_ = jmethod object_ "getTimeout" (\() -> (getTimeout_impl (javaCast object_ :: PaymentGateway))) ()

getTimeout_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout_super object_ = (getTimeout_impl (javaCast object_ :: PaymentGateway))

getTimeout_impl :: PaymentGateway -> IO (String)
getTimeout_impl this = do
        pure ((jget (this).timeout))


getProxyTimeout :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyTimeout object_ = jmethod object_ "getProxyTimeout" (\() -> (getProxyTimeout_impl (javaCast object_ :: PaymentGateway))) ()

getProxyTimeout_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyTimeout_super object_ = (getProxyTimeout_impl (javaCast object_ :: PaymentGateway))

getProxyTimeout_impl :: PaymentGateway -> IO (String)
getProxyTimeout_impl this = do
        pure ((jget (this).proxyTimeout))


getSpecial1 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial1 object_ = jmethod object_ "getSpecial1" (\() -> (getSpecial1_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial1_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial1_super object_ = (getSpecial1_impl (javaCast object_ :: PaymentGateway))

getSpecial1_impl :: PaymentGateway -> IO (String)
getSpecial1_impl this = do
        pure ((jget (this).special1))


getSpecial2 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial2 object_ = jmethod object_ "getSpecial2" (\() -> (getSpecial2_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial2_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial2_super object_ = (getSpecial2_impl (javaCast object_ :: PaymentGateway))

getSpecial2_impl :: PaymentGateway -> IO (String)
getSpecial2_impl this = do
        pure ((jget (this).special2))


getSpecial3 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial3 object_ = jmethod object_ "getSpecial3" (\() -> (getSpecial3_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial3_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial3_super object_ = (getSpecial3_impl (javaCast object_ :: PaymentGateway))

getSpecial3_impl :: PaymentGateway -> IO (String)
getSpecial3_impl this = do
        pure ((jget (this).special3))


getSpecial4 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial4 object_ = jmethod object_ "getSpecial4" (\() -> (getSpecial4_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial4_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial4_super object_ = (getSpecial4_impl (javaCast object_ :: PaymentGateway))

getSpecial4_impl :: PaymentGateway -> IO (String)
getSpecial4_impl this = do
        pure ((jget (this).special4))


getSpecial5 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial5 object_ = jmethod object_ "getSpecial5" (\() -> (getSpecial5_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial5_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial5_super object_ = (getSpecial5_impl (javaCast object_ :: PaymentGateway))

getSpecial5_impl :: PaymentGateway -> IO (String)
getSpecial5_impl this = do
        pure ((jget (this).special5))


getSpecial6 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial6 object_ = jmethod object_ "getSpecial6" (\() -> (getSpecial6_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial6_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial6_super object_ = (getSpecial6_impl (javaCast object_ :: PaymentGateway))

getSpecial6_impl :: PaymentGateway -> IO (String)
getSpecial6_impl this = do
        pure ((jget (this).special6))


getSpecial7 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial7 object_ = jmethod object_ "getSpecial7" (\() -> (getSpecial7_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial7_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial7_super object_ = (getSpecial7_impl (javaCast object_ :: PaymentGateway))

getSpecial7_impl :: PaymentGateway -> IO (String)
getSpecial7_impl this = do
        pure ((jget (this).special7))


getSpecial8 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial8 object_ = jmethod object_ "getSpecial8" (\() -> (getSpecial8_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial8_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial8_super object_ = (getSpecial8_impl (javaCast object_ :: PaymentGateway))

getSpecial8_impl :: PaymentGateway -> IO (String)
getSpecial8_impl this = do
        pure ((jget (this).special8))


getSpecial9 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial9 object_ = jmethod object_ "getSpecial9" (\() -> (getSpecial9_impl (javaCast object_ :: PaymentGateway))) ()

getSpecial9_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial9_super object_ = (getSpecial9_impl (javaCast object_ :: PaymentGateway))

getSpecial9_impl :: PaymentGateway -> IO (String)
getSpecial9_impl this = do
        pure ((jget (this).special9))


getLastModified :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified object_ = jmethod object_ "getLastModified" (\() -> (getLastModified_impl (javaCast object_ :: PaymentGateway))) ()

getLastModified_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified_super object_ = (getLastModified_impl (javaCast object_ :: PaymentGateway))

getLastModified_impl :: PaymentGateway -> IO (String)
getLastModified_impl this = do
        pure ((jget (this).lastModified))


getTimeEntered :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeEntered object_ = jmethod object_ "getTimeEntered" (\() -> (getTimeEntered_impl (javaCast object_ :: PaymentGateway))) ()

getTimeEntered_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeEntered_super object_ = (getTimeEntered_impl (javaCast object_ :: PaymentGateway))

getTimeEntered_impl :: PaymentGateway -> IO (String)
getTimeEntered_impl this = do
        pure ((jget (this).timeEntered))


setEnable :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable object_ a1 = jmethod object_ "setEnable" (\() -> (setEnable_impl (javaCast object_ :: PaymentGateway))) () a1

setEnable_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable_super object_ a1 = (setEnable_impl (javaCast object_ :: PaymentGateway)) a1

setEnable_impl :: PaymentGateway -> String -> IO (())
setEnable_impl this value = do
        jset (this).enable (value)
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: PaymentGateway))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: PaymentGateway)) a1

setStoreName_impl :: PaymentGateway -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: PaymentGateway))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: PaymentGateway)) a1

setName_impl :: PaymentGateway -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        pure ()


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod object_ a1 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: PaymentGateway))) () a1

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod_super object_ a1 = (setPaymentMethod_impl (javaCast object_ :: PaymentGateway)) a1

setPaymentMethod_impl :: PaymentGateway -> String -> IO (())
setPaymentMethod_impl this value = do
        jset (this).paymentMethod (value)
        pure ()


setMode :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMode object_ a1 = jmethod object_ "setMode" (\() -> (setMode_impl (javaCast object_ :: PaymentGateway))) () a1

setMode_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMode_super object_ a1 = (setMode_impl (javaCast object_ :: PaymentGateway)) a1

setMode_impl :: PaymentGateway -> String -> IO (())
setMode_impl this value = do
        jset (this).mode (value)
        pure ()


setTestProtocol :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestProtocol object_ a1 = jmethod object_ "setTestProtocol" (\() -> (setTestProtocol_impl (javaCast object_ :: PaymentGateway))) () a1

setTestProtocol_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestProtocol_super object_ a1 = (setTestProtocol_impl (javaCast object_ :: PaymentGateway)) a1

setTestProtocol_impl :: PaymentGateway -> String -> IO (())
setTestProtocol_impl this value = do
        jset (this).testProtocol (value)
        pure ()


setTestServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestServer object_ a1 = jmethod object_ "setTestServer" (\() -> (setTestServer_impl (javaCast object_ :: PaymentGateway))) () a1

setTestServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestServer_super object_ a1 = (setTestServer_impl (javaCast object_ :: PaymentGateway)) a1

setTestServer_impl :: PaymentGateway -> String -> IO (())
setTestServer_impl this value = do
        jset (this).testServer (value)
        pure ()


setTestPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestPort object_ a1 = jmethod object_ "setTestPort" (\() -> (setTestPort_impl (javaCast object_ :: PaymentGateway))) () a1

setTestPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestPort_super object_ a1 = (setTestPort_impl (javaCast object_ :: PaymentGateway)) a1

setTestPort_impl :: PaymentGateway -> String -> IO (())
setTestPort_impl this value = do
        jset (this).testPort (value)
        pure ()


setTestPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestPath object_ a1 = jmethod object_ "setTestPath" (\() -> (setTestPath_impl (javaCast object_ :: PaymentGateway))) () a1

setTestPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestPath_super object_ a1 = (setTestPath_impl (javaCast object_ :: PaymentGateway)) a1

setTestPath_impl :: PaymentGateway -> String -> IO (())
setTestPath_impl this value = do
        jset (this).testPath (value)
        pure ()


setServerProtocol :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerProtocol object_ a1 = jmethod object_ "setServerProtocol" (\() -> (setServerProtocol_impl (javaCast object_ :: PaymentGateway))) () a1

setServerProtocol_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerProtocol_super object_ a1 = (setServerProtocol_impl (javaCast object_ :: PaymentGateway)) a1

setServerProtocol_impl :: PaymentGateway -> String -> IO (())
setServerProtocol_impl this value = do
        jset (this).serverProtocol (value)
        pure ()


setServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer object_ a1 = jmethod object_ "setServer" (\() -> (setServer_impl (javaCast object_ :: PaymentGateway))) () a1

setServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer_super object_ a1 = (setServer_impl (javaCast object_ :: PaymentGateway)) a1

setServer_impl :: PaymentGateway -> String -> IO (())
setServer_impl this value = do
        jset (this).server (value)
        pure ()


setServerPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerPort object_ a1 = jmethod object_ "setServerPort" (\() -> (setServerPort_impl (javaCast object_ :: PaymentGateway))) () a1

setServerPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerPort_super object_ a1 = (setServerPort_impl (javaCast object_ :: PaymentGateway)) a1

setServerPort_impl :: PaymentGateway -> String -> IO (())
setServerPort_impl this value = do
        jset (this).serverPort (value)
        pure ()


setServerPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerPath object_ a1 = jmethod object_ "setServerPath" (\() -> (setServerPath_impl (javaCast object_ :: PaymentGateway))) () a1

setServerPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerPath_super object_ a1 = (setServerPath_impl (javaCast object_ :: PaymentGateway)) a1

setServerPath_impl :: PaymentGateway -> String -> IO (())
setServerPath_impl this value = do
        jset (this).serverPath (value)
        pure ()


setTimeout :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout object_ a1 = jmethod object_ "setTimeout" (\() -> (setTimeout_impl (javaCast object_ :: PaymentGateway))) () a1

setTimeout_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout_super object_ a1 = (setTimeout_impl (javaCast object_ :: PaymentGateway)) a1

setTimeout_impl :: PaymentGateway -> String -> IO (())
setTimeout_impl this value = do
        jset (this).timeout (value)
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: PaymentGateway))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: PaymentGateway)) a1

setUserName_impl :: PaymentGateway -> String -> IO (())
setUserName_impl this value = do
        jset (this).userName (value)
        pure ()


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: PaymentGateway))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: PaymentGateway)) a1

setPassword_impl :: PaymentGateway -> String -> IO (())
setPassword_impl this value = do
        jset (this).password (value)
        pure ()


setProxyProtocol :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyProtocol object_ a1 = jmethod object_ "setProxyProtocol" (\() -> (setProxyProtocol_impl (javaCast object_ :: PaymentGateway))) () a1

setProxyProtocol_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyProtocol_super object_ a1 = (setProxyProtocol_impl (javaCast object_ :: PaymentGateway)) a1

setProxyProtocol_impl :: PaymentGateway -> String -> IO (())
setProxyProtocol_impl this value = do
        jset (this).proxyProtocol (value)
        pure ()


setProxyServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyServer object_ a1 = jmethod object_ "setProxyServer" (\() -> (setProxyServer_impl (javaCast object_ :: PaymentGateway))) () a1

setProxyServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyServer_super object_ a1 = (setProxyServer_impl (javaCast object_ :: PaymentGateway)) a1

setProxyServer_impl :: PaymentGateway -> String -> IO (())
setProxyServer_impl this value = do
        jset (this).proxyServer (value)
        pure ()


setProxyPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPort object_ a1 = jmethod object_ "setProxyPort" (\() -> (setProxyPort_impl (javaCast object_ :: PaymentGateway))) () a1

setProxyPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPort_super object_ a1 = (setProxyPort_impl (javaCast object_ :: PaymentGateway)) a1

setProxyPort_impl :: PaymentGateway -> String -> IO (())
setProxyPort_impl this value = do
        jset (this).proxyPort (value)
        pure ()


setProxyPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPath object_ a1 = jmethod object_ "setProxyPath" (\() -> (setProxyPath_impl (javaCast object_ :: PaymentGateway))) () a1

setProxyPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPath_super object_ a1 = (setProxyPath_impl (javaCast object_ :: PaymentGateway)) a1

setProxyPath_impl :: PaymentGateway -> String -> IO (())
setProxyPath_impl this value = do
        jset (this).proxyPath (value)
        pure ()


setProxyUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyUserName object_ a1 = jmethod object_ "setProxyUserName" (\() -> (setProxyUserName_impl (javaCast object_ :: PaymentGateway))) () a1

setProxyUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyUserName_super object_ a1 = (setProxyUserName_impl (javaCast object_ :: PaymentGateway)) a1

setProxyUserName_impl :: PaymentGateway -> String -> IO (())
setProxyUserName_impl this value = do
        jset (this).proxyUserName (value)
        pure ()


setProxyPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPassword object_ a1 = jmethod object_ "setProxyPassword" (\() -> (setProxyPassword_impl (javaCast object_ :: PaymentGateway))) () a1

setProxyPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPassword_super object_ a1 = (setProxyPassword_impl (javaCast object_ :: PaymentGateway)) a1

setProxyPassword_impl :: PaymentGateway -> String -> IO (())
setProxyPassword_impl this value = do
        jset (this).proxyPassword (value)
        pure ()


setProxyTimeout :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyTimeout object_ a1 = jmethod object_ "setProxyTimeout" (\() -> (setProxyTimeout_impl (javaCast object_ :: PaymentGateway))) () a1

setProxyTimeout_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyTimeout_super object_ a1 = (setProxyTimeout_impl (javaCast object_ :: PaymentGateway)) a1

setProxyTimeout_impl :: PaymentGateway -> String -> IO (())
setProxyTimeout_impl this value = do
        jset (this).proxyTimeout (value)
        pure ()


setSpecial1 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial1 object_ a1 = jmethod object_ "setSpecial1" (\() -> (setSpecial1_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial1_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial1_super object_ a1 = (setSpecial1_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial1_impl :: PaymentGateway -> String -> IO (())
setSpecial1_impl this value = do
        jset (this).special1 (value)
        pure ()


setSpecial2 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial2 object_ a1 = jmethod object_ "setSpecial2" (\() -> (setSpecial2_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial2_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial2_super object_ a1 = (setSpecial2_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial2_impl :: PaymentGateway -> String -> IO (())
setSpecial2_impl this value = do
        jset (this).special2 (value)
        pure ()


setSpecial3 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial3 object_ a1 = jmethod object_ "setSpecial3" (\() -> (setSpecial3_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial3_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial3_super object_ a1 = (setSpecial3_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial3_impl :: PaymentGateway -> String -> IO (())
setSpecial3_impl this value = do
        jset (this).special3 (value)
        pure ()


setSpecial4 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial4 object_ a1 = jmethod object_ "setSpecial4" (\() -> (setSpecial4_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial4_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial4_super object_ a1 = (setSpecial4_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial4_impl :: PaymentGateway -> String -> IO (())
setSpecial4_impl this value = do
        jset (this).special4 (value)
        pure ()


setSpecial5 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial5 object_ a1 = jmethod object_ "setSpecial5" (\() -> (setSpecial5_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial5_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial5_super object_ a1 = (setSpecial5_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial5_impl :: PaymentGateway -> String -> IO (())
setSpecial5_impl this value = do
        jset (this).special5 (value)
        pure ()


setSpecial6 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial6 object_ a1 = jmethod object_ "setSpecial6" (\() -> (setSpecial6_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial6_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial6_super object_ a1 = (setSpecial6_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial6_impl :: PaymentGateway -> String -> IO (())
setSpecial6_impl this value = do
        jset (this).special6 (value)
        pure ()


setSpecial7 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial7 object_ a1 = jmethod object_ "setSpecial7" (\() -> (setSpecial7_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial7_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial7_super object_ a1 = (setSpecial7_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial7_impl :: PaymentGateway -> String -> IO (())
setSpecial7_impl this value = do
        jset (this).special7 (value)
        pure ()


setSpecial8 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial8 object_ a1 = jmethod object_ "setSpecial8" (\() -> (setSpecial8_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial8_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial8_super object_ a1 = (setSpecial8_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial8_impl :: PaymentGateway -> String -> IO (())
setSpecial8_impl this value = do
        jset (this).special8 (value)
        pure ()


setSpecial9 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial9 object_ a1 = jmethod object_ "setSpecial9" (\() -> (setSpecial9_impl (javaCast object_ :: PaymentGateway))) () a1

setSpecial9_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial9_super object_ a1 = (setSpecial9_impl (javaCast object_ :: PaymentGateway)) a1

setSpecial9_impl :: PaymentGateway -> String -> IO (())
setSpecial9_impl this value = do
        jset (this).special9 (value)
        pure ()


setLastModified :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified object_ a1 = jmethod object_ "setLastModified" (\() -> (setLastModified_impl (javaCast object_ :: PaymentGateway))) () a1

setLastModified_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified_super object_ a1 = (setLastModified_impl (javaCast object_ :: PaymentGateway)) a1

setLastModified_impl :: PaymentGateway -> String -> IO (())
setLastModified_impl this value = do
        jset (this).lastModified (value)
        pure ()


setTimeEntered :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeEntered object_ a1 = jmethod object_ "setTimeEntered" (\() -> (setTimeEntered_impl (javaCast object_ :: PaymentGateway))) () a1

setTimeEntered_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeEntered_super object_ a1 = (setTimeEntered_impl (javaCast object_ :: PaymentGateway)) a1

setTimeEntered_impl :: PaymentGateway -> String -> IO (())
setTimeEntered_impl this value = do
        jset (this).timeEntered (value)
        pure ()


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: PaymentGateway))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: PaymentGateway))

toHashMap_impl :: PaymentGateway -> IO (HashMap.HashMap)
toHashMap_impl this = do
        (PaymentGateway.toHashMap this True)


-- throws Exception
-- Java overload of toHashMap with a different parameter count: give it a different name
toHashMap :: (JavaObjectClass this_) => this_ -> Bool -> IO (HashMap.HashMap)
toHashMap object_ a1 = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: PaymentGateway))) () a1

toHashMap_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (HashMap.HashMap)
toHashMap_super object_ a1 = (toHashMap_impl (javaCast object_ :: PaymentGateway)) a1

toHashMap_impl :: PaymentGateway -> Bool -> IO (HashMap.HashMap)
toHashMap_impl this isEncrypted = do
        paymentGatewayHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jget ((jio (EntryData.getInstance))).eNABLE) (jget (this).enable))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) (jio (PaymentGateway.getName this)))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (PaymentData.mETHOD) (jget (this).paymentMethod))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.mODE)) (jget (this).mode))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPROTOCOL)) (jget (this).testProtocol))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tESTSERVER)) (jget (this).testServer))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPORT)) (jget (this).testPort))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPATH)) (jget (this).testPath))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPROTOCOL)) (jget (this).serverProtocol))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sERVER)) (jget (this).server))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPORT)) (jget (this).serverPort))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPATH)) (jget (this).serverPath))
        if isEncrypted then do
            superCrypt <- (SuperCrypt.new_1 (PaymentGatewayData.cRYPTNUM))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (UserData.uSERNAME) (jio (SuperCrypt.encrypt superCrypt (jget (this).userName))))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (UserData.pASSWORD) (jio (SuperCrypt.encrypt superCrypt (jget (this).password))))
        else do
            Control.Monad.void (HashMap.put paymentGatewayHashMap (UserData.uSERNAME) (jget (this).userName))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (UserData.pASSWORD) (jget (this).password))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.tIMEOUT)) (jget (this).timeout))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPROTOCOL)) (jget (this).proxyProtocol))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYSERVER)) (jget (this).proxyServer))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPORT)) (jget (this).proxyPort))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPATH)) (jget (this).proxyPath))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYUSERNAME)) (jget (this).proxyUserName))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPASSWORD)) (jget (this).proxyPassword))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYTIMEOUT)) (jget (this).proxyTimeout))
        if isEncrypted then do
            superCrypt <- (SuperCrypt.new_1 (PaymentGatewayData.cRYPTNUM))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL1)) (jio (SuperCrypt.encrypt superCrypt (jget (this).special1))))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL2)) (jio (SuperCrypt.encrypt superCrypt (jget (this).special2))))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL3)) (jio (SuperCrypt.encrypt superCrypt (jget (this).special3))))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL4)) (jio (SuperCrypt.encrypt superCrypt (jget (this).special4))))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL5)) (jio (SuperCrypt.encrypt superCrypt (jget (this).special5))))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL6)) (jio (SuperCrypt.encrypt superCrypt (jget (this).special6))))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL7)) (jio (SuperCrypt.encrypt superCrypt (jget (this).special7))))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL8)) (jio (SuperCrypt.encrypt superCrypt (jget (this).special8))))
        else do
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL1)) (jget (this).special1))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL2)) (jget (this).special2))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL3)) (jget (this).special3))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL4)) (jget (this).special4))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL5)) (jget (this).special5))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL6)) (jget (this).special6))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL7)) (jget (this).special7))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL8)) (jget (this).special8))
            Control.Monad.void (HashMap.put paymentGatewayHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL9)) (jget (this).special9))
        Control.Monad.void (HashMap.put paymentGatewayHashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED) (jget (this).lastModified))
        pure (paymentGatewayHashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: PaymentGateway))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: PaymentGateway))

toVector_impl :: PaymentGateway -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        (PaymentGateway.toVector this True)


-- Java overload of toVector with a different parameter count: give it a different name
toVector :: (JavaObjectClass this_) => this_ -> Bool -> IO (BasicArrayList.BasicArrayList)
toVector object_ a1 = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: PaymentGateway))) () a1

toVector_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ a1 = (toVector_impl (javaCast object_ :: PaymentGateway)) a1

toVector_impl :: PaymentGateway -> Bool -> IO (BasicArrayList.BasicArrayList)
toVector_impl this isEncrypted = do
        updateVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).enable))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).storeName))
        Control.Monad.void (BasicArrayList.add updateVector (jio (PaymentGateway.getName this)))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).paymentMethod))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).mode))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).testProtocol))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).testServer))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).testPort))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).testPath))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).serverProtocol))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).server))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).serverPort))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).serverPath))
        if isEncrypted then do
            superCrypt <- (SuperCrypt.new_1 (PaymentGatewayData.cRYPTNUM))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).userName))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).password))))
        else do
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).userName))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).password))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).timeout))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).proxyProtocol))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).proxyServer))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).proxyPort))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).proxyPath))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).proxyUserName))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).proxyPassword))
        Control.Monad.void (BasicArrayList.add updateVector (jget (this).proxyTimeout))
        if isEncrypted then do
            superCrypt <- (SuperCrypt.new_1 (PaymentGatewayData.cRYPTNUM))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special1))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special2))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special3))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special4))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special5))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special6))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special7))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special8))))
            Control.Monad.void (BasicArrayList.add updateVector (jio (SuperCrypt.encrypt superCrypt (jget (this).special9))))
        else do
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special1))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special2))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special3))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special4))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special5))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special6))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special7))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special8))
            Control.Monad.void (BasicArrayList.add updateVector (jget (this).special9))
        pure (updateVector)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: PaymentGateway))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: PaymentGateway))

getKey_impl :: PaymentGateway -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (PaymentGatewayPrimaryKey.new_2 (jio (PaymentGateway.getStoreName this)) (jio (PaymentGateway.getName this)))) :: Any.Any)))


