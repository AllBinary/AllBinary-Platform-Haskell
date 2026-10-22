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
module StoreFront where

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
import qualified StoreFrontData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified ContextConfiguration -- org.allbinary.business.context.configuration.ContextConfiguration
import qualified ContextConfigurationDomDocumentMapping -- org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping
import qualified ContextConfigurationInterface -- org.allbinary.business.context.configuration.ContextConfigurationInterface
import qualified ContextConfigurationInterfaceFactory -- org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified AbPathUtil -- org.allbinary.logic.io.path.AbPathUtil
import qualified SpecialCharacterUtil -- org.allbinary.logic.string.SpecialCharacterUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified Tokenizer -- org.allbinary.logic.string.tokens.Tokenizer
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StringEscapeUtils -- org.apache.commons.lang3.StringEscapeUtils
import qualified Document -- org.w3c.dom.Document
import qualified StoreFrontInterface

-- implements StoreFrontInterface
data StoreFront = StoreFront
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , directory :: IORef (Directory.Directory)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , abPathUtil :: IORef (AbPathUtil.AbPathUtil)
    , name :: IORef (String)
    , basketName :: IORef (String)
    , homeHostName :: IORef (String)
    , homeHostNamePath :: IORef (AbPath.AbPath)
    , hostName :: IORef (String)
    , hostNamePath :: IORef (AbPath.AbPath)
    , testHomeHostName :: IORef (String)
    , testHomeHostNamePath :: IORef (AbPath.AbPath)
    , testHostName :: IORef (String)
    , testHostNamePath :: IORef (AbPath.AbPath)
    , imagePath :: IORef (AbPath.AbPath)
    , staticPath :: IORef (AbPath.AbPath)
    , categoryPath :: IORef (AbPath.AbPath)
    , inventoryControl :: IORef (String)
    , contextConfigurationInterface :: IORef (ContextConfigurationInterface.ContextConfigurationInterface)
    , subStores :: IORef (String)
    , tagLocation :: IORef (String)
    , packageLocation :: IORef (String)
    , ftp :: IORef (String)
    , ftpPath :: IORef (AbPath.AbPath)
    , ftpUserName :: IORef (String)
    , ftpPassword :: IORef (String)
    , testFtp :: IORef (String)
    , testFtpPath :: IORef (AbPath.AbPath)
    , testFtpUserName :: IORef (String)
    , testFtpPassword :: IORef (String)
    , timeCreated :: IORef (String)
    , lastModified :: IORef (String)
    , mINCHAR :: IORef (Int)
    , mINSTORENAMELENGTH :: IORef (Int)
    , mAXCHAR :: IORef (Int)
    , eMPTY_STRING :: IORef (String)
    , oNE_EMPTY_STRING_ARRAY :: IORef (JavaArray (String))
    }

instance JavaNull StoreFront where
    javaNull = javaNullRecord "StoreFront"

instance JavaEquals StoreFront where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFront where
    (==) = jrecordEquals

instance JavaObjectClass StoreFront where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

