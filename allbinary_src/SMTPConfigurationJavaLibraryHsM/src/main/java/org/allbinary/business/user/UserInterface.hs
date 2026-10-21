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
-- package org.allbinary.business.user
module UserInterface (module UserInterface, module TableMappingInterface, module ValidationInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setUserName, setUserName_super, setUserName_impl, setPrefixName, setPrefixName_super, setPrefixName_impl, setFirstName, setFirstName_super, setFirstName_impl, setLastName, setLastName_super, setLastName_impl, setMiddleName, setMiddleName_super, setMiddleName_impl, setSuffixName, setSuffixName_super, setSuffixName_impl, setCompany, setCompany_super, setCompany_impl, setPositionAtCompany, setPositionAtCompany_super, setPositionAtCompany_impl, setMainEmail, setMainEmail_super, setMainEmail_impl, setSecondaryEmail, setSecondaryEmail_super, setSecondaryEmail_impl, setHomePhone, setHomePhone_super, setHomePhone_impl, setCellPhone, setCellPhone_super, setCellPhone_impl, setWorkPhone, setWorkPhone_super, setWorkPhone_impl, setOtherContact, setOtherContact_super, setOtherContact_impl, setElectronicContact, setElectronicContact_super, setElectronicContact_impl, setFax, setFax_super, setFax_impl, setRole, setRole_super, setRole_impl, setEncryption, setEncryption_super, setEncryption_impl, setSecret, setSecret_super, setSecret_impl, setPassword, setPassword_super, setPassword_impl, setPermissions, setPermissions_super, setPermissions_impl, enable, enable_super, enable_impl, setEnable, setEnable_super, setEnable_impl, getUserName, getUserName_super, getUserName_impl, getPrefixName, getPrefixName_super, getPrefixName_impl, getFirstName, getFirstName_super, getFirstName_impl, getLastName, getLastName_super, getLastName_impl, getMiddleName, getMiddleName_super, getMiddleName_impl, getSuffixName, getSuffixName_super, getSuffixName_impl, getCompany, getCompany_super, getCompany_impl, getPositionAtCompany, getPositionAtCompany_super, getPositionAtCompany_impl, getMainEmail, getMainEmail_super, getMainEmail_impl, getSecondaryEmail, getSecondaryEmail_super, getSecondaryEmail_impl, getHomePhone, getHomePhone_super, getHomePhone_impl, getCellPhone, getCellPhone_super, getCellPhone_impl, getWorkPhone, getWorkPhone_super, getWorkPhone_impl, getOtherContact, getOtherContact_super, getOtherContact_impl, getElectronicContact, getElectronicContact_super, getElectronicContact_impl, getFax, getFax_super, getFax_impl, getRole, getRole_super, getRole_impl, getEncryption, getEncryption_super, getEncryption_impl, getSecret, getSecret_super, getSecret_impl, getPassword, getPassword_super, getPassword_impl, getPermissions, getPermissions_super, getPermissions_impl, getUserConfigurationInterface, getUserConfigurationInterface_super, getUserConfigurationInterface_impl, setUserConfigurationInterface, setUserConfigurationInterface_super, setUserConfigurationInterface_impl, toPasswordHashMap, toPasswordHashMap_super, toPasswordHashMap_impl, validateSession, validateSession_super, validateSession_impl, updateSession, updateSession_super, updateSession_impl, isSessionValid, isSessionValid_super, isSessionValid_impl, toString)
import ValidationInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setUserName, setUserName_super, setUserName_impl, setPrefixName, setPrefixName_super, setPrefixName_impl, setFirstName, setFirstName_super, setFirstName_impl, setLastName, setLastName_super, setLastName_impl, setMiddleName, setMiddleName_super, setMiddleName_impl, setSuffixName, setSuffixName_super, setSuffixName_impl, setCompany, setCompany_super, setCompany_impl, setPositionAtCompany, setPositionAtCompany_super, setPositionAtCompany_impl, setMainEmail, setMainEmail_super, setMainEmail_impl, setSecondaryEmail, setSecondaryEmail_super, setSecondaryEmail_impl, setHomePhone, setHomePhone_super, setHomePhone_impl, setCellPhone, setCellPhone_super, setCellPhone_impl, setWorkPhone, setWorkPhone_super, setWorkPhone_impl, setOtherContact, setOtherContact_super, setOtherContact_impl, setElectronicContact, setElectronicContact_super, setElectronicContact_impl, setFax, setFax_super, setFax_impl, setRole, setRole_super, setRole_impl, setEncryption, setEncryption_super, setEncryption_impl, setSecret, setSecret_super, setSecret_impl, setPassword, setPassword_super, setPassword_impl, setPermissions, setPermissions_super, setPermissions_impl, enable, enable_super, enable_impl, setEnable, setEnable_super, setEnable_impl, getUserName, getUserName_super, getUserName_impl, getPrefixName, getPrefixName_super, getPrefixName_impl, getFirstName, getFirstName_super, getFirstName_impl, getLastName, getLastName_super, getLastName_impl, getMiddleName, getMiddleName_super, getMiddleName_impl, getSuffixName, getSuffixName_super, getSuffixName_impl, getCompany, getCompany_super, getCompany_impl, getPositionAtCompany, getPositionAtCompany_super, getPositionAtCompany_impl, getMainEmail, getMainEmail_super, getMainEmail_impl, getSecondaryEmail, getSecondaryEmail_super, getSecondaryEmail_impl, getHomePhone, getHomePhone_super, getHomePhone_impl, getCellPhone, getCellPhone_super, getCellPhone_impl, getWorkPhone, getWorkPhone_super, getWorkPhone_impl, getOtherContact, getOtherContact_super, getOtherContact_impl, getElectronicContact, getElectronicContact_super, getElectronicContact_impl, getFax, getFax_super, getFax_impl, getRole, getRole_super, getRole_impl, getEncryption, getEncryption_super, getEncryption_impl, getSecret, getSecret_super, getSecret_impl, getPassword, getPassword_super, getPassword_impl, getPermissions, getPermissions_super, getPermissions_impl, getUserConfigurationInterface, getUserConfigurationInterface_super, getUserConfigurationInterface_impl, setUserConfigurationInterface, setUserConfigurationInterface_super, setUserConfigurationInterface_impl, toPasswordHashMap, toPasswordHashMap_super, toPasswordHashMap_impl, validateSession, validateSession_super, validateSession_impl, updateSession, updateSession_super, updateSession_impl, isSessionValid, isSessionValid_super, isSessionValid_impl, toString)
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
import qualified HashMap -- java.util.HashMap
import qualified UserConfigurationInterface -- org.allbinary.business.user.modules.configuration.UserConfigurationInterface
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified WeblisketSessionInterface -- org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface

-- Java interface: the classes that implement it have these functions
data UserInterface = UserInterface
    { header_ :: JavaHeader
    }

instance JavaNull UserInterface where
    javaNull = javaNullRecord "UserInterface"

instance JavaEquals UserInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserInterface where
    (==) = jrecordEquals

instance JavaObjectClass UserInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> UserInterface
fromHeader_ header = UserInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (UserInterface header)
    TableMappingInterface.registerInterface_ header
    ValidationInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: UserInterface))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: UserInterface)) a1

setUserName_impl :: UserInterface -> String -> IO (())
setUserName_impl this value = javaAbstractMethod "setUserName"


setPrefixName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPrefixName object_ a1 = jmethod object_ "setPrefixName" (\() -> (setPrefixName_impl (javaCast object_ :: UserInterface))) () a1

setPrefixName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPrefixName_super object_ a1 = (setPrefixName_impl (javaCast object_ :: UserInterface)) a1

setPrefixName_impl :: UserInterface -> String -> IO (())
setPrefixName_impl this value = javaAbstractMethod "setPrefixName"


setFirstName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFirstName object_ a1 = jmethod object_ "setFirstName" (\() -> (setFirstName_impl (javaCast object_ :: UserInterface))) () a1

setFirstName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFirstName_super object_ a1 = (setFirstName_impl (javaCast object_ :: UserInterface)) a1

setFirstName_impl :: UserInterface -> String -> IO (())
setFirstName_impl this value = javaAbstractMethod "setFirstName"


