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
-- package org.allbinary.business.user.commerce.money.payment
module Payment where

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
import qualified PaymentData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified ServletRequest -- javax.servlet.ServletRequest
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified SuperCrypt -- org.allbinary.logic.control.crypt.SuperCrypt
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified PaymentInterface

-- implements PaymentInterface
-- implements DomNodeInterface
data Payment = Payment
    { header_ :: JavaHeader
    , name :: IORef (String)
    , expiration :: IORef (String)
    , encryption :: IORef (String)
    , number :: IORef (String)
    , id :: IORef (String)
    , type_ :: IORef (String)
    , tenderType :: IORef (String)
    , transactionType :: IORef (String)
    , aba :: IORef (String)
    , account :: IORef (String)
    , accountType :: IORef (String)
    , authorizationCode :: IORef (String)
    , checkNumber :: IORef (String)
    , checkType :: IORef (String)
    , driversLicense :: IORef (String)
    , magneticInkCheckReader :: IORef (String)
    , isDefault :: IORef (Bool)
    }

instance JavaNull Payment where
    javaNull = javaNullRecord "Payment"

instance JavaEquals Payment where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Payment where
    (==) = jrecordEquals

instance JavaObjectClass Payment where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Payment
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    expiration <- newIORef ""
    encryption <- newIORef ""
    number <- newIORef ""
    id <- newIORef ""
    type_ <- newIORef ""
    tenderType <- newIORef ""
    transactionType <- newIORef ""
    aba <- newIORef ""
    account <- newIORef ""
    accountType <- newIORef ""
    authorizationCode <- newIORef ""
    checkNumber <- newIORef ""
    checkType <- newIORef ""
    driversLicense <- newIORef ""
    magneticInkCheckReader <- newIORef ""
    isDefault <- newIORef False
    let this = Payment header_ name expiration encryption number id type_ tenderType transactionType aba account accountType authorizationCode checkNumber checkType driversLicense magneticInkCheckReader isDefault
    jregisterLevel header_ this
    PaymentInterface.registerInterface_ header_
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "setTenderType" (\() -> setTenderType_impl this)
    jregisterMethod header_ "setTransactionType" (\() -> setTransactionType_impl this)
    jregisterMethod header_ "setAuthorizationCode" (\() -> setAuthorizationCode_impl this)
    jregisterMethod header_ "setCheckType" (\() -> setCheckType_impl this)
    jregisterMethod header_ "setCheckNumber" (\() -> setCheckNumber_impl this)
    jregisterMethod header_ "setDriversLicense" (\() -> setDriversLicense_impl this)
    jregisterMethod header_ "setMagneticInkCheckReader" (\() -> setMagneticInkCheckReader_impl this)
    jregisterMethod header_ "setAba" (\() -> setAba_impl this)
    jregisterMethod header_ "setAccountType" (\() -> setAccountType_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setType" (\() -> setType_impl this)
    jregisterMethod header_ "setExpiration" (\() -> setExpiration_impl this)
    jregisterMethod header_ "setNumber" (\() -> setNumber_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getExpiration" (\() -> getExpiration_impl this)
    jregisterMethod header_ "getEncryption" (\() -> getEncryption_impl this)
    jregisterMethod header_ "getNumber" (\() -> getNumber_impl this)
    jregisterMethod header_ "getTenderType" (\() -> getTenderType_impl this)
    jregisterMethod header_ "getTransactionType" (\() -> getTransactionType_impl this)
    jregisterMethod header_ "getAba" (\() -> getAba_impl this)
    jregisterMethod header_ "getAccount" (\() -> getAccount_impl this)
    jregisterMethod header_ "getAccountType" (\() -> getAccountType_impl this)
    jregisterMethod header_ "getAuthorizationCode" (\() -> getAuthorizationCode_impl this)
    jregisterMethod header_ "getCheckNumber" (\() -> getCheckNumber_impl this)
    jregisterMethod header_ "getCheckType" (\() -> getCheckType_impl this)
    jregisterMethod header_ "getDriversLicense" (\() -> getDriversLicense_impl this)
    jregisterMethod header_ "getMagneticInkCheckReader" (\() -> getMagneticInkCheckReader_impl this)
    jregisterMethod header_ "getLastFour" (\() -> getLastFour_impl this)
    jregisterMethod header_ "isDefault" (\() -> isDefault_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    pure this

initFields_ :: Payment -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.expiration (javaNull)
    jset this.encryption (javaNull)
    jset this.number (javaNull)
    jset this.id (javaNull)
    jset this.type_ (javaNull)
    jset this.tenderType (javaNull)
    jset this.transactionType (javaNull)
    jset this.aba (javaNull)
    jset this.account (javaNull)
    jset this.accountType (javaNull)
    jset this.authorizationCode (javaNull)
    jset this.checkNumber (javaNull)
    jset this.checkType (javaNull)
    jset this.driversLicense (javaNull)
    jset this.magneticInkCheckReader (javaNull)
    jset this.isDefault (False)
    pure ()

new_1 :: HashMap.HashMap -> IO Payment
new_1 payment = do
    this <- newRecord_
    init_1 this payment
    pure this

init_1 :: Payment -> HashMap.HashMap -> IO ()
init_1 this payment = do
        initFields_ this
        jset (this).name ((javaCast (jio (HashMap.get payment (PaymentData.nAME))) :: String))
        jset (this).type_ ((javaCast (jio (HashMap.get payment (PaymentData.tYPE))) :: String))
        jset (this).expiration ((javaCast (jio (HashMap.get payment (PaymentData.eXPIRATION))) :: String))
        jset (this).encryption ((javaCast (jio (HashMap.get payment (jget ((jio (EntryData.getInstance))).eNCRYPTION))) :: String))
        jset (this).number ((javaCast (jio (SuperCrypt.decrypt ((jio (SuperCrypt.new_1 (Prelude.fromIntegral ((jget (this).encryption)) :: Int)))) (javaCast (jio (HashMap.get payment (PaymentData.nUMBER))) :: String))) :: String))
        jset (this).id ((javaCast (jio (HashMap.get payment (PaymentData.iD))) :: String))
        let def = (javaCast (jio (HashMap.get payment (jget ((jio (EntryData.getInstance))).dEFAULT))) :: String)
        if ((def /= javaNull) && ((Prelude.fromEnum (Prelude.compare def (jget ((jio (EntryData.getInstance))).dEFAULT)) - 1) == 0)) then do
            jset (this).isDefault (True)
        else do
            jset (this).isDefault (False)
        jset (this).tenderType ((javaCast (jio (HashMap.get payment (PaymentData.tENDERTYPE))) :: String))
        jset (this).transactionType ((javaCast (jio (HashMap.get payment (PaymentData.tRANSACTIONTYPE))) :: String))
        jset (this).aba ((javaCast (jio (HashMap.get payment (PaymentData.aBA))) :: String))
        jset (this).account ((javaCast (jio (HashMap.get payment (PaymentData.aCCOUNT))) :: String))
        jset (this).accountType ((javaCast (jio (HashMap.get payment (PaymentData.aCCOUNTTYPE))) :: String))
        jset (this).authorizationCode ((javaCast (jio (HashMap.get payment (PaymentData.aUTHORIZATIONCODE))) :: String))
        jset (this).checkNumber ((javaCast (jio (HashMap.get payment (PaymentData.cHECKNUMBER))) :: String))
        jset (this).checkType ((javaCast (jio (HashMap.get payment (PaymentData.cHECKTYPE))) :: String))
        jset (this).driversLicense ((javaCast (jio (HashMap.get payment (PaymentData.dRIVERSLICENSE))) :: String))
        jset (this).magneticInkCheckReader ((javaCast (jio (HashMap.get payment (PaymentData.mAGNETICINKCHECKREADER))) :: String))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: ServletRequest.ServletRequest -> IO Payment
new_1 request = do
    this <- newRecord_
    init_1 this request
    pure this

init_1 :: Payment -> ServletRequest.ServletRequest -> IO ()
init_1 this request = do
        initFields_ this
        assignedValue <- (ServletRequest.getParameter request (PaymentData.nAME))
        jset (this).name (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.tYPE))
        jset (this).type_ (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.eXPIRATION))
        jset (this).expiration (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.nUMBER))
        jset (this).number (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.tENDERTYPE))
        jset (this).tenderType (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.tRANSACTIONTYPE))
        jset (this).transactionType (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.aBA))
        jset (this).aba (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.aCCOUNT))
        jset (this).account (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.aCCOUNTTYPE))
        jset (this).accountType (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.aUTHORIZATIONCODE))
        jset (this).authorizationCode (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.cHECKNUMBER))
        jset (this).checkNumber (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.cHECKTYPE))
        jset (this).checkType (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.dRIVERSLICENSE))
        jset (this).driversLicense (assignedValue)
        assignedValue <- (ServletRequest.getParameter request (PaymentData.mAGNETICINKCHECKREADER))
        jset (this).magneticInkCheckReader (assignedValue)
        pure ()

