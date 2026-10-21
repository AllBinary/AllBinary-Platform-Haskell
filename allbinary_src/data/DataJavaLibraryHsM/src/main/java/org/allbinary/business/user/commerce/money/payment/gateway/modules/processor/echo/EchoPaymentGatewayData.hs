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
-- package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo
module EchoPaymentGatewayData where

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

data EchoPaymentGatewayData = EchoPaymentGatewayData
    { header_ :: JavaHeader
    }

instance JavaNull EchoPaymentGatewayData where
    javaNull = javaNullRecord "EchoPaymentGatewayData"

instance JavaEquals EchoPaymentGatewayData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EchoPaymentGatewayData where
    (==) = jrecordEquals

instance JavaObjectClass EchoPaymentGatewayData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE tRANSACTION_TYPE #-}
tRANSACTION_TYPE = unsafePerformIO (newIORef ("transaction_type"))

{-# NOINLINE mERCHANT_ECHO_ID #-}
mERCHANT_ECHO_ID = unsafePerformIO (newIORef ("merchant_echo_id"))

{-# NOINLINE oRDER_TYPE #-}
oRDER_TYPE = unsafePerformIO (newIORef ("order_type"))

{-# NOINLINE mERCHANT_PIN #-}
mERCHANT_PIN = unsafePerformIO (newIORef ("merchant_pin"))

{-# NOINLINE iSP_ECHO_ID #-}
iSP_ECHO_ID = unsafePerformIO (newIORef ("isp_echo_id"))

{-# NOINLINE iSP_PIN #-}
iSP_PIN = unsafePerformIO (newIORef ("isp_pin"))

{-# NOINLINE bILLING_IP_ADDRESS #-}
bILLING_IP_ADDRESS = unsafePerformIO (newIORef ("billing_ip_address"))

{-# NOINLINE mERCHANT_EMAIL #-}
mERCHANT_EMAIL = unsafePerformIO (newIORef ("merchant_email"))

{-# NOINLINE aUTHORIZATION #-}
aUTHORIZATION = unsafePerformIO (newIORef ("authorization"))

{-# NOINLINE bILLING_PREFIX #-}
bILLING_PREFIX = unsafePerformIO (newIORef ("billing_prefix"))

{-# NOINLINE bILLING_NAME #-}
bILLING_NAME = unsafePerformIO (newIORef ("billing_name"))

{-# NOINLINE bILLING_FIRST_NAME #-}
bILLING_FIRST_NAME = unsafePerformIO (newIORef ("billing_first_name"))

{-# NOINLINE bILLING_LAST_NAME #-}
bILLING_LAST_NAME = unsafePerformIO (newIORef ("billing_last_name"))

{-# NOINLINE bILLING_COMPANY_NAME #-}
bILLING_COMPANY_NAME = unsafePerformIO (newIORef ("billing_company_name"))

{-# NOINLINE bILLING_ADDRESS1 #-}
bILLING_ADDRESS1 = unsafePerformIO (newIORef ("billing_address1"))

{-# NOINLINE bILLING_ADDRESS2 #-}
bILLING_ADDRESS2 = unsafePerformIO (newIORef ("billing_address2"))

{-# NOINLINE bILLING_CITY #-}
bILLING_CITY = unsafePerformIO (newIORef ("billing_city"))

{-# NOINLINE bILLING_STATE #-}
bILLING_STATE = unsafePerformIO (newIORef ("billing_state"))

{-# NOINLINE bILLING_ZIP #-}
bILLING_ZIP = unsafePerformIO (newIORef ("billing_zip"))

{-# NOINLINE bILLING_COUNTRY #-}
bILLING_COUNTRY = unsafePerformIO (newIORef ("billing_country"))

{-# NOINLINE bILLING_PHONE #-}
bILLING_PHONE = unsafePerformIO (newIORef ("billing_phone"))

{-# NOINLINE bILLING_FAX #-}
bILLING_FAX = unsafePerformIO (newIORef ("billing_fax"))

{-# NOINLINE bILLING_EMAIL #-}
bILLING_EMAIL = unsafePerformIO (newIORef ("billing_email"))

{-# NOINLINE cC_NUMBER #-}
cC_NUMBER = unsafePerformIO (newIORef ("cc_number"))

{-# NOINLINE cCEXP_MONTH #-}
cCEXP_MONTH = unsafePerformIO (newIORef ("ccexp_month"))

{-# NOINLINE cCEXP_YEAR #-}
cCEXP_YEAR = unsafePerformIO (newIORef ("ccexp_year"))

{-# NOINLINE cNP_RECURRING #-}
cNP_RECURRING = unsafePerformIO (newIORef ("cnp_recurring"))

{-# NOINLINE cnp_security #-}
cnp_security = unsafePerformIO (newIORef ("cnp_security"))

{-# NOINLINE cOUNTER #-}
cOUNTER = unsafePerformIO (newIORef ("counter"))

{-# NOINLINE dEBUG #-}
dEBUG = unsafePerformIO (newIORef ("debug"))

{-# NOINLINE eC_ACCOUNT #-}
eC_ACCOUNT = unsafePerformIO (newIORef ("ec_account"))

{-# NOINLINE eC_ACCOUNT_TYPE #-}
eC_ACCOUNT_TYPE = unsafePerformIO (newIORef ("ec_account_type"))

{-# NOINLINE eC_ADDRESS1 #-}
eC_ADDRESS1 = unsafePerformIO (newIORef ("ec_address1"))

{-# NOINLINE eC_ADDRESS2 #-}
eC_ADDRESS2 = unsafePerformIO (newIORef ("ec_address2"))

{-# NOINLINE eC_BANK_NAME #-}
eC_BANK_NAME = unsafePerformIO (newIORef ("ec_bank_name"))

{-# NOINLINE eC_CITY #-}
eC_CITY = unsafePerformIO (newIORef ("ec_city"))

{-# NOINLINE eC_EMAIL #-}
eC_EMAIL = unsafePerformIO (newIORef ("ec_email"))

{-# NOINLINE eC_FIRST_NAME #-}
eC_FIRST_NAME = unsafePerformIO (newIORef ("ec_first_name"))

{-# NOINLINE eC_ID_COUNTRY #-}
eC_ID_COUNTRY = unsafePerformIO (newIORef ("ec_id_country"))

{-# NOINLINE eC_ID_EXP_MM #-}
eC_ID_EXP_MM = unsafePerformIO (newIORef ("ec_id_exp_mm"))

{-# NOINLINE eC_ID_EXP_DD #-}
eC_ID_EXP_DD = unsafePerformIO (newIORef ("ec_id_exp_dd"))

{-# NOINLINE eC_ID_EXP_YY #-}
eC_ID_EXP_YY = unsafePerformIO (newIORef ("ec_id_exp_yy"))

{-# NOINLINE eC_ID_NUMBER #-}
eC_ID_NUMBER = unsafePerformIO (newIORef ("ec_id_number"))

{-# NOINLINE eC_ID_STATE #-}
eC_ID_STATE = unsafePerformIO (newIORef ("ec_id_state"))

{-# NOINLINE eC_ID_TYPE #-}
eC_ID_TYPE = unsafePerformIO (newIORef ("ec_id_type"))

{-# NOINLINE eC_LAST_NAME #-}
eC_LAST_NAME = unsafePerformIO (newIORef ("ec_last_name"))

{-# NOINLINE eC_BUSINESS_NAME #-}
eC_BUSINESS_NAME = unsafePerformIO (newIORef ("ec_BUSINESS_NAME"))

{-# NOINLINE eC_LICENSE_NUMBER #-}
eC_LICENSE_NUMBER = unsafePerformIO (newIORef ("ec_LICENSE_NUMBER"))

{-# NOINLINE eC_LICENSE_STATE #-}
eC_LICENSE_STATE = unsafePerformIO (newIORef ("ec_LICENSE_STATE"))

{-# NOINLINE eC_MERCHANT_REF #-}
eC_MERCHANT_REF = unsafePerformIO (newIORef ("ec_MERCHANT_REF"))

{-# NOINLINE eC_NBDS_CODE #-}
eC_NBDS_CODE = unsafePerformIO (newIORef ("ec_NBDS_CODE"))

{-# NOINLINE eC_OTHER_NAME #-}
eC_OTHER_NAME = unsafePerformIO (newIORef ("ec_other_name"))

{-# NOINLINE eC_PAYEE #-}
eC_PAYEE = unsafePerformIO (newIORef ("ec_payee"))

{-# NOINLINE eC_PAYMENT_TYPE #-}
eC_PAYMENT_TYPE = unsafePerformIO (newIORef ("ec_payment_type"))

{-# NOINLINE eC_RT #-}
eC_RT = unsafePerformIO (newIORef ("ec_rt"))

{-# NOINLINE eC_SERIAL_NUMBER #-}
eC_SERIAL_NUMBER = unsafePerformIO (newIORef ("ec_serial_number"))

{-# NOINLINE eC_STATE #-}
eC_STATE = unsafePerformIO (newIORef ("ec_state"))

{-# NOINLINE eC_TRANSACTION_DT #-}
eC_TRANSACTION_DT = unsafePerformIO (newIORef ("ec_transaction_dt"))

{-# NOINLINE eC_ZIP #-}
eC_ZIP = unsafePerformIO (newIORef ("ec_zip"))

{-# NOINLINE gRAND_TOTAL #-}
gRAND_TOTAL = unsafePerformIO (newIORef ("grand_total"))

{-# NOINLINE mERCHANT_TRACE_NBR #-}
mERCHANT_TRACE_NBR = unsafePerformIO (newIORef ("merchant_trace_nbr"))

{-# NOINLINE oRDER_NUMBER #-}
oRDER_NUMBER = unsafePerformIO (newIORef ("order_number"))

{-# NOINLINE oRIGINAL_AMOUNT #-}
oRIGINAL_AMOUNT = unsafePerformIO (newIORef ("original_amount"))

{-# NOINLINE oRIGINAL_TRANDATE_MM #-}
oRIGINAL_TRANDATE_MM = unsafePerformIO (newIORef ("original_trandate_mm"))

{-# NOINLINE oRIGINAL_TRANDATE_DD #-}
oRIGINAL_TRANDATE_DD = unsafePerformIO (newIORef ("original_trandate_dd"))

{-# NOINLINE oRIGINAL_TRANDATE_YYYY #-}
oRIGINAL_TRANDATE_YYYY = unsafePerformIO (newIORef ("original_trandate_yyyy"))

{-# NOINLINE oRIGINAL_REFERENCE #-}
oRIGINAL_REFERENCE = unsafePerformIO (newIORef ("original_reference"))

{-# NOINLINE pRODUCT_DESCRIPTION #-}
pRODUCT_DESCRIPTION = unsafePerformIO (newIORef ("product_description"))

{-# NOINLINE pURCHASE_ORDER_NUMBER #-}
pURCHASE_ORDER_NUMBER = unsafePerformIO (newIORef ("purchase_order_number"))

{-# NOINLINE sALES_TAX #-}
sALES_TAX = unsafePerformIO (newIORef ("sales_tax"))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EchoPaymentGatewayData
newRecord_ = do
    header_ <- newJavaHeader
    let this = EchoPaymentGatewayData header_
    jregisterLevel header_ this
    pure this

initFields_ :: EchoPaymentGatewayData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO EchoPaymentGatewayData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EchoPaymentGatewayData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


