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
-- package org.allbinary.business.user.commerce.money.payment.gateway.transaction
module PaymentTransactionKeysFactory where

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
import qualified PaymentTransactionKeys -- same package or java.lang

data PaymentTransactionKeysFactory = PaymentTransactionKeysFactory
    { header_ :: JavaHeader
    , tRXTYPE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , tENDER :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , aCCT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eXPDATE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , aMT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , aUTHCODE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , mICR :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cHECKNUM :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , nAME :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sTREET :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cITY :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sTATE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , zIP :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , dL :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eMAIL :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cOMMENT1 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cOMMENT2 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , oRIGID :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , pONUM :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , dESC :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , dESC1TO4 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , iNVNUM :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sHIPTOZIP :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sWIPE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , tAXAMT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cOMMCARD :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , dUTYAMT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , fRIEGHTAMT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , oRDERDATE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , tAXEXEMPT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cOUNTRYCODE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cUSTCODE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cVV2 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , aBA :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , aCCTTYPE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , dISCOUNT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , fIRSTNAME :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , lASTNAME :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sHIPFROMZIP :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , pRENOTE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cHKTYPE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , dOB :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , pHONENUM :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sS :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cOMPANYNAME :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cOUNTRY :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , fREIGHTAMT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sHIPTOCITY :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sHIPTOFIRSTNAME :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sHIPTOLASTNAME :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sHIPTOSTATE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sHIPTOSTREET :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sPECIAL1 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sPECIAL2 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sPECIAL3 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , pARTNER :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , vENDOR :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , uSER :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , pWD :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , cHKNUM :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , aVSADDR :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , aVSZIP :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , pNREF :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , rESPMSG :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , rESULT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , oRIGRESULT :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sTATUS :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , fRAUDCODE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , fRAUDMSG :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eRRCODE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , sCORE :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , rEASON1 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , rEASON2 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , rEASON3 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eXCEPTION1 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eXCEPTION2 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eXCEPTION3 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eXCEPTION4 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eXCEPTION5 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eXCEPTION6 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    , eXCEPTION7 :: IORef (PaymentTransactionKeys.PaymentTransactionKeys)
    }

instance JavaNull PaymentTransactionKeysFactory where
    javaNull = javaNullRecord "PaymentTransactionKeysFactory"

instance JavaEquals PaymentTransactionKeysFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentTransactionKeysFactory where
    (==) = jrecordEquals