rESOURCES = (" Resources" ++ javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFront
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    directory <- newIORef javaNull
    stringUtil <- newIORef javaNull
    abPathUtil <- newIORef javaNull
    name <- newIORef ""
    basketName <- newIORef ""
    homeHostName <- newIORef ""
    homeHostNamePath <- newIORef javaNull
    hostName <- newIORef ""
    hostNamePath <- newIORef javaNull
    testHomeHostName <- newIORef ""
    testHomeHostNamePath <- newIORef javaNull
    testHostName <- newIORef ""
    testHostNamePath <- newIORef javaNull
    imagePath <- newIORef javaNull
    staticPath <- newIORef javaNull
    categoryPath <- newIORef javaNull
    inventoryControl <- newIORef ""
    contextConfigurationInterface <- newIORef javaNull
    subStores <- newIORef ""
    tagLocation <- newIORef ""
    packageLocation <- newIORef ""
    ftp <- newIORef ""
    ftpPath <- newIORef javaNull
    ftpUserName <- newIORef ""
    ftpPassword <- newIORef ""
    testFtp <- newIORef ""
    testFtpPath <- newIORef javaNull
    testFtpUserName <- newIORef ""
    testFtpPassword <- newIORef ""
    timeCreated <- newIORef ""
    lastModified <- newIORef ""
    mINCHAR <- newIORef 0
    mINSTORENAMELENGTH <- newIORef 0
    mAXCHAR <- newIORef 0
    eMPTY_STRING <- newIORef ""
    oNE_EMPTY_STRING_ARRAY <- newIORef javaNull
    let this = StoreFront header_ logUtil commonStrings directory stringUtil abPathUtil name basketName homeHostName homeHostNamePath hostName hostNamePath testHomeHostName testHomeHostNamePath testHostName testHostNamePath imagePath staticPath categoryPath inventoryControl contextConfigurationInterface subStores tagLocation packageLocation ftp ftpPath ftpUserName ftpPassword testFtp testFtpPath testFtpUserName testFtpPassword timeCreated lastModified mINCHAR mINSTORENAMELENGTH mAXCHAR eMPTY_STRING oNE_EMPTY_STRING_ARRAY
    jregisterLevel header_ this
    StoreFrontInterface.registerInterface_ header_
    jregisterMethod header_ "isColumn" (\() -> isColumn_impl this)
    jregisterMethod header_ "createPath" (\() -> createPath_impl this)
    jregisterMethod header_ "createPath_3" (\() -> createPath_3_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "isNameValid" (\() -> isNameValid_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "nameValidationInfo" (\() -> nameValidationInfo_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "getTestHtmlPath" (\() -> getTestHtmlPath_impl this)
    jregisterMethod header_ "getCurrentHostName" (\() -> getCurrentHostName_impl this)
    jregisterMethod header_ "getCurrentHostNamePath" (\() -> getCurrentHostNamePath_impl this)
    jregisterMethod header_ "getCurrentHomeHostName" (\() -> getCurrentHomeHostName_impl this)
    jregisterMethod header_ "getCurrentHomeHostNamePath" (\() -> getCurrentHomeHostNamePath_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getBasketName" (\() -> getBasketName_impl this)
    jregisterMethod header_ "getHomeHostName" (\() -> getHomeHostName_impl this)
    jregisterMethod header_ "getHomeHostNamePath" (\() -> getHomeHostNamePath_impl this)
    jregisterMethod header_ "getHostName" (\() -> getHostName_impl this)
    jregisterMethod header_ "getHostNamePath" (\() -> getHostNamePath_impl this)
    jregisterMethod header_ "getTestHomeHostName" (\() -> getTestHomeHostName_impl this)
    jregisterMethod header_ "getTestHomeHostNamePath" (\() -> getTestHomeHostNamePath_impl this)
    jregisterMethod header_ "getTestHostName" (\() -> getTestHostName_impl this)
    jregisterMethod header_ "getTestHostNamePath" (\() -> getTestHostNamePath_impl this)
    jregisterMethod header_ "getStaticPath" (\() -> getStaticPath_impl this)
    jregisterMethod header_ "getCategoryPath" (\() -> getCategoryPath_impl this)
    jregisterMethod header_ "getInventoryControl" (\() -> getInventoryControl_impl this)
    jregisterMethod header_ "getSubStores" (\() -> getSubStores_impl this)
    jregisterMethod header_ "getTagLocation" (\() -> getTagLocation_impl this)
    jregisterMethod header_ "getPackageLocation" (\() -> getPackageLocation_impl this)
    jregisterMethod header_ "getFtp" (\() -> getFtp_impl this)
    jregisterMethod header_ "getFtpUserName" (\() -> getFtpUserName_impl this)
    jregisterMethod header_ "getFtpPassword" (\() -> getFtpPassword_impl this)
    jregisterMethod header_ "getTestFtp" (\() -> getTestFtp_impl this)
    jregisterMethod header_ "getTestFtpUserName" (\() -> getTestFtpUserName_impl this)
    jregisterMethod header_ "getTestFtpPassword" (\() -> getTestFtpPassword_impl this)
    jregisterMethod header_ "getFtpPath" (\() -> getFtpPath_impl this)
    jregisterMethod header_ "getTestFtpPath" (\() -> getTestFtpPath_impl this)
    jregisterMethod header_ "getTimeCreated" (\() -> getTimeCreated_impl this)
    jregisterMethod header_ "getLastModified" (\() -> getLastModified_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setBasketName" (\() -> setBasketName_impl this)
    jregisterMethod header_ "setHomeHostName" (\() -> setHomeHostName_impl this)
    jregisterMethod header_ "setHomeHostNamePath" (\() -> setHomeHostNamePath_impl this)
    jregisterMethod header_ "setHostName" (\() -> setHostName_impl this)
    jregisterMethod header_ "setHostNamePath" (\() -> setHostNamePath_impl this)
    jregisterMethod header_ "setTestHomeHostName" (\() -> setTestHomeHostName_impl this)
    jregisterMethod header_ "setTestHomeHostNamePath" (\() -> setTestHomeHostNamePath_impl this)
    jregisterMethod header_ "setTestHostName" (\() -> setTestHostName_impl this)
    jregisterMethod header_ "setTestHostNamePath" (\() -> setTestHostNamePath_impl this)
    jregisterMethod header_ "setImagePath" (\() -> setImagePath_impl this)
    jregisterMethod header_ "setStaticPath" (\() -> setStaticPath_impl this)
    jregisterMethod header_ "setCategoryPath" (\() -> setCategoryPath_impl this)
    jregisterMethod header_ "setSubStores" (\() -> setSubStores_impl this)
    jregisterMethod header_ "setTagLocation" (\() -> setTagLocation_impl this)
    jregisterMethod header_ "setPackageLocation" (\() -> setPackageLocation_impl this)
    jregisterMethod header_ "setInventoryControl" (\() -> setInventoryControl_impl this)
    jregisterMethod header_ "getPackageLocation_1" (\() -> getPackageLocation_1_impl this)
    jregisterMethod header_ "setFtp" (\() -> setFtp_impl this)
    jregisterMethod header_ "setFtpUserName" (\() -> setFtpUserName_impl this)
    jregisterMethod header_ "setFtpPassword" (\() -> setFtpPassword_impl this)
    jregisterMethod header_ "setTestFtp" (\() -> setTestFtp_impl this)
    jregisterMethod header_ "setTestFtpUserName" (\() -> setTestFtpUserName_impl this)
    jregisterMethod header_ "setTestFtpPassword" (\() -> setTestFtpPassword_impl this)
    jregisterMethod header_ "setTimeCreated" (\() -> setTimeCreated_impl this)
    jregisterMethod header_ "setLastModified" (\() -> setLastModified_impl this)
    jregisterMethod header_ "setFtpPath" (\() -> setFtpPath_impl this)
    jregisterMethod header_ "setTestFtpPath" (\() -> setTestFtpPath_impl this)
    jregisterMethod header_ "createDirectories" (\() -> createDirectories_impl this)
    jregisterMethod header_ "install" (\() -> install_impl this)
    jregisterMethod header_ "installViews" (\() -> installViews_impl this)
    jregisterMethod header_ "installResources" (\() -> installResources_impl this)
    jregisterMethod header_ "installMedia" (\() -> installMedia_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getContextConfigurationInterface" (\() -> getContextConfigurationInterface_impl this)
    jregisterMethod header_ "setContextConfigurationInterface" (\() -> setContextConfigurationInterface_impl this)
    pure this

initFields_ :: StoreFront -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.directory =<< (Directory.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.abPathUtil =<< (AbPathUtil.getInstance)
    jset this.name ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.basketName ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.homeHostName ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.homeHostNamePath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.hostName ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.hostNamePath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.testHomeHostName ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.testHomeHostNamePath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.testHostName ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.testHostNamePath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.imagePath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.staticPath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.categoryPath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.inventoryControl ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.contextConfigurationInterface (javaNull)
    jset this.subStores ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.tagLocation ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.packageLocation ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.ftp ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.ftpPath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.ftpUserName ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.ftpPassword ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.testFtp ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.testFtpPath ((jget ((jget (this).abPathUtil)).nO_ABPATH))
    jset this.testFtpUserName ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.testFtpPassword ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.timeCreated ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.lastModified ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    jset this.mINCHAR (0)
    jset this.mINSTORENAMELENGTH (1)
    jset this.mAXCHAR (255)
    jset this.eMPTY_STRING ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.oNE_EMPTY_STRING_ARRAY ((jget ((jio (StringUtil.getInstance))).oNE_EMPTY_STRING_ARRAY))
    pure ()

new_ :: IO StoreFront
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFront -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: ContextConfigurationInterface.ContextConfigurationInterface) (ContextConfiguration.new_))
        jset (this).contextConfigurationInterface (assignedValue)
        pure ()

new_1 :: HttpServletRequest.HttpServletRequest -> IO StoreFront
new_1 request = do
    this <- newRecord_
    init_1 this request
    pure this

init_1 :: StoreFront -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this request = do
        initFields_ this
        Control.Monad.void (StoreFront.getFormData this (jio (RequestParams.toHashMap ((jio (RequestParams.new_1 request))))))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "TWB- needs update for adding and updating context configuration - currently defaults to admin context config" this "StoreFront")
        Control.Monad.void (StoreFront.setContextConfigurationInterface this (javaCast (jio (ContextConfigurationInterfaceFactory.getInstance_1 ((jio (ContextConfigurationInterfaceFactory.getInstance))) "Admin"))))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO StoreFront
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: StoreFront -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        Control.Monad.void (StoreFront.getFormData this hashMap)
        let domDocumentString = (javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).cONFIGURATION))) :: String)
        when (domDocumentString == javaNull) $ do
            document <- (DomDocumentHelper.create_1 domDocumentString)
            Control.Monad.void (StoreFront.setContextConfigurationInterface this (javaCast (jio (ContextConfigurationInterfaceFactory.getInstance_1 ((jio (ContextConfigurationInterfaceFactory.getInstance))) document))))
        pure ()


isColumn :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isColumn object_ a1 = jmethod object_ "isColumn" (\() -> (isColumn_impl (javaCast object_ :: StoreFront))) () a1

isColumn_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isColumn_super object_ a1 = (isColumn_impl (javaCast object_ :: StoreFront)) a1

isColumn_impl :: StoreFront -> String -> IO (Bool)
isColumn_impl this columnName = do
    javaCatchReturn $ do
        if (((Prelude.fromEnum (Prelude.compare columnName (jget ((jio (StoreFrontData.getInstance))).nAME)) - 1) == 0) || ((Prelude.fromEnum (Prelude.compare columnName (UserData.mAINEMAIL)) - 1) == 0)) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
createPath :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (AbPath.AbPath)
createPath object_ a1 a2 = jmethod object_ "createPath" (\() -> (createPath_impl (javaCast object_ :: StoreFront))) () a1 a2

createPath_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (AbPath.AbPath)
createPath_super object_ a1 a2 = (createPath_impl (javaCast object_ :: StoreFront)) a1 a2

createPath_impl :: StoreFront -> String -> HashMap.HashMap -> IO (AbPath.AbPath)
createPath_impl this key hashMap = do
        (AbPath.new_2 (jio (StoreFront.create this (jget (this).eMPTY_STRING) key hashMap)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


-- throws Exception
createPath_3 :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (AbPath.AbPath)
createPath_3 object_ a1 a2 a3 = jmethod object_ "createPath_3" (\() -> (createPath_3_impl (javaCast object_ :: StoreFront))) () a1 a2 a3

createPath_3_super :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (AbPath.AbPath)
createPath_3_super object_ a1 a2 a3 = (createPath_3_impl (javaCast object_ :: StoreFront)) a1 a2 a3

createPath_3_impl :: StoreFront -> String -> String -> HashMap.HashMap -> IO (AbPath.AbPath)
createPath_3_impl this append key hashMap = do
        (AbPath.new_2 (jio (StoreFront.create this append key hashMap)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


get :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (String)
get object_ a1 a2 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: StoreFront))) () a1 a2

get_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (String)
get_super object_ a1 a2 = (get_impl (javaCast object_ :: StoreFront)) a1 a2

get_impl :: StoreFront -> String -> HashMap.HashMap -> IO (String)
get_impl this key hashMap = do
        (StoreFront.create this (jget (this).eMPTY_STRING) key hashMap)


create :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (String)
create object_ a1 a2 a3 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: StoreFront))) () a1 a2 a3