setLastName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastName object_ a1 = jmethod object_ "setLastName" (\() -> (setLastName_impl (javaCast object_ :: UserInterface))) () a1

setLastName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastName_super object_ a1 = (setLastName_impl (javaCast object_ :: UserInterface)) a1

setLastName_impl :: UserInterface -> String -> IO (())
setLastName_impl this value = javaAbstractMethod "setLastName"


setMiddleName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMiddleName object_ a1 = jmethod object_ "setMiddleName" (\() -> (setMiddleName_impl (javaCast object_ :: UserInterface))) () a1

setMiddleName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMiddleName_super object_ a1 = (setMiddleName_impl (javaCast object_ :: UserInterface)) a1

setMiddleName_impl :: UserInterface -> String -> IO (())
setMiddleName_impl this value = javaAbstractMethod "setMiddleName"


setSuffixName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSuffixName object_ a1 = jmethod object_ "setSuffixName" (\() -> (setSuffixName_impl (javaCast object_ :: UserInterface))) () a1

setSuffixName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSuffixName_super object_ a1 = (setSuffixName_impl (javaCast object_ :: UserInterface)) a1

setSuffixName_impl :: UserInterface -> String -> IO (())
setSuffixName_impl this value = javaAbstractMethod "setSuffixName"


setCompany :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCompany object_ a1 = jmethod object_ "setCompany" (\() -> (setCompany_impl (javaCast object_ :: UserInterface))) () a1

setCompany_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCompany_super object_ a1 = (setCompany_impl (javaCast object_ :: UserInterface)) a1

setCompany_impl :: UserInterface -> String -> IO (())
setCompany_impl this value = javaAbstractMethod "setCompany"


setPositionAtCompany :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPositionAtCompany object_ a1 = jmethod object_ "setPositionAtCompany" (\() -> (setPositionAtCompany_impl (javaCast object_ :: UserInterface))) () a1

setPositionAtCompany_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPositionAtCompany_super object_ a1 = (setPositionAtCompany_impl (javaCast object_ :: UserInterface)) a1

setPositionAtCompany_impl :: UserInterface -> String -> IO (())
setPositionAtCompany_impl this value = javaAbstractMethod "setPositionAtCompany"


setMainEmail :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMainEmail object_ a1 = jmethod object_ "setMainEmail" (\() -> (setMainEmail_impl (javaCast object_ :: UserInterface))) () a1

setMainEmail_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMainEmail_super object_ a1 = (setMainEmail_impl (javaCast object_ :: UserInterface)) a1

setMainEmail_impl :: UserInterface -> String -> IO (())
setMainEmail_impl this value = javaAbstractMethod "setMainEmail"


setSecondaryEmail :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSecondaryEmail object_ a1 = jmethod object_ "setSecondaryEmail" (\() -> (setSecondaryEmail_impl (javaCast object_ :: UserInterface))) () a1

setSecondaryEmail_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSecondaryEmail_super object_ a1 = (setSecondaryEmail_impl (javaCast object_ :: UserInterface)) a1

setSecondaryEmail_impl :: UserInterface -> String -> IO (())
setSecondaryEmail_impl this value = javaAbstractMethod "setSecondaryEmail"


setHomePhone :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomePhone object_ a1 = jmethod object_ "setHomePhone" (\() -> (setHomePhone_impl (javaCast object_ :: UserInterface))) () a1

setHomePhone_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomePhone_super object_ a1 = (setHomePhone_impl (javaCast object_ :: UserInterface)) a1

setHomePhone_impl :: UserInterface -> String -> IO (())
setHomePhone_impl this value = javaAbstractMethod "setHomePhone"


setCellPhone :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCellPhone object_ a1 = jmethod object_ "setCellPhone" (\() -> (setCellPhone_impl (javaCast object_ :: UserInterface))) () a1

setCellPhone_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCellPhone_super object_ a1 = (setCellPhone_impl (javaCast object_ :: UserInterface)) a1

setCellPhone_impl :: UserInterface -> String -> IO (())
setCellPhone_impl this value = javaAbstractMethod "setCellPhone"


setWorkPhone :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWorkPhone object_ a1 = jmethod object_ "setWorkPhone" (\() -> (setWorkPhone_impl (javaCast object_ :: UserInterface))) () a1

