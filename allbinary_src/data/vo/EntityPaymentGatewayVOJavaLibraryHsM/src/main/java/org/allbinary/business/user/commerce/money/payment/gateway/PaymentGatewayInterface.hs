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
module PaymentGatewayInterface (module PaymentGatewayInterface, module TableMappingInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getEnable, getEnable_super, getEnable_impl, getStoreName, getStoreName_super, getStoreName_impl, getName, getName_super, getName_impl, getPaymentMethod, getPaymentMethod_super, getPaymentMethod_impl, getMode, getMode_super, getMode_impl, getTestProtocol, getTestProtocol_super, getTestProtocol_impl, getTestServer, getTestServer_super, getTestServer_impl, getTestPort, getTestPort_super, getTestPort_impl, getTestPath, getTestPath_super, getTestPath_impl, getServerProtocol, getServerProtocol_super, getServerProtocol_impl, getServer, getServer_super, getServer_impl, getServerPort, getServerPort_super, getServerPort_impl, getServerPath, getServerPath_super, getServerPath_impl, getUserName, getUserName_super, getUserName_impl, getPassword, getPassword_super, getPassword_impl, getProxyProtocol, getProxyProtocol_super, getProxyProtocol_impl, getProxyServer, getProxyServer_super, getProxyServer_impl, getProxyPath, getProxyPath_super, getProxyPath_impl, getProxyPort, getProxyPort_super, getProxyPort_impl, getProxyUserName, getProxyUserName_super, getProxyUserName_impl, getProxyPassword, getProxyPassword_super, getProxyPassword_impl, getTimeout, getTimeout_super, getTimeout_impl, getProxyTimeout, getProxyTimeout_super, getProxyTimeout_impl, getSpecial1, getSpecial1_super, getSpecial1_impl, getSpecial2, getSpecial2_super, getSpecial2_impl, getSpecial3, getSpecial3_super, getSpecial3_impl, getSpecial4, getSpecial4_super, getSpecial4_impl, getSpecial5, getSpecial5_super, getSpecial5_impl, getSpecial6, getSpecial6_super, getSpecial6_impl, getSpecial7, getSpecial7_super, getSpecial7_impl, getSpecial8, getSpecial8_super, getSpecial8_impl, getSpecial9, getSpecial9_super, getSpecial9_impl, getLastModified, getLastModified_super, getLastModified_impl, getTimeEntered, getTimeEntered_super, getTimeEntered_impl, setEnable, setEnable_super, setEnable_impl, setStoreName, setStoreName_super, setStoreName_impl, setName, setName_super, setName_impl, setPaymentMethod, setPaymentMethod_super, setPaymentMethod_impl, setMode, setMode_super, setMode_impl, setTestProtocol, setTestProtocol_super, setTestProtocol_impl, setTestServer, setTestServer_super, setTestServer_impl, setTestPort, setTestPort_super, setTestPort_impl, setTestPath, setTestPath_super, setTestPath_impl, setServerProtocol, setServerProtocol_super, setServerProtocol_impl, setServer, setServer_super, setServer_impl, setServerPort, setServerPort_super, setServerPort_impl, setServerPath, setServerPath_super, setServerPath_impl, setUserName, setUserName_super, setUserName_impl, setPassword, setPassword_super, setPassword_impl, setProxyProtocol, setProxyProtocol_super, setProxyProtocol_impl, setProxyServer, setProxyServer_super, setProxyServer_impl, setProxyPath, setProxyPath_super, setProxyPath_impl, setProxyPort, setProxyPort_super, setProxyPort_impl, setProxyUserName, setProxyUserName_super, setProxyUserName_impl, setProxyPassword, setProxyPassword_super, setProxyPassword_impl, setTimeout, setTimeout_super, setTimeout_impl, setProxyTimeout, setProxyTimeout_super, setProxyTimeout_impl, setSpecial1, setSpecial1_super, setSpecial1_impl, setSpecial2, setSpecial2_super, setSpecial2_impl, setSpecial3, setSpecial3_super, setSpecial3_impl, setSpecial4, setSpecial4_super, setSpecial4_impl, setSpecial5, setSpecial5_super, setSpecial5_impl, setSpecial6, setSpecial6_super, setSpecial6_impl, setSpecial7, setSpecial7_super, setSpecial7_impl, setSpecial8, setSpecial8_super, setSpecial8_impl, setSpecial9, setSpecial9_super, setSpecial9_impl, setLastModified, setLastModified_super, setLastModified_impl, setTimeEntered, setTimeEntered_super, setTimeEntered_impl, toHashMap, toHashMap_super, toHashMap_impl, toVector, toVector_super, toVector_impl, toString)
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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface

