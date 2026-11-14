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
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
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

cRYPTNUM :: Int
cRYPTNUM = 5

iD :: PaymentGatewayData
{-# NOINLINE iD #-}
iD = unsafePerformIO ((new_1 "PAYMENTGATEWAY_ID"))

nAME :: PaymentGatewayData
{-# NOINLINE nAME #-}
nAME = unsafePerformIO ((new_1 "PAYMENTGATEWAY_NAME"))

vALUE :: PaymentGatewayData
{-# NOINLINE vALUE #-}
vALUE = unsafePerformIO ((new_1 "PAYMENTGATEWAY_VALUE"))

pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE :: PaymentGatewayData
{-# NOINLINE pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE #-}
pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE = unsafePerformIO ((new_1 "PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE"))

pAYMENTPROCESSORINTERFACEFACTORYINTERFACE :: PaymentGatewayData
{-# NOINLINE pAYMENTPROCESSORINTERFACEFACTORYINTERFACE #-}
pAYMENTPROCESSORINTERFACEFACTORYINTERFACE = unsafePerformIO ((new_1 "PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE"))

mODE :: PaymentGatewayData
{-# NOINLINE mODE #-}
mODE = unsafePerformIO ((new_1 "MODE"))

sERVERPROTOCOL :: PaymentGatewayData
{-# NOINLINE sERVERPROTOCOL #-}
sERVERPROTOCOL = unsafePerformIO ((new_1 "SERVERPROTOCOL"))

sERVER :: PaymentGatewayData
{-# NOINLINE sERVER #-}
sERVER = unsafePerformIO ((new_1 "SERVER"))

sERVERPORT :: PaymentGatewayData
{-# NOINLINE sERVERPORT #-}
sERVERPORT = unsafePerformIO ((new_1 "SERVERPORT"))

sERVERPATH :: PaymentGatewayData
{-# NOINLINE sERVERPATH #-}
sERVERPATH = unsafePerformIO ((new_1 "SERVERPATH"))

tESTPROTOCOL :: PaymentGatewayData
{-# NOINLINE tESTPROTOCOL #-}
tESTPROTOCOL = unsafePerformIO ((new_1 "TESTSERVERPROTOCOL"))

tESTSERVER :: PaymentGatewayData
{-# NOINLINE tESTSERVER #-}
tESTSERVER = unsafePerformIO ((new_1 "TESTSERVER"))

tESTPORT :: PaymentGatewayData
{-# NOINLINE tESTPORT #-}
tESTPORT = unsafePerformIO ((new_1 "TESTPORT"))

tESTPATH :: PaymentGatewayData
{-# NOINLINE tESTPATH #-}
tESTPATH = unsafePerformIO ((new_1 "TESTSERVERPATH"))

tIMEOUT :: PaymentGatewayData
{-# NOINLINE tIMEOUT #-}
tIMEOUT = unsafePerformIO ((new_1 "TIMEOUT"))

pROXYPROTOCOL :: PaymentGatewayData
{-# NOINLINE pROXYPROTOCOL #-}
pROXYPROTOCOL = unsafePerformIO ((new_1 "PROXYPROTOCOL"))

pROXYSERVER :: PaymentGatewayData
{-# NOINLINE pROXYSERVER #-}
pROXYSERVER = unsafePerformIO ((new_1 "PROXYSERVER"))

pROXYPATH :: PaymentGatewayData
{-# NOINLINE pROXYPATH #-}
pROXYPATH = unsafePerformIO ((new_1 "PROXYPATH"))

pROXYUSERNAME :: PaymentGatewayData
{-# NOINLINE pROXYUSERNAME #-}
pROXYUSERNAME = unsafePerformIO ((new_1 "PROXYUSERNAME"))

pROXYPASSWORD :: PaymentGatewayData
{-# NOINLINE pROXYPASSWORD #-}
pROXYPASSWORD = unsafePerformIO ((new_1 "PROXYPASSWORD"))

pROXYPORT :: PaymentGatewayData
{-# NOINLINE pROXYPORT #-}
pROXYPORT = unsafePerformIO ((new_1 "PROXYPORT"))

pROXYTIMEOUT :: PaymentGatewayData
{-# NOINLINE pROXYTIMEOUT #-}
pROXYTIMEOUT = unsafePerformIO ((new_1 "PROXYTIMEOUT"))

sPECIAL1 :: PaymentGatewayData
{-# NOINLINE sPECIAL1 #-}
sPECIAL1 = unsafePerformIO ((new_1 "SPECIAL1"))

sPECIAL2 :: PaymentGatewayData
{-# NOINLINE sPECIAL2 #-}
sPECIAL2 = unsafePerformIO ((new_1 "SPECIAL2"))

sPECIAL3 :: PaymentGatewayData
{-# NOINLINE sPECIAL3 #-}
sPECIAL3 = unsafePerformIO ((new_1 "SPECIAL3"))

sPECIAL4 :: PaymentGatewayData
{-# NOINLINE sPECIAL4 #-}
sPECIAL4 = unsafePerformIO ((new_1 "SPECIAL4"))

sPECIAL5 :: PaymentGatewayData
{-# NOINLINE sPECIAL5 #-}
sPECIAL5 = unsafePerformIO ((new_1 "SPECIAL5"))

sPECIAL6 :: PaymentGatewayData
{-# NOINLINE sPECIAL6 #-}
sPECIAL6 = unsafePerformIO ((new_1 "SPECIAL6"))

sPECIAL7 :: PaymentGatewayData
{-# NOINLINE sPECIAL7 #-}
sPECIAL7 = unsafePerformIO ((new_1 "SPECIAL7"))

sPECIAL8 :: PaymentGatewayData
{-# NOINLINE sPECIAL8 #-}
sPECIAL8 = unsafePerformIO ((new_1 "SPECIAL8"))

sPECIAL9 :: PaymentGatewayData
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