new_ :: IO Payment
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Payment -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: Payment))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: Payment))

isValid_impl :: Payment -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        stringUtil <- (StringUtil.getInstance)
        let aFalse = False
        when (((jget (this).name) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget (this).name) (jget (stringUtil).eMPTY_STRING)) - 1) == 0)) $ do
            javaReturn (aFalse)
        when (((jget (this).type_) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget (this).type_) (jget (stringUtil).eMPTY_STRING)) - 1) == 0)) $ do
            javaReturn (aFalse)
        when (((jget (this).expiration) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget (this).expiration) (jget (stringUtil).eMPTY_STRING)) - 1) == 0)) $ do
            javaReturn (aFalse)
        when (((jget (this).number) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jget (this).number) (jget (stringUtil).eMPTY_STRING)) - 1) == 0)) $ do
            javaReturn (aFalse)
        when ((Prelude.length (jget (this).number)) > (jget ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).business)).user)).commerce)).money)).payment)).types)).creditCardType)).mAXLEN)) $ do
            javaReturn (aFalse)
        pure (True)


setTenderType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTenderType object_ a1 = jmethod object_ "setTenderType" (\() -> (setTenderType_impl (javaCast object_ :: Payment))) () a1

setTenderType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTenderType_super object_ a1 = (setTenderType_impl (javaCast object_ :: Payment)) a1