create_super :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (String)
create_super object_ a1 a2 a3 = (create_impl (javaCast object_ :: StoreFront)) a1 a2 a3

create_impl :: StoreFront -> String -> String -> HashMap.HashMap -> IO (String)
create_impl this append key hashMap = do
    javaCatchReturn $ do
        let path = (javaCast (jio (HashMap.get hashMap key)) :: String)
        if (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) path)) then do
            javaReturn ((jget (this).eMPTY_STRING))
        else do
            if (jio (StoreFront.isColumn this path)) then do
                javaReturn ((javaToString (javaCast (jio (HashMap.get hashMap path)) :: String) ++ append))
            else do
                javaReturn (path)


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: StoreFront))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: StoreFront)) a1

getFormData_impl :: StoreFront -> HashMap.HashMap -> IO (())
getFormData_impl this storeHashMap = do
        storeFrontData <- (StoreFrontData.getInstance)
        jset (this).name ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).nAME))) :: String))
        jset (this).basketName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).nAME))) :: String))
        jset (this).homeHostName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).hOMEHOSTNAME))) :: String))
        assignedValue <- (StoreFront.createPath this (jget (storeFrontData).hOMEHOSTNAMEPATH) storeHashMap)
        jset (this).homeHostNamePath (assignedValue)
        jset (this).hostName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).hOSTNAME))) :: String))
        assignedValue <- (StoreFront.createPath this (jget (storeFrontData).hOSTNAMEPATH) storeHashMap)
        jset (this).hostNamePath (assignedValue)
        jset (this).testHomeHostName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTHOMEHOSTNAME))) :: String))
        assignedValue <- (StoreFront.createPath this (jget (storeFrontData).tESTHOMEHOSTNAMEPATH) storeHashMap)
        jset (this).testHomeHostNamePath (assignedValue)
        jset (this).testHostName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTHOSTNAME))) :: String))
        assignedValue <- (StoreFront.createPath this (jget (storeFrontData).tESTHOSTNAMEPATH) storeHashMap)
        jset (this).testHostNamePath (assignedValue)
        assignedValue <- (StoreFront.createPath_3 this (StoreFront.rESOURCES) (jget (storeFrontData).iMAGEPATH) storeHashMap)
        jset (this).imagePath (assignedValue)
        assignedValue <- (StoreFront.createPath_3 this (" Products" ++ javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR)) (jget (storeFrontData).sTATICPATH) storeHashMap)
        jset (this).staticPath (assignedValue)
        assignedValue <- (StoreFront.createPath_3 this (StoreFront.rESOURCES) (jget (storeFrontData).cATEGORYPATH) storeHashMap)
        jset (this).categoryPath (assignedValue)
        jset (this).inventoryControl ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).iNVENTORYCONTROL))) :: String))
        jset (this).subStores ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).sUBSTORES))) :: String))
        jset (this).tagLocation ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tAGLOCATION))) :: String))
        jset (this).packageLocation ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).pACKAGELOCATION))) :: String))
        jset (this).ftp ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).fTP))) :: String))
        assignedValue <- (StoreFront.createPath this (jget (storeFrontData).fTPPATH) storeHashMap)
        jset (this).ftpPath (assignedValue)
        jset (this).ftpUserName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).fTPUSERNAME))) :: String))
        jset (this).ftpPassword ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).fTPPASSWORD))) :: String))
        jset (this).testFtp ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTFTP))) :: String))
        assignedValue <- (StoreFront.createPath this (jget (storeFrontData).tESTFTPPATH) storeHashMap)
        jset (this).testFtpPath (assignedValue)
        jset (this).testFtpUserName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTFTPUSERNAME))) :: String))
        jset (this).testFtpPassword ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTFTPPASSWORD))) :: String))
        jset (this).timeCreated ((javaCast (jio (HashMap.get storeHashMap (jget ((jio (EntryData.getInstance))).tIMECREATED))) :: String))
        jset (this).lastModified ((javaCast (jio (HashMap.get storeHashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED))) :: String))
        pure ()


isNameValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNameValid object_ = jmethod object_ "isNameValid" (\() -> (isNameValid_impl (javaCast object_ :: StoreFront))) ()

isNameValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNameValid_super object_ = (isNameValid_impl (javaCast object_ :: StoreFront))

isNameValid_impl :: StoreFront -> IO (Bool)
isNameValid_impl this = do
    javaCatchReturn $ do
        if (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) (jget (this).name) (jget (this).mINSTORENAMELENGTH) (jget (this).mAXCHAR)))) then do
            javaReturn (False)
        else do
            isEscapedCharactersContained <- newIORef (False)
            storeNameEscaped <- (StringEscapeUtils.escapeHtml3 (jget (this).name))
            when ((Prelude.fromEnum (Prelude.compare (jget (this).name) storeNameEscaped) - 1) /= 0) $ do
                jset isEscapedCharactersContained (True)
            stringValidationUtil <- (StringValidationUtil.getInstance)
            isSpacesContained <- newIORef (False)
            when (jio (StringValidationUtil.containsSpaces stringValidationUtil (jget (this).name))) $ do
                jset isSpacesContained (True)
            when ((jget isSpacesContained) || (jget isEscapedCharactersContained)) $ do
                hashMap <- (SpecialCharacterUtil.getHashMap)
                Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget ((jio (CommonSeps.getInstance))).sPACE)]) (jget (this).oNE_EMPTY_STRING_ARRAY))
                assignedValue <- (Replace.all ((jio (Replace.new_1 hashMap))) (jget (this).name))
                jset (this).name (assignedValue)
        pure (True)


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: StoreFront))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: StoreFront))

isValid_impl :: StoreFront -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        valid <- newIORef (True)
        assignedValue <- (StoreFront.isNameValid this)
        jset valid (assignedValue)
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).basketName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).homeHostName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).homeHostNamePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).hostName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (AbPath.toString ((jget (this).hostNamePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testHomeHostName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).testHomeHostNamePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testHostName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).testHostNamePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (AbPath.toString ((jget (this).imagePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (AbPath.toString ((jget (this).staticPath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (AbPath.toString ((jget (this).categoryPath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).inventoryControl) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).subStores) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).tagLocation) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).packageLocation) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).ftp) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).ftpPath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).ftpUserName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).ftpPassword) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testFtp) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).testFtpPath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testFtpUserName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testFtpPassword) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            jset valid (False)
        if ((jget valid) == True) then do
            javaReturn (True)
        else do
            javaReturn (False)


nameValidationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
nameValidationInfo object_ = jmethod object_ "nameValidationInfo" (\() -> (nameValidationInfo_impl (javaCast object_ :: StoreFront))) ()

nameValidationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
nameValidationInfo_super object_ = (nameValidationInfo_impl (javaCast object_ :: StoreFront))

nameValidationInfo_impl :: StoreFront -> IO (String)
nameValidationInfo_impl this = do
    javaCatchReturn $ do
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).name) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Name is invalid. Must be < ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).mAXCHAR))
            Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters.<br>")
            javaReturn =<< (StringMaker.toString stringBuffer)
        pure ((jget (this).eMPTY_STRING))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: StoreFront))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: StoreFront))

