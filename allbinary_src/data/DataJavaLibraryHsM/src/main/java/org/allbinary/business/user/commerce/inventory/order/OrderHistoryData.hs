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

{-# NOINLINE mAXIDLEN #-}
mAXIDLEN = unsafePerformIO (newIORef (19))

dATEDELTA = "DATE_DELTA"

dATETYPE = "DATE_TYPE"

tYPELONG = "TYPE_LONG"

tYPECAESAR = "TYPE_CAESAR"

tODATE = "TO_DATE"

fROMHOUR = "FROM_HOUR"

fROMDAY = "FROM_DAY"

fROMMONTH = "FROM_MONTH"

fROMYEAR = "FROM_YEAR"

tOHOUR = "TO_HOUR"

tODAY = "TO_DAY"

tOMONTH = "TO_MONTH"

tOYEAR = "TO_YEAR"

oRDERHISTORY = "ORDERHISTORY"

sHIPPEDDATE = "ORDERHISTORY_SHIPPED_DATE"

oRDERDATE = "ORDERHISTORY_ORDER_DATE"

tRANSDATE = "ORDERHISTORY_TRANS_DATE"

cANCELDATE = "ORDERHISTORY_CANCEL_DATE"

sHIPPEDDATEFORMATTED = "ORDERHISTORY_SHIPPED_DATE_FORMATTED"

oRDERDATEFORMATTED = "ORDERHISTORY_ORDER_DATE_FORMATTED"

tRANSDATEFORMATTED = "ORDERHISTORY_TRANS_DATE_FORMATTED"

cANCELDATEFORMATTED = "ORDERHISTORY_CANCEL_DATE_FORMATTED"

sUBTOTAL = "ORDERHISTORY_SUB_TOTAL"

sHIPPINGCOST = "ORDERHISTORY_SHIPPING_COST"

tAX = "ORDERHISTORY_TAX"

tOTAL = "ORDERHISTORY_TOTAL"

cANCELINFO = "ORDERHISTORY_CANCEL_INFO"

cANCELTYPE = "ORDERHISTORY_CANCEL_TYPE"

sTATUS = "ORDERHISTORY_STATUS"

pREPROCESSINGNAME = "PREPROCESSING"

pROCESSINGNAME = "PROCESSING"

cANCELLEDNAME = "CANCELLED"

pARTIALLYSHIPPEDNAME = "PARTIALLYSHIPPED"

sHIPPEDNAME = "SHIPPED"

pREPROCESSING = "Order Preprocessing"

pROCESSING = "Order Processing"

cANCELLED = "Order Cancelled"

pARTIALLYSHIPPED = "Order Partially Shipped"

sHIPPED = "Order Shipped"

sETSTATUS = "Set Status"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

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