setTenderType_impl :: Payment -> String -> IO (())
setTenderType_impl this value = do
        jset (this).tenderType (value)
        pure ()


setTransactionType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTransactionType object_ a1 = jmethod object_ "setTransactionType" (\() -> (setTransactionType_impl (javaCast object_ :: Payment))) () a1

setTransactionType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTransactionType_super object_ a1 = (setTransactionType_impl (javaCast object_ :: Payment)) a1

setTransactionType_impl :: Payment -> String -> IO (())
setTransactionType_impl this value = do
        jset (this).transactionType (value)
        pure ()


setAuthorizationCode :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAuthorizationCode object_ a1 = jmethod object_ "setAuthorizationCode" (\() -> (setAuthorizationCode_impl (javaCast object_ :: Payment))) () a1

setAuthorizationCode_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAuthorizationCode_super object_ a1 = (setAuthorizationCode_impl (javaCast object_ :: Payment)) a1

setAuthorizationCode_impl :: Payment -> String -> IO (())
setAuthorizationCode_impl this value = do
        jset (this).authorizationCode (value)
        pure ()


setCheckType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCheckType object_ a1 = jmethod object_ "setCheckType" (\() -> (setCheckType_impl (javaCast object_ :: Payment))) () a1

setCheckType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCheckType_super object_ a1 = (setCheckType_impl (javaCast object_ :: Payment)) a1

setCheckType_impl :: Payment -> String -> IO (())
setCheckType_impl this value = do
        jset (this).checkType (value)
        pure ()


setCheckNumber :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCheckNumber object_ a1 = jmethod object_ "setCheckNumber" (\() -> (setCheckNumber_impl (javaCast object_ :: Payment))) () a1

setCheckNumber_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCheckNumber_super object_ a1 = (setCheckNumber_impl (javaCast object_ :: Payment)) a1

setCheckNumber_impl :: Payment -> String -> IO (())
setCheckNumber_impl this value = do
        jset (this).checkNumber (value)
        pure ()


setDriversLicense :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDriversLicense object_ a1 = jmethod object_ "setDriversLicense" (\() -> (setDriversLicense_impl (javaCast object_ :: Payment))) () a1

setDriversLicense_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDriversLicense_super object_ a1 = (setDriversLicense_impl (javaCast object_ :: Payment)) a1

setDriversLicense_impl :: Payment -> String -> IO (())
setDriversLicense_impl this value = do
        jset (this).driversLicense (value)
        pure ()