setWorkPhone_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWorkPhone_super object_ a1 = (setWorkPhone_impl (javaCast object_ :: UserInterface)) a1

setWorkPhone_impl :: UserInterface -> String -> IO (())
setWorkPhone_impl this value = javaAbstractMethod "setWorkPhone"


setOtherContact :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOtherContact object_ a1 = jmethod object_ "setOtherContact" (\() -> (setOtherContact_impl (javaCast object_ :: UserInterface))) () a1

setOtherContact_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOtherContact_super object_ a1 = (setOtherContact_impl (javaCast object_ :: UserInterface)) a1

setOtherContact_impl :: UserInterface -> String -> IO (())
setOtherContact_impl this value = javaAbstractMethod "setOtherContact"


setElectronicContact :: (JavaObjectClass this_) => this_ -> String -> IO (())
setElectronicContact object_ a1 = jmethod object_ "setElectronicContact" (\() -> (setElectronicContact_impl (javaCast object_ :: UserInterface))) () a1

setElectronicContact_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setElectronicContact_super object_ a1 = (setElectronicContact_impl (javaCast object_ :: UserInterface)) a1

setElectronicContact_impl :: UserInterface -> String -> IO (())
setElectronicContact_impl this value = javaAbstractMethod "setElectronicContact"


setFax :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFax object_ a1 = jmethod object_ "setFax" (\() -> (setFax_impl (javaCast object_ :: UserInterface))) () a1

setFax_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFax_super object_ a1 = (setFax_impl (javaCast object_ :: UserInterface)) a1

setFax_impl :: UserInterface -> String -> IO (())
setFax_impl this value = javaAbstractMethod "setFax"


setRole :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (())
setRole object_ a1 = jmethod object_ "setRole" (\() -> (setRole_impl (javaCast object_ :: UserInterface))) () a1

setRole_super :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (())
setRole_super object_ a1 = (setRole_impl (javaCast object_ :: UserInterface)) a1

setRole_impl :: UserInterface -> UserRole.UserRole -> IO (())
setRole_impl this aRole = javaAbstractMethod "setRole"


setEncryption :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEncryption object_ a1 = jmethod object_ "setEncryption" (\() -> (setEncryption_impl (javaCast object_ :: UserInterface))) () a1

setEncryption_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEncryption_super object_ a1 = (setEncryption_impl (javaCast object_ :: UserInterface)) a1

setEncryption_impl :: UserInterface -> String -> IO (())
setEncryption_impl this value = javaAbstractMethod "setEncryption"


setSecret :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSecret object_ a1 = jmethod object_ "setSecret" (\() -> (setSecret_impl (javaCast object_ :: UserInterface))) () a1

setSecret_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSecret_super object_ a1 = (setSecret_impl (javaCast object_ :: UserInterface)) a1

setSecret_impl :: UserInterface -> String -> IO (())
setSecret_impl this value = javaAbstractMethod "setSecret"


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: UserInterface))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: UserInterface)) a1

setPassword_impl :: UserInterface -> String -> IO (())
setPassword_impl this value = javaAbstractMethod "setPassword"


setPermissions :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPermissions object_ a1 = jmethod object_ "setPermissions" (\() -> (setPermissions_impl (javaCast object_ :: UserInterface))) () a1

setPermissions_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPermissions_super object_ a1 = (setPermissions_impl (javaCast object_ :: UserInterface)) a1

setPermissions_impl :: UserInterface -> String -> IO (())
setPermissions_impl this value = javaAbstractMethod "setPermissions"


enable :: (JavaObjectClass this_) => this_ -> IO (())
enable object_ = jmethod object_ "enable" (\() -> (enable_impl (javaCast object_ :: UserInterface))) ()

enable_super :: (JavaObjectClass this_) => this_ -> IO (())
enable_super object_ = (enable_impl (javaCast object_ :: UserInterface))

enable_impl :: UserInterface -> IO (())
enable_impl this = javaAbstractMethod "enable"


setEnable :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable object_ a1 = jmethod object_ "setEnable" (\() -> (setEnable_impl (javaCast object_ :: UserInterface))) () a1

