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
-- package org.allbinary.business.user.modules
module User where

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
import qualified Any -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified UserConfigurationDomDocumentMapping -- org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping
import qualified UserConfigurationInterface -- org.allbinary.business.user.modules.configuration.UserConfigurationInterface
import qualified UserConfigurationInterfaceFactory -- org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory
import qualified Password -- org.allbinary.business.user.password.Password
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified UserRoleB -- org.allbinary.business.user.role.UserRoleB
import qualified UserRoleData -- org.allbinary.business.user.role.UserRoleData
import qualified UserName -- org.allbinary.business.user.username.UserName
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified WeblisketSessionData -- org.allbinary.logic.communication.http.request.session.WeblisketSessionData
import qualified WeblisketSessionInterface -- org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements UserInterface
data User = User
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , userName :: IORef (String)
    , prefixName :: IORef (String)
    , firstName :: IORef (String)
    , lastName :: IORef (String)
    , middleName :: IORef (String)
    , suffixName :: IORef (String)
    , company :: IORef (String)
    , positionAtCompany :: IORef (String)
    , mainEmail :: IORef (String)
    , secondaryEmail :: IORef (String)
    , homePhone :: IORef (String)
    , cellPhone :: IORef (String)
    , workPhone :: IORef (String)
    , otherContact :: IORef (String)
    , electronicDevice :: IORef (String)
    , fax :: IORef (String)
    , role :: IORef (UserRole.UserRole)
    , encryption :: IORef (String)
    , secret :: IORef (String)
    , password :: IORef (Password.Password)
    , enable :: IORef (String)
    , permissions :: IORef (String)
    , userConfigurationInterface :: IORef (UserConfigurationInterface.UserConfigurationInterface)
    }

instance JavaNull User where
    javaNull = javaNullRecord "User"

instance JavaEquals User where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq User where
    (==) = jrecordEquals