instance JavaObjectClass PaymentTransactionKeysFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentTransactionKeysFactory
newRecord_ = do
    header_ <- newJavaHeader
    tRXTYPE <- newIORef javaNull
    tENDER <- newIORef javaNull
    aCCT <- newIORef javaNull
    eXPDATE <- newIORef javaNull
    aMT <- newIORef javaNull
    aUTHCODE <- newIORef javaNull
    mICR <- newIORef javaNull
    cHECKNUM <- newIORef javaNull
    nAME <- newIORef javaNull
    sTREET <- newIORef javaNull
    cITY <- newIORef javaNull
    sTATE <- newIORef javaNull
    zIP <- newIORef javaNull
    dL <- newIORef javaNull
    eMAIL <- newIORef javaNull
    cOMMENT1 <- newIORef javaNull
    cOMMENT2 <- newIORef javaNull
    oRIGID <- newIORef javaNull
    pONUM <- newIORef javaNull
    dESC <- newIORef javaNull
    dESC1TO4 <- newIORef javaNull
    iNVNUM <- newIORef javaNull
    sHIPTOZIP <- newIORef javaNull
    sWIPE <- newIORef javaNull
    tAXAMT <- newIORef javaNull
    cOMMCARD <- newIORef javaNull
    dUTYAMT <- newIORef javaNull
    fRIEGHTAMT <- newIORef javaNull
    oRDERDATE <- newIORef javaNull
    tAXEXEMPT <- newIORef javaNull
    cOUNTRYCODE <- newIORef javaNull
    cUSTCODE <- newIORef javaNull
    cVV2 <- newIORef javaNull
    aBA <- newIORef javaNull
    aCCTTYPE <- newIORef javaNull
    dISCOUNT <- newIORef javaNull
    fIRSTNAME <- newIORef javaNull
    lASTNAME <- newIORef javaNull
    sHIPFROMZIP <- newIORef javaNull
    pRENOTE <- newIORef javaNull
    cHKTYPE <- newIORef javaNull
    dOB <- newIORef javaNull
    pHONENUM <- newIORef javaNull
    sS <- newIORef javaNull
    cOMPANYNAME <- newIORef javaNull
    cOUNTRY <- newIORef javaNull
    fREIGHTAMT <- newIORef javaNull
    sHIPTOCITY <- newIORef javaNull
    sHIPTOFIRSTNAME <- newIORef javaNull
    sHIPTOLASTNAME <- newIORef javaNull
    sHIPTOSTATE <- newIORef javaNull
    sHIPTOSTREET <- newIORef javaNull
    sPECIAL1 <- newIORef javaNull
    sPECIAL2 <- newIORef javaNull
    sPECIAL3 <- newIORef javaNull
    pARTNER <- newIORef javaNull
    vENDOR <- newIORef javaNull
    uSER <- newIORef javaNull
    pWD <- newIORef javaNull
    cHKNUM <- newIORef javaNull
    aVSADDR <- newIORef javaNull
    aVSZIP <- newIORef javaNull
    pNREF <- newIORef javaNull
    rESPMSG <- newIORef javaNull
    rESULT <- newIORef javaNull
    oRIGRESULT <- newIORef javaNull
    sTATUS <- newIORef javaNull
    fRAUDCODE <- newIORef javaNull
    fRAUDMSG <- newIORef javaNull
    eRRCODE <- newIORef javaNull
    sCORE <- newIORef javaNull
    rEASON1 <- newIORef javaNull
    rEASON2 <- newIORef javaNull
    rEASON3 <- newIORef javaNull
    eXCEPTION1 <- newIORef javaNull
    eXCEPTION2 <- newIORef javaNull
    eXCEPTION3 <- newIORef javaNull
    eXCEPTION4 <- newIORef javaNull
    eXCEPTION5 <- newIORef javaNull
    eXCEPTION6 <- newIORef javaNull
    eXCEPTION7 <- newIORef javaNull
    let this = PaymentTransactionKeysFactory header_ tRXTYPE tENDER aCCT eXPDATE aMT aUTHCODE mICR cHECKNUM nAME sTREET cITY sTATE zIP dL eMAIL cOMMENT1 cOMMENT2 oRIGID pONUM dESC dESC1TO4 iNVNUM sHIPTOZIP sWIPE tAXAMT cOMMCARD dUTYAMT fRIEGHTAMT oRDERDATE tAXEXEMPT cOUNTRYCODE cUSTCODE cVV2 aBA aCCTTYPE dISCOUNT fIRSTNAME lASTNAME sHIPFROMZIP pRENOTE cHKTYPE dOB pHONENUM sS cOMPANYNAME cOUNTRY fREIGHTAMT sHIPTOCITY sHIPTOFIRSTNAME sHIPTOLASTNAME sHIPTOSTATE sHIPTOSTREET sPECIAL1 sPECIAL2 sPECIAL3 pARTNER vENDOR uSER pWD cHKNUM aVSADDR aVSZIP pNREF rESPMSG rESULT oRIGRESULT sTATUS fRAUDCODE fRAUDMSG eRRCODE sCORE rEASON1 rEASON2 rEASON3 eXCEPTION1 eXCEPTION2 eXCEPTION3 eXCEPTION4 eXCEPTION5 eXCEPTION6 eXCEPTION7
    jregisterLevel header_ this
    pure this