setEnable_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnable_super object_ a1 = (setEnable_impl (javaCast object_ :: UserInterface)) a1

setEnable_impl :: UserInterface -> String -> IO (())
setEnable_impl this enable = javaAbstractMethod "setEnable"


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: UserInterface))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: UserInterface))

getUserName_impl :: UserInterface -> IO (String)
getUserName_impl this = javaAbstractMethod "getUserName"


getPrefixName :: (JavaObjectClass this_) => this_ -> IO (String)
getPrefixName object_ = jmethod object_ "getPrefixName" (\() -> (getPrefixName_impl (javaCast object_ :: UserInterface))) ()

getPrefixName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPrefixName_super object_ = (getPrefixName_impl (javaCast object_ :: UserInterface))

getPrefixName_impl :: UserInterface -> IO (String)
getPrefixName_impl this = javaAbstractMethod "getPrefixName"


getFirstName :: (JavaObjectClass this_) => this_ -> IO (String)
getFirstName object_ = jmethod object_ "getFirstName" (\() -> (getFirstName_impl (javaCast object_ :: UserInterface))) ()

getFirstName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFirstName_super object_ = (getFirstName_impl (javaCast object_ :: UserInterface))

getFirstName_impl :: UserInterface -> IO (String)
getFirstName_impl this = javaAbstractMethod "getFirstName"


getLastName :: (JavaObjectClass this_) => this_ -> IO (String)
getLastName object_ = jmethod object_ "getLastName" (\() -> (getLastName_impl (javaCast object_ :: UserInterface))) ()

getLastName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastName_super object_ = (getLastName_impl (javaCast object_ :: UserInterface))

getLastName_impl :: UserInterface -> IO (String)
getLastName_impl this = javaAbstractMethod "getLastName"


getMiddleName :: (JavaObjectClass this_) => this_ -> IO (String)
getMiddleName object_ = jmethod object_ "getMiddleName" (\() -> (getMiddleName_impl (javaCast object_ :: UserInterface))) ()

getMiddleName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMiddleName_super object_ = (getMiddleName_impl (javaCast object_ :: UserInterface))

getMiddleName_impl :: UserInterface -> IO (String)
getMiddleName_impl this = javaAbstractMethod "getMiddleName"


getSuffixName :: (JavaObjectClass this_) => this_ -> IO (String)
getSuffixName object_ = jmethod object_ "getSuffixName" (\() -> (getSuffixName_impl (javaCast object_ :: UserInterface))) ()

getSuffixName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSuffixName_super object_ = (getSuffixName_impl (javaCast object_ :: UserInterface))

getSuffixName_impl :: UserInterface -> IO (String)
getSuffixName_impl this = javaAbstractMethod "getSuffixName"


getCompany :: (JavaObjectClass this_) => this_ -> IO (String)
getCompany object_ = jmethod object_ "getCompany" (\() -> (getCompany_impl (javaCast object_ :: UserInterface))) ()

getCompany_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCompany_super object_ = (getCompany_impl (javaCast object_ :: UserInterface))

getCompany_impl :: UserInterface -> IO (String)
getCompany_impl this = javaAbstractMethod "getCompany"


getPositionAtCompany :: (JavaObjectClass this_) => this_ -> IO (String)
getPositionAtCompany object_ = jmethod object_ "getPositionAtCompany" (\() -> (getPositionAtCompany_impl (javaCast object_ :: UserInterface))) ()

getPositionAtCompany_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPositionAtCompany_super object_ = (getPositionAtCompany_impl (javaCast object_ :: UserInterface))

getPositionAtCompany_impl :: UserInterface -> IO (String)
getPositionAtCompany_impl this = javaAbstractMethod "getPositionAtCompany"


getMainEmail :: (JavaObjectClass this_) => this_ -> IO (String)
getMainEmail object_ = jmethod object_ "getMainEmail" (\() -> (getMainEmail_impl (javaCast object_ :: UserInterface))) ()

getMainEmail_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMainEmail_super object_ = (getMainEmail_impl (javaCast object_ :: UserInterface))

getMainEmail_impl :: UserInterface -> IO (String)
getMainEmail_impl this = javaAbstractMethod "getMainEmail"