instance JavaObjectClass User where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO User
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    userName <- newIORef ""
    prefixName <- newIORef ""
    firstName <- newIORef ""
    lastName <- newIORef ""
    middleName <- newIORef ""
    suffixName <- newIORef ""
    company <- newIORef ""
    positionAtCompany <- newIORef ""
    mainEmail <- newIORef ""
    secondaryEmail <- newIORef ""
    homePhone <- newIORef ""
    cellPhone <- newIORef ""
    workPhone <- newIORef ""
    otherContact <- newIORef ""
    electronicDevice <- newIORef ""
    fax <- newIORef ""
    role <- newIORef javaNull
    encryption <- newIORef ""
    secret <- newIORef ""
    password <- newIORef javaNull
    enable <- newIORef ""
    permissions <- newIORef ""
    userConfigurationInterface <- newIORef javaNull
    let this = User header_ logUtil userName prefixName firstName lastName middleName suffixName company positionAtCompany mainEmail secondaryEmail homePhone cellPhone workPhone otherContact electronicDevice fax role encryption secret password enable permissions userConfigurationInterface
    jregisterLevel header_ this
    UserInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPrefixName" (\() -> setPrefixName_impl this)
    jregisterMethod header_ "setFirstName" (\() -> setFirstName_impl this)
    jregisterMethod header_ "setLastName" (\() -> setLastName_impl this)
    jregisterMethod header_ "setMiddleName" (\() -> setMiddleName_impl this)
    jregisterMethod header_ "setSuffixName" (\() -> setSuffixName_impl this)
    jregisterMethod header_ "setCompany" (\() -> setCompany_impl this)
    jregisterMethod header_ "setPositionAtCompany" (\() -> setPositionAtCompany_impl this)
    jregisterMethod header_ "setMainEmail" (\() -> setMainEmail_impl this)
    jregisterMethod header_ "setSecondaryEmail" (\() -> setSecondaryEmail_impl this)
    jregisterMethod header_ "setHomePhone" (\() -> setHomePhone_impl this)
    jregisterMethod header_ "setCellPhone" (\() -> setCellPhone_impl this)
    jregisterMethod header_ "setWorkPhone" (\() -> setWorkPhone_impl this)
    jregisterMethod header_ "setOtherContact" (\() -> setOtherContact_impl this)
    jregisterMethod header_ "setElectronicContact" (\() -> setElectronicContact_impl this)
    jregisterMethod header_ "setFax" (\() -> setFax_impl this)
    jregisterMethod header_ "setRole" (\() -> setRole_impl this)
    jregisterMethod header_ "setPermissions" (\() -> setPermissions_impl this)
    jregisterMethod header_ "setEncryption" (\() -> setEncryption_impl this)
    jregisterMethod header_ "setSecret" (\() -> setSecret_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "enable" (\() -> enable_impl this)
    jregisterMethod header_ "disable" (\() -> disable_impl this)
    jregisterMethod header_ "setEnable" (\() -> setEnable_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getPrefixName" (\() -> getPrefixName_impl this)
    jregisterMethod header_ "getFirstName" (\() -> getFirstName_impl this)
    jregisterMethod header_ "getLastName" (\() -> getLastName_impl this)
    jregisterMethod header_ "getMiddleName" (\() -> getMiddleName_impl this)
    jregisterMethod header_ "getSuffixName" (\() -> getSuffixName_impl this)
    jregisterMethod header_ "getCompany" (\() -> getCompany_impl this)
    jregisterMethod header_ "getPositionAtCompany" (\() -> getPositionAtCompany_impl this)
    jregisterMethod header_ "getMainEmail" (\() -> getMainEmail_impl this)
    jregisterMethod header_ "getSecondaryEmail" (\() -> getSecondaryEmail_impl this)
    jregisterMethod header_ "getHomePhone" (\() -> getHomePhone_impl this)
    jregisterMethod header_ "getCellPhone" (\() -> getCellPhone_impl this)
    jregisterMethod header_ "getWorkPhone" (\() -> getWorkPhone_impl this)
    jregisterMethod header_ "getOtherContact" (\() -> getOtherContact_impl this)
    jregisterMethod header_ "getElectronicContact" (\() -> getElectronicContact_impl this)
    jregisterMethod header_ "getFax" (\() -> getFax_impl this)
    jregisterMethod header_ "getRole" (\() -> getRole_impl this)
    jregisterMethod header_ "getPermissions" (\() -> getPermissions_impl this)
    jregisterMethod header_ "getEncryption" (\() -> getEncryption_impl this)
    jregisterMethod header_ "getSecret" (\() -> getSecret_impl this)
    jregisterMethod header_ "getPassword" (\() -> getPassword_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toPasswordHashMap" (\() -> toPasswordHashMap_impl this)
    jregisterMethod header_ "validateSession" (\() -> validateSession_impl this)
    jregisterMethod header_ "updateSession" (\() -> updateSession_impl this)
    jregisterMethod header_ "isSessionValid" (\() -> isSessionValid_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "getUserConfigurationInterface" (\() -> getUserConfigurationInterface_impl this)
    jregisterMethod header_ "setUserConfigurationInterface" (\() -> setUserConfigurationInterface_impl this)
    pure this

initFields_ :: User -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.userName ("")
    jset this.prefixName ("")
    jset this.firstName ("")
    jset this.lastName ("")
    jset this.middleName ("")
    jset this.suffixName ("")
    jset this.company ("")
    jset this.positionAtCompany ("")
    jset this.mainEmail ("")
    jset this.secondaryEmail ("")
    jset this.homePhone ("")
    jset this.cellPhone ("")
    jset this.workPhone ("")
    jset this.otherContact ("")
    jset this.electronicDevice ("")
    jset this.fax ("")
    jset this.role (javaNull)
    jset this.encryption ("")
    jset this.secret ("")
    jset this.password (javaNull)
    jset this.enable ("")
    jset this.permissions ("")
    jset this.userConfigurationInterface (javaNull)
    pure ()

new_ :: IO User
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: User -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (UserConfigurationInterfaceFactory.getInstance)
        jset (this).userConfigurationInterface (assignedValue)
        assignedValue <- (Password.new_1 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).password (assignedValue)
        pure ()

new_1 :: HttpServletRequest.HttpServletRequest -> IO User
new_1 request = do
    this <- newRecord_
    init_1 this request
    pure this

init_1 :: User -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this request = do
        initFields_ this
        Control.Monad.void (User.getFormData this (jio (RequestParams.toHashMap ((jio (RequestParams.new_1 request))))))
        assignedValue <- (UserConfigurationInterfaceFactory.getInstance (jio (User.getRole this)))
        jset (this).userConfigurationInterface (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO User
new_1 userHashMap = do
    this <- newRecord_
    init_1 this userHashMap
    pure this

init_1 :: User -> HashMap.HashMap -> IO ()
init_1 this userHashMap = do
        initFields_ this
        Control.Monad.void (User.getFormData this userHashMap)
        assignedValue <- (UserConfigurationInterfaceFactory.getInstance (jio (User.getRole this)))
        jset (this).userConfigurationInterface (assignedValue)
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: User))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: User)) a1

getFormData_impl :: User -> HashMap.HashMap -> IO (())
getFormData_impl this userHashMap = do
        assignedValue <- (UserName.get ((jio (UserName.new_1 userHashMap))))
        jset (this).userName (assignedValue)
        stringUtil <- (StringUtil.getInstance)
        passwordString <- newIORef =<< (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.pASSWORD))) :: String))
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when ((jio (StringValidationUtil.isEmpty stringValidationUtil (jget (this).userName))) && (jio (StringValidationUtil.isEmpty stringValidationUtil (jget passwordString)))) $ do
            assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (WeblisketSessionData.rEMOVABLEUSERNAME))) :: String))
            jset (this).userName (assignedValue)
            assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (WeblisketSessionData.rEMOVABLEPASSWORD))) :: String))
            jset passwordString (assignedValue)
        encryption <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (jget ((jio (EntryData.getInstance))).eNCRYPTION))) :: String))
        secret <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.sECRET))) :: String))
        assignedValue <- (Password.new_1 (jget passwordString))
        jset (this).password (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.pREFIXNAME))) :: String))
        jset (this).prefixName (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.fIRSTNAME))) :: String))
        jset (this).firstName (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.lASTNAME))) :: String))
        jset (this).lastName (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.mIDDLENAME))) :: String))
        jset (this).middleName (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.sUFFIXNAME))) :: String))
        jset (this).suffixName (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.cOMPANY))) :: String))
        jset (this).company (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.pOSITIONATCOMPANY))) :: String))
        jset (this).positionAtCompany (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.mAINEMAIL))) :: String))
        jset (this).mainEmail (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.sECONDARYEMAIL))) :: String))
        jset (this).secondaryEmail (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.hOMEPHONE))) :: String))
        jset (this).homePhone (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.cELLPHONE))) :: String))
        jset (this).cellPhone (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.wORKPHONE))) :: String))
        jset (this).workPhone (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.oTHERCONTACT))) :: String))
        jset (this).otherContact (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.eLECTRONICDEVICE))) :: String))
        jset (this).electronicDevice (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.fAX))) :: String))
        jset (this).fax (assignedValue)
        assignedValue <- (UserRoleB.getRole (javaCast (jio (HashMap.get userHashMap (UserRoleData.nAME))) :: String))
        jset (this).role (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (UserData.pERMISSIONS))) :: String))
        jset (this).permissions (assignedValue)
        if ((Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jget (this).permissions)))) && ((Prelude.fromEnum (Prelude.compare (jget (this).permissions) (jget ((jio (StoreFrontData.getInstance))).nAME)) - 1) == 0)) then do
            assignedValue <- (jio (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)))
        jset (this).permissions (assignedValue)
        else when ((jget (this).permissions) == javaNull) $ do
            jset (this).permissions ("No Permissions")
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get userHashMap (jget ((jio (EntryData.getInstance))).eNABLE))) :: String))
        jset (this).enable (assignedValue)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: User))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: User))