validationInfo_impl :: StoreFront -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringValidationUtil <- (StringValidationUtil.getInstance)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFront.nameValidationInfo this)))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).basketName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Basket name is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).mAXCHAR))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters.<br>")
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).homeHostName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Home host name is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).mAXCHAR))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters.<br>")
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).homeHostNamePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Home host name path is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).mAXCHAR))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters.<br>")
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).hostName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Host name is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).mAXCHAR))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters.<br>")
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (AbPath.toString ((jget (this).hostNamePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Host name path is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).mAXCHAR))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters.<br>")
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testHomeHostName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Test home host name is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).testHomeHostNamePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Test home host name path is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testHostName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Test host name is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).testHostNamePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Test host name path is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (AbPath.toString ((jget (this).imagePath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Image path is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (AbPath.toString ((jget (this).staticPath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Static path is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jio (AbPath.toString ((jget (this).categoryPath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Category path is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).inventoryControl) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Inventory control is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).subStores) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Sub stores is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).tagLocation) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Tag location is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).packageLocation) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Package location is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).ftp) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Ftp is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).ftpPath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Ftp path is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).ftpUserName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Ftp username is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).ftpPassword) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Ftp password is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testFtp) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Test ftp is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jio (AbPath.toString ((jget (this).testFtpPath)))) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Test ftp Path is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testFtpUserName) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Test ftp username is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).testFtpPassword) (jget (this).mINCHAR) (jget (this).mAXCHAR)))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Test ftp password is invalid. Must be < " ++ javaToString (jget (this).mAXCHAR)) ++ " and > 0 characters.<br>"))
            (StringMaker.toString stringBuffer)


getTestHtmlPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath object_ = jmethod object_ "getTestHtmlPath" (\() -> (getTestHtmlPath_impl (javaCast object_ :: StoreFront))) ()

getTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath_super object_ = (getTestHtmlPath_impl (javaCast object_ :: StoreFront))

