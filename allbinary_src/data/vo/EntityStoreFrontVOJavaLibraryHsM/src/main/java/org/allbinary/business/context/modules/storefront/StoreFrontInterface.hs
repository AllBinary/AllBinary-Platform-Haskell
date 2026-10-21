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
-- package org.allbinary.business.context.modules.storefront
module StoreFrontInterface (module StoreFrontInterface, module TableMappingInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isNameValid, isNameValid_super, isNameValid_impl, isValid, isValid_super, isValid_impl, nameValidationInfo, nameValidationInfo_super, nameValidationInfo_impl, validationInfo, validationInfo_super, validationInfo_impl, getTestHtmlPath, getTestHtmlPath_super, getTestHtmlPath_impl, getCurrentHostName, getCurrentHostName_super, getCurrentHostName_impl, getCurrentHostNamePath, getCurrentHostNamePath_super, getCurrentHostNamePath_impl, getCurrentHomeHostName, getCurrentHomeHostName_super, getCurrentHomeHostName_impl, getCurrentHomeHostNamePath, getCurrentHomeHostNamePath_super, getCurrentHomeHostNamePath_impl, getName, getName_super, getName_impl, getBasketName, getBasketName_super, getBasketName_impl, getHomeHostName, getHomeHostName_super, getHomeHostName_impl, getHomeHostNamePath, getHomeHostNamePath_super, getHomeHostNamePath_impl, getHostName, getHostName_super, getHostName_impl, getHostNamePath, getHostNamePath_super, getHostNamePath_impl, getTestHomeHostName, getTestHomeHostName_super, getTestHomeHostName_impl, getTestHomeHostNamePath, getTestHomeHostNamePath_super, getTestHomeHostNamePath_impl, getTestHostName, getTestHostName_super, getTestHostName_impl, getTestHostNamePath, getTestHostNamePath_super, getTestHostNamePath_impl, getStaticPath, getStaticPath_super, getStaticPath_impl, getCategoryPath, getCategoryPath_super, getCategoryPath_impl, getSubStores, getSubStores_super, getSubStores_impl, getTagLocation, getTagLocation_super, getTagLocation_impl, getPackageLocation, getPackageLocation_super, getPackageLocation_impl, getInventoryControl, getInventoryControl_super, getInventoryControl_impl, getContextConfigurationInterface, getContextConfigurationInterface_super, getContextConfigurationInterface_impl, setContextConfigurationInterface, setContextConfigurationInterface_super, setContextConfigurationInterface_impl, getFtp, getFtp_super, getFtp_impl, getFtpPath, getFtpPath_super, getFtpPath_impl, getFtpUserName, getFtpUserName_super, getFtpUserName_impl, getFtpPassword, getFtpPassword_super, getFtpPassword_impl, getTestFtp, getTestFtp_super, getTestFtp_impl, getTestFtpPath, getTestFtpPath_super, getTestFtpPath_impl, getTestFtpUserName, getTestFtpUserName_super, getTestFtpUserName_impl, getTestFtpPassword, getTestFtpPassword_super, getTestFtpPassword_impl, getTimeCreated, getTimeCreated_super, getTimeCreated_impl, getLastModified, getLastModified_super, getLastModified_impl, setName, setName_super, setName_impl, setBasketName, setBasketName_super, setBasketName_impl, setHomeHostName, setHomeHostName_super, setHomeHostName_impl, setHomeHostNamePath, setHomeHostNamePath_super, setHomeHostNamePath_impl, setHostName, setHostName_super, setHostName_impl, setHostNamePath, setHostNamePath_super, setHostNamePath_impl, setTestHomeHostName, setTestHomeHostName_super, setTestHomeHostName_impl, setTestHomeHostNamePath, setTestHomeHostNamePath_super, setTestHomeHostNamePath_impl, setTestHostName, setTestHostName_super, setTestHostName_impl, setTestHostNamePath, setTestHostNamePath_super, setTestHostNamePath_impl, setImagePath, setImagePath_super, setImagePath_impl, setStaticPath, setStaticPath_super, setStaticPath_impl, setCategoryPath, setCategoryPath_super, setCategoryPath_impl, setPackageLocation, setPackageLocation_super, setPackageLocation_impl, setInventoryControl, setInventoryControl_super, setInventoryControl_impl, setFtp, setFtp_super, setFtp_impl, setFtpPath, setFtpPath_super, setFtpPath_impl, setFtpUserName, setFtpUserName_super, setFtpUserName_impl, setFtpPassword, setFtpPassword_super, setFtpPassword_impl, setTestFtp, setTestFtp_super, setTestFtp_impl, setTestFtpPath, setTestFtpPath_super, setTestFtpPath_impl, setTestFtpUserName, setTestFtpUserName_super, setTestFtpUserName_impl, setTestFtpPassword, setTestFtpPassword_super, setTestFtpPassword_impl, setTimeCreated, setTimeCreated_super, setTimeCreated_impl, setLastModified, setLastModified_super, setLastModified_impl, install, install_super, install_impl, toString)
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
import qualified ContextConfigurationInterface -- org.allbinary.business.context.configuration.ContextConfigurationInterface
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data StoreFrontInterface = StoreFrontInterface
    { header_ :: JavaHeader
    }