isValid_impl :: User -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vALIDATIONERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget (commonStrings).iS_VALID) e)
            pure (False)
            ) $ do
            valid <- newIORef (True)
            when (Prelude.not (jio (UserName.isValid ((jio (UserName.getInstance))) (jget (this).userName)))) $ do
                jset valid (False)
            when (Prelude.not (jio (Password.isValid ((jget (this).password))))) $ do
                jset valid (False)
            stringValidationUtil <- (StringValidationUtil.getInstance)
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).firstName) 1 (jget UserData.mAXLEN)))) $ do
                jset valid (False)
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).lastName) 1 (jget UserData.mAXLEN)))) $ do
                jset valid (False)
            when ((Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).mainEmail) 1 (jget UserData.mAXLEN)))) || ((jstringIndexOf (jget (this).mainEmail) "@" 0) == (Prelude.negate 1))) $ do
                jset valid (False)
            pure ((jget valid))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: User))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: User))

validationInfo_impl :: User -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringValidationUtil <- (StringValidationUtil.getInstance)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (UserName.getValidationInfo (jget (this).userName))))
            Control.Monad.void (StringMaker.append stringBuffer (jio (Password.getValidationInfo ((jget (this).password)))))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).firstName) 1 (jget UserData.mAXLEN)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid First Name.<br />")
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).lastName) 1 (jget UserData.mAXLEN)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid Last Name.<br />")
            when ((Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).mainEmail) 1 (jget UserData.mAXLEN)))) || ((jstringIndexOf (jget (this).mainEmail) "@" 0) == (Prelude.negate 1))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Please enter a valid email address.<br />")
            (StringMaker.toString stringBuffer)


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: User))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: User)) a1

setUserName_impl :: User -> String -> IO (())
setUserName_impl this value = do
        jset (this).userName (value)
        pure ()


setPrefixName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPrefixName object_ a1 = jmethod object_ "setPrefixName" (\() -> (setPrefixName_impl (javaCast object_ :: User))) () a1

setPrefixName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPrefixName_super object_ a1 = (setPrefixName_impl (javaCast object_ :: User)) a1

setPrefixName_impl :: User -> String -> IO (())
setPrefixName_impl this value = do
        jset (this).prefixName (value)
        pure ()


setFirstName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFirstName object_ a1 = jmethod object_ "setFirstName" (\() -> (setFirstName_impl (javaCast object_ :: User))) () a1

setFirstName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFirstName_super object_ a1 = (setFirstName_impl (javaCast object_ :: User)) a1

setFirstName_impl :: User -> String -> IO (())
setFirstName_impl this value = do
        jset (this).firstName (value)
        pure ()


setLastName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastName object_ a1 = jmethod object_ "setLastName" (\() -> (setLastName_impl (javaCast object_ :: User))) () a1

setLastName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastName_super object_ a1 = (setLastName_impl (javaCast object_ :: User)) a1

setLastName_impl :: User -> String -> IO (())
setLastName_impl this value = do
        jset (this).lastName (value)
        pure ()


