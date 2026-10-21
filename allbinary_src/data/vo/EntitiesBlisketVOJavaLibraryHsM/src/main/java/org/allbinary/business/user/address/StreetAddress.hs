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
-- package org.allbinary.business.user.address
module StreetAddress where

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
import qualified StreetAddressData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data StreetAddress = StreetAddress
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , id :: IORef (String)
    , name :: IORef (String)
    , street :: IORef (String)
    , city :: IORef (String)
    , state :: IORef (String)
    , code :: IORef (String)
    , country :: IORef (String)
    , isDefault :: IORef (Bool)
    }

instance JavaNull StreetAddress where
    javaNull = javaNullRecord "StreetAddress"

instance JavaEquals StreetAddress where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StreetAddress where
    (==) = jrecordEquals

instance JavaObjectClass StreetAddress where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StreetAddress
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    id <- newIORef ""
    name <- newIORef ""
    street <- newIORef ""
    city <- newIORef ""
    state <- newIORef ""
    code <- newIORef ""
    country <- newIORef ""
    isDefault <- newIORef False
    let this = StreetAddress header_ logUtil id name street city state code country isDefault
    jregisterLevel header_ this
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "setId" (\() -> setId_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setStreet" (\() -> setStreet_impl this)
    jregisterMethod header_ "setCity" (\() -> setCity_impl this)
    jregisterMethod header_ "setState" (\() -> setState_impl this)
    jregisterMethod header_ "setCode" (\() -> setCode_impl this)
    jregisterMethod header_ "setCountry" (\() -> setCountry_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getStreet" (\() -> getStreet_impl this)
    jregisterMethod header_ "getCity" (\() -> getCity_impl this)
    jregisterMethod header_ "getState" (\() -> getState_impl this)
    jregisterMethod header_ "getCode" (\() -> getCode_impl this)
    jregisterMethod header_ "getCountry" (\() -> getCountry_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "isDefault" (\() -> isDefault_impl this)
    jregisterMethod header_ "isEmpty" (\() -> isEmpty_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StreetAddress -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.id (javaNull)
    jset this.name (javaNull)
    jset this.street (javaNull)
    jset this.city (javaNull)
    jset this.state (javaNull)
    jset this.code (javaNull)
    jset this.country (javaNull)
    jset this.isDefault (False)
    pure ()

new_ :: IO StreetAddress
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StreetAddress -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_1 :: Node.Node -> IO StreetAddress
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: StreetAddress -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        nameNode <- (DomSearchHelper.getNode (StreetAddressData.nAME) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue nameNode)
        jset (this).name (assignedValue)
        streetNode <- (DomSearchHelper.getNode (StreetAddressData.sTREET) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue streetNode)
        jset (this).street (assignedValue)
        cityNode <- (DomSearchHelper.getNode (StreetAddressData.cITY) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue cityNode)
        jset (this).city (assignedValue)
        stateNode <- (DomSearchHelper.getNode (StreetAddressData.sTATE) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue stateNode)
        jset (this).state (assignedValue)
        codeNode <- (DomSearchHelper.getNode (StreetAddressData.cODE) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue codeNode)
        jset (this).code (assignedValue)
        countryNode <- (DomSearchHelper.getNode (StreetAddressData.cOUNTRY) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue countryNode)
        jset (this).country (assignedValue)
        Control.Monad.void (StreetAddress.log this)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: StreetAddress -> IO StreetAddress
new_1 streetAddress = do
    this <- newRecord_
    init_1 this streetAddress
    pure this

init_1 :: StreetAddress -> StreetAddress -> IO ()
init_1 this streetAddress = do
        initFields_ this
        assignedValue <- (StreetAddress.getId streetAddress)
        jset (this).id (assignedValue)
        assignedValue <- (StreetAddress.getName streetAddress)
        jset (this).name (assignedValue)
        assignedValue <- (StreetAddress.getStreet streetAddress)
        jset (this).street (assignedValue)
        assignedValue <- (StreetAddress.getCity streetAddress)
        jset (this).city (assignedValue)
        assignedValue <- (StreetAddress.getState streetAddress)
        jset (this).state (assignedValue)
        assignedValue <- (StreetAddress.getCode streetAddress)
        jset (this).code (assignedValue)
        assignedValue <- (StreetAddress.getCountry streetAddress)
        jset (this).country (assignedValue)
        assignedValue <- (StreetAddress.isDefault streetAddress)
        jset (this).isDefault (assignedValue)
        Control.Monad.void (StreetAddress.log this)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HttpServletRequest.HttpServletRequest -> IO StreetAddress
new_1 request = do
    this <- newRecord_
    init_1 this request
    pure this

init_1 :: StreetAddress -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this request = do
        initFields_ this
        Control.Monad.void (StreetAddress.setId this (jio (HttpServletRequest.getParameter request (StreetAddressData.iD))))
        Control.Monad.void (StreetAddress.setName this (jio (HttpServletRequest.getParameter request (StreetAddressData.nAME))))
        Control.Monad.void (StreetAddress.setStreet this (jio (HttpServletRequest.getParameter request (StreetAddressData.sTREET))))
        Control.Monad.void (StreetAddress.setCity this (jio (HttpServletRequest.getParameter request (StreetAddressData.cITY))))
        Control.Monad.void (StreetAddress.setState this (jio (HttpServletRequest.getParameter request (StreetAddressData.sTATE))))
        Control.Monad.void (StreetAddress.setCode this (jio (HttpServletRequest.getParameter request (StreetAddressData.cODE))))
        Control.Monad.void (StreetAddress.setCountry this (jio (HttpServletRequest.getParameter request (StreetAddressData.cOUNTRY))))
        Control.Monad.void (StreetAddress.log this)
        pure ()

new_6 :: String -> String -> String -> String -> String -> String -> IO StreetAddress
new_6 name street city state code country = do
    this <- newRecord_
    init_6 this name street city state code country
    pure this

init_6 :: StreetAddress -> String -> String -> String -> String -> String -> String -> IO ()
init_6 this name street city state code country = do
        initFields_ this
        jset (this).name (name)
        jset (this).street (street)
        jset (this).city (city)
        jset (this).state (state)
        jset (this).code (code)
        jset (this).country (country)
        Control.Monad.void (StreetAddress.log this)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO StreetAddress
new_1 address = do
    this <- newRecord_
    init_1 this address
    pure this

init_1 :: StreetAddress -> HashMap.HashMap -> IO ()
init_1 this address = do
        initFields_ this
        jset (this).id ((javaCast (jio (HashMap.get address (StreetAddressData.iD))) :: String))
        jset (this).name ((javaCast (jio (HashMap.get address (StreetAddressData.nAME))) :: String))
        jset (this).street ((javaCast (jio (HashMap.get address (StreetAddressData.sTREET))) :: String))
        jset (this).city ((javaCast (jio (HashMap.get address (StreetAddressData.cITY))) :: String))
        jset (this).state ((javaCast (jio (HashMap.get address (StreetAddressData.sTATE))) :: String))
        jset (this).code ((javaCast (jio (HashMap.get address (StreetAddressData.cODE))) :: String))
        jset (this).country ((javaCast (jio (HashMap.get address (StreetAddressData.cOUNTRY))) :: String))
        let def = (javaCast (jio (HashMap.get address (StreetAddressData.dEFAULT))) :: String)
        if ((def /= javaNull) && ((Prelude.fromEnum (Prelude.compare def (StreetAddressData.dEFAULT)) - 1) == 0)) then do
            jset (this).isDefault (True)
        else do
            jset (this).isDefault (False)
        Control.Monad.void (StreetAddress.log this)
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: StreetAddress))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: StreetAddress))