getTestHtmlPath_impl :: StoreFront -> IO (String)
getTestHtmlPath_impl this = do
        pure (((jio (getTestHtmlPath ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) + (jio (StoreFront.getCurrentHostNamePath this))))


getCurrentHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostName object_ = jmethod object_ "getCurrentHostName" (\() -> (getCurrentHostName_impl (javaCast object_ :: StoreFront))) ()

getCurrentHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostName_super object_ = (getCurrentHostName_impl (javaCast object_ :: StoreFront))

getCurrentHostName_impl :: StoreFront -> IO (String)
getCurrentHostName_impl this = do
        location <- newIORef ((jget (this).eMPTY_STRING))
        if (jio (isTestingMode ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) then do
            assignedValue <- (StoreFront.getTestHostName this)
            jset location (assignedValue)
        else do
            assignedValue <- (StoreFront.getHostName this)
            jset location (assignedValue)
        pure ((jget location))


getCurrentHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostNamePath object_ = jmethod object_ "getCurrentHostNamePath" (\() -> (getCurrentHostNamePath_impl (javaCast object_ :: StoreFront))) ()

getCurrentHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostNamePath_super object_ = (getCurrentHostNamePath_impl (javaCast object_ :: StoreFront))

getCurrentHostNamePath_impl :: StoreFront -> IO (String)
getCurrentHostNamePath_impl this = do
        location <- newIORef ((jget (this).eMPTY_STRING))
        if (jio (isTestingMode ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) then do
            assignedValue <- (StoreFront.getTestHostNamePath this)
            jset location (assignedValue)
        else do
            assignedValue <- (StoreFront.getHostNamePath this)
            jset location (assignedValue)
        pure ((jget location))


getCurrentHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostName object_ = jmethod object_ "getCurrentHomeHostName" (\() -> (getCurrentHomeHostName_impl (javaCast object_ :: StoreFront))) ()

getCurrentHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostName_super object_ = (getCurrentHomeHostName_impl (javaCast object_ :: StoreFront))

getCurrentHomeHostName_impl :: StoreFront -> IO (String)
getCurrentHomeHostName_impl this = do
        location <- newIORef ((jget (this).eMPTY_STRING))
        if (jio (isTestingMode ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) then do
            assignedValue <- (StoreFront.getTestHomeHostName this)
            jset location (assignedValue)
        else do
            assignedValue <- (StoreFront.getHomeHostName this)
            jset location (assignedValue)
        pure ((jget location))


getCurrentHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostNamePath object_ = jmethod object_ "getCurrentHomeHostNamePath" (\() -> (getCurrentHomeHostNamePath_impl (javaCast object_ :: StoreFront))) ()

getCurrentHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostNamePath_super object_ = (getCurrentHomeHostNamePath_impl (javaCast object_ :: StoreFront))

getCurrentHomeHostNamePath_impl :: StoreFront -> IO (String)
getCurrentHomeHostNamePath_impl this = do
        location <- newIORef ((jget (this).eMPTY_STRING))
        if (jio (isTestingMode ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) then do
            assignedValue <- (StoreFront.getTestHomeHostNamePath this)
            jset location (assignedValue)
        else do
            assignedValue <- (StoreFront.getHomeHostNamePath this)
            jset location (assignedValue)
        pure ((jget location))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: StoreFront))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: StoreFront))

getName_impl :: StoreFront -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getBasketName :: (JavaObjectClass this_) => this_ -> IO (String)
getBasketName object_ = jmethod object_ "getBasketName" (\() -> (getBasketName_impl (javaCast object_ :: StoreFront))) ()

getBasketName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getBasketName_super object_ = (getBasketName_impl (javaCast object_ :: StoreFront))

getBasketName_impl :: StoreFront -> IO (String)
getBasketName_impl this = do
        pure ((jget (this).basketName))


getHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostName object_ = jmethod object_ "getHomeHostName" (\() -> (getHomeHostName_impl (javaCast object_ :: StoreFront))) ()

getHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostName_super object_ = (getHomeHostName_impl (javaCast object_ :: StoreFront))

getHomeHostName_impl :: StoreFront -> IO (String)
getHomeHostName_impl this = do
        pure ((jget (this).homeHostName))


getHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostNamePath object_ = jmethod object_ "getHomeHostNamePath" (\() -> (getHomeHostNamePath_impl (javaCast object_ :: StoreFront))) ()

getHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostNamePath_super object_ = (getHomeHostNamePath_impl (javaCast object_ :: StoreFront))

getHomeHostNamePath_impl :: StoreFront -> IO (String)
getHomeHostNamePath_impl this = do
        (AbPath.toString ((jget (this).homeHostNamePath)))


getHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName object_ = jmethod object_ "getHostName" (\() -> (getHostName_impl (javaCast object_ :: StoreFront))) ()

getHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName_super object_ = (getHostName_impl (javaCast object_ :: StoreFront))

getHostName_impl :: StoreFront -> IO (String)
getHostName_impl this = do
        pure ((jget (this).hostName))


getHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getHostNamePath object_ = jmethod object_ "getHostNamePath" (\() -> (getHostNamePath_impl (javaCast object_ :: StoreFront))) ()

getHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostNamePath_super object_ = (getHostNamePath_impl (javaCast object_ :: StoreFront))

getHostNamePath_impl :: StoreFront -> IO (String)
getHostNamePath_impl this = do
        (AbPath.toString ((jget (this).hostNamePath)))


getTestHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostName object_ = jmethod object_ "getTestHomeHostName" (\() -> (getTestHomeHostName_impl (javaCast object_ :: StoreFront))) ()

getTestHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostName_super object_ = (getTestHomeHostName_impl (javaCast object_ :: StoreFront))

getTestHomeHostName_impl :: StoreFront -> IO (String)
getTestHomeHostName_impl this = do
        pure ((jget (this).testHomeHostName))


getTestHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostNamePath object_ = jmethod object_ "getTestHomeHostNamePath" (\() -> (getTestHomeHostNamePath_impl (javaCast object_ :: StoreFront))) ()

getTestHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostNamePath_super object_ = (getTestHomeHostNamePath_impl (javaCast object_ :: StoreFront))

getTestHomeHostNamePath_impl :: StoreFront -> IO (String)
getTestHomeHostNamePath_impl this = do
        (AbPath.toString ((jget (this).testHomeHostNamePath)))


getTestHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostName object_ = jmethod object_ "getTestHostName" (\() -> (getTestHostName_impl (javaCast object_ :: StoreFront))) ()

getTestHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostName_super object_ = (getTestHostName_impl (javaCast object_ :: StoreFront))

getTestHostName_impl :: StoreFront -> IO (String)
getTestHostName_impl this = do
        pure ((jget (this).testHostName))


getTestHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostNamePath object_ = jmethod object_ "getTestHostNamePath" (\() -> (getTestHostNamePath_impl (javaCast object_ :: StoreFront))) ()

getTestHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostNamePath_super object_ = (getTestHostNamePath_impl (javaCast object_ :: StoreFront))

getTestHostNamePath_impl :: StoreFront -> IO (String)
getTestHostNamePath_impl this = do
        (AbPath.toString ((jget (this).testHostNamePath)))


getStaticPath :: (JavaObjectClass this_) => this_ -> IO (String)
getStaticPath object_ = jmethod object_ "getStaticPath" (\() -> (getStaticPath_impl (javaCast object_ :: StoreFront))) ()

getStaticPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStaticPath_super object_ = (getStaticPath_impl (javaCast object_ :: StoreFront))

getStaticPath_impl :: StoreFront -> IO (String)
getStaticPath_impl this = do
        (AbPath.toString ((jget (this).staticPath)))


getCategoryPath :: (JavaObjectClass this_) => this_ -> IO (String)
getCategoryPath object_ = jmethod object_ "getCategoryPath" (\() -> (getCategoryPath_impl (javaCast object_ :: StoreFront))) ()

getCategoryPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCategoryPath_super object_ = (getCategoryPath_impl (javaCast object_ :: StoreFront))

getCategoryPath_impl :: StoreFront -> IO (String)
getCategoryPath_impl this = do
        (AbPath.toString ((jget (this).categoryPath)))


getInventoryControl :: (JavaObjectClass this_) => this_ -> IO (String)
getInventoryControl object_ = jmethod object_ "getInventoryControl" (\() -> (getInventoryControl_impl (javaCast object_ :: StoreFront))) ()

getInventoryControl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInventoryControl_super object_ = (getInventoryControl_impl (javaCast object_ :: StoreFront))

getInventoryControl_impl :: StoreFront -> IO (String)
getInventoryControl_impl this = do
        pure ((jget (this).inventoryControl))


-- throws Exception
getSubStores :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubStores object_ = jmethod object_ "getSubStores" (\() -> (getSubStores_impl (javaCast object_ :: StoreFront))) ()

getSubStores_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubStores_super object_ = (getSubStores_impl (javaCast object_ :: StoreFront))

getSubStores_impl :: StoreFront -> IO (BasicArrayList.BasicArrayList)
getSubStores_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            tokenizer <- (Tokenizer.new_1 (jget ((jio (CommonSeps.getInstance))).sEMICOLON))
            subStoreVector <- (Tokenizer.getTokensFromString tokenizer (jget (this).subStores) (javaCast (jio (BasicArrayListD.new_))))
            pure (subStoreVector)


getTagLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getTagLocation object_ = jmethod object_ "getTagLocation" (\() -> (getTagLocation_impl (javaCast object_ :: StoreFront))) ()

getTagLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTagLocation_super object_ = (getTagLocation_impl (javaCast object_ :: StoreFront))

getTagLocation_impl :: StoreFront -> IO (String)
getTagLocation_impl this = do
        pure ((jget (this).tagLocation))


getPackageLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageLocation object_ = jmethod object_ "getPackageLocation" (\() -> (getPackageLocation_impl (javaCast object_ :: StoreFront))) ()

getPackageLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageLocation_super object_ = (getPackageLocation_impl (javaCast object_ :: StoreFront))

getPackageLocation_impl :: StoreFront -> IO (String)
getPackageLocation_impl this = do
        pure ((jget (this).packageLocation))


getFtp :: (JavaObjectClass this_) => this_ -> IO (String)
getFtp object_ = jmethod object_ "getFtp" (\() -> (getFtp_impl (javaCast object_ :: StoreFront))) ()

getFtp_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtp_super object_ = (getFtp_impl (javaCast object_ :: StoreFront))

getFtp_impl :: StoreFront -> IO (String)
getFtp_impl this = do
        pure ((jget (this).ftp))


getFtpUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpUserName object_ = jmethod object_ "getFtpUserName" (\() -> (getFtpUserName_impl (javaCast object_ :: StoreFront))) ()

getFtpUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpUserName_super object_ = (getFtpUserName_impl (javaCast object_ :: StoreFront))

getFtpUserName_impl :: StoreFront -> IO (String)
getFtpUserName_impl this = do
        pure ((jget (this).ftpUserName))


getFtpPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPassword object_ = jmethod object_ "getFtpPassword" (\() -> (getFtpPassword_impl (javaCast object_ :: StoreFront))) ()

getFtpPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPassword_super object_ = (getFtpPassword_impl (javaCast object_ :: StoreFront))

getFtpPassword_impl :: StoreFront -> IO (String)
getFtpPassword_impl this = do
        pure ((jget (this).ftpPassword))


getTestFtp :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtp object_ = jmethod object_ "getTestFtp" (\() -> (getTestFtp_impl (javaCast object_ :: StoreFront))) ()

getTestFtp_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtp_super object_ = (getTestFtp_impl (javaCast object_ :: StoreFront))

getTestFtp_impl :: StoreFront -> IO (String)
getTestFtp_impl this = do
        pure ((jget (this).testFtp))


getTestFtpUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpUserName object_ = jmethod object_ "getTestFtpUserName" (\() -> (getTestFtpUserName_impl (javaCast object_ :: StoreFront))) ()

getTestFtpUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpUserName_super object_ = (getTestFtpUserName_impl (javaCast object_ :: StoreFront))

getTestFtpUserName_impl :: StoreFront -> IO (String)
getTestFtpUserName_impl this = do
        pure ((jget (this).testFtpUserName))


getTestFtpPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPassword object_ = jmethod object_ "getTestFtpPassword" (\() -> (getTestFtpPassword_impl (javaCast object_ :: StoreFront))) ()

getTestFtpPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPassword_super object_ = (getTestFtpPassword_impl (javaCast object_ :: StoreFront))

getTestFtpPassword_impl :: StoreFront -> IO (String)
getTestFtpPassword_impl this = do
        pure ((jget (this).testFtpPassword))


getFtpPath :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPath object_ = jmethod object_ "getFtpPath" (\() -> (getFtpPath_impl (javaCast object_ :: StoreFront))) ()

getFtpPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPath_super object_ = (getFtpPath_impl (javaCast object_ :: StoreFront))

getFtpPath_impl :: StoreFront -> IO (String)
getFtpPath_impl this = do
        (AbPath.toString ((jget (this).ftpPath)))


getTestFtpPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPath object_ = jmethod object_ "getTestFtpPath" (\() -> (getTestFtpPath_impl (javaCast object_ :: StoreFront))) ()

getTestFtpPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPath_super object_ = (getTestFtpPath_impl (javaCast object_ :: StoreFront))

getTestFtpPath_impl :: StoreFront -> IO (String)
getTestFtpPath_impl this = do
        (AbPath.toString ((jget (this).testFtpPath)))


getTimeCreated :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeCreated object_ = jmethod object_ "getTimeCreated" (\() -> (getTimeCreated_impl (javaCast object_ :: StoreFront))) ()

getTimeCreated_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeCreated_super object_ = (getTimeCreated_impl (javaCast object_ :: StoreFront))

getTimeCreated_impl :: StoreFront -> IO (String)
getTimeCreated_impl this = do
        pure ((jget (this).timeCreated))


getLastModified :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified object_ = jmethod object_ "getLastModified" (\() -> (getLastModified_impl (javaCast object_ :: StoreFront))) ()

getLastModified_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified_super object_ = (getLastModified_impl (javaCast object_ :: StoreFront))

getLastModified_impl :: StoreFront -> IO (String)
getLastModified_impl this = do
        pure ((jget (this).lastModified))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: StoreFront))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: StoreFront)) a1

setName_impl :: StoreFront -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        pure ()


setBasketName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setBasketName object_ a1 = jmethod object_ "setBasketName" (\() -> (setBasketName_impl (javaCast object_ :: StoreFront))) () a1