setMiddleName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMiddleName object_ a1 = jmethod object_ "setMiddleName" (\() -> (setMiddleName_impl (javaCast object_ :: User))) () a1

setMiddleName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMiddleName_super object_ a1 = (setMiddleName_impl (javaCast object_ :: User)) a1

setMiddleName_impl :: User -> String -> IO (())
setMiddleName_impl this value = do
        jset (this).middleName (value)
        pure ()


setSuffixName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSuffixName object_ a1 = jmethod object_ "setSuffixName" (\() -> (setSuffixName_impl (javaCast object_ :: User))) () a1

setSuffixName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSuffixName_super object_ a1 = (setSuffixName_impl (javaCast object_ :: User)) a1

setSuffixName_impl :: User -> String -> IO (())
setSuffixName_impl this value = do
        jset (this).suffixName (value)
        pure ()


setCompany :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCompany object_ a1 = jmethod object_ "setCompany" (\() -> (setCompany_impl (javaCast object_ :: User))) () a1

setCompany_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCompany_super object_ a1 = (setCompany_impl (javaCast object_ :: User)) a1

setCompany_impl :: User -> String -> IO (())
setCompany_impl this value = do
        jset (this).company (value)
        pure ()


setPositionAtCompany :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPositionAtCompany object_ a1 = jmethod object_ "setPositionAtCompany" (\() -> (setPositionAtCompany_impl (javaCast object_ :: User))) () a1

setPositionAtCompany_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPositionAtCompany_super object_ a1 = (setPositionAtCompany_impl (javaCast object_ :: User)) a1

setPositionAtCompany_impl :: User -> String -> IO (())
setPositionAtCompany_impl this value = do
        jset (this).positionAtCompany (value)
        pure ()


setMainEmail :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMainEmail object_ a1 = jmethod object_ "setMainEmail" (\() -> (setMainEmail_impl (javaCast object_ :: User))) () a1

setMainEmail_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMainEmail_super object_ a1 = (setMainEmail_impl (javaCast object_ :: User)) a1

setMainEmail_impl :: User -> String -> IO (())
setMainEmail_impl this value = do
        jset (this).mainEmail (value)
        pure ()


setSecondaryEmail :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSecondaryEmail object_ a1 = jmethod object_ "setSecondaryEmail" (\() -> (setSecondaryEmail_impl (javaCast object_ :: User))) () a1

setSecondaryEmail_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSecondaryEmail_super object_ a1 = (setSecondaryEmail_impl (javaCast object_ :: User)) a1

setSecondaryEmail_impl :: User -> String -> IO (())
setSecondaryEmail_impl this value = do
        jset (this).secondaryEmail (value)
        pure ()


setHomePhone :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomePhone object_ a1 = jmethod object_ "setHomePhone" (\() -> (setHomePhone_impl (javaCast object_ :: User))) () a1

setHomePhone_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomePhone_super object_ a1 = (setHomePhone_impl (javaCast object_ :: User)) a1

setHomePhone_impl :: User -> String -> IO (())
setHomePhone_impl this value = do
        jset (this).homePhone (value)
        pure ()


setCellPhone :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCellPhone object_ a1 = jmethod object_ "setCellPhone" (\() -> (setCellPhone_impl (javaCast object_ :: User))) () a1

setCellPhone_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCellPhone_super object_ a1 = (setCellPhone_impl (javaCast object_ :: User)) a1

setCellPhone_impl :: User -> String -> IO (())
setCellPhone_impl this value = do
        jset (this).cellPhone (value)
        pure ()


setWorkPhone :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWorkPhone object_ a1 = jmethod object_ "setWorkPhone" (\() -> (setWorkPhone_impl (javaCast object_ :: User))) () a1

setWorkPhone_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWorkPhone_super object_ a1 = (setWorkPhone_impl (javaCast object_ :: User)) a1

setWorkPhone_impl :: User -> String -> IO (())
setWorkPhone_impl this value = do
        jset (this).workPhone (value)
        pure ()


setOtherContact :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOtherContact object_ a1 = jmethod object_ "setOtherContact" (\() -> (setOtherContact_impl (javaCast object_ :: User))) () a1

setOtherContact_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOtherContact_super object_ a1 = (setOtherContact_impl (javaCast object_ :: User)) a1

setOtherContact_impl :: User -> String -> IO (())
setOtherContact_impl this value = do
        jset (this).otherContact (value)
        pure ()


setElectronicContact :: (JavaObjectClass this_) => this_ -> String -> IO (())
setElectronicContact object_ a1 = jmethod object_ "setElectronicContact" (\() -> (setElectronicContact_impl (javaCast object_ :: User))) () a1

setElectronicContact_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setElectronicContact_super object_ a1 = (setElectronicContact_impl (javaCast object_ :: User)) a1

setElectronicContact_impl :: User -> String -> IO (())
setElectronicContact_impl this value = do
        jset (this).electronicDevice (value)
        pure ()


setFax :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFax object_ a1 = jmethod object_ "setFax" (\() -> (setFax_impl (javaCast object_ :: User))) () a1