getSecondaryEmail :: (JavaObjectClass this_) => this_ -> IO (String)
getSecondaryEmail object_ = jmethod object_ "getSecondaryEmail" (\() -> (getSecondaryEmail_impl (javaCast object_ :: UserInterface))) ()

getSecondaryEmail_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSecondaryEmail_super object_ = (getSecondaryEmail_impl (javaCast object_ :: UserInterface))

getSecondaryEmail_impl :: UserInterface -> IO (String)
getSecondaryEmail_impl this = javaAbstractMethod "getSecondaryEmail"


getHomePhone :: (JavaObjectClass this_) => this_ -> IO (String)
getHomePhone object_ = jmethod object_ "getHomePhone" (\() -> (getHomePhone_impl (javaCast object_ :: UserInterface))) ()

getHomePhone_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomePhone_super object_ = (getHomePhone_impl (javaCast object_ :: UserInterface))

getHomePhone_impl :: UserInterface -> IO (String)
getHomePhone_impl this = javaAbstractMethod "getHomePhone"


getCellPhone :: (JavaObjectClass this_) => this_ -> IO (String)
getCellPhone object_ = jmethod object_ "getCellPhone" (\() -> (getCellPhone_impl (javaCast object_ :: UserInterface))) ()

getCellPhone_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCellPhone_super object_ = (getCellPhone_impl (javaCast object_ :: UserInterface))

getCellPhone_impl :: UserInterface -> IO (String)
getCellPhone_impl this = javaAbstractMethod "getCellPhone"


getWorkPhone :: (JavaObjectClass this_) => this_ -> IO (String)
getWorkPhone object_ = jmethod object_ "getWorkPhone" (\() -> (getWorkPhone_impl (javaCast object_ :: UserInterface))) ()

getWorkPhone_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWorkPhone_super object_ = (getWorkPhone_impl (javaCast object_ :: UserInterface))

getWorkPhone_impl :: UserInterface -> IO (String)
getWorkPhone_impl this = javaAbstractMethod "getWorkPhone"


getOtherContact :: (JavaObjectClass this_) => this_ -> IO (String)
getOtherContact object_ = jmethod object_ "getOtherContact" (\() -> (getOtherContact_impl (javaCast object_ :: UserInterface))) ()

getOtherContact_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOtherContact_super object_ = (getOtherContact_impl (javaCast object_ :: UserInterface))

getOtherContact_impl :: UserInterface -> IO (String)
getOtherContact_impl this = javaAbstractMethod "getOtherContact"


getElectronicContact :: (JavaObjectClass this_) => this_ -> IO (String)
getElectronicContact object_ = jmethod object_ "getElectronicContact" (\() -> (getElectronicContact_impl (javaCast object_ :: UserInterface))) ()

getElectronicContact_super :: (JavaObjectClass this_) => this_ -> IO (String)
getElectronicContact_super object_ = (getElectronicContact_impl (javaCast object_ :: UserInterface))

getElectronicContact_impl :: UserInterface -> IO (String)
getElectronicContact_impl this = javaAbstractMethod "getElectronicContact"


getFax :: (JavaObjectClass this_) => this_ -> IO (String)
getFax object_ = jmethod object_ "getFax" (\() -> (getFax_impl (javaCast object_ :: UserInterface))) ()

getFax_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFax_super object_ = (getFax_impl (javaCast object_ :: UserInterface))

getFax_impl :: UserInterface -> IO (String)
getFax_impl this = javaAbstractMethod "getFax"


getRole :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole object_ = jmethod object_ "getRole" (\() -> (getRole_impl (javaCast object_ :: UserInterface))) ()

getRole_super :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole_super object_ = (getRole_impl (javaCast object_ :: UserInterface))

getRole_impl :: UserInterface -> IO (UserRole.UserRole)
getRole_impl this = javaAbstractMethod "getRole"


getEncryption :: (JavaObjectClass this_) => this_ -> IO (String)
getEncryption object_ = jmethod object_ "getEncryption" (\() -> (getEncryption_impl (javaCast object_ :: UserInterface))) ()

getEncryption_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEncryption_super object_ = (getEncryption_impl (javaCast object_ :: UserInterface))

