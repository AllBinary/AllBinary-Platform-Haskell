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
-- package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet
module AuthorizeNetData where

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

data AuthorizeNetData = AuthorizeNetData
    { header_ :: JavaHeader
    }

instance JavaNull AuthorizeNetData where
    javaNull = javaNullRecord "AuthorizeNetData"

instance JavaEquals AuthorizeNetData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AuthorizeNetData where
    (==) = jrecordEquals

instance JavaObjectClass AuthorizeNetData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

x_LOGIN = "x_login"

x_TRAN_KEY = "x_tran_key"

x_VERSION = "x_version"

x_TEST_REQUEST = "x_test_request"

x_RELAY_RESPONSE = "x_relay_response"

x_DUPLICATE_WINDOW = "x_duplicate_window"

x_FIRST_NAME = "x_first_name"

x_LAST_NAME = "x_last_name"

x_COMPANY = "x_company"

x_ADDRESS = "x_address"

x_CITY = "x_city"

x_STATE = "x_state"

x_ZIP = "x_zip"

x_COUNTRY = "x_country"

x_PHONE = "x_phone"

x_FAX = "x_fax"

x_CUST_ID = "x_cust_id"

x_CUSTOMER_IP = "x_customer_ip"

x_CUSTOMER_TAX_ID = "x_customer_tax_id"

x_EMAIL_CUSTOMER = "x_email_customer"

x_EMAIL = "x_email"

x_EMAIL_MERCHANT = "x_email_merchant"

x_INVOICE_NUM = "x_invoice_num"

x_DESCRIPTION = "x_description"

x_SHIP_TO_FIRST_NAME = "x_ship_to_first_name"

x_SHIP_TO_LAST_NAME = "x_ship_to_last_name"

x_SHIP_TO_COMPANY = "x_ship_to_company"

x_SHIP_TO_ADDRESS = "x_ship_to_address"

x_SHIP_TO_CITY = "x_ship_to_city"

x_SHIP_TO_STATE = "x_ship_to_state"

x_SHIP_TO_ZIP = "x_ship_to_zip"

x_SHIP_TO_COUNTRY = "x_ship_to_country"

x_AMOUNT = "x_amount"

x_CURRENCY_CODE = "x_currency_code"

x_METHOD = "x_method"

x_TYPE = "x_type"

x_RECURRING_BILLING = "x_recurring_billing"

x_BANK_ABA_CODE = "x_bank_aba_code"

x_BANK_ACCT_NUM = "x_bank_acct_num"

x_BANK_ACCT_TYPE = "x_bank_acct_type"

x_BANK_NAME = "x_bank_name"

x_BANK_ACCT_NAME = "x_bank_acct_name"

x_ECHECK_TYPE = "x_echeck_type"

x_CARD_NUM = "x_card_num"

x_EXP_DATE = "x_exp_date"

x_CARD_CODE = "x_card_code"

x_TRANS_ID = "x_trans_id"

x_AUTH_CODE = "x_auth_code"

x_PO_NUM = "x_po_num"

x_TAX = "x_tax"

x_TAX_EXEMPT = "x_tax_exempt"

x_FREIGHT = "x_freight"

x_DUTY = "x_duty"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AuthorizeNetData
newRecord_ = do
    header_ <- newJavaHeader
    let this = AuthorizeNetData header_
    jregisterLevel header_ this
    pure this

initFields_ :: AuthorizeNetData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AuthorizeNetData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AuthorizeNetData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