setFax_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFax_super object_ a1 = (setFax_impl (javaCast object_ :: User)) a1

setFax_impl :: User -> String -> IO (())
setFax_impl this value = do
        jset (this).fax (value)
        pure ()


setRole :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (())
setRole object_ a1 = jmethod object_ "setRole" (\() -> (setRole_impl (javaCast object_ :: User))) () a1

setRole_super :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (())
setRole_super object_ a1 = (setRole_impl (javaCast object_ :: User)) a1

setRole_impl :: User -> UserRole.UserRole -> IO (())
setRole_impl this role = do
        jset (this).role (role)
        pure ()


setPermissions :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPermissions object_ a1 = jmethod object_ "setPermissions" (\() -> (setPermissions_impl (javaCast object_ :: User))) () a1

setPermissions_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPermissions_super object_ a1 = (setPermissions_impl (javaCast object_ :: User)) a1

setPermissions_impl :: User -> String -> IO (())
setPermissions_impl this value = do
        jset (this).permissions (value)
        pure ()


setEncryption :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEncryption object_ a1 = jmethod object_ "setEncryption" (\() -> (setEncryption_impl (javaCast object_ :: User))) () a1

setEncryption_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEncryption_super object_ a1 = (setEncryption_impl (javaCast object_ :: User)) a1

setEncryption_impl :: User -> String -> IO (())
setEncryption_impl this value = do
        jset (this).encryption (value)
        pure ()


setSecret :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSecret object_ a1 = jmethod object_ "setSecret" (\() -> (setSecret_impl (javaCast object_ :: User))) () a1

setSecret_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSecret_super object_ a1 = (setSecret_impl (javaCast object_ :: User)) a1

setSecret_impl :: User -> String -> IO (())
setSecret_impl this value = do
        jset (this).secret (value)
        pure ()


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: User))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: User)) a1

setPassword_impl :: User -> String -> IO (())
setPassword_impl this value = do
        Control.Monad.void (Password.set ((jget (this).password)) value)
        pure ()


enable :: (JavaObjectClass this_) => this_ -> IO (())
enable object_ = jmethod object_ "enable" (\() -> (enable_impl (javaCast object_ :: User))) ()

enable_super :: (JavaObjectClass this_) => this_ -> IO (())
enable_super object_ = (enable_impl (javaCast object_ :: User))

enable_impl :: User -> IO (())
enable_impl this = do
        Control.Monad.void (User.setEnable this "Yes")
        pure ()


disable :: (JavaObjectClass this_) => this_ -> IO (())
disable object_ = jmethod object_ "disable" (\() -> (disable_impl (javaCast object_ :: User))) ()

disable_super :: (JavaObjectClass this_) => this_ -> IO (())
disable_super object_ = (disable_impl (javaCast object_ :: User))

disable_impl :: User -> IO (())
disable_impl this = do
        Control.Monad.void (User.setEnable this "No")
        pure ()


setEnable :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable object_ a1 = jmethod object_ "setEnable" (\() -> (setEnable_impl (javaCast object_ :: User))) () a1

setEnable_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable_super object_ a1 = (setEnable_impl (javaCast object_ :: User)) a1

setEnable_impl :: User -> String -> IO (())
setEnable_impl this enable = do
        jset (this).enable (enable)
        pure ()


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: User))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: User))

getUserName_impl :: User -> IO (String)
getUserName_impl this = do
        pure ((jget (this).userName))


getPrefixName :: (JavaObjectClass this_) => this_ -> IO (String)
getPrefixName object_ = jmethod object_ "getPrefixName" (\() -> (getPrefixName_impl (javaCast object_ :: User))) ()

getPrefixName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPrefixName_super object_ = (getPrefixName_impl (javaCast object_ :: User))

getPrefixName_impl :: User -> IO (String)
getPrefixName_impl this = do
        pure ((jget (this).prefixName))


getFirstName :: (JavaObjectClass this_) => this_ -> IO (String)
getFirstName object_ = jmethod object_ "getFirstName" (\() -> (getFirstName_impl (javaCast object_ :: User))) ()

getFirstName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFirstName_super object_ = (getFirstName_impl (javaCast object_ :: User))

getFirstName_impl :: User -> IO (String)
getFirstName_impl this = do
        pure ((jget (this).firstName))


getLastName :: (JavaObjectClass this_) => this_ -> IO (String)
getLastName object_ = jmethod object_ "getLastName" (\() -> (getLastName_impl (javaCast object_ :: User))) ()

getLastName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastName_super object_ = (getLastName_impl (javaCast object_ :: User))

getLastName_impl :: User -> IO (String)
getLastName_impl this = do
        pure ((jget (this).lastName))


getMiddleName :: (JavaObjectClass this_) => this_ -> IO (String)
getMiddleName object_ = jmethod object_ "getMiddleName" (\() -> (getMiddleName_impl (javaCast object_ :: User))) ()

getMiddleName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMiddleName_super object_ = (getMiddleName_impl (javaCast object_ :: User))

getMiddleName_impl :: User -> IO (String)
getMiddleName_impl this = do
        pure ((jget (this).middleName))