log_impl :: StreetAddress -> IO (())
log_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Created Address: \n" ++ javaToString (jio (StreetAddress.toHashMap this))) this "log")
        pure ()


setId :: (JavaObjectClass this_) => this_ -> String -> IO (())
setId object_ a1 = jmethod object_ "setId" (\() -> (setId_impl (javaCast object_ :: StreetAddress))) () a1

setId_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setId_super object_ a1 = (setId_impl (javaCast object_ :: StreetAddress)) a1

setId_impl :: StreetAddress -> String -> IO (())
setId_impl this id = do
        jset (this).id (id)
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: StreetAddress))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: StreetAddress)) a1

setName_impl :: StreetAddress -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


setStreet :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStreet object_ a1 = jmethod object_ "setStreet" (\() -> (setStreet_impl (javaCast object_ :: StreetAddress))) () a1

setStreet_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStreet_super object_ a1 = (setStreet_impl (javaCast object_ :: StreetAddress)) a1

setStreet_impl :: StreetAddress -> String -> IO (())
setStreet_impl this value = do
        jset (this).street (value)
        pure ()


setCity :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCity object_ a1 = jmethod object_ "setCity" (\() -> (setCity_impl (javaCast object_ :: StreetAddress))) () a1

setCity_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCity_super object_ a1 = (setCity_impl (javaCast object_ :: StreetAddress)) a1

setCity_impl :: StreetAddress -> String -> IO (())
setCity_impl this value = do
        jset (this).city (value)
        pure ()


