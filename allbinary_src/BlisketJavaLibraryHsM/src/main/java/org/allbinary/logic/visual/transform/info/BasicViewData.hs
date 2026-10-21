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
-- package org.allbinary.logic.visual.transform.info
module BasicViewData where

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

data BasicViewData = BasicViewData
    { header_ :: JavaHeader
    , gENERICDIR :: IORef (String)
    , uSERDIR :: IORef (String)
    , aDDRESSDIR :: IORef (String)
    , bILLINGADDRESSDIR :: IORef (String)
    , sHIPPINGADDRESSDIR :: IORef (String)
    , cOMMERCEDIR :: IORef (String)
    , iNVENTORYDIR :: IORef (String)
    , bASKETDIR :: IORef (String)
    , iTEMDIR :: IORef (String)
    , mONEYDIR :: IORef (String)
    , sHIPPINGDIR :: IORef (String)
    , oRDERDIR :: IORef (String)
    , oRDEREMAILDIR :: IORef (String)
    , oRDERHISTORYDIR :: IORef (String)
    , oRDERREVIEWDIR :: IORef (String)
    , pAYMENTDIR :: IORef (String)
    , gENERATIONDIR :: IORef (String)
    , pRODUCTSDIR :: IORef (String)
    , iGNOREXMLXSL :: IORef (String)
    , rEVIEWORDERVIEWXSL :: IORef (String)
    , oRDERVIEWXSL :: IORef (String)
    , iNVENTORYXSL :: IORef (String)
    , bASKETXSL :: IORef (String)
    , cHECKOUTBASKETXSL :: IORef (String)
    , mINIBASKETXSL :: IORef (String)
    , bILLINGADDRESSCHANGEFORMXSL :: IORef (String)
    , bILLINGADDRESSINPUTFORMXSL :: IORef (String)
    , bILLINGADDRESSVIEWXSL :: IORef (String)
    , sHIPPINGADDRESSCHANGEFORMXSL :: IORef (String)
    , sHIPPINGADDRESSINPUTFORMXSL :: IORef (String)
    , sHIPPINGADDRESSVIEWXSL :: IORef (String)
    , nEWTAXADDRESSXSL :: IORef (String)
    , eDITTAXADDRESSXSL :: IORef (String)
    , sHIPPINGMETHODSXSL :: IORef (String)
    , oRDERCUSTOMEREMAILVIEWXSL :: IORef (String)
    , oRDERMANAGEREMAILVIEWXSL :: IORef (String)
    , eDITCUSTOMERXSL :: IORef (String)
    , oRDERHISTORYXSL :: IORef (String)
    , pAYMENTVIEWXSL :: IORef (String)
    , sUMMARYXSL :: IORef (String)
    , pAYMENTGATEWAYOPTIONSXSL :: IORef (String)
    , mAKEPAYMENTVIEWXSL :: IORef (String)
    }

instance JavaNull BasicViewData where
    javaNull = javaNullRecord "BasicViewData"

instance JavaEquals BasicViewData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicViewData where
    (==) = jrecordEquals