-- Java interface: the classes that implement it have these functions
data PaymentGatewayInterface = PaymentGatewayInterface
    { header_ :: JavaHeader
    }

instance JavaNull PaymentGatewayInterface where
    javaNull = javaNullRecord "PaymentGatewayInterface"

instance JavaEquals PaymentGatewayInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayInterface where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PaymentGatewayInterface
fromHeader_ header = PaymentGatewayInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PaymentGatewayInterface header)
    TableMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getEnable :: (JavaObjectClass this_) => this_ -> IO (String)
getEnable object_ = jmethod object_ "getEnable" (\() -> (getEnable_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getEnable_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEnable_super object_ = (getEnable_impl (javaCast object_ :: PaymentGatewayInterface))

getEnable_impl :: PaymentGatewayInterface -> IO (String)
getEnable_impl this = javaAbstractMethod "getEnable"


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: PaymentGatewayInterface))

getStoreName_impl :: PaymentGatewayInterface -> IO (String)
getStoreName_impl this = javaAbstractMethod "getStoreName"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: PaymentGatewayInterface))

getName_impl :: PaymentGatewayInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getPaymentMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod object_ = jmethod object_ "getPaymentMethod" (\() -> (getPaymentMethod_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getPaymentMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod_super object_ = (getPaymentMethod_impl (javaCast object_ :: PaymentGatewayInterface))

getPaymentMethod_impl :: PaymentGatewayInterface -> IO (String)
getPaymentMethod_impl this = javaAbstractMethod "getPaymentMethod"


getMode :: (JavaObjectClass this_) => this_ -> IO (String)
getMode object_ = jmethod object_ "getMode" (\() -> (getMode_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getMode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMode_super object_ = (getMode_impl (javaCast object_ :: PaymentGatewayInterface))

getMode_impl :: PaymentGatewayInterface -> IO (String)
getMode_impl this = javaAbstractMethod "getMode"


getTestProtocol :: (JavaObjectClass this_) => this_ -> IO (String)
getTestProtocol object_ = jmethod object_ "getTestProtocol" (\() -> (getTestProtocol_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getTestProtocol_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestProtocol_super object_ = (getTestProtocol_impl (javaCast object_ :: PaymentGatewayInterface))

getTestProtocol_impl :: PaymentGatewayInterface -> IO (String)
getTestProtocol_impl this = javaAbstractMethod "getTestProtocol"


getTestServer :: (JavaObjectClass this_) => this_ -> IO (String)
getTestServer object_ = jmethod object_ "getTestServer" (\() -> (getTestServer_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getTestServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestServer_super object_ = (getTestServer_impl (javaCast object_ :: PaymentGatewayInterface))

getTestServer_impl :: PaymentGatewayInterface -> IO (String)
getTestServer_impl this = javaAbstractMethod "getTestServer"


getTestPort :: (JavaObjectClass this_) => this_ -> IO (String)
getTestPort object_ = jmethod object_ "getTestPort" (\() -> (getTestPort_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getTestPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestPort_super object_ = (getTestPort_impl (javaCast object_ :: PaymentGatewayInterface))

getTestPort_impl :: PaymentGatewayInterface -> IO (String)
getTestPort_impl this = javaAbstractMethod "getTestPort"


getTestPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestPath object_ = jmethod object_ "getTestPath" (\() -> (getTestPath_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getTestPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestPath_super object_ = (getTestPath_impl (javaCast object_ :: PaymentGatewayInterface))

getTestPath_impl :: PaymentGatewayInterface -> IO (String)
getTestPath_impl this = javaAbstractMethod "getTestPath"


getServerProtocol :: (JavaObjectClass this_) => this_ -> IO (String)
getServerProtocol object_ = jmethod object_ "getServerProtocol" (\() -> (getServerProtocol_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getServerProtocol_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServerProtocol_super object_ = (getServerProtocol_impl (javaCast object_ :: PaymentGatewayInterface))

getServerProtocol_impl :: PaymentGatewayInterface -> IO (String)
getServerProtocol_impl this = javaAbstractMethod "getServerProtocol"


getServer :: (JavaObjectClass this_) => this_ -> IO (String)
getServer object_ = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServer_super object_ = (getServer_impl (javaCast object_ :: PaymentGatewayInterface))

getServer_impl :: PaymentGatewayInterface -> IO (String)
getServer_impl this = javaAbstractMethod "getServer"


getServerPort :: (JavaObjectClass this_) => this_ -> IO (String)
getServerPort object_ = jmethod object_ "getServerPort" (\() -> (getServerPort_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getServerPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServerPort_super object_ = (getServerPort_impl (javaCast object_ :: PaymentGatewayInterface))

getServerPort_impl :: PaymentGatewayInterface -> IO (String)
getServerPort_impl this = javaAbstractMethod "getServerPort"


getServerPath :: (JavaObjectClass this_) => this_ -> IO (String)
getServerPath object_ = jmethod object_ "getServerPath" (\() -> (getServerPath_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getServerPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServerPath_super object_ = (getServerPath_impl (javaCast object_ :: PaymentGatewayInterface))

getServerPath_impl :: PaymentGatewayInterface -> IO (String)
getServerPath_impl this = javaAbstractMethod "getServerPath"


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: PaymentGatewayInterface))

getUserName_impl :: PaymentGatewayInterface -> IO (String)
getUserName_impl this = javaAbstractMethod "getUserName"


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: PaymentGatewayInterface))

getPassword_impl :: PaymentGatewayInterface -> IO (String)
getPassword_impl this = javaAbstractMethod "getPassword"


getProxyProtocol :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyProtocol object_ = jmethod object_ "getProxyProtocol" (\() -> (getProxyProtocol_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getProxyProtocol_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyProtocol_super object_ = (getProxyProtocol_impl (javaCast object_ :: PaymentGatewayInterface))

getProxyProtocol_impl :: PaymentGatewayInterface -> IO (String)
getProxyProtocol_impl this = javaAbstractMethod "getProxyProtocol"


getProxyServer :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyServer object_ = jmethod object_ "getProxyServer" (\() -> (getProxyServer_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getProxyServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyServer_super object_ = (getProxyServer_impl (javaCast object_ :: PaymentGatewayInterface))

getProxyServer_impl :: PaymentGatewayInterface -> IO (String)
getProxyServer_impl this = javaAbstractMethod "getProxyServer"


getProxyPath :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPath object_ = jmethod object_ "getProxyPath" (\() -> (getProxyPath_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getProxyPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPath_super object_ = (getProxyPath_impl (javaCast object_ :: PaymentGatewayInterface))

getProxyPath_impl :: PaymentGatewayInterface -> IO (String)
getProxyPath_impl this = javaAbstractMethod "getProxyPath"


getProxyPort :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPort object_ = jmethod object_ "getProxyPort" (\() -> (getProxyPort_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getProxyPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPort_super object_ = (getProxyPort_impl (javaCast object_ :: PaymentGatewayInterface))

getProxyPort_impl :: PaymentGatewayInterface -> IO (String)
getProxyPort_impl this = javaAbstractMethod "getProxyPort"


getProxyUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyUserName object_ = jmethod object_ "getProxyUserName" (\() -> (getProxyUserName_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getProxyUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyUserName_super object_ = (getProxyUserName_impl (javaCast object_ :: PaymentGatewayInterface))

getProxyUserName_impl :: PaymentGatewayInterface -> IO (String)
getProxyUserName_impl this = javaAbstractMethod "getProxyUserName"


getProxyPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPassword object_ = jmethod object_ "getProxyPassword" (\() -> (getProxyPassword_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getProxyPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyPassword_super object_ = (getProxyPassword_impl (javaCast object_ :: PaymentGatewayInterface))

getProxyPassword_impl :: PaymentGatewayInterface -> IO (String)
getProxyPassword_impl this = javaAbstractMethod "getProxyPassword"


getTimeout :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout object_ = jmethod object_ "getTimeout" (\() -> (getTimeout_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getTimeout_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout_super object_ = (getTimeout_impl (javaCast object_ :: PaymentGatewayInterface))

getTimeout_impl :: PaymentGatewayInterface -> IO (String)
getTimeout_impl this = javaAbstractMethod "getTimeout"


getProxyTimeout :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyTimeout object_ = jmethod object_ "getProxyTimeout" (\() -> (getProxyTimeout_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getProxyTimeout_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProxyTimeout_super object_ = (getProxyTimeout_impl (javaCast object_ :: PaymentGatewayInterface))

getProxyTimeout_impl :: PaymentGatewayInterface -> IO (String)
getProxyTimeout_impl this = javaAbstractMethod "getProxyTimeout"


getSpecial1 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial1 object_ = jmethod object_ "getSpecial1" (\() -> (getSpecial1_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial1_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial1_super object_ = (getSpecial1_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial1_impl :: PaymentGatewayInterface -> IO (String)
getSpecial1_impl this = javaAbstractMethod "getSpecial1"


getSpecial2 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial2 object_ = jmethod object_ "getSpecial2" (\() -> (getSpecial2_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial2_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial2_super object_ = (getSpecial2_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial2_impl :: PaymentGatewayInterface -> IO (String)
getSpecial2_impl this = javaAbstractMethod "getSpecial2"


getSpecial3 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial3 object_ = jmethod object_ "getSpecial3" (\() -> (getSpecial3_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial3_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial3_super object_ = (getSpecial3_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial3_impl :: PaymentGatewayInterface -> IO (String)
getSpecial3_impl this = javaAbstractMethod "getSpecial3"


getSpecial4 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial4 object_ = jmethod object_ "getSpecial4" (\() -> (getSpecial4_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial4_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial4_super object_ = (getSpecial4_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial4_impl :: PaymentGatewayInterface -> IO (String)
getSpecial4_impl this = javaAbstractMethod "getSpecial4"


getSpecial5 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial5 object_ = jmethod object_ "getSpecial5" (\() -> (getSpecial5_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial5_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial5_super object_ = (getSpecial5_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial5_impl :: PaymentGatewayInterface -> IO (String)
getSpecial5_impl this = javaAbstractMethod "getSpecial5"


getSpecial6 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial6 object_ = jmethod object_ "getSpecial6" (\() -> (getSpecial6_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial6_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial6_super object_ = (getSpecial6_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial6_impl :: PaymentGatewayInterface -> IO (String)
getSpecial6_impl this = javaAbstractMethod "getSpecial6"


getSpecial7 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial7 object_ = jmethod object_ "getSpecial7" (\() -> (getSpecial7_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial7_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial7_super object_ = (getSpecial7_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial7_impl :: PaymentGatewayInterface -> IO (String)
getSpecial7_impl this = javaAbstractMethod "getSpecial7"


getSpecial8 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial8 object_ = jmethod object_ "getSpecial8" (\() -> (getSpecial8_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial8_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial8_super object_ = (getSpecial8_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial8_impl :: PaymentGatewayInterface -> IO (String)
getSpecial8_impl this = javaAbstractMethod "getSpecial8"


getSpecial9 :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial9 object_ = jmethod object_ "getSpecial9" (\() -> (getSpecial9_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getSpecial9_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial9_super object_ = (getSpecial9_impl (javaCast object_ :: PaymentGatewayInterface))

getSpecial9_impl :: PaymentGatewayInterface -> IO (String)
getSpecial9_impl this = javaAbstractMethod "getSpecial9"


getLastModified :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified object_ = jmethod object_ "getLastModified" (\() -> (getLastModified_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getLastModified_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified_super object_ = (getLastModified_impl (javaCast object_ :: PaymentGatewayInterface))

getLastModified_impl :: PaymentGatewayInterface -> IO (String)
getLastModified_impl this = javaAbstractMethod "getLastModified"


getTimeEntered :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeEntered object_ = jmethod object_ "getTimeEntered" (\() -> (getTimeEntered_impl (javaCast object_ :: PaymentGatewayInterface))) ()

getTimeEntered_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeEntered_super object_ = (getTimeEntered_impl (javaCast object_ :: PaymentGatewayInterface))

getTimeEntered_impl :: PaymentGatewayInterface -> IO (String)
getTimeEntered_impl this = javaAbstractMethod "getTimeEntered"


setEnable :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable object_ a1 = jmethod object_ "setEnable" (\() -> (setEnable_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setEnable_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable_super object_ a1 = (setEnable_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setEnable_impl :: PaymentGatewayInterface -> String -> IO (())
setEnable_impl this value = javaAbstractMethod "setEnable"


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setStoreName_impl :: PaymentGatewayInterface -> String -> IO (())
setStoreName_impl this value = javaAbstractMethod "setStoreName"


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setName_impl :: PaymentGatewayInterface -> String -> IO (())
setName_impl this value = javaAbstractMethod "setName"


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod object_ a1 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod_super object_ a1 = (setPaymentMethod_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setPaymentMethod_impl :: PaymentGatewayInterface -> String -> IO (())
setPaymentMethod_impl this value = javaAbstractMethod "setPaymentMethod"


setMode :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMode object_ a1 = jmethod object_ "setMode" (\() -> (setMode_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setMode_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMode_super object_ a1 = (setMode_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setMode_impl :: PaymentGatewayInterface -> String -> IO (())
setMode_impl this value = javaAbstractMethod "setMode"


setTestProtocol :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestProtocol object_ a1 = jmethod object_ "setTestProtocol" (\() -> (setTestProtocol_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setTestProtocol_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestProtocol_super object_ a1 = (setTestProtocol_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setTestProtocol_impl :: PaymentGatewayInterface -> String -> IO (())
setTestProtocol_impl this value = javaAbstractMethod "setTestProtocol"


setTestServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestServer object_ a1 = jmethod object_ "setTestServer" (\() -> (setTestServer_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setTestServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestServer_super object_ a1 = (setTestServer_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setTestServer_impl :: PaymentGatewayInterface -> String -> IO (())
setTestServer_impl this value = javaAbstractMethod "setTestServer"


setTestPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestPort object_ a1 = jmethod object_ "setTestPort" (\() -> (setTestPort_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setTestPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestPort_super object_ a1 = (setTestPort_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setTestPort_impl :: PaymentGatewayInterface -> String -> IO (())
setTestPort_impl this value = javaAbstractMethod "setTestPort"


setTestPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestPath object_ a1 = jmethod object_ "setTestPath" (\() -> (setTestPath_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setTestPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestPath_super object_ a1 = (setTestPath_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setTestPath_impl :: PaymentGatewayInterface -> String -> IO (())
setTestPath_impl this value = javaAbstractMethod "setTestPath"


setServerProtocol :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerProtocol object_ a1 = jmethod object_ "setServerProtocol" (\() -> (setServerProtocol_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setServerProtocol_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerProtocol_super object_ a1 = (setServerProtocol_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setServerProtocol_impl :: PaymentGatewayInterface -> String -> IO (())
setServerProtocol_impl this value = javaAbstractMethod "setServerProtocol"


setServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer object_ a1 = jmethod object_ "setServer" (\() -> (setServer_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServer_super object_ a1 = (setServer_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setServer_impl :: PaymentGatewayInterface -> String -> IO (())
setServer_impl this value = javaAbstractMethod "setServer"


setServerPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerPort object_ a1 = jmethod object_ "setServerPort" (\() -> (setServerPort_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setServerPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerPort_super object_ a1 = (setServerPort_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setServerPort_impl :: PaymentGatewayInterface -> String -> IO (())
setServerPort_impl this value = javaAbstractMethod "setServerPort"


setServerPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerPath object_ a1 = jmethod object_ "setServerPath" (\() -> (setServerPath_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setServerPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setServerPath_super object_ a1 = (setServerPath_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setServerPath_impl :: PaymentGatewayInterface -> String -> IO (())
setServerPath_impl this value = javaAbstractMethod "setServerPath"


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setUserName_impl :: PaymentGatewayInterface -> String -> IO (())
setUserName_impl this value = javaAbstractMethod "setUserName"


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setPassword_impl :: PaymentGatewayInterface -> String -> IO (())
setPassword_impl this value = javaAbstractMethod "setPassword"


setProxyProtocol :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyProtocol object_ a1 = jmethod object_ "setProxyProtocol" (\() -> (setProxyProtocol_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setProxyProtocol_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyProtocol_super object_ a1 = (setProxyProtocol_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setProxyProtocol_impl :: PaymentGatewayInterface -> String -> IO (())
setProxyProtocol_impl this value = javaAbstractMethod "setProxyProtocol"


setProxyServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyServer object_ a1 = jmethod object_ "setProxyServer" (\() -> (setProxyServer_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setProxyServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyServer_super object_ a1 = (setProxyServer_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setProxyServer_impl :: PaymentGatewayInterface -> String -> IO (())
setProxyServer_impl this value = javaAbstractMethod "setProxyServer"


setProxyPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPath object_ a1 = jmethod object_ "setProxyPath" (\() -> (setProxyPath_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setProxyPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPath_super object_ a1 = (setProxyPath_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setProxyPath_impl :: PaymentGatewayInterface -> String -> IO (())
setProxyPath_impl this value = javaAbstractMethod "setProxyPath"


setProxyPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPort object_ a1 = jmethod object_ "setProxyPort" (\() -> (setProxyPort_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setProxyPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPort_super object_ a1 = (setProxyPort_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setProxyPort_impl :: PaymentGatewayInterface -> String -> IO (())
setProxyPort_impl this value = javaAbstractMethod "setProxyPort"


setProxyUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyUserName object_ a1 = jmethod object_ "setProxyUserName" (\() -> (setProxyUserName_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setProxyUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyUserName_super object_ a1 = (setProxyUserName_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setProxyUserName_impl :: PaymentGatewayInterface -> String -> IO (())
setProxyUserName_impl this value = javaAbstractMethod "setProxyUserName"


setProxyPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPassword object_ a1 = jmethod object_ "setProxyPassword" (\() -> (setProxyPassword_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setProxyPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyPassword_super object_ a1 = (setProxyPassword_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setProxyPassword_impl :: PaymentGatewayInterface -> String -> IO (())
setProxyPassword_impl this value = javaAbstractMethod "setProxyPassword"


setTimeout :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout object_ a1 = jmethod object_ "setTimeout" (\() -> (setTimeout_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setTimeout_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout_super object_ a1 = (setTimeout_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setTimeout_impl :: PaymentGatewayInterface -> String -> IO (())
setTimeout_impl this value = javaAbstractMethod "setTimeout"


setProxyTimeout :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyTimeout object_ a1 = jmethod object_ "setProxyTimeout" (\() -> (setProxyTimeout_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setProxyTimeout_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProxyTimeout_super object_ a1 = (setProxyTimeout_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setProxyTimeout_impl :: PaymentGatewayInterface -> String -> IO (())
setProxyTimeout_impl this value = javaAbstractMethod "setProxyTimeout"


setSpecial1 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial1 object_ a1 = jmethod object_ "setSpecial1" (\() -> (setSpecial1_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial1_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial1_super object_ a1 = (setSpecial1_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial1_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial1_impl this value = javaAbstractMethod "setSpecial1"


setSpecial2 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial2 object_ a1 = jmethod object_ "setSpecial2" (\() -> (setSpecial2_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial2_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial2_super object_ a1 = (setSpecial2_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial2_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial2_impl this value = javaAbstractMethod "setSpecial2"


setSpecial3 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial3 object_ a1 = jmethod object_ "setSpecial3" (\() -> (setSpecial3_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial3_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial3_super object_ a1 = (setSpecial3_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial3_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial3_impl this value = javaAbstractMethod "setSpecial3"


setSpecial4 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial4 object_ a1 = jmethod object_ "setSpecial4" (\() -> (setSpecial4_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial4_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial4_super object_ a1 = (setSpecial4_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial4_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial4_impl this value = javaAbstractMethod "setSpecial4"


setSpecial5 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial5 object_ a1 = jmethod object_ "setSpecial5" (\() -> (setSpecial5_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial5_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial5_super object_ a1 = (setSpecial5_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial5_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial5_impl this value = javaAbstractMethod "setSpecial5"


setSpecial6 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial6 object_ a1 = jmethod object_ "setSpecial6" (\() -> (setSpecial6_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial6_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial6_super object_ a1 = (setSpecial6_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial6_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial6_impl this value = javaAbstractMethod "setSpecial6"


setSpecial7 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial7 object_ a1 = jmethod object_ "setSpecial7" (\() -> (setSpecial7_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial7_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial7_super object_ a1 = (setSpecial7_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial7_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial7_impl this value = javaAbstractMethod "setSpecial7"


setSpecial8 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial8 object_ a1 = jmethod object_ "setSpecial8" (\() -> (setSpecial8_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial8_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial8_super object_ a1 = (setSpecial8_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial8_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial8_impl this value = javaAbstractMethod "setSpecial8"


setSpecial9 :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial9 object_ a1 = jmethod object_ "setSpecial9" (\() -> (setSpecial9_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setSpecial9_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial9_super object_ a1 = (setSpecial9_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setSpecial9_impl :: PaymentGatewayInterface -> String -> IO (())
setSpecial9_impl this value = javaAbstractMethod "setSpecial9"


setLastModified :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified object_ a1 = jmethod object_ "setLastModified" (\() -> (setLastModified_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setLastModified_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified_super object_ a1 = (setLastModified_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setLastModified_impl :: PaymentGatewayInterface -> String -> IO (())
setLastModified_impl this value = javaAbstractMethod "setLastModified"


setTimeEntered :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeEntered object_ a1 = jmethod object_ "setTimeEntered" (\() -> (setTimeEntered_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

setTimeEntered_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeEntered_super object_ a1 = (setTimeEntered_impl (javaCast object_ :: PaymentGatewayInterface)) a1

setTimeEntered_impl :: PaymentGatewayInterface -> String -> IO (())
setTimeEntered_impl this value = javaAbstractMethod "setTimeEntered"


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> Bool -> IO (HashMap.HashMap)
toHashMap object_ a1 = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

toHashMap_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (HashMap.HashMap)
toHashMap_super object_ a1 = (toHashMap_impl (javaCast object_ :: PaymentGatewayInterface)) a1

toHashMap_impl :: PaymentGatewayInterface -> Bool -> IO (HashMap.HashMap)
toHashMap_impl this isEncrypted = javaAbstractMethod "toHashMap"


toVector :: (JavaObjectClass this_) => this_ -> Bool -> IO (BasicArrayList.BasicArrayList)
toVector object_ a1 = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: PaymentGatewayInterface))) () a1

toVector_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ a1 = (toVector_impl (javaCast object_ :: PaymentGatewayInterface)) a1

toVector_impl :: PaymentGatewayInterface -> Bool -> IO (BasicArrayList.BasicArrayList)
toVector_impl this isEncrypted = javaAbstractMethod "toVector"