setMagneticInkCheckReader :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMagneticInkCheckReader object_ a1 = jmethod object_ "setMagneticInkCheckReader" (\() -> (setMagneticInkCheckReader_impl (javaCast object_ :: Payment))) () a1

setMagneticInkCheckReader_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMagneticInkCheckReader_super object_ a1 = (setMagneticInkCheckReader_impl (javaCast object_ :: Payment)) a1

setMagneticInkCheckReader_impl :: Payment -> String -> IO (())
setMagneticInkCheckReader_impl this value = do
        jset (this).magneticInkCheckReader (value)
        pure ()


setAba :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAba object_ a1 = jmethod object_ "setAba" (\() -> (setAba_impl (javaCast object_ :: Payment))) () a1

setAba_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAba_super object_ a1 = (setAba_impl (javaCast object_ :: Payment)) a1

setAba_impl :: Payment -> String -> IO (())
setAba_impl this value = do
        jset (this).aba (value)
        pure ()


setAccountType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAccountType object_ a1 = jmethod object_ "setAccountType" (\() -> (setAccountType_impl (javaCast object_ :: Payment))) () a1

setAccountType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAccountType_super object_ a1 = (setAccountType_impl (javaCast object_ :: Payment)) a1

setAccountType_impl :: Payment -> String -> IO (())
setAccountType_impl this value = do
        jset (this).accountType (value)
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: Payment))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: Payment)) a1

setName_impl :: Payment -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        pure ()


setType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType object_ a1 = jmethod object_ "setType" (\() -> (setType_impl (javaCast object_ :: Payment))) () a1

setType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType_super object_ a1 = (setType_impl (javaCast object_ :: Payment)) a1

setType_impl :: Payment -> String -> IO (())
setType_impl this value = do
        jset (this).type_ (value)
        pure ()


setExpiration :: (JavaObjectClass this_) => this_ -> String -> IO (())
setExpiration object_ a1 = jmethod object_ "setExpiration" (\() -> (setExpiration_impl (javaCast object_ :: Payment))) () a1

setExpiration_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setExpiration_super object_ a1 = (setExpiration_impl (javaCast object_ :: Payment)) a1

setExpiration_impl :: Payment -> String -> IO (())
setExpiration_impl this value = do
        jset (this).expiration (value)
        pure ()


setNumber :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNumber object_ a1 = jmethod object_ "setNumber" (\() -> (setNumber_impl (javaCast object_ :: Payment))) () a1

setNumber_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNumber_super object_ a1 = (setNumber_impl (javaCast object_ :: Payment)) a1

setNumber_impl :: Payment -> String -> IO (())
setNumber_impl this value = do
        jset (this).number (value)
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: Payment))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: Payment))

getId_impl :: Payment -> IO (String)
getId_impl this = do
        pure ((jget (this).id))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: Payment))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: Payment))

getName_impl :: Payment -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: Payment))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: Payment))

getType_impl :: Payment -> IO (String)
getType_impl this = do
        pure ((jget (this).type_))


getExpiration :: (JavaObjectClass this_) => this_ -> IO (String)
getExpiration object_ = jmethod object_ "getExpiration" (\() -> (getExpiration_impl (javaCast object_ :: Payment))) ()

getExpiration_super :: (JavaObjectClass this_) => this_ -> IO (String)
getExpiration_super object_ = (getExpiration_impl (javaCast object_ :: Payment))

getExpiration_impl :: Payment -> IO (String)
getExpiration_impl this = do
        pure ((jget (this).expiration))


getEncryption :: (JavaObjectClass this_) => this_ -> IO (String)
getEncryption object_ = jmethod object_ "getEncryption" (\() -> (getEncryption_impl (javaCast object_ :: Payment))) ()

getEncryption_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEncryption_super object_ = (getEncryption_impl (javaCast object_ :: Payment))

getEncryption_impl :: Payment -> IO (String)
getEncryption_impl this = do
        pure ((jget (this).encryption))


getNumber :: (JavaObjectClass this_) => this_ -> IO (String)
getNumber object_ = jmethod object_ "getNumber" (\() -> (getNumber_impl (javaCast object_ :: Payment))) ()

getNumber_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNumber_super object_ = (getNumber_impl (javaCast object_ :: Payment))