getEncryption_impl :: UserInterface -> IO (String)
getEncryption_impl this = javaAbstractMethod "getEncryption"


getSecret :: (JavaObjectClass this_) => this_ -> IO (String)
getSecret object_ = jmethod object_ "getSecret" (\() -> (getSecret_impl (javaCast object_ :: UserInterface))) ()

getSecret_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSecret_super object_ = (getSecret_impl (javaCast object_ :: UserInterface))

getSecret_impl :: UserInterface -> IO (String)
getSecret_impl this = javaAbstractMethod "getSecret"


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: UserInterface))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: UserInterface))

getPassword_impl :: UserInterface -> IO (String)
getPassword_impl this = javaAbstractMethod "getPassword"


getPermissions :: (JavaObjectClass this_) => this_ -> IO (String)
getPermissions object_ = jmethod object_ "getPermissions" (\() -> (getPermissions_impl (javaCast object_ :: UserInterface))) ()

getPermissions_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPermissions_super object_ = (getPermissions_impl (javaCast object_ :: UserInterface))

getPermissions_impl :: UserInterface -> IO (String)
getPermissions_impl this = javaAbstractMethod "getPermissions"


getUserConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface object_ = jmethod object_ "getUserConfigurationInterface" (\() -> (getUserConfigurationInterface_impl (javaCast object_ :: UserInterface))) ()

getUserConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface_super object_ = (getUserConfigurationInterface_impl (javaCast object_ :: UserInterface))

getUserConfigurationInterface_impl :: UserInterface -> IO (UserConfigurationInterface.UserConfigurationInterface)
getUserConfigurationInterface_impl this = javaAbstractMethod "getUserConfigurationInterface"


setUserConfigurationInterface :: (JavaObjectClass this_) => this_ -> UserConfigurationInterface.UserConfigurationInterface -> IO (())
setUserConfigurationInterface object_ a1 = jmethod object_ "setUserConfigurationInterface" (\() -> (setUserConfigurationInterface_impl (javaCast object_ :: UserInterface))) () a1

setUserConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> UserConfigurationInterface.UserConfigurationInterface -> IO (())
setUserConfigurationInterface_super object_ a1 = (setUserConfigurationInterface_impl (javaCast object_ :: UserInterface)) a1

setUserConfigurationInterface_impl :: UserInterface -> UserConfigurationInterface.UserConfigurationInterface -> IO (())
setUserConfigurationInterface_impl this userConfigurationInterface = javaAbstractMethod "setUserConfigurationInterface"


toPasswordHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toPasswordHashMap object_ = jmethod object_ "toPasswordHashMap" (\() -> (toPasswordHashMap_impl (javaCast object_ :: UserInterface))) ()

toPasswordHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toPasswordHashMap_super object_ = (toPasswordHashMap_impl (javaCast object_ :: UserInterface))

toPasswordHashMap_impl :: UserInterface -> IO (HashMap.HashMap)
toPasswordHashMap_impl this = javaAbstractMethod "toPasswordHashMap"


validateSession :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession object_ a1 = jmethod object_ "validateSession" (\() -> (validateSession_impl (javaCast object_ :: UserInterface))) () a1

validateSession_super :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession_super object_ a1 = (validateSession_impl (javaCast object_ :: UserInterface)) a1

validateSession_impl :: UserInterface -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession_impl this weblisketSession = javaAbstractMethod "validateSession"


updateSession :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession object_ a1 = jmethod object_ "updateSession" (\() -> (updateSession_impl (javaCast object_ :: UserInterface))) () a1

updateSession_super :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession_super object_ a1 = (updateSession_impl (javaCast object_ :: UserInterface)) a1

updateSession_impl :: UserInterface -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession_impl this weblisketSession = javaAbstractMethod "updateSession"


isSessionValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionValid object_ = jmethod object_ "isSessionValid" (\() -> (isSessionValid_impl (javaCast object_ :: UserInterface))) ()

isSessionValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSessionValid_super object_ = (isSessionValid_impl (javaCast object_ :: UserInterface))

isSessionValid_impl :: UserInterface -> IO (Bool)
isSessionValid_impl this = javaAbstractMethod "isSessionValid"