instance JavaObjectClass BasicViewData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicViewData
newRecord_ = do
    header_ <- newJavaHeader
    gENERICDIR <- newIORef ""
    uSERDIR <- newIORef ""
    aDDRESSDIR <- newIORef ""
    bILLINGADDRESSDIR <- newIORef ""
    sHIPPINGADDRESSDIR <- newIORef ""
    cOMMERCEDIR <- newIORef ""
    iNVENTORYDIR <- newIORef ""
    bASKETDIR <- newIORef ""
    iTEMDIR <- newIORef ""
    mONEYDIR <- newIORef ""
    sHIPPINGDIR <- newIORef ""
    oRDERDIR <- newIORef ""
    oRDEREMAILDIR <- newIORef ""
    oRDERHISTORYDIR <- newIORef ""
    oRDERREVIEWDIR <- newIORef ""
    pAYMENTDIR <- newIORef ""
    gENERATIONDIR <- newIORef ""
    pRODUCTSDIR <- newIORef ""
    iGNOREXMLXSL <- newIORef ""
    rEVIEWORDERVIEWXSL <- newIORef ""
    oRDERVIEWXSL <- newIORef ""
    iNVENTORYXSL <- newIORef ""
    bASKETXSL <- newIORef ""
    cHECKOUTBASKETXSL <- newIORef ""
    mINIBASKETXSL <- newIORef ""
    bILLINGADDRESSCHANGEFORMXSL <- newIORef ""
    bILLINGADDRESSINPUTFORMXSL <- newIORef ""
    bILLINGADDRESSVIEWXSL <- newIORef ""
    sHIPPINGADDRESSCHANGEFORMXSL <- newIORef ""
    sHIPPINGADDRESSINPUTFORMXSL <- newIORef ""
    sHIPPINGADDRESSVIEWXSL <- newIORef ""
    nEWTAXADDRESSXSL <- newIORef ""
    eDITTAXADDRESSXSL <- newIORef ""
    sHIPPINGMETHODSXSL <- newIORef ""
    oRDERCUSTOMEREMAILVIEWXSL <- newIORef ""
    oRDERMANAGEREMAILVIEWXSL <- newIORef ""
    eDITCUSTOMERXSL <- newIORef ""
    oRDERHISTORYXSL <- newIORef ""
    pAYMENTVIEWXSL <- newIORef ""
    sUMMARYXSL <- newIORef ""
    pAYMENTGATEWAYOPTIONSXSL <- newIORef ""
    mAKEPAYMENTVIEWXSL <- newIORef ""
    let this = BasicViewData header_ gENERICDIR uSERDIR aDDRESSDIR bILLINGADDRESSDIR sHIPPINGADDRESSDIR cOMMERCEDIR iNVENTORYDIR bASKETDIR iTEMDIR mONEYDIR sHIPPINGDIR oRDERDIR oRDEREMAILDIR oRDERHISTORYDIR oRDERREVIEWDIR pAYMENTDIR gENERATIONDIR pRODUCTSDIR iGNOREXMLXSL rEVIEWORDERVIEWXSL oRDERVIEWXSL iNVENTORYXSL bASKETXSL cHECKOUTBASKETXSL mINIBASKETXSL bILLINGADDRESSCHANGEFORMXSL bILLINGADDRESSINPUTFORMXSL bILLINGADDRESSVIEWXSL sHIPPINGADDRESSCHANGEFORMXSL sHIPPINGADDRESSINPUTFORMXSL sHIPPINGADDRESSVIEWXSL nEWTAXADDRESSXSL eDITTAXADDRESSXSL sHIPPINGMETHODSXSL oRDERCUSTOMEREMAILVIEWXSL oRDERMANAGEREMAILVIEWXSL eDITCUSTOMERXSL oRDERHISTORYXSL pAYMENTVIEWXSL sUMMARYXSL pAYMENTGATEWAYOPTIONSXSL mAKEPAYMENTVIEWXSL
    jregisterLevel header_ this
    pure this