setBasketName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setBasketName_super object_ a1 = (setBasketName_impl (javaCast object_ :: StoreFront)) a1

setBasketName_impl :: StoreFront -> String -> IO (())
setBasketName_impl this value = do
        jset (this).basketName (value)
        pure ()


setHomeHostName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomeHostName object_ a1 = jmethod object_ "setHomeHostName" (\() -> (setHomeHostName_impl (javaCast object_ :: StoreFront))) () a1

setHomeHostName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomeHostName_super object_ a1 = (setHomeHostName_impl (javaCast object_ :: StoreFront)) a1

setHomeHostName_impl :: StoreFront -> String -> IO (())
setHomeHostName_impl this value = do
        jset (this).homeHostName (value)
        pure ()


-- throws Exception
setHomeHostNamePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomeHostNamePath object_ a1 = jmethod object_ "setHomeHostNamePath" (\() -> (setHomeHostNamePath_impl (javaCast object_ :: StoreFront))) () a1

setHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHomeHostNamePath_super object_ a1 = (setHomeHostNamePath_impl (javaCast object_ :: StoreFront)) a1

setHomeHostNamePath_impl :: StoreFront -> String -> IO (())
setHomeHostNamePath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).homeHostNamePath (assignedValue)
        pure ()


setHostName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHostName object_ a1 = jmethod object_ "setHostName" (\() -> (setHostName_impl (javaCast object_ :: StoreFront))) () a1

setHostName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHostName_super object_ a1 = (setHostName_impl (javaCast object_ :: StoreFront)) a1

setHostName_impl :: StoreFront -> String -> IO (())
setHostName_impl this value = do
        jset (this).hostName (value)
        pure ()


-- throws Exception
setHostNamePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHostNamePath object_ a1 = jmethod object_ "setHostNamePath" (\() -> (setHostNamePath_impl (javaCast object_ :: StoreFront))) () a1

setHostNamePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setHostNamePath_super object_ a1 = (setHostNamePath_impl (javaCast object_ :: StoreFront)) a1

setHostNamePath_impl :: StoreFront -> String -> IO (())
setHostNamePath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).hostNamePath (assignedValue)
        pure ()


setTestHomeHostName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHomeHostName object_ a1 = jmethod object_ "setTestHomeHostName" (\() -> (setTestHomeHostName_impl (javaCast object_ :: StoreFront))) () a1

setTestHomeHostName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHomeHostName_super object_ a1 = (setTestHomeHostName_impl (javaCast object_ :: StoreFront)) a1

setTestHomeHostName_impl :: StoreFront -> String -> IO (())
setTestHomeHostName_impl this value = do
        jset (this).testHomeHostName (value)
        pure ()


-- throws Exception
setTestHomeHostNamePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHomeHostNamePath object_ a1 = jmethod object_ "setTestHomeHostNamePath" (\() -> (setTestHomeHostNamePath_impl (javaCast object_ :: StoreFront))) () a1

setTestHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHomeHostNamePath_super object_ a1 = (setTestHomeHostNamePath_impl (javaCast object_ :: StoreFront)) a1

setTestHomeHostNamePath_impl :: StoreFront -> String -> IO (())
setTestHomeHostNamePath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).testHomeHostNamePath (assignedValue)
        pure ()


setTestHostName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHostName object_ a1 = jmethod object_ "setTestHostName" (\() -> (setTestHostName_impl (javaCast object_ :: StoreFront))) () a1

setTestHostName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHostName_super object_ a1 = (setTestHostName_impl (javaCast object_ :: StoreFront)) a1

setTestHostName_impl :: StoreFront -> String -> IO (())
setTestHostName_impl this value = do
        jset (this).testHostName (value)
        pure ()


-- throws Exception
setTestHostNamePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHostNamePath object_ a1 = jmethod object_ "setTestHostNamePath" (\() -> (setTestHostNamePath_impl (javaCast object_ :: StoreFront))) () a1

setTestHostNamePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestHostNamePath_super object_ a1 = (setTestHostNamePath_impl (javaCast object_ :: StoreFront)) a1

setTestHostNamePath_impl :: StoreFront -> String -> IO (())
setTestHostNamePath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).testHostNamePath (assignedValue)
        pure ()


-- throws Exception
setImagePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setImagePath object_ a1 = jmethod object_ "setImagePath" (\() -> (setImagePath_impl (javaCast object_ :: StoreFront))) () a1

setImagePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setImagePath_super object_ a1 = (setImagePath_impl (javaCast object_ :: StoreFront)) a1

setImagePath_impl :: StoreFront -> String -> IO (())
setImagePath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).imagePath (assignedValue)
        pure ()


-- throws Exception
setStaticPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStaticPath object_ a1 = jmethod object_ "setStaticPath" (\() -> (setStaticPath_impl (javaCast object_ :: StoreFront))) () a1

setStaticPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStaticPath_super object_ a1 = (setStaticPath_impl (javaCast object_ :: StoreFront)) a1

setStaticPath_impl :: StoreFront -> String -> IO (())
setStaticPath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).staticPath (assignedValue)
        pure ()


-- throws Exception
setCategoryPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCategoryPath object_ a1 = jmethod object_ "setCategoryPath" (\() -> (setCategoryPath_impl (javaCast object_ :: StoreFront))) () a1

setCategoryPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCategoryPath_super object_ a1 = (setCategoryPath_impl (javaCast object_ :: StoreFront)) a1

setCategoryPath_impl :: StoreFront -> String -> IO (())
setCategoryPath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).categoryPath (assignedValue)
        pure ()


setSubStores :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSubStores object_ a1 = jmethod object_ "setSubStores" (\() -> (setSubStores_impl (javaCast object_ :: StoreFront))) () a1

setSubStores_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSubStores_super object_ a1 = (setSubStores_impl (javaCast object_ :: StoreFront)) a1

setSubStores_impl :: StoreFront -> String -> IO (())
setSubStores_impl this value = do
        jset (this).subStores (value)
        pure ()


setTagLocation :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTagLocation object_ a1 = jmethod object_ "setTagLocation" (\() -> (setTagLocation_impl (javaCast object_ :: StoreFront))) () a1

setTagLocation_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTagLocation_super object_ a1 = (setTagLocation_impl (javaCast object_ :: StoreFront)) a1

setTagLocation_impl :: StoreFront -> String -> IO (())
setTagLocation_impl this value = do
        jset (this).tagLocation (value)
        pure ()


setPackageLocation :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPackageLocation object_ a1 = jmethod object_ "setPackageLocation" (\() -> (setPackageLocation_impl (javaCast object_ :: StoreFront))) () a1

setPackageLocation_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPackageLocation_super object_ a1 = (setPackageLocation_impl (javaCast object_ :: StoreFront)) a1

setPackageLocation_impl :: StoreFront -> String -> IO (())
setPackageLocation_impl this value = do
        jset (this).packageLocation (value)
        pure ()


setInventoryControl :: (JavaObjectClass this_) => this_ -> String -> IO (())
setInventoryControl object_ a1 = jmethod object_ "setInventoryControl" (\() -> (setInventoryControl_impl (javaCast object_ :: StoreFront))) () a1

setInventoryControl_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setInventoryControl_super object_ a1 = (setInventoryControl_impl (javaCast object_ :: StoreFront)) a1

setInventoryControl_impl :: StoreFront -> String -> IO (())
setInventoryControl_impl this value = do
        jset (this).inventoryControl (value)
        pure ()


getPackageLocation_1 :: (JavaObjectClass this_) => this_ -> String -> IO (())
getPackageLocation_1 object_ a1 = jmethod object_ "getPackageLocation_1" (\() -> (getPackageLocation_1_impl (javaCast object_ :: StoreFront))) () a1

getPackageLocation_1_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
getPackageLocation_1_super object_ a1 = (getPackageLocation_1_impl (javaCast object_ :: StoreFront)) a1

getPackageLocation_1_impl :: StoreFront -> String -> IO (())
getPackageLocation_1_impl this value = do
        jset (this).packageLocation (value)
        pure ()