getSuffixName :: (JavaObjectClass this_) => this_ -> IO (String)
getSuffixName object_ = jmethod object_ "getSuffixName" (\() -> (getSuffixName_impl (javaCast object_ :: User))) ()

getSuffixName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSuffixName_super object_ = (getSuffixName_impl (javaCast object_ :: User))

getSuffixName_impl :: User -> IO (String)
getSuffixName_impl this = do
        pure ((jget (this).suffixName))


getCompany :: (JavaObjectClass this_) => this_ -> IO (String)
getCompany object_ = jmethod object_ "getCompany" (\() -> (getCompany_impl (javaCast object_ :: User))) ()

getCompany_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCompany_super object_ = (getCompany_impl (javaCast object_ :: User))

getCompany_impl :: User -> IO (String)
getCompany_impl this = do
        pure ((jget (this).company))


getPositionAtCompany :: (JavaObjectClass this_) => this_ -> IO (String)
getPositionAtCompany object_ = jmethod object_ "getPositionAtCompany" (\() -> (getPositionAtCompany_impl (javaCast object_ :: User))) ()

getPositionAtCompany_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPositionAtCompany_super object_ = (getPositionAtCompany_impl (javaCast object_ :: User))

getPositionAtCompany_impl :: User -> IO (String)
getPositionAtCompany_impl this = do
        pure ((jget (this).positionAtCompany))


getMainEmail :: (JavaObjectClass this_) => this_ -> IO (String)
getMainEmail object_ = jmethod object_ "getMainEmail" (\() -> (getMainEmail_impl (javaCast object_ :: User))) ()

getMainEmail_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMainEmail_super object_ = (getMainEmail_impl (javaCast object_ :: User))

getMainEmail_impl :: User -> IO (String)
getMainEmail_impl this = do
        pure ((jget (this).mainEmail))


getSecondaryEmail :: (JavaObjectClass this_) => this_ -> IO (String)
getSecondaryEmail object_ = jmethod object_ "getSecondaryEmail" (\() -> (getSecondaryEmail_impl (javaCast object_ :: User))) ()

getSecondaryEmail_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSecondaryEmail_super object_ = (getSecondaryEmail_impl (javaCast object_ :: User))

getSecondaryEmail_impl :: User -> IO (String)
getSecondaryEmail_impl this = do
        pure ((jget (this).secondaryEmail))


getHomePhone :: (JavaObjectClass this_) => this_ -> IO (String)
getHomePhone object_ = jmethod object_ "getHomePhone" (\() -> (getHomePhone_impl (javaCast object_ :: User))) ()

getHomePhone_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomePhone_super object_ = (getHomePhone_impl (javaCast object_ :: User))

getHomePhone_impl :: User -> IO (String)
getHomePhone_impl this = do
        pure ((jget (this).homePhone))


getCellPhone :: (JavaObjectClass this_) => this_ -> IO (String)
getCellPhone object_ = jmethod object_ "getCellPhone" (\() -> (getCellPhone_impl (javaCast object_ :: User))) ()

getCellPhone_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCellPhone_super object_ = (getCellPhone_impl (javaCast object_ :: User))

getCellPhone_impl :: User -> IO (String)
getCellPhone_impl this = do
        pure ((jget (this).cellPhone))


getWorkPhone :: (JavaObjectClass this_) => this_ -> IO (String)
getWorkPhone object_ = jmethod object_ "getWorkPhone" (\() -> (getWorkPhone_impl (javaCast object_ :: User))) ()

getWorkPhone_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWorkPhone_super object_ = (getWorkPhone_impl (javaCast object_ :: User))

getWorkPhone_impl :: User -> IO (String)
getWorkPhone_impl this = do
        pure ((jget (this).workPhone))


getOtherContact :: (JavaObjectClass this_) => this_ -> IO (String)
getOtherContact object_ = jmethod object_ "getOtherContact" (\() -> (getOtherContact_impl (javaCast object_ :: User))) ()

getOtherContact_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOtherContact_super object_ = (getOtherContact_impl (javaCast object_ :: User))

getOtherContact_impl :: User -> IO (String)
getOtherContact_impl this = do
        pure ((jget (this).otherContact))


getElectronicContact :: (JavaObjectClass this_) => this_ -> IO (String)
getElectronicContact object_ = jmethod object_ "getElectronicContact" (\() -> (getElectronicContact_impl (javaCast object_ :: User))) ()

getElectronicContact_super :: (JavaObjectClass this_) => this_ -> IO (String)
getElectronicContact_super object_ = (getElectronicContact_impl (javaCast object_ :: User))

getElectronicContact_impl :: User -> IO (String)
getElectronicContact_impl this = do
        pure ((jget (this).electronicDevice))


getFax :: (JavaObjectClass this_) => this_ -> IO (String)
getFax object_ = jmethod object_ "getFax" (\() -> (getFax_impl (javaCast object_ :: User))) ()

getFax_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFax_super object_ = (getFax_impl (javaCast object_ :: User))