setState :: (JavaObjectClass this_) => this_ -> String -> IO (())
setState object_ a1 = jmethod object_ "setState" (\() -> (setState_impl (javaCast object_ :: StreetAddress))) () a1

setState_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setState_super object_ a1 = (setState_impl (javaCast object_ :: StreetAddress)) a1

setState_impl :: StreetAddress -> String -> IO (())
setState_impl this value = do
        jset (this).state (value)
        pure ()


setCode :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCode object_ a1 = jmethod object_ "setCode" (\() -> (setCode_impl (javaCast object_ :: StreetAddress))) () a1

setCode_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCode_super object_ a1 = (setCode_impl (javaCast object_ :: StreetAddress)) a1

setCode_impl :: StreetAddress -> String -> IO (())
setCode_impl this value = do
        jset (this).code (value)
        pure ()


setCountry :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCountry object_ a1 = jmethod object_ "setCountry" (\() -> (setCountry_impl (javaCast object_ :: StreetAddress))) () a1

setCountry_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCountry_super object_ a1 = (setCountry_impl (javaCast object_ :: StreetAddress)) a1

setCountry_impl :: StreetAddress -> String -> IO (())
setCountry_impl this value = do
        jset (this).country (value)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: StreetAddress))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: StreetAddress))

getName_impl :: StreetAddress -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getStreet :: (JavaObjectClass this_) => this_ -> IO (String)
getStreet object_ = jmethod object_ "getStreet" (\() -> (getStreet_impl (javaCast object_ :: StreetAddress))) ()

getStreet_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStreet_super object_ = (getStreet_impl (javaCast object_ :: StreetAddress))

getStreet_impl :: StreetAddress -> IO (String)
getStreet_impl this = do
        pure ((jget (this).street))


getCity :: (JavaObjectClass this_) => this_ -> IO (String)
getCity object_ = jmethod object_ "getCity" (\() -> (getCity_impl (javaCast object_ :: StreetAddress))) ()

getCity_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCity_super object_ = (getCity_impl (javaCast object_ :: StreetAddress))

getCity_impl :: StreetAddress -> IO (String)
getCity_impl this = do
        pure ((jget (this).city))


getState :: (JavaObjectClass this_) => this_ -> IO (String)
getState object_ = jmethod object_ "getState" (\() -> (getState_impl (javaCast object_ :: StreetAddress))) ()

getState_super :: (JavaObjectClass this_) => this_ -> IO (String)
getState_super object_ = (getState_impl (javaCast object_ :: StreetAddress))

getState_impl :: StreetAddress -> IO (String)
getState_impl this = do
        pure ((jget (this).state))


getCode :: (JavaObjectClass this_) => this_ -> IO (String)
getCode object_ = jmethod object_ "getCode" (\() -> (getCode_impl (javaCast object_ :: StreetAddress))) ()

getCode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCode_super object_ = (getCode_impl (javaCast object_ :: StreetAddress))

getCode_impl :: StreetAddress -> IO (String)
getCode_impl this = do
        pure ((jget (this).code))


getCountry :: (JavaObjectClass this_) => this_ -> IO (String)
getCountry object_ = jmethod object_ "getCountry" (\() -> (getCountry_impl (javaCast object_ :: StreetAddress))) ()

getCountry_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCountry_super object_ = (getCountry_impl (javaCast object_ :: StreetAddress))

getCountry_impl :: StreetAddress -> IO (String)
getCountry_impl this = do
        pure ((jget (this).country))


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: StreetAddress))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: StreetAddress))

getId_impl :: StreetAddress -> IO (String)
getId_impl this = do
        pure ((jget (this).id))


isDefault :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefault object_ = jmethod object_ "isDefault" (\() -> (isDefault_impl (javaCast object_ :: StreetAddress))) ()

isDefault_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefault_super object_ = (isDefault_impl (javaCast object_ :: StreetAddress))

isDefault_impl :: StreetAddress -> IO (Bool)
isDefault_impl this = do
        pure ((jget (this).isDefault))


isEmpty :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty object_ = jmethod object_ "isEmpty" (\() -> (isEmpty_impl (javaCast object_ :: StreetAddress))) ()

isEmpty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEmpty_super object_ = (isEmpty_impl (javaCast object_ :: StreetAddress))