setFtp :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtp object_ a1 = jmethod object_ "setFtp" (\() -> (setFtp_impl (javaCast object_ :: StoreFront))) () a1

setFtp_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtp_super object_ a1 = (setFtp_impl (javaCast object_ :: StoreFront)) a1

setFtp_impl :: StoreFront -> String -> IO (())
setFtp_impl this value = do
        jset (this).ftp (value)
        pure ()


setFtpUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpUserName object_ a1 = jmethod object_ "setFtpUserName" (\() -> (setFtpUserName_impl (javaCast object_ :: StoreFront))) () a1

setFtpUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpUserName_super object_ a1 = (setFtpUserName_impl (javaCast object_ :: StoreFront)) a1

setFtpUserName_impl :: StoreFront -> String -> IO (())
setFtpUserName_impl this value = do
        jset (this).ftpUserName (value)
        pure ()


setFtpPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpPassword object_ a1 = jmethod object_ "setFtpPassword" (\() -> (setFtpPassword_impl (javaCast object_ :: StoreFront))) () a1

setFtpPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpPassword_super object_ a1 = (setFtpPassword_impl (javaCast object_ :: StoreFront)) a1

setFtpPassword_impl :: StoreFront -> String -> IO (())
setFtpPassword_impl this value = do
        jset (this).ftpPassword (value)
        pure ()


setTestFtp :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtp object_ a1 = jmethod object_ "setTestFtp" (\() -> (setTestFtp_impl (javaCast object_ :: StoreFront))) () a1

setTestFtp_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtp_super object_ a1 = (setTestFtp_impl (javaCast object_ :: StoreFront)) a1

setTestFtp_impl :: StoreFront -> String -> IO (())
setTestFtp_impl this value = do
        jset (this).testFtp (value)
        pure ()


setTestFtpUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpUserName object_ a1 = jmethod object_ "setTestFtpUserName" (\() -> (setTestFtpUserName_impl (javaCast object_ :: StoreFront))) () a1

setTestFtpUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpUserName_super object_ a1 = (setTestFtpUserName_impl (javaCast object_ :: StoreFront)) a1

setTestFtpUserName_impl :: StoreFront -> String -> IO (())
setTestFtpUserName_impl this value = do
        jset (this).testFtpUserName (value)
        pure ()


setTestFtpPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpPassword object_ a1 = jmethod object_ "setTestFtpPassword" (\() -> (setTestFtpPassword_impl (javaCast object_ :: StoreFront))) () a1

setTestFtpPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpPassword_super object_ a1 = (setTestFtpPassword_impl (javaCast object_ :: StoreFront)) a1

setTestFtpPassword_impl :: StoreFront -> String -> IO (())
setTestFtpPassword_impl this value = do
        jset (this).testFtpPassword (value)
        pure ()


setTimeCreated :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeCreated object_ a1 = jmethod object_ "setTimeCreated" (\() -> (setTimeCreated_impl (javaCast object_ :: StoreFront))) () a1

setTimeCreated_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeCreated_super object_ a1 = (setTimeCreated_impl (javaCast object_ :: StoreFront)) a1

setTimeCreated_impl :: StoreFront -> String -> IO (())
setTimeCreated_impl this value = do
        jset (this).timeCreated (value)
        pure ()


setLastModified :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified object_ a1 = jmethod object_ "setLastModified" (\() -> (setLastModified_impl (javaCast object_ :: StoreFront))) () a1

setLastModified_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified_super object_ a1 = (setLastModified_impl (javaCast object_ :: StoreFront)) a1

setLastModified_impl :: StoreFront -> String -> IO (())
setLastModified_impl this value = do
        jset (this).lastModified (value)
        pure ()


-- throws Exception
setFtpPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpPath object_ a1 = jmethod object_ "setFtpPath" (\() -> (setFtpPath_impl (javaCast object_ :: StoreFront))) () a1

setFtpPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFtpPath_super object_ a1 = (setFtpPath_impl (javaCast object_ :: StoreFront)) a1

setFtpPath_impl :: StoreFront -> String -> IO (())
setFtpPath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).ftpPath (assignedValue)
        pure ()


-- throws Exception
setTestFtpPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpPath object_ a1 = jmethod object_ "setTestFtpPath" (\() -> (setTestFtpPath_impl (javaCast object_ :: StoreFront))) () a1

setTestFtpPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTestFtpPath_super object_ a1 = (setTestFtpPath_impl (javaCast object_ :: StoreFront)) a1

setTestFtpPath_impl :: StoreFront -> String -> IO (())
setTestFtpPath_impl this value = do
        assignedValue <- (AbPath.new_2 value (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).testFtpPath (assignedValue)
        pure ()


-- throws Exception
createDirectories :: (JavaObjectClass this_) => this_ -> IO (Bool)
createDirectories object_ = jmethod object_ "createDirectories" (\() -> (createDirectories_impl (javaCast object_ :: StoreFront))) ()

createDirectories_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
createDirectories_super object_ = (createDirectories_impl (javaCast object_ :: StoreFront))

createDirectories_impl :: StoreFront -> IO (Bool)
createDirectories_impl this = do
    javaCatchReturn $ do
        storeAbPath <- (AbPath.new_2 ((jio (URLGLOBALS.getWebappPath)) + (jio (StoreFront.getCurrentHomeHostNamePath this))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        when (Prelude.not (jio (Directory.create ((jget (this).directory)) storeAbPath))) $ do
            javaReturn (False)
        when (Prelude.not (jio (Directory.create ((jget (this).directory)) (jio (AbPath.new_2 (storeAbPath + (jio (StoreFront.getCategoryPath this))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))))) $ do
            javaReturn (False)
        when (Prelude.not (jio (Directory.create ((jget (this).directory)) (jio (AbPath.new_2 (storeAbPath + (jio (StoreFront.getStaticPath this))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))))) $ do
            javaReturn (False)
        pure (True)


-- throws Exception
install :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
install object_ a1 a2 = jmethod object_ "install" (\() -> (install_impl (javaCast object_ :: StoreFront))) () a1 a2

install_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
install_super object_ a1 a2 = (install_impl (javaCast object_ :: StoreFront)) a1 a2

install_impl :: StoreFront -> Int -> Int -> IO (())
install_impl this current total = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "install()" e)
            javaThrow (e)
            ) $ do
            when (Prelude.not (jio (StoreFront.createDirectories this))) $ do
                javaThrow ((JavaException "Exception" "Unable to create store directories"))
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
            viewPath <- (StringMaker.toString stringBuffer)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer viewPath)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).iNSTALLPATH))
            fromDirectoryAbPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer viewPath)
            Control.Monad.void (StringMaker.append stringBuffer "special")
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
            fromSpecialDirectoryAbPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer viewPath)
            Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFront.getName this)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
            toDirectoryAbPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when (current == 0) $ do
                when (Prelude.not (jio (Directory.create ((jget (this).directory)) toDirectoryAbPath))) $ do
                    javaThrow ((JavaException "Exception" ("Unable to create store view directory: " ++ (jio (AbPath.toString toDirectoryAbPath)))))
            let viewTotal = (((total * 85)) `quot` 100)
            let installTotal = (((total * 93)) `quot` 100)
            if (current < viewTotal) then do
                file <- (AbFile.createAbFileFromAbPath fromSpecialDirectoryAbPath)
                if (jio (AbFile.isDirectory file)) then do
                    let halfViewTotal = (viewTotal `quot` 2)
                    if (current < halfViewTotal) then do
                        Control.Monad.void (StoreFront.installViews this fromSpecialDirectoryAbPath toDirectoryAbPath current halfViewTotal)
                    else when (current < viewTotal) $ do
                        Control.Monad.void (StoreFront.installViews this fromDirectoryAbPath toDirectoryAbPath (current - halfViewTotal) (viewTotal - halfViewTotal))
                else do
                    Control.Monad.void (StoreFront.installViews this fromDirectoryAbPath toDirectoryAbPath current viewTotal)
            else if (current < installTotal) then do
                Control.Monad.void (StoreFront.installResources this fromDirectoryAbPath (current - viewTotal) (installTotal - viewTotal))
            else do
                Control.Monad.void (StoreFront.installMedia this fromDirectoryAbPath (current - installTotal) (total - installTotal))
        pure ()