instance JavaNull StoreFrontInterface where
    javaNull = javaNullRecord "StoreFrontInterface"

instance JavaEquals StoreFrontInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontInterface where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StoreFrontInterface
fromHeader_ header = StoreFrontInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StoreFrontInterface header)
    TableMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isNameValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNameValid object_ = jmethod object_ "isNameValid" (\() -> (isNameValid_impl (javaCast object_ :: StoreFrontInterface))) ()

isNameValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNameValid_super object_ = (isNameValid_impl (javaCast object_ :: StoreFrontInterface))

isNameValid_impl :: StoreFrontInterface -> IO (Bool)
isNameValid_impl this = javaAbstractMethod "isNameValid"


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: StoreFrontInterface))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: StoreFrontInterface))

isValid_impl :: StoreFrontInterface -> IO (Bool)
isValid_impl this = javaAbstractMethod "isValid"


nameValidationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
nameValidationInfo object_ = jmethod object_ "nameValidationInfo" (\() -> (nameValidationInfo_impl (javaCast object_ :: StoreFrontInterface))) ()

nameValidationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
nameValidationInfo_super object_ = (nameValidationInfo_impl (javaCast object_ :: StoreFrontInterface))

nameValidationInfo_impl :: StoreFrontInterface -> IO (String)
nameValidationInfo_impl this = javaAbstractMethod "nameValidationInfo"


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: StoreFrontInterface))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: StoreFrontInterface))

validationInfo_impl :: StoreFrontInterface -> IO (String)
validationInfo_impl this = javaAbstractMethod "validationInfo"


getTestHtmlPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath object_ = jmethod object_ "getTestHtmlPath" (\() -> (getTestHtmlPath_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath_super object_ = (getTestHtmlPath_impl (javaCast object_ :: StoreFrontInterface))

getTestHtmlPath_impl :: StoreFrontInterface -> IO (String)
getTestHtmlPath_impl this = javaAbstractMethod "getTestHtmlPath"


getCurrentHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostName object_ = jmethod object_ "getCurrentHostName" (\() -> (getCurrentHostName_impl (javaCast object_ :: StoreFrontInterface))) ()

getCurrentHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostName_super object_ = (getCurrentHostName_impl (javaCast object_ :: StoreFrontInterface))

getCurrentHostName_impl :: StoreFrontInterface -> IO (String)
getCurrentHostName_impl this = javaAbstractMethod "getCurrentHostName"


getCurrentHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostNamePath object_ = jmethod object_ "getCurrentHostNamePath" (\() -> (getCurrentHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) ()

getCurrentHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostNamePath_super object_ = (getCurrentHostNamePath_impl (javaCast object_ :: StoreFrontInterface))

getCurrentHostNamePath_impl :: StoreFrontInterface -> IO (String)
getCurrentHostNamePath_impl this = javaAbstractMethod "getCurrentHostNamePath"


getCurrentHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostName object_ = jmethod object_ "getCurrentHomeHostName" (\() -> (getCurrentHomeHostName_impl (javaCast object_ :: StoreFrontInterface))) ()

getCurrentHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostName_super object_ = (getCurrentHomeHostName_impl (javaCast object_ :: StoreFrontInterface))

getCurrentHomeHostName_impl :: StoreFrontInterface -> IO (String)
getCurrentHomeHostName_impl this = javaAbstractMethod "getCurrentHomeHostName"


getCurrentHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostNamePath object_ = jmethod object_ "getCurrentHomeHostNamePath" (\() -> (getCurrentHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) ()

getCurrentHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostNamePath_super object_ = (getCurrentHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface))

getCurrentHomeHostNamePath_impl :: StoreFrontInterface -> IO (String)
getCurrentHomeHostNamePath_impl this = javaAbstractMethod "getCurrentHomeHostNamePath"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: StoreFrontInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: StoreFrontInterface))

getName_impl :: StoreFrontInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getBasketName :: (JavaObjectClass this_) => this_ -> IO (String)
getBasketName object_ = jmethod object_ "getBasketName" (\() -> (getBasketName_impl (javaCast object_ :: StoreFrontInterface))) ()

getBasketName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getBasketName_super object_ = (getBasketName_impl (javaCast object_ :: StoreFrontInterface))

getBasketName_impl :: StoreFrontInterface -> IO (String)
getBasketName_impl this = javaAbstractMethod "getBasketName"


getHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostName object_ = jmethod object_ "getHomeHostName" (\() -> (getHomeHostName_impl (javaCast object_ :: StoreFrontInterface))) ()

getHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostName_super object_ = (getHomeHostName_impl (javaCast object_ :: StoreFrontInterface))

getHomeHostName_impl :: StoreFrontInterface -> IO (String)
getHomeHostName_impl this = javaAbstractMethod "getHomeHostName"


getHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostNamePath object_ = jmethod object_ "getHomeHostNamePath" (\() -> (getHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) ()

getHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostNamePath_super object_ = (getHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface))

getHomeHostNamePath_impl :: StoreFrontInterface -> IO (String)
getHomeHostNamePath_impl this = javaAbstractMethod "getHomeHostNamePath"


getHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName object_ = jmethod object_ "getHostName" (\() -> (getHostName_impl (javaCast object_ :: StoreFrontInterface))) ()

getHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName_super object_ = (getHostName_impl (javaCast object_ :: StoreFrontInterface))

getHostName_impl :: StoreFrontInterface -> IO (String)
getHostName_impl this = javaAbstractMethod "getHostName"


getHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getHostNamePath object_ = jmethod object_ "getHostNamePath" (\() -> (getHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) ()

getHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostNamePath_super object_ = (getHostNamePath_impl (javaCast object_ :: StoreFrontInterface))

getHostNamePath_impl :: StoreFrontInterface -> IO (String)
getHostNamePath_impl this = javaAbstractMethod "getHostNamePath"


getTestHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostName object_ = jmethod object_ "getTestHomeHostName" (\() -> (getTestHomeHostName_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostName_super object_ = (getTestHomeHostName_impl (javaCast object_ :: StoreFrontInterface))

getTestHomeHostName_impl :: StoreFrontInterface -> IO (String)
getTestHomeHostName_impl this = javaAbstractMethod "getTestHomeHostName"


getTestHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostNamePath object_ = jmethod object_ "getTestHomeHostNamePath" (\() -> (getTestHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostNamePath_super object_ = (getTestHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface))

getTestHomeHostNamePath_impl :: StoreFrontInterface -> IO (String)
getTestHomeHostNamePath_impl this = javaAbstractMethod "getTestHomeHostNamePath"


getTestHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostName object_ = jmethod object_ "getTestHostName" (\() -> (getTestHostName_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostName_super object_ = (getTestHostName_impl (javaCast object_ :: StoreFrontInterface))

getTestHostName_impl :: StoreFrontInterface -> IO (String)
getTestHostName_impl this = javaAbstractMethod "getTestHostName"


getTestHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostNamePath object_ = jmethod object_ "getTestHostNamePath" (\() -> (getTestHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostNamePath_super object_ = (getTestHostNamePath_impl (javaCast object_ :: StoreFrontInterface))

getTestHostNamePath_impl :: StoreFrontInterface -> IO (String)
getTestHostNamePath_impl this = javaAbstractMethod "getTestHostNamePath"


getStaticPath :: (JavaObjectClass this_) => this_ -> IO (String)
getStaticPath object_ = jmethod object_ "getStaticPath" (\() -> (getStaticPath_impl (javaCast object_ :: StoreFrontInterface))) ()

getStaticPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStaticPath_super object_ = (getStaticPath_impl (javaCast object_ :: StoreFrontInterface))

getStaticPath_impl :: StoreFrontInterface -> IO (String)
getStaticPath_impl this = javaAbstractMethod "getStaticPath"


getCategoryPath :: (JavaObjectClass this_) => this_ -> IO (String)
getCategoryPath object_ = jmethod object_ "getCategoryPath" (\() -> (getCategoryPath_impl (javaCast object_ :: StoreFrontInterface))) ()

getCategoryPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCategoryPath_super object_ = (getCategoryPath_impl (javaCast object_ :: StoreFrontInterface))

getCategoryPath_impl :: StoreFrontInterface -> IO (String)
getCategoryPath_impl this = javaAbstractMethod "getCategoryPath"


-- throws Exception
getSubStores :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubStores object_ = jmethod object_ "getSubStores" (\() -> (getSubStores_impl (javaCast object_ :: StoreFrontInterface))) ()

getSubStores_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubStores_super object_ = (getSubStores_impl (javaCast object_ :: StoreFrontInterface))

getSubStores_impl :: StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getSubStores_impl this = javaAbstractMethod "getSubStores"


getTagLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getTagLocation object_ = jmethod object_ "getTagLocation" (\() -> (getTagLocation_impl (javaCast object_ :: StoreFrontInterface))) ()

getTagLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTagLocation_super object_ = (getTagLocation_impl (javaCast object_ :: StoreFrontInterface))

getTagLocation_impl :: StoreFrontInterface -> IO (String)
getTagLocation_impl this = javaAbstractMethod "getTagLocation"


getPackageLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageLocation object_ = jmethod object_ "getPackageLocation" (\() -> (getPackageLocation_impl (javaCast object_ :: StoreFrontInterface))) ()

getPackageLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageLocation_super object_ = (getPackageLocation_impl (javaCast object_ :: StoreFrontInterface))

getPackageLocation_impl :: StoreFrontInterface -> IO (String)
getPackageLocation_impl this = javaAbstractMethod "getPackageLocation"


getInventoryControl :: (JavaObjectClass this_) => this_ -> IO (String)
getInventoryControl object_ = jmethod object_ "getInventoryControl" (\() -> (getInventoryControl_impl (javaCast object_ :: StoreFrontInterface))) ()

getInventoryControl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInventoryControl_super object_ = (getInventoryControl_impl (javaCast object_ :: StoreFrontInterface))

getInventoryControl_impl :: StoreFrontInterface -> IO (String)
getInventoryControl_impl this = javaAbstractMethod "getInventoryControl"


getContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface object_ = jmethod object_ "getContextConfigurationInterface" (\() -> (getContextConfigurationInterface_impl (javaCast object_ :: StoreFrontInterface))) ()

getContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_super object_ = (getContextConfigurationInterface_impl (javaCast object_ :: StoreFrontInterface))

getContextConfigurationInterface_impl :: StoreFrontInterface -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_impl this = javaAbstractMethod "getContextConfigurationInterface"


setContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface object_ a1 = jmethod object_ "setContextConfigurationInterface" (\() -> (setContextConfigurationInterface_impl (javaCast object_ :: StoreFrontInterface))) () a1

setContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface_super object_ a1 = (setContextConfigurationInterface_impl (javaCast object_ :: StoreFrontInterface)) a1

setContextConfigurationInterface_impl :: StoreFrontInterface -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface_impl this contextConfigurationInterface = javaAbstractMethod "setContextConfigurationInterface"


getFtp :: (JavaObjectClass this_) => this_ -> IO (String)
getFtp object_ = jmethod object_ "getFtp" (\() -> (getFtp_impl (javaCast object_ :: StoreFrontInterface))) ()

getFtp_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtp_super object_ = (getFtp_impl (javaCast object_ :: StoreFrontInterface))

getFtp_impl :: StoreFrontInterface -> IO (String)
getFtp_impl this = javaAbstractMethod "getFtp"


getFtpPath :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPath object_ = jmethod object_ "getFtpPath" (\() -> (getFtpPath_impl (javaCast object_ :: StoreFrontInterface))) ()

getFtpPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPath_super object_ = (getFtpPath_impl (javaCast object_ :: StoreFrontInterface))

getFtpPath_impl :: StoreFrontInterface -> IO (String)
getFtpPath_impl this = javaAbstractMethod "getFtpPath"


getFtpUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpUserName object_ = jmethod object_ "getFtpUserName" (\() -> (getFtpUserName_impl (javaCast object_ :: StoreFrontInterface))) ()

getFtpUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpUserName_super object_ = (getFtpUserName_impl (javaCast object_ :: StoreFrontInterface))

getFtpUserName_impl :: StoreFrontInterface -> IO (String)
getFtpUserName_impl this = javaAbstractMethod "getFtpUserName"


getFtpPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPassword object_ = jmethod object_ "getFtpPassword" (\() -> (getFtpPassword_impl (javaCast object_ :: StoreFrontInterface))) ()

getFtpPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPassword_super object_ = (getFtpPassword_impl (javaCast object_ :: StoreFrontInterface))

getFtpPassword_impl :: StoreFrontInterface -> IO (String)
getFtpPassword_impl this = javaAbstractMethod "getFtpPassword"


getTestFtp :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtp object_ = jmethod object_ "getTestFtp" (\() -> (getTestFtp_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestFtp_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtp_super object_ = (getTestFtp_impl (javaCast object_ :: StoreFrontInterface))

getTestFtp_impl :: StoreFrontInterface -> IO (String)
getTestFtp_impl this = javaAbstractMethod "getTestFtp"


getTestFtpPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPath object_ = jmethod object_ "getTestFtpPath" (\() -> (getTestFtpPath_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestFtpPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPath_super object_ = (getTestFtpPath_impl (javaCast object_ :: StoreFrontInterface))

getTestFtpPath_impl :: StoreFrontInterface -> IO (String)
getTestFtpPath_impl this = javaAbstractMethod "getTestFtpPath"


getTestFtpUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpUserName object_ = jmethod object_ "getTestFtpUserName" (\() -> (getTestFtpUserName_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestFtpUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpUserName_super object_ = (getTestFtpUserName_impl (javaCast object_ :: StoreFrontInterface))

getTestFtpUserName_impl :: StoreFrontInterface -> IO (String)
getTestFtpUserName_impl this = javaAbstractMethod "getTestFtpUserName"


getTestFtpPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPassword object_ = jmethod object_ "getTestFtpPassword" (\() -> (getTestFtpPassword_impl (javaCast object_ :: StoreFrontInterface))) ()

getTestFtpPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPassword_super object_ = (getTestFtpPassword_impl (javaCast object_ :: StoreFrontInterface))

getTestFtpPassword_impl :: StoreFrontInterface -> IO (String)
getTestFtpPassword_impl this = javaAbstractMethod "getTestFtpPassword"


getTimeCreated :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeCreated object_ = jmethod object_ "getTimeCreated" (\() -> (getTimeCreated_impl (javaCast object_ :: StoreFrontInterface))) ()

getTimeCreated_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeCreated_super object_ = (getTimeCreated_impl (javaCast object_ :: StoreFrontInterface))

getTimeCreated_impl :: StoreFrontInterface -> IO (String)
getTimeCreated_impl this = javaAbstractMethod "getTimeCreated"


getLastModified :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified object_ = jmethod object_ "getLastModified" (\() -> (getLastModified_impl (javaCast object_ :: StoreFrontInterface))) ()

getLastModified_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified_super object_ = (getLastModified_impl (javaCast object_ :: StoreFrontInterface))

getLastModified_impl :: StoreFrontInterface -> IO (String)
getLastModified_impl this = javaAbstractMethod "getLastModified"


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: StoreFrontInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: StoreFrontInterface)) a1

setName_impl :: StoreFrontInterface -> String -> IO (())
setName_impl this value = javaAbstractMethod "setName"


setBasketName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setBasketName object_ a1 = jmethod object_ "setBasketName" (\() -> (setBasketName_impl (javaCast object_ :: StoreFrontInterface))) () a1

setBasketName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setBasketName_super object_ a1 = (setBasketName_impl (javaCast object_ :: StoreFrontInterface)) a1

setBasketName_impl :: StoreFrontInterface -> String -> IO (())
setBasketName_impl this value = javaAbstractMethod "setBasketName"


setHomeHostName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomeHostName object_ a1 = jmethod object_ "setHomeHostName" (\() -> (setHomeHostName_impl (javaCast object_ :: StoreFrontInterface))) () a1

setHomeHostName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomeHostName_super object_ a1 = (setHomeHostName_impl (javaCast object_ :: StoreFrontInterface)) a1

setHomeHostName_impl :: StoreFrontInterface -> String -> IO (())
setHomeHostName_impl this value = javaAbstractMethod "setHomeHostName"


-- throws Exception
setHomeHostNamePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomeHostNamePath object_ a1 = jmethod object_ "setHomeHostNamePath" (\() -> (setHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomeHostNamePath_super object_ a1 = (setHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface)) a1

setHomeHostNamePath_impl :: StoreFrontInterface -> String -> IO (())
setHomeHostNamePath_impl this value = javaAbstractMethod "setHomeHostNamePath"


setHostName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHostName object_ a1 = jmethod object_ "setHostName" (\() -> (setHostName_impl (javaCast object_ :: StoreFrontInterface))) () a1

setHostName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHostName_super object_ a1 = (setHostName_impl (javaCast object_ :: StoreFrontInterface)) a1

setHostName_impl :: StoreFrontInterface -> String -> IO (())
setHostName_impl this value = javaAbstractMethod "setHostName"


-- throws Exception
setHostNamePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHostNamePath object_ a1 = jmethod object_ "setHostNamePath" (\() -> (setHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setHostNamePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHostNamePath_super object_ a1 = (setHostNamePath_impl (javaCast object_ :: StoreFrontInterface)) a1

setHostNamePath_impl :: StoreFrontInterface -> String -> IO (())
setHostNamePath_impl this value = javaAbstractMethod "setHostNamePath"


setTestHomeHostName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHomeHostName object_ a1 = jmethod object_ "setTestHomeHostName" (\() -> (setTestHomeHostName_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTestHomeHostName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHomeHostName_super object_ a1 = (setTestHomeHostName_impl (javaCast object_ :: StoreFrontInterface)) a1

setTestHomeHostName_impl :: StoreFrontInterface -> String -> IO (())
setTestHomeHostName_impl this value = javaAbstractMethod "setTestHomeHostName"


-- throws Exception
setTestHomeHostNamePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHomeHostNamePath object_ a1 = jmethod object_ "setTestHomeHostNamePath" (\() -> (setTestHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTestHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHomeHostNamePath_super object_ a1 = (setTestHomeHostNamePath_impl (javaCast object_ :: StoreFrontInterface)) a1

setTestHomeHostNamePath_impl :: StoreFrontInterface -> String -> IO (())
setTestHomeHostNamePath_impl this value = javaAbstractMethod "setTestHomeHostNamePath"


setTestHostName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHostName object_ a1 = jmethod object_ "setTestHostName" (\() -> (setTestHostName_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTestHostName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHostName_super object_ a1 = (setTestHostName_impl (javaCast object_ :: StoreFrontInterface)) a1

setTestHostName_impl :: StoreFrontInterface -> String -> IO (())
setTestHostName_impl this value = javaAbstractMethod "setTestHostName"


-- throws Exception
setTestHostNamePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHostNamePath object_ a1 = jmethod object_ "setTestHostNamePath" (\() -> (setTestHostNamePath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTestHostNamePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHostNamePath_super object_ a1 = (setTestHostNamePath_impl (javaCast object_ :: StoreFrontInterface)) a1

setTestHostNamePath_impl :: StoreFrontInterface -> String -> IO (())
setTestHostNamePath_impl this value = javaAbstractMethod "setTestHostNamePath"


-- throws Exception
setImagePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setImagePath object_ a1 = jmethod object_ "setImagePath" (\() -> (setImagePath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setImagePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setImagePath_super object_ a1 = (setImagePath_impl (javaCast object_ :: StoreFrontInterface)) a1

setImagePath_impl :: StoreFrontInterface -> String -> IO (())
setImagePath_impl this value = javaAbstractMethod "setImagePath"


-- throws Exception
setStaticPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStaticPath object_ a1 = jmethod object_ "setStaticPath" (\() -> (setStaticPath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setStaticPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStaticPath_super object_ a1 = (setStaticPath_impl (javaCast object_ :: StoreFrontInterface)) a1

setStaticPath_impl :: StoreFrontInterface -> String -> IO (())
setStaticPath_impl this value = javaAbstractMethod "setStaticPath"


-- throws Exception
setCategoryPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCategoryPath object_ a1 = jmethod object_ "setCategoryPath" (\() -> (setCategoryPath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setCategoryPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCategoryPath_super object_ a1 = (setCategoryPath_impl (javaCast object_ :: StoreFrontInterface)) a1

setCategoryPath_impl :: StoreFrontInterface -> String -> IO (())
setCategoryPath_impl this value = javaAbstractMethod "setCategoryPath"


setPackageLocation :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPackageLocation object_ a1 = jmethod object_ "setPackageLocation" (\() -> (setPackageLocation_impl (javaCast object_ :: StoreFrontInterface))) () a1

setPackageLocation_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPackageLocation_super object_ a1 = (setPackageLocation_impl (javaCast object_ :: StoreFrontInterface)) a1

setPackageLocation_impl :: StoreFrontInterface -> String -> IO (())
setPackageLocation_impl this value = javaAbstractMethod "setPackageLocation"


setInventoryControl :: (JavaObjectClass this_) => this_ -> String -> IO (())
setInventoryControl object_ a1 = jmethod object_ "setInventoryControl" (\() -> (setInventoryControl_impl (javaCast object_ :: StoreFrontInterface))) () a1

setInventoryControl_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setInventoryControl_super object_ a1 = (setInventoryControl_impl (javaCast object_ :: StoreFrontInterface)) a1

setInventoryControl_impl :: StoreFrontInterface -> String -> IO (())
setInventoryControl_impl this value = javaAbstractMethod "setInventoryControl"


setFtp :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtp object_ a1 = jmethod object_ "setFtp" (\() -> (setFtp_impl (javaCast object_ :: StoreFrontInterface))) () a1

setFtp_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtp_super object_ a1 = (setFtp_impl (javaCast object_ :: StoreFrontInterface)) a1

setFtp_impl :: StoreFrontInterface -> String -> IO (())
setFtp_impl this value = javaAbstractMethod "setFtp"


-- throws Exception
setFtpPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpPath object_ a1 = jmethod object_ "setFtpPath" (\() -> (setFtpPath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setFtpPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpPath_super object_ a1 = (setFtpPath_impl (javaCast object_ :: StoreFrontInterface)) a1

setFtpPath_impl :: StoreFrontInterface -> String -> IO (())
setFtpPath_impl this value = javaAbstractMethod "setFtpPath"


setFtpUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpUserName object_ a1 = jmethod object_ "setFtpUserName" (\() -> (setFtpUserName_impl (javaCast object_ :: StoreFrontInterface))) () a1

setFtpUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpUserName_super object_ a1 = (setFtpUserName_impl (javaCast object_ :: StoreFrontInterface)) a1

setFtpUserName_impl :: StoreFrontInterface -> String -> IO (())
setFtpUserName_impl this value = javaAbstractMethod "setFtpUserName"


setFtpPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpPassword object_ a1 = jmethod object_ "setFtpPassword" (\() -> (setFtpPassword_impl (javaCast object_ :: StoreFrontInterface))) () a1

setFtpPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpPassword_super object_ a1 = (setFtpPassword_impl (javaCast object_ :: StoreFrontInterface)) a1

setFtpPassword_impl :: StoreFrontInterface -> String -> IO (())
setFtpPassword_impl this value = javaAbstractMethod "setFtpPassword"


setTestFtp :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtp object_ a1 = jmethod object_ "setTestFtp" (\() -> (setTestFtp_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTestFtp_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtp_super object_ a1 = (setTestFtp_impl (javaCast object_ :: StoreFrontInterface)) a1

setTestFtp_impl :: StoreFrontInterface -> String -> IO (())
setTestFtp_impl this value = javaAbstractMethod "setTestFtp"


-- throws Exception
setTestFtpPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpPath object_ a1 = jmethod object_ "setTestFtpPath" (\() -> (setTestFtpPath_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTestFtpPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpPath_super object_ a1 = (setTestFtpPath_impl (javaCast object_ :: StoreFrontInterface)) a1

setTestFtpPath_impl :: StoreFrontInterface -> String -> IO (())
setTestFtpPath_impl this value = javaAbstractMethod "setTestFtpPath"


setTestFtpUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpUserName object_ a1 = jmethod object_ "setTestFtpUserName" (\() -> (setTestFtpUserName_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTestFtpUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpUserName_super object_ a1 = (setTestFtpUserName_impl (javaCast object_ :: StoreFrontInterface)) a1

setTestFtpUserName_impl :: StoreFrontInterface -> String -> IO (())
setTestFtpUserName_impl this value = javaAbstractMethod "setTestFtpUserName"


setTestFtpPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpPassword object_ a1 = jmethod object_ "setTestFtpPassword" (\() -> (setTestFtpPassword_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTestFtpPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpPassword_super object_ a1 = (setTestFtpPassword_impl (javaCast object_ :: StoreFrontInterface)) a1

setTestFtpPassword_impl :: StoreFrontInterface -> String -> IO (())
setTestFtpPassword_impl this value = javaAbstractMethod "setTestFtpPassword"


setTimeCreated :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeCreated object_ a1 = jmethod object_ "setTimeCreated" (\() -> (setTimeCreated_impl (javaCast object_ :: StoreFrontInterface))) () a1

setTimeCreated_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeCreated_super object_ a1 = (setTimeCreated_impl (javaCast object_ :: StoreFrontInterface)) a1

setTimeCreated_impl :: StoreFrontInterface -> String -> IO (())
setTimeCreated_impl this value = javaAbstractMethod "setTimeCreated"


setLastModified :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified object_ a1 = jmethod object_ "setLastModified" (\() -> (setLastModified_impl (javaCast object_ :: StoreFrontInterface))) () a1

setLastModified_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified_super object_ a1 = (setLastModified_impl (javaCast object_ :: StoreFrontInterface)) a1

setLastModified_impl :: StoreFrontInterface -> String -> IO (())
setLastModified_impl this value = javaAbstractMethod "setLastModified"


-- throws Exception
install :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
install object_ a1 a2 = jmethod object_ "install" (\() -> (install_impl (javaCast object_ :: StoreFrontInterface))) () a1 a2

install_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
install_super object_ a1 a2 = (install_impl (javaCast object_ :: StoreFrontInterface)) a1 a2

install_impl :: StoreFrontInterface -> Int -> Int -> IO (())
install_impl this current total = javaAbstractMethod "install"


