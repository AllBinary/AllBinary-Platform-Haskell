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
module PaymentGatewayData where

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

data PaymentGatewayData = PaymentGatewayData
    { header_ :: JavaHeader
    , key :: IORef (String)
    }

instance JavaNull PaymentGatewayData where
    javaNull = javaNullRecord "PaymentGatewayData"

instance JavaEquals PaymentGatewayData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayData where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

cRYPTNUM = 5

{-# NOINLINE iD #-}
iD = unsafePerformIO ((new_1 "PAYMENTGATEWAY_ID"))

{-# NOINLINE nAME #-}
nAME = unsafePerformIO ((new_1 "PAYMENTGATEWAY_NAME"))

{-# NOINLINE vALUE #-}
vALUE = unsafePerformIO ((new_1 "PAYMENTGATEWAY_VALUE"))

{-# NOINLINE pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE #-}
pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE = unsafePerformIO ((new_1 "PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE"))

{-# NOINLINE pAYMENTPROCESSORINTERFACEFACTORYINTERFACE #-}
pAYMENTPROCESSORINTERFACEFACTORYINTERFACE = unsafePerformIO ((new_1 "PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE"))

{-# NOINLINE mODE #-}
mODE = unsafePerformIO ((new_1 "MODE"))

{-# NOINLINE sERVERPROTOCOL #-}
sERVERPROTOCOL = unsafePerformIO ((new_1 "SERVERPROTOCOL"))

{-# NOINLINE sERVER #-}
sERVER = unsafePerformIO ((new_1 "SERVER"))

{-# NOINLINE sERVERPORT #-}
sERVERPORT = unsafePerformIO ((new_1 "SERVERPORT"))

{-# NOINLINE sERVERPATH #-}
sERVERPATH = unsafePerformIO ((new_1 "SERVERPATH"))

{-# NOINLINE tESTPROTOCOL #-}
tESTPROTOCOL = unsafePerformIO ((new_1 "TESTSERVERPROTOCOL"))

{-# NOINLINE tESTSERVER #-}
tESTSERVER = unsafePerformIO ((new_1 "TESTSERVER"))

{-# NOINLINE tESTPORT #-}
tESTPORT = unsafePerformIO ((new_1 "TESTPORT"))

{-# NOINLINE tESTPATH #-}
tESTPATH = unsafePerformIO ((new_1 "TESTSERVERPATH"))

{-# NOINLINE tIMEOUT #-}
tIMEOUT = unsafePerformIO ((new_1 "TIMEOUT"))

{-# NOINLINE pROXYPROTOCOL #-}
pROXYPROTOCOL = unsafePerformIO ((new_1 "PROXYPROTOCOL"))

{-# NOINLINE pROXYSERVER #-}
pROXYSERVER = unsafePerformIO ((new_1 "PROXYSERVER"))

{-# NOINLINE pROXYPATH #-}
pROXYPATH = unsafePerformIO ((new_1 "PROXYPATH"))

{-# NOINLINE pROXYUSERNAME #-}
pROXYUSERNAME = unsafePerformIO ((new_1 "PROXYUSERNAME"))

{-# NOINLINE pROXYPASSWORD #-}
pROXYPASSWORD = unsafePerformIO ((new_1 "PROXYPASSWORD"))

{-# NOINLINE pROXYPORT #-}
pROXYPORT = unsafePerformIO ((new_1 "PROXYPORT"))

{-# NOINLINE pROXYTIMEOUT #-}
pROXYTIMEOUT = unsafePerformIO ((new_1 "PROXYTIMEOUT"))

{-# NOINLINE sPECIAL1 #-}
sPECIAL1 = unsafePerformIO ((new_1 "SPECIAL1"))

{-# NOINLINE sPECIAL2 #-}
sPECIAL2 = unsafePerformIO ((new_1 "SPECIAL2"))

{-# NOINLINE sPECIAL3 #-}
sPECIAL3 = unsafePerformIO ((new_1 "SPECIAL3"))

{-# NOINLINE sPECIAL4 #-}
sPECIAL4 = unsafePerformIO ((new_1 "SPECIAL4"))

{-# NOINLINE sPECIAL5 #-}
sPECIAL5 = unsafePerformIO ((new_1 "SPECIAL5"))

{-# NOINLINE sPECIAL6 #-}
sPECIAL6 = unsafePerformIO ((new_1 "SPECIAL6"))

{-# NOINLINE sPECIAL7 #-}
sPECIAL7 = unsafePerformIO ((new_1 "SPECIAL7"))

{-# NOINLINE sPECIAL8 #-}
sPECIAL8 = unsafePerformIO ((new_1 "SPECIAL8"))

{-# NOINLINE sPECIAL9 #-}
sPECIAL9 = unsafePerformIO ((new_1 "SPECIAL9"))

newRecord_ :: IO PaymentGatewayData
newRecord_ = do
    header_ <- newJavaHeader
    key <- newIORef ""
    let this = PaymentGatewayData header_ key
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PaymentGatewayData -> IO ()
initFields_ this = do
    jset this.key (javaNull)
    pure ()

new_1 :: String -> IO PaymentGatewayData
new_1 value = do
    this <- newRecord_
    init_1 this value
    pure this

init_1 :: PaymentGatewayData -> String -> IO ()
init_1 this value = do
        initFields_ this
        jset (this).key (value)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PaymentGatewayData))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PaymentGatewayData))

toString_impl :: PaymentGatewayData -> IO (String)
toString_impl this = do
        pure ((jget (this).key))