initFields_ :: PaymentTransactionKeysFactory -> IO ()
initFields_ this = do
    jset this.tRXTYPE =<< (PaymentTransactionKeys.new_1 "TRXTYPE")
    jset this.tENDER =<< (PaymentTransactionKeys.new_1 "TENDER")
    jset this.aCCT =<< (PaymentTransactionKeys.new_1 "ACCT")
    jset this.eXPDATE =<< (PaymentTransactionKeys.new_1 "EXPDATE")
    jset this.aMT =<< (PaymentTransactionKeys.new_1 "AMT")
    jset this.aUTHCODE =<< (PaymentTransactionKeys.new_1 "AUTHCODE")
    jset this.mICR =<< (PaymentTransactionKeys.new_1 "MICR")
    jset this.cHECKNUM =<< (PaymentTransactionKeys.new_1 "CHECKNUM")
    jset this.nAME =<< (PaymentTransactionKeys.new_1 "NAME")
    jset this.sTREET =<< (PaymentTransactionKeys.new_1 "STREET")
    jset this.cITY =<< (PaymentTransactionKeys.new_1 "CITY")
    jset this.sTATE =<< (PaymentTransactionKeys.new_1 "STATE")
    jset this.zIP =<< (PaymentTransactionKeys.new_1 "ZIP")
    jset this.dL =<< (PaymentTransactionKeys.new_1 "DL")
    jset this.eMAIL =<< (PaymentTransactionKeys.new_1 "EMAIL")
    jset this.cOMMENT1 =<< (PaymentTransactionKeys.new_1 "COMMENT1")
    jset this.cOMMENT2 =<< (PaymentTransactionKeys.new_1 "COMMENT2")
    jset this.oRIGID =<< (PaymentTransactionKeys.new_1 "ORIGID")
    jset this.pONUM =<< (PaymentTransactionKeys.new_1 "PONUM")
    jset this.dESC =<< (PaymentTransactionKeys.new_1 "PaymentTransactionDESC")
    jset this.dESC1TO4 =<< (PaymentTransactionKeys.new_1 "DESC1TO4")
    jset this.iNVNUM =<< (PaymentTransactionKeys.new_1 "INVNUM")
    jset this.sHIPTOZIP =<< (PaymentTransactionKeys.new_1 "SHIPTOZIP")
    jset this.sWIPE =<< (PaymentTransactionKeys.new_1 "SWIPE")
    jset this.tAXAMT =<< (PaymentTransactionKeys.new_1 "TAXAMT")
    jset this.cOMMCARD =<< (PaymentTransactionKeys.new_1 "COMMCARD")
    jset this.dUTYAMT =<< (PaymentTransactionKeys.new_1 "DUTYAMT")
    jset this.fRIEGHTAMT =<< (PaymentTransactionKeys.new_1 "FRIEGHTAMT")
    jset this.oRDERDATE =<< (PaymentTransactionKeys.new_1 "ORDERDATE")
    jset this.tAXEXEMPT =<< (PaymentTransactionKeys.new_1 "TAXEXEMPT")
    jset this.cOUNTRYCODE =<< (PaymentTransactionKeys.new_1 "COUNTRYCODE")
    jset this.cUSTCODE =<< (PaymentTransactionKeys.new_1 "CUSTCODE")
    jset this.cVV2 =<< (PaymentTransactionKeys.new_1 "CVV2")
    jset this.aBA =<< (PaymentTransactionKeys.new_1 "ABA")
    jset this.aCCTTYPE =<< (PaymentTransactionKeys.new_1 "ACCTTYPE")
    jset this.dISCOUNT =<< (PaymentTransactionKeys.new_1 "DISCOUNT")
    jset this.fIRSTNAME =<< (PaymentTransactionKeys.new_1 "FIRSTNAME")
    jset this.lASTNAME =<< (PaymentTransactionKeys.new_1 "LASNAME")
    jset this.sHIPFROMZIP =<< (PaymentTransactionKeys.new_1 "SHIPFROMZIP")
    jset this.pRENOTE =<< (PaymentTransactionKeys.new_1 "PRENOTE")
    jset this.cHKTYPE =<< (PaymentTransactionKeys.new_1 "CHKTYPE")
    jset this.dOB =<< (PaymentTransactionKeys.new_1 "DOB")
    jset this.pHONENUM =<< (PaymentTransactionKeys.new_1 "PHONENUM")
    jset this.sS =<< (PaymentTransactionKeys.new_1 "SS")
    jset this.cOMPANYNAME =<< (PaymentTransactionKeys.new_1 "COMPANYNAME")
    jset this.cOUNTRY =<< (PaymentTransactionKeys.new_1 "COUNTRY")
    jset this.fREIGHTAMT =<< (PaymentTransactionKeys.new_1 "FREIGHTAMT")
    jset this.sHIPTOCITY =<< (PaymentTransactionKeys.new_1 "SHIPTOCITY")
    jset this.sHIPTOFIRSTNAME =<< (PaymentTransactionKeys.new_1 "SHIPTOFIRSTNAME")
    jset this.sHIPTOLASTNAME =<< (PaymentTransactionKeys.new_1 "SHIPTOLASTNAME")
    jset this.sHIPTOSTATE =<< (PaymentTransactionKeys.new_1 "SHIPTOSTATE")
    jset this.sHIPTOSTREET =<< (PaymentTransactionKeys.new_1 "SHIPTOSTREET")
    jset this.sPECIAL1 =<< (PaymentTransactionKeys.new_1 "SPECIAL1")
    jset this.sPECIAL2 =<< (PaymentTransactionKeys.new_1 "SPECIAL2")
    jset this.sPECIAL3 =<< (PaymentTransactionKeys.new_1 "SPECIAL3")
    jset this.pARTNER =<< (PaymentTransactionKeys.new_1 "PARTNER")
    jset this.vENDOR =<< (PaymentTransactionKeys.new_1 "VENDOR")
    jset this.uSER =<< (PaymentTransactionKeys.new_1 "USER")
    jset this.pWD =<< (PaymentTransactionKeys.new_1 "PWD")
    jset this.cHKNUM =<< (PaymentTransactionKeys.new_1 "CHKNUM")
    jset this.aVSADDR =<< (PaymentTransactionKeys.new_1 "AVSADDR")
    jset this.aVSZIP =<< (PaymentTransactionKeys.new_1 "AVSZIP")
    jset this.pNREF =<< (PaymentTransactionKeys.new_1 "PNREF")
    jset this.rESPMSG =<< (PaymentTransactionKeys.new_1 "RESPMSG")
    jset this.rESULT =<< (PaymentTransactionKeys.new_1 "RESULT")
    jset this.oRIGRESULT =<< (PaymentTransactionKeys.new_1 "ORIGRESULT")
    jset this.sTATUS =<< (PaymentTransactionKeys.new_1 "STATUS")
    jset this.fRAUDCODE =<< (PaymentTransactionKeys.new_1 "FRAUDCODE")
    jset this.fRAUDMSG =<< (PaymentTransactionKeys.new_1 "FRAUDMSG")
    jset this.eRRCODE =<< (PaymentTransactionKeys.new_1 "ERRCODE")
    jset this.sCORE =<< (PaymentTransactionKeys.new_1 "SCORE")
    jset this.rEASON1 =<< (PaymentTransactionKeys.new_1 "REASON1")
    jset this.rEASON2 =<< (PaymentTransactionKeys.new_1 "REASON2")
    jset this.rEASON3 =<< (PaymentTransactionKeys.new_1 "REASON3")
    jset this.eXCEPTION1 =<< (PaymentTransactionKeys.new_1 "EXCEPTION1")
    jset this.eXCEPTION2 =<< (PaymentTransactionKeys.new_1 "EXCEPTION2")
    jset this.eXCEPTION3 =<< (PaymentTransactionKeys.new_1 "EXCEPTION3")
    jset this.eXCEPTION4 =<< (PaymentTransactionKeys.new_1 "EXCEPTION4")
    jset this.eXCEPTION5 =<< (PaymentTransactionKeys.new_1 "EXCEPTION5")
    jset this.eXCEPTION6 =<< (PaymentTransactionKeys.new_1 "EXCEPTION6")
    jset this.eXCEPTION7 =<< (PaymentTransactionKeys.new_1 "EXCEPTION7")
    pure ()

new_ :: IO PaymentTransactionKeysFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentTransactionKeysFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PaymentTransactionKeysFactory)
getInstance = do
        pure (PaymentTransactionKeysFactory.instance_)