-- throws Exception
installViews :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> AbPath.AbPath -> Int -> Int -> IO (())
installViews object_ a1 a2 a3 a4 = jmethod object_ "installViews" (\() -> (installViews_impl (javaCast object_ :: StoreFront))) () a1 a2 a3 a4

installViews_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> AbPath.AbPath -> Int -> Int -> IO (())
installViews_super object_ a1 a2 a3 a4 = (installViews_impl (javaCast object_ :: StoreFront)) a1 a2 a3 a4

installViews_impl :: StoreFront -> AbPath.AbPath -> AbPath.AbPath -> Int -> Int -> IO (())
installViews_impl this fromDirectoryAbPath toDirectoryAbPath current total = do
        Control.Monad.void (FileUtil.copyDirectoryPortion ((jio (FileUtil.getInstance))) fromDirectoryAbPath toDirectoryAbPath True False current total)
        pure ()


-- throws Exception
installResources :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> Int -> Int -> IO (())
installResources object_ a1 a2 a3 = jmethod object_ "installResources" (\() -> (installResources_impl (javaCast object_ :: StoreFront))) () a1 a2 a3

installResources_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> Int -> Int -> IO (())
installResources_super object_ a1 a2 a3 = (installResources_impl (javaCast object_ :: StoreFront)) a1 a2 a3

installResources_impl :: StoreFront -> AbPath.AbPath -> Int -> Int -> IO (())
installResources_impl this fromDirectoryAbPath current total = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString fromDirectoryAbPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        Control.Monad.void (StringMaker.append stringBuffer "Resources")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        installCategoryAbPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFront.getCurrentHomeHostNamePath this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFront.getCategoryPath this)))
        categoryAbPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        Control.Monad.void (FileUtil.copyDirectoryPortion ((jio (FileUtil.getInstance))) installCategoryAbPath categoryAbPath True False current total)
        pure ()


-- throws Exception
installMedia :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> Int -> Int -> IO (())
installMedia object_ a1 a2 a3 = jmethod object_ "installMedia" (\() -> (installMedia_impl (javaCast object_ :: StoreFront))) () a1 a2 a3

installMedia_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> Int -> Int -> IO (())
installMedia_super object_ a1 a2 a3 = (installMedia_impl (javaCast object_ :: StoreFront)) a1 a2 a3

installMedia_impl :: StoreFront -> AbPath.AbPath -> Int -> Int -> IO (())
installMedia_impl this fromDirectoryAbPath current total = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString fromDirectoryAbPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).tEMPLATEPATH))
        Control.Monad.void (StringMaker.append stringBuffer "images")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        viewStoreImagesDirectoryAbPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        storeAbPath <- (AbPath.new_2 ((jio (URLGLOBALS.getWebappPath)) + (jio (StoreFront.getCurrentHomeHostNamePath this))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        Control.Monad.void (FileUtil.copyDirectoryPortion ((jio (FileUtil.getInstance))) viewStoreImagesDirectoryAbPath storeAbPath True False current total)
        pure ()


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: StoreFront))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: StoreFront))

toVector_impl :: StoreFront -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        dataVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).name))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).homeHostName))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).homeHostNamePath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).hostName))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).hostNamePath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).testHomeHostName))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).testHomeHostNamePath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).testHostName))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).testHostNamePath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).imagePath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).staticPath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).categoryPath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).inventoryControl))
        contextConfigurationDomDocumentMapping <- (ContextConfigurationDomDocumentMapping.new_1 (jio (StoreFront.getContextConfigurationInterface this)))
        Control.Monad.void (BasicArrayList.add dataVector (jio (ContextConfigurationDomDocumentMapping.toDomDocumentString contextConfigurationDomDocumentMapping)))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).subStores))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).tagLocation))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).packageLocation))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).ftp))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).ftpPath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).ftpUserName))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).ftpPassword))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).testFtp))
        Control.Monad.void (BasicArrayList.add dataVector (jio (AbPath.toString ((jget (this).testFtpPath)))))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).testFtpUserName))
        Control.Monad.void (BasicArrayList.add dataVector (jget (this).testFtpPassword))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (BasicArrayList.add dataVector time)
        Control.Monad.void (BasicArrayList.add dataVector time)
        pure (dataVector)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: StoreFront))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: StoreFront))

toHashMap_impl :: StoreFront -> IO (HashMap.HashMap)
toHashMap_impl this = do
        storeFrontData <- (StoreFrontData.getInstance)
        dataHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).nAME) (jget (this).name))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).hOMEHOSTNAME) (jget (this).homeHostName))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).hOMEHOSTNAMEPATH) (jio (AbPath.toString ((jget (this).homeHostNamePath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).hOSTNAME) (jget (this).hostName))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).hOSTNAMEPATH) (jio (AbPath.toString ((jget (this).hostNamePath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tESTHOMEHOSTNAME) (jget (this).testHomeHostName))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tESTHOMEHOSTNAMEPATH) (jio (AbPath.toString ((jget (this).testHomeHostNamePath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tESTHOSTNAME) (jget (this).testHostName))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tESTHOSTNAMEPATH) (jio (AbPath.toString ((jget (this).testHostNamePath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).iMAGEPATH) (jio (AbPath.toString ((jget (this).imagePath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).sTATICPATH) (jio (AbPath.toString ((jget (this).staticPath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).cATEGORYPATH) (jio (AbPath.toString ((jget (this).categoryPath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).iNVENTORYCONTROL) (jget (this).inventoryControl))
        contextConfigurationDomDocumentMapping <- (ContextConfigurationDomDocumentMapping.new_1 (jio (StoreFront.getContextConfigurationInterface this)))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).cONFIGURATION) (jio (ContextConfigurationDomDocumentMapping.toDomDocumentString contextConfigurationDomDocumentMapping)))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).sUBSTORES) (jget (this).subStores))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tAGLOCATION) (jget (this).tagLocation))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).pACKAGELOCATION) (jget (this).packageLocation))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).fTP) (jget (this).ftp))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).fTPPATH) (jio (AbPath.toString ((jget (this).ftpPath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).fTPUSERNAME) (jget (this).ftpUserName))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).fTPPASSWORD) (jget (this).ftpPassword))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tESTFTP) (jget (this).testFtp))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tESTFTPPATH) (jio (AbPath.toString ((jget (this).testFtpPath)))))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tESTFTPUSERNAME) (jget (this).testFtpUserName))
        Control.Monad.void (HashMap.put dataHashMap (jget (storeFrontData).tESTFTPPASSWORD) (jget (this).testFtpPassword))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (HashMap.put dataHashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED) time)
        pure (dataHashMap)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: StoreFront))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: StoreFront))

getKey_impl :: StoreFront -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (StoreFront.getName this)) :: Any.Any)))


getContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface object_ = jmethod object_ "getContextConfigurationInterface" (\() -> (getContextConfigurationInterface_impl (javaCast object_ :: StoreFront))) ()

getContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_super object_ = (getContextConfigurationInterface_impl (javaCast object_ :: StoreFront))

getContextConfigurationInterface_impl :: StoreFront -> IO (ContextConfigurationInterface.ContextConfigurationInterface)
getContextConfigurationInterface_impl this = do
        pure ((jget (this).contextConfigurationInterface))


setContextConfigurationInterface :: (JavaObjectClass this_) => this_ -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface object_ a1 = jmethod object_ "setContextConfigurationInterface" (\() -> (setContextConfigurationInterface_impl (javaCast object_ :: StoreFront))) () a1

setContextConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface_super object_ a1 = (setContextConfigurationInterface_impl (javaCast object_ :: StoreFront)) a1

setContextConfigurationInterface_impl :: StoreFront -> ContextConfigurationInterface.ContextConfigurationInterface -> IO (())
setContextConfigurationInterface_impl this contextConfigurationInterface = do
        jset (this).contextConfigurationInterface (contextConfigurationInterface)
        pure ()


