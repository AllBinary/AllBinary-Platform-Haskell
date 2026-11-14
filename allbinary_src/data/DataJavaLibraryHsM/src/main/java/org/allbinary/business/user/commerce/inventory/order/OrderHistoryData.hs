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
-- package org.allbinary.business.user.commerce.inventory.order
module OrderHistoryData where

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

data OrderHistoryData = OrderHistoryData
    { header_ :: JavaHeader
    }

instance JavaNull OrderHistoryData where
    javaNull = javaNullRecord "OrderHistoryData"

instance JavaEquals OrderHistoryData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryData where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAXIDLEN :: IORef (Int)
{-# NOINLINE mAXIDLEN #-}
mAXIDLEN = unsafePerformIO (newIORef (19))

dATEDELTA :: String
dATEDELTA = "DATE_DELTA"

dATETYPE :: String
dATETYPE = "DATE_TYPE"

tYPELONG :: String
tYPELONG = "TYPE_LONG"

tYPECAESAR :: String
tYPECAESAR = "TYPE_CAESAR"

tODATE :: String
tODATE = "TO_DATE"

fROMHOUR :: String
fROMHOUR = "FROM_HOUR"

fROMDAY :: String
fROMDAY = "FROM_DAY"

fROMMONTH :: String
fROMMONTH = "FROM_MONTH"

fROMYEAR :: String
fROMYEAR = "FROM_YEAR"

tOHOUR :: String
tOHOUR = "TO_HOUR"

tODAY :: String
tODAY = "TO_DAY"

tOMONTH :: String
tOMONTH = "TO_MONTH"

tOYEAR :: String
tOYEAR = "TO_YEAR"

oRDERHISTORY :: String
oRDERHISTORY = "ORDERHISTORY"

sHIPPEDDATE :: String
sHIPPEDDATE = "ORDERHISTORY_SHIPPED_DATE"

oRDERDATE :: String
oRDERDATE = "ORDERHISTORY_ORDER_DATE"

tRANSDATE :: String
tRANSDATE = "ORDERHISTORY_TRANS_DATE"

cANCELDATE :: String
cANCELDATE = "ORDERHISTORY_CANCEL_DATE"

sHIPPEDDATEFORMATTED :: String
sHIPPEDDATEFORMATTED = "ORDERHISTORY_SHIPPED_DATE_FORMATTED"

oRDERDATEFORMATTED :: String
oRDERDATEFORMATTED = "ORDERHISTORY_ORDER_DATE_FORMATTED"

tRANSDATEFORMATTED :: String
tRANSDATEFORMATTED = "ORDERHISTORY_TRANS_DATE_FORMATTED"

cANCELDATEFORMATTED :: String
cANCELDATEFORMATTED = "ORDERHISTORY_CANCEL_DATE_FORMATTED"

sUBTOTAL :: String
sUBTOTAL = "ORDERHISTORY_SUB_TOTAL"

sHIPPINGCOST :: String
sHIPPINGCOST = "ORDERHISTORY_SHIPPING_COST"

tAX :: String
tAX = "ORDERHISTORY_TAX"

tOTAL :: String
tOTAL = "ORDERHISTORY_TOTAL"

cANCELINFO :: String
cANCELINFO = "ORDERHISTORY_CANCEL_INFO"

cANCELTYPE :: String
cANCELTYPE = "ORDERHISTORY_CANCEL_TYPE"

sTATUS :: String
sTATUS = "ORDERHISTORY_STATUS"

pREPROCESSINGNAME :: String
pREPROCESSINGNAME = "PREPROCESSING"

pROCESSINGNAME :: String
pROCESSINGNAME = "PROCESSING"

cANCELLEDNAME :: String
cANCELLEDNAME = "CANCELLED"

pARTIALLYSHIPPEDNAME :: String
pARTIALLYSHIPPEDNAME = "PARTIALLYSHIPPED"

sHIPPEDNAME :: String
sHIPPEDNAME = "SHIPPED"

pREPROCESSING :: String
pREPROCESSING = "Order Preprocessing"

pROCESSING :: String
pROCESSING = "Order Processing"

cANCELLED :: String
cANCELLED = "Order Cancelled"

pARTIALLYSHIPPED :: String
pARTIALLYSHIPPED = "Order Partially Shipped"

sHIPPED :: String
sHIPPED = "Order Shipped"

sETSTATUS :: String
sETSTATUS = "Set Status"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO OrderHistoryData
newRecord_ = do
    header_ <- newJavaHeader
    let this = OrderHistoryData header_
    jregisterLevel header_ this
    pure this

initFields_ :: OrderHistoryData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OrderHistoryData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderHistoryData -> IO ()
init_ this = do
    initFields_ this