getFax_impl :: User -> IO (String)
getFax_impl this = do
        pure ((jget (this).fax))


getRole :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole object_ = jmethod object_ "getRole" (\() -> (getRole_impl (javaCast object_ :: User))) ()

getRole_super :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole_super object_ = (getRole_impl (javaCast object_ :: User))

getRole_impl :: User -> IO (UserRole.UserRole)
getRole_impl this = do
        pure ((jget (this).role))


getPermissions :: (JavaObjectClass this_) => this_ -> IO (String)
getPermissions object_ = jmethod object_ "getPermissions" (\() -> (getPermissions_impl (javaCast object_ :: User))) ()

getPermissions_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPermissions_super object_ = (getPermissions_impl (javaCast object_ :: User))

getPermissions_impl :: User -> IO (String)
getPermissions_impl this = do
        pure ((jget (this).permissions))


getEncryption :: (JavaObjectClass this_) => this_ -> IO (String)
getEncryption object_ = jmethod object_ "getEncryption" (\() -> (getEncryption_impl (javaCast object_ :: User))) ()

getEncryption_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEncryption_super object_ = (getEncryption_impl (javaCast object_ :: User))

getEncryption_impl :: User -> IO (String)
getEncryption_impl this = do
        pure ((jget (this).encryption))


getSecret :: (JavaObjectClass this_) => this_ -> IO (String)
getSecret object_ = jmethod object_ "getSecret" (\() -> (getSecret_impl (javaCast object_ :: User))) ()

getSecret_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSecret_super object_ = (getSecret_impl (javaCast object_ :: User))

getSecret_impl :: User -> IO (String)
getSecret_impl this = do
        pure ((jget (this).secret))


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: User))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: User))

getPassword_impl :: User -> IO (String)
getPassword_impl this = do
        (Password.get ((jget (this).password)))


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: User))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: User))

toVector_impl :: User -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add values (jget (this).userName))
        Control.Monad.void (BasicArrayList.add values (jget (this).prefixName))
        Control.Monad.void (BasicArrayList.add values (jget (this).firstName))
        Control.Monad.void (BasicArrayList.add values (jget (this).lastName))
        Control.Monad.void (BasicArrayList.add values (jget (this).middleName))
        Control.Monad.void (BasicArrayList.add values (jget (this).suffixName))
        Control.Monad.void (BasicArrayList.add values (jget (this).company))
        Control.Monad.void (BasicArrayList.add values (jget (this).positionAtCompany))
        Control.Monad.void (BasicArrayList.add values (jget (this).mainEmail))
        Control.Monad.void (BasicArrayList.add values (jget (this).secondaryEmail))
        Control.Monad.void (BasicArrayList.add values (jget (this).homePhone))
        Control.Monad.void (BasicArrayList.add values (jget (this).cellPhone))
        Control.Monad.void (BasicArrayList.add values (jget (this).workPhone))
        Control.Monad.void (BasicArrayList.add values (jget (this).otherContact))
        Control.Monad.void (BasicArrayList.add values (jget (this).electronicDevice))
        Control.Monad.void (BasicArrayList.add values (jget (this).fax))
        Control.Monad.void (BasicArrayList.add values (jio (UserRole.toString ((jio (User.getRole this))))))
        userConfigurationDomDocumentMapping <- (UserConfigurationDomDocumentMapping.new_1 (jio (User.getUserConfigurationInterface this)))
        Control.Monad.void (BasicArrayList.add values (jio (UserConfigurationDomDocumentMapping.toDomDocumentString userConfigurationDomDocumentMapping)))
        Control.Monad.void (BasicArrayList.add values (jget (this).permissions))
        Control.Monad.void (BasicArrayList.addAllList values (jio (Password.toVector ((jget (this).password)) (jget (this).secret))))
        Control.Monad.void (BasicArrayList.add values (jget (this).enable))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (BasicArrayList.add values time)
        Control.Monad.void (BasicArrayList.add values time)
        pure (values)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: User))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: User))