getNumber_impl :: Payment -> IO (String)
getNumber_impl this = do
        pure ((jget (this).number))


getTenderType :: (JavaObjectClass this_) => this_ -> IO (String)
getTenderType object_ = jmethod object_ "getTenderType" (\() -> (getTenderType_impl (javaCast object_ :: Payment))) ()

getTenderType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTenderType_super object_ = (getTenderType_impl (javaCast object_ :: Payment))

getTenderType_impl :: Payment -> IO (String)
getTenderType_impl this = do
        pure ((jget (this).tenderType))


getTransactionType :: (JavaObjectClass this_) => this_ -> IO (String)
getTransactionType object_ = jmethod object_ "getTransactionType" (\() -> (getTransactionType_impl (javaCast object_ :: Payment))) ()

getTransactionType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTransactionType_super object_ = (getTransactionType_impl (javaCast object_ :: Payment))

getTransactionType_impl :: Payment -> IO (String)
getTransactionType_impl this = do
        pure ((jget (this).transactionType))


getAba :: (JavaObjectClass this_) => this_ -> IO (String)
getAba object_ = jmethod object_ "getAba" (\() -> (getAba_impl (javaCast object_ :: Payment))) ()

getAba_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAba_super object_ = (getAba_impl (javaCast object_ :: Payment))

getAba_impl :: Payment -> IO (String)
getAba_impl this = do
        pure ((jget (this).aba))


getAccount :: (JavaObjectClass this_) => this_ -> IO (String)
getAccount object_ = jmethod object_ "getAccount" (\() -> (getAccount_impl (javaCast object_ :: Payment))) ()

getAccount_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAccount_super object_ = (getAccount_impl (javaCast object_ :: Payment))

getAccount_impl :: Payment -> IO (String)
getAccount_impl this = do
        pure ((jget (this).account))


getAccountType :: (JavaObjectClass this_) => this_ -> IO (String)
getAccountType object_ = jmethod object_ "getAccountType" (\() -> (getAccountType_impl (javaCast object_ :: Payment))) ()

getAccountType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAccountType_super object_ = (getAccountType_impl (javaCast object_ :: Payment))

getAccountType_impl :: Payment -> IO (String)
getAccountType_impl this = do
        pure ((jget (this).accountType))


getAuthorizationCode :: (JavaObjectClass this_) => this_ -> IO (String)
getAuthorizationCode object_ = jmethod object_ "getAuthorizationCode" (\() -> (getAuthorizationCode_impl (javaCast object_ :: Payment))) ()

getAuthorizationCode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAuthorizationCode_super object_ = (getAuthorizationCode_impl (javaCast object_ :: Payment))

getAuthorizationCode_impl :: Payment -> IO (String)
getAuthorizationCode_impl this = do
        pure ((jget (this).authorizationCode))


getCheckNumber :: (JavaObjectClass this_) => this_ -> IO (String)
getCheckNumber object_ = jmethod object_ "getCheckNumber" (\() -> (getCheckNumber_impl (javaCast object_ :: Payment))) ()

getCheckNumber_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCheckNumber_super object_ = (getCheckNumber_impl (javaCast object_ :: Payment))

getCheckNumber_impl :: Payment -> IO (String)
getCheckNumber_impl this = do
        pure ((jget (this).checkNumber))


getCheckType :: (JavaObjectClass this_) => this_ -> IO (String)
getCheckType object_ = jmethod object_ "getCheckType" (\() -> (getCheckType_impl (javaCast object_ :: Payment))) ()

getCheckType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCheckType_super object_ = (getCheckType_impl (javaCast object_ :: Payment))

getCheckType_impl :: Payment -> IO (String)
getCheckType_impl this = do
        pure ((jget (this).checkType))


getDriversLicense :: (JavaObjectClass this_) => this_ -> IO (String)
getDriversLicense object_ = jmethod object_ "getDriversLicense" (\() -> (getDriversLicense_impl (javaCast object_ :: Payment))) ()

getDriversLicense_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDriversLicense_super object_ = (getDriversLicense_impl (javaCast object_ :: Payment))

getDriversLicense_impl :: Payment -> IO (String)
getDriversLicense_impl this = do
        pure ((jget (this).driversLicense))