initFields_ :: BasicViewData -> IO ()
initFields_ this = do
    jset this.gENERICDIR ("generic/")
    jset this.uSERDIR (((jget (this).gENERICDIR) ++ "user/"))
    jset this.aDDRESSDIR (((jget (this).uSERDIR) ++ "address/"))
    jset this.bILLINGADDRESSDIR (((jget (this).aDDRESSDIR) ++ "billing/"))
    jset this.sHIPPINGADDRESSDIR (((jget (this).aDDRESSDIR) ++ "shipping/"))
    jset this.cOMMERCEDIR (((jget (this).uSERDIR) ++ "commerce/"))
    jset this.iNVENTORYDIR (((jget (this).cOMMERCEDIR) ++ "inventory/"))
    jset this.bASKETDIR (((jget (this).iNVENTORYDIR) ++ "basket/"))
    jset this.iTEMDIR (((jget (this).iNVENTORYDIR) ++ "item/"))
    jset this.mONEYDIR (((jget (this).cOMMERCEDIR) ++ "money/"))
    jset this.sHIPPINGDIR (((jget (this).cOMMERCEDIR) ++ "shipping/"))
    jset this.oRDERDIR (((jget (this).iNVENTORYDIR) ++ "order/"))
    jset this.oRDEREMAILDIR (((jget (this).oRDERDIR) ++ "email/"))
    jset this.oRDERHISTORYDIR (((jget (this).oRDERDIR) ++ "history/"))
    jset this.oRDERREVIEWDIR (((jget (this).oRDERDIR) ++ "review/"))
    jset this.pAYMENTDIR (((jget (this).mONEYDIR) ++ "payment/"))
    jset this.gENERATIONDIR (((jget (this).gENERICDIR) ++ "generation/"))
    jset this.pRODUCTSDIR (((jget (this).gENERICDIR) ++ "products/"))
    jset this.iGNOREXMLXSL (((jget (this).gENERICDIR) ++ "ignoreXmlView.xsl"))
    jset this.rEVIEWORDERVIEWXSL (((jget (this).oRDERREVIEWDIR) ++ "reviewOrderView.xsl"))
    jset this.oRDERVIEWXSL ((jget (this).rEVIEWORDERVIEWXSL))
    jset this.iNVENTORYXSL (((jget (this).iNVENTORYDIR) ++ "inventory.xsl"))
    jset this.bASKETXSL (((jget (this).bASKETDIR) ++ "basket.xsl"))
    jset this.cHECKOUTBASKETXSL (((jget (this).bASKETDIR) ++ "staticBasket.xsl"))
    jset this.mINIBASKETXSL (((jget (this).bASKETDIR) ++ "miniBasket.xsl"))
    jset this.bILLINGADDRESSCHANGEFORMXSL (((jget (this).bILLINGADDRESSDIR) ++ "billingAddressChangeForm.xsl"))
    jset this.bILLINGADDRESSINPUTFORMXSL (((jget (this).bILLINGADDRESSDIR) ++ "billingAddressInputForm.xsl"))
    jset this.bILLINGADDRESSVIEWXSL (((jget (this).bILLINGADDRESSDIR) ++ "billingAddressView.xsl"))
    jset this.sHIPPINGADDRESSCHANGEFORMXSL (((jget (this).sHIPPINGADDRESSDIR) ++ "shippingAddressChangeForm.xsl"))
    jset this.sHIPPINGADDRESSINPUTFORMXSL (((jget (this).sHIPPINGADDRESSDIR) ++ "shippingAddressInputForm.xsl"))
    jset this.sHIPPINGADDRESSVIEWXSL (((jget (this).sHIPPINGADDRESSDIR) ++ "shippingAddressView.xsl"))
    jset this.nEWTAXADDRESSXSL (((jget (this).sHIPPINGADDRESSDIR) ++ "newTaxAddressView.xsl"))
    jset this.eDITTAXADDRESSXSL (((jget (this).sHIPPINGADDRESSDIR) ++ "editTaxAddressView.xsl"))
    jset this.sHIPPINGMETHODSXSL (((jget (this).sHIPPINGDIR) ++ "shippingMethods.xsl"))
    jset this.oRDERCUSTOMEREMAILVIEWXSL (((jget (this).oRDEREMAILDIR) ++ "orderCustomerEmailView.xsl"))
    jset this.oRDERMANAGEREMAILVIEWXSL (((jget (this).oRDEREMAILDIR) ++ "orderManagerEmailView.xsl"))
    jset this.eDITCUSTOMERXSL (((jget (this).uSERDIR) ++ "editCustomerInputForm.xsl"))
    jset this.oRDERHISTORYXSL (((jget (this).oRDERHISTORYDIR) ++ "orderHistory.xsl"))
    jset this.pAYMENTVIEWXSL (((jget (this).pAYMENTDIR) ++ "paymentView.xsl"))
    jset this.sUMMARYXSL (((jget (this).iTEMDIR) ++ "summary/summary.xsl"))
    jset this.pAYMENTGATEWAYOPTIONSXSL (((jget (this).pAYMENTDIR) ++ "paymentGatewayOptions.xsl"))
    jset this.mAKEPAYMENTVIEWXSL ((((jget (this).pAYMENTDIR) ++ "invoice/") ++ "makePayment.xsl"))
    pure ()


getInstance :: IO (BasicViewData)
getInstance = do
        pure (BasicViewData.instance_)

new_ :: IO BasicViewData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicViewData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