toHashMap_impl :: User -> IO (HashMap.HashMap)
toHashMap_impl this = do
        values <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put values (UserData.uSERNAME) (jget this.userName))
        Control.Monad.void (HashMap.put values (UserData.pREFIXNAME) (jget this.prefixName))
        Control.Monad.void (HashMap.put values (UserData.fIRSTNAME) (jget this.firstName))
        Control.Monad.void (HashMap.put values (UserData.lASTNAME) (jget this.lastName))
        Control.Monad.void (HashMap.put values (UserData.mIDDLENAME) (jget this.middleName))
        Control.Monad.void (HashMap.put values (UserData.sUFFIXNAME) (jget this.suffixName))
        Control.Monad.void (HashMap.put values (UserData.cOMPANY) (jget this.company))
        Control.Monad.void (HashMap.put values (UserData.pOSITIONATCOMPANY) (jget this.positionAtCompany))
        Control.Monad.void (HashMap.put values (UserData.mAINEMAIL) (jget this.mainEmail))
        Control.Monad.void (HashMap.put values (UserData.sECONDARYEMAIL) (jget this.secondaryEmail))
        Control.Monad.void (HashMap.put values (UserData.hOMEPHONE) (jget this.homePhone))
        Control.Monad.void (HashMap.put values (UserData.cELLPHONE) (jget this.cellPhone))
        Control.Monad.void (HashMap.put values (UserData.wORKPHONE) (jget this.workPhone))
        Control.Monad.void (HashMap.put values (UserData.oTHERCONTACT) (jget this.otherContact))
        Control.Monad.void (HashMap.put values (UserData.eLECTRONICDEVICE) (jget this.electronicDevice))
        Control.Monad.void (HashMap.put values (UserData.fAX) (jget this.fax))
        when ((jio (User.getRole this)) /= javaNull) $ do
            Control.Monad.void (HashMap.put values (UserRoleData.nAME) (jio (UserRole.toString ((jio (User.getRole this))))))
        userConfigurationDomDocumentMapping <- (UserConfigurationDomDocumentMapping.new_1 (jio (User.getUserConfigurationInterface this)))
        Control.Monad.void (HashMap.put values (UserData.cONFIGURATION) (jio (UserConfigurationDomDocumentMapping.toDomDocumentString userConfigurationDomDocumentMapping)))
        Control.Monad.void (HashMap.put values (UserData.pERMISSIONS) (jget (this).permissions))
        Control.Monad.void (HashMap.putAll values (jio (Password.toHashMap ((jget (this).password)) (jget (this).secret))))
        Control.Monad.void (HashMap.put values (jget ((jio (EntryData.getInstance))).eNABLE) (jget (this).enable))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (HashMap.put values (jget ((jio (EntryData.getInstance))).lASTMODIFIED) time)
        pure (values)


toPasswordHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toPasswordHashMap object_ = jmethod object_ "toPasswordHashMap" (\() -> (toPasswordHashMap_impl (javaCast object_ :: User))) ()

toPasswordHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toPasswordHashMap_super object_ = (toPasswordHashMap_impl (javaCast object_ :: User))

toPasswordHashMap_impl :: User -> IO (HashMap.HashMap)
toPasswordHashMap_impl this = do
        (Password.toHashMap ((jget (this).password)) (jget (this).secret))


validateSession :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession object_ a1 = jmethod object_ "validateSession" (\() -> (validateSession_impl (javaCast object_ :: User))) () a1

validateSession_super :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession_super object_ a1 = (validateSession_impl (javaCast object_ :: User)) a1

validateSession_impl :: User -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession_impl this weblisketSession = do
        Control.Monad.void (WeblisketSessionInterface.setAuthenticated weblisketSession)
        Control.Monad.void (WeblisketSessionInterface.setRole weblisketSession (jio (User.getRole this)))
        Control.Monad.void (WeblisketSessionInterface.setUserName weblisketSession (jio (User.getUserName this)))
        pure ()


updateSession :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession object_ a1 = jmethod object_ "updateSession" (\() -> (updateSession_impl (javaCast object_ :: User))) () a1

updateSession_super :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession_super object_ a1 = (updateSession_impl (javaCast object_ :: User)) a1

updateSession_impl :: User -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession_impl this weblisketSession = do
        pure ()


isSessionValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionValid object_ = jmethod object_ "isSessionValid" (\() -> (isSessionValid_impl (javaCast object_ :: User))) ()

isSessionValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionValid_super object_ = (isSessionValid_impl (javaCast object_ :: User))

isSessionValid_impl :: User -> IO (Bool)
isSessionValid_impl this = do
        pure (True)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: User))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: User))

getKey_impl :: User -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jget (this).userName) :: Any.Any)))


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: User))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: User))

toValidationInfoDoc_impl :: User -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: User))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: User)) a1

toValidationInfoNode_impl :: User -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


getUserConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface object_ = jmethod object_ "getUserConfigurationInterface" (\() -> (getUserConfigurationInterface_impl (javaCast object_ :: User))) ()

getUserConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface_super object_ = (getUserConfigurationInterface_impl (javaCast object_ :: User))

getUserConfigurationInterface_impl :: User -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface_impl this = do
        pure ((jget (this).userConfigurationInterface))


setUserConfigurationInterface :: (JavaObjectClass this_) => this_ -> UserConfigurationInterface.UserConfigurationInterface -> IO (())
setUserConfigurationInterface object_ a1 = jmethod object_ "setUserConfigurationInterface" (\() -> (setUserConfigurationInterface_impl (javaCast object_ :: User))) () a1

setUserConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> UserConfigurationInterface.UserConfigurationInterface -> IO (())
setUserConfigurationInterface_super object_ a1 = (setUserConfigurationInterface_impl (javaCast object_ :: User)) a1

setUserConfigurationInterface_impl :: User -> UserConfigurationInterface.UserConfigurationInterface -> IO (())
setUserConfigurationInterface_impl this userConfigurationInterface = do
        jset (this).userConfigurationInterface (userConfigurationInterface)
        pure ()