getMagneticInkCheckReader :: (JavaObjectClass this_) => this_ -> IO (String)
getMagneticInkCheckReader object_ = jmethod object_ "getMagneticInkCheckReader" (\() -> (getMagneticInkCheckReader_impl (javaCast object_ :: Payment))) ()

getMagneticInkCheckReader_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMagneticInkCheckReader_super object_ = (getMagneticInkCheckReader_impl (javaCast object_ :: Payment))

getMagneticInkCheckReader_impl :: Payment -> IO (String)
getMagneticInkCheckReader_impl this = do
        pure ((jget (this).magneticInkCheckReader))


getLastFour :: (JavaObjectClass this_) => this_ -> IO (String)
getLastFour object_ = jmethod object_ "getLastFour" (\() -> (getLastFour_impl (javaCast object_ :: Payment))) ()

getLastFour_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastFour_super object_ = (getLastFour_impl (javaCast object_ :: Payment))

getLastFour_impl :: Payment -> IO (String)
getLastFour_impl this = do
    javaCatchReturn $ do
        if (((Prelude.length (jget (this).number)) > PaymentData.mIN) && ((Prelude.length (jget (this).number)) <= PaymentData.mAX)) then do
            javaReturn ((Prelude.drop ((Prelude.length (jget (this).number)) - 4) (jget (this).number)))
        else do
            javaReturn ("Invalid #")


isDefault :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefault object_ = jmethod object_ "isDefault" (\() -> (isDefault_impl (javaCast object_ :: Payment))) ()

isDefault_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefault_super object_ = (isDefault_impl (javaCast object_ :: Payment))

isDefault_impl :: Payment -> IO (Bool)
isDefault_impl this = do
        pure ((jget (this).isDefault))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: Payment))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: Payment))

toHashMap_impl :: Payment -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (PaymentData.nAME) (jget (this).name))
        Control.Monad.void (HashMap.put hashMap (PaymentData.tYPE) (jget (this).type_))
        Control.Monad.void (HashMap.put hashMap (PaymentData.eXPIRATION) (jget (this).expiration))
        Control.Monad.void (HashMap.put hashMap (PaymentData.nUMBER) (jio (Payment.getLastFour this)))
        Control.Monad.void (HashMap.put hashMap (PaymentData.tENDERTYPE) (jget (this).tenderType))
        Control.Monad.void (HashMap.put hashMap (PaymentData.tRANSACTIONTYPE) (jget (this).transactionType))
        Control.Monad.void (HashMap.put hashMap (PaymentData.aBA) (jget (this).aba))
        Control.Monad.void (HashMap.put hashMap (PaymentData.aCCOUNT) (jget (this).account))
        Control.Monad.void (HashMap.put hashMap (PaymentData.aCCOUNTTYPE) (jget (this).accountType))
        Control.Monad.void (HashMap.put hashMap (PaymentData.aUTHORIZATIONCODE) (jget (this).authorizationCode))
        Control.Monad.void (HashMap.put hashMap (PaymentData.cHECKNUMBER) (jget (this).checkNumber))
        Control.Monad.void (HashMap.put hashMap (PaymentData.dRIVERSLICENSE) (jget (this).driversLicense))
        Control.Monad.void (HashMap.put hashMap (PaymentData.mAGNETICINKCHECKREADER) (jget (this).magneticInkCheckReader))
        if (jget (this).isDefault) then do
            Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).dEFAULT) (jget ((jio (EntryData.getInstance))).dEFAULT))
        else do
            Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).dEFAULT) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: Payment))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: Payment)) a1

toXmlNode_impl :: Payment -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (Payment.toHashMap this)
        node <- (ModDomHelper.createNameValueNodes_3 document (PaymentData.pAYMENT) hashMap)
        pure (node)


toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: Payment))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: Payment))

toXmlDoc_impl :: Payment -> IO (Document.Document)
toXmlDoc_impl this = do
        pure (javaNull)


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: Payment))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: Payment))

view_impl :: Payment -> IO (String)
view_impl this = do
        pure (javaNull)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: Payment))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: Payment))

toValidationInfoDoc_impl :: Payment -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: Payment))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: Payment)) a1

toValidationInfoNode_impl :: Payment -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: Payment))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: Payment))

validationInfo_impl :: Payment -> IO (String)
validationInfo_impl this = do
        pure (javaNull)