isEmpty_impl :: StreetAddress -> IO (Bool)
isEmpty_impl this = do
    javaCatchReturn $ do
        let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        when (((((((((((((jio (StreetAddress.getName this)) == javaNull) && ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getName this)) eMPTY_STRING) - 1) == 0)) && ((jio (StreetAddress.getStreet this)) == javaNull)) && ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getStreet this)) eMPTY_STRING) - 1) == 0)) && ((jio (StreetAddress.getCity this)) == javaNull)) && ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getCity this)) eMPTY_STRING) - 1) == 0)) && ((jio (StreetAddress.getState this)) == javaNull)) && ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getState this)) eMPTY_STRING) - 1) == 0)) && ((jio (StreetAddress.getCode this)) == javaNull)) && ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getCode this)) eMPTY_STRING) - 1) == 0)) && ((jio (StreetAddress.getCountry this)) == javaNull)) && ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getCountry this)) eMPTY_STRING) - 1) == 0)) $ do
            javaReturn (True)
        pure (False)


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: StreetAddress))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: StreetAddress))

isValid_impl :: StreetAddress -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        when (((((((((((((jio (StreetAddress.getName this)) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getName this)) eMPTY_STRING) - 1) == 0)) || ((jio (StreetAddress.getStreet this)) == javaNull)) || ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getStreet this)) eMPTY_STRING) - 1) == 0)) || ((jio (StreetAddress.getCity this)) == javaNull)) || ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getCity this)) eMPTY_STRING) - 1) == 0)) || ((jio (StreetAddress.getState this)) == javaNull)) || ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getState this)) eMPTY_STRING) - 1) == 0)) || ((jio (StreetAddress.getCode this)) == javaNull)) || ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getCode this)) eMPTY_STRING) - 1) == 0)) || ((jio (StreetAddress.getCountry this)) == javaNull)) || ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getCountry this)) eMPTY_STRING) - 1) == 0)) $ do
            javaReturn (False)
        pure (True)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: StreetAddress))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: StreetAddress))

validationInfo_impl :: StreetAddress -> IO (String)
validationInfo_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Address Failed To Validate - All fields must contain data.<br></br>")
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (StreetAddress.getName this)) (StreetAddressData.mIN) (StreetAddressData.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid name")
            Control.Monad.void (StringMaker.append stringBuffer "<br></br>")
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (StreetAddress.getStreet this)) (StreetAddressData.mIN) (StreetAddressData.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid street")
            Control.Monad.void (StringMaker.append stringBuffer "<br></br>")
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (StreetAddress.getCity this)) (StreetAddressData.mIN) (StreetAddressData.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid city")
            Control.Monad.void (StringMaker.append stringBuffer "<br></br>")
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (StreetAddress.getState this)) (StreetAddressData.mIN) (StreetAddressData.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid state")
            Control.Monad.void (StringMaker.append stringBuffer "<br></br>")
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (StreetAddress.getCode this)) (StreetAddressData.mIN) (StreetAddressData.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid zipcode")
            Control.Monad.void (StringMaker.append stringBuffer "<br></br>")
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (StreetAddress.getCountry this)) (StreetAddressData.mIN) (StreetAddressData.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid country")
            Control.Monad.void (StringMaker.append stringBuffer "<br></br>")
        (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: StreetAddress))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: StreetAddress))

toValidationInfoDoc_impl :: StreetAddress -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: StreetAddress))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: StreetAddress)) a1

toValidationInfoNode_impl :: StreetAddress -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "toValidationInfoNode" e)
            pure (javaNull)
            ) $ do
            node <- (Document.createElement document (StreetAddressData.fORM))
            Control.Monad.void (Node.appendChild node (jio (StreetAddress.toXmlNode this document)))
            pure (node)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: StreetAddress))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: StreetAddress))

toHashMap_impl :: StreetAddress -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (StreetAddressData.iD) (jget (this).id))
        Control.Monad.void (HashMap.put hashMap (StreetAddressData.nAME) (jget (this).name))
        Control.Monad.void (HashMap.put hashMap (StreetAddressData.sTREET) (jget (this).street))
        Control.Monad.void (HashMap.put hashMap (StreetAddressData.cITY) (jget (this).city))
        Control.Monad.void (HashMap.put hashMap (StreetAddressData.sTATE) (jget (this).state))
        Control.Monad.void (HashMap.put hashMap (StreetAddressData.cODE) (jget (this).code))
        Control.Monad.void (HashMap.put hashMap (StreetAddressData.cOUNTRY) (jget (this).country))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StreetAddress))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StreetAddress)) a1

toXmlNode_impl :: StreetAddress -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        stringUtil <- (StringUtil.getInstance)
        hashMap <- (StreetAddress.toHashMap this)
        keySet <- (HashMap.keySet hashMap)
        keyArray <- (Set.toArray keySet)
        let size = (jlength keyArray)
        node <- (Document.createElement document (StreetAddressData.aDDRESS))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let name = (javaCast (jindex keyArray (i)) :: String)
            value <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap name)) :: String))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document name value)))
        pure (node)


