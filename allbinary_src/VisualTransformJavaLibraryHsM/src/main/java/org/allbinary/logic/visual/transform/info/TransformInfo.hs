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
module TransformInfo where

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
import qualified TransformInfoData -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Encoder -- org.allbinary.logic.control.crypt.Encoder
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified OutputTypeData -- org.allbinary.logic.io.OutputTypeData
import qualified AbFilePath -- org.allbinary.logic.io.path.AbFilePath
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified TransformInfoDataData -- org.allbinary.logic.visual.transform.info.data.TransformInfoDataData
import qualified TransformInfoObjectConfig -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig
import qualified TransformInfoObjectConfigAndManipulatorFactory -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory
import qualified TransformInfoObjectConfigInterface -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface
import qualified TransformInfoTemplateData -- org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData
import qualified TransformInfoObjectData -- org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified TransformInfoInterface

-- implements TransformInfoInterface
data TransformInfo = TransformInfo
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , isChild :: IORef (Bool)
    , name :: IORef (String)
    , storeName :: IORef (String)
    , objectFileName :: IORef (String)
    , anyType :: IORef (Any.Any)
    , objectConfigFileName :: IORef (String)
    , objectConfigInterface :: IORef (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
    , template :: IORef (String)
    , templateFileName :: IORef (String)
    , dataFileName :: IORef (String)
    , data_ :: IORef (String)
    }

instance JavaNull TransformInfo where
    javaNull = javaNullRecord "TransformInfo"

instance JavaEquals TransformInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfo where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfo
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    isChild <- newIORef False
    name <- newIORef ""
    storeName <- newIORef ""
    objectFileName <- newIORef ""
    anyType <- newIORef javaNull
    objectConfigFileName <- newIORef ""
    objectConfigInterface <- newIORef javaNull
    template <- newIORef ""
    templateFileName <- newIORef ""
    dataFileName <- newIORef ""
    data_ <- newIORef ""
    let this = TransformInfo header_ logUtil commonStrings abeClientInformation isChild name storeName objectFileName anyType objectConfigFileName objectConfigInterface template templateFileName dataFileName data_
    jregisterLevel header_ this
    TransformInfoInterface.registerInterface_ header_
    jregisterMethod header_ "override" (\() -> override_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "setObject" (\() -> setObject_impl this)
    jregisterMethod header_ "setObjectFile" (\() -> setObjectFile_impl this)
    jregisterMethod header_ "setTemplate" (\() -> setTemplate_impl this)
    jregisterMethod header_ "setTemplateFile" (\() -> setTemplateFile_impl this)
    jregisterMethod header_ "setObjectConfigFileName" (\() -> setObjectConfigFileName_impl this)
    jregisterMethod header_ "setObjectConfigFile" (\() -> setObjectConfigFile_impl this)
    jregisterMethod header_ "setObjectConfig" (\() -> setObjectConfig_impl this)
    jregisterMethod header_ "setDataFile" (\() -> setDataFile_impl this)
    jregisterMethod header_ "setData" (\() -> setData_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getObject" (\() -> getObject_impl this)
    jregisterMethod header_ "getObjectFile" (\() -> getObjectFile_impl this)
    jregisterMethod header_ "getTemplate" (\() -> getTemplate_impl this)
    jregisterMethod header_ "getTemplateFile" (\() -> getTemplateFile_impl this)
    jregisterMethod header_ "getTemplateFilePath" (\() -> getTemplateFilePath_impl this)
    jregisterMethod header_ "getObjectConfigFilePath" (\() -> getObjectConfigFilePath_impl this)
    jregisterMethod header_ "getDataFilePath" (\() -> getDataFilePath_impl this)
    jregisterMethod header_ "getObjectConfigFile" (\() -> getObjectConfigFile_impl this)
    jregisterMethod header_ "getData" (\() -> getData_impl this)
    jregisterMethod header_ "getDataDocument" (\() -> getDataDocument_impl this)
    jregisterMethod header_ "getDataFile" (\() -> getDataFile_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "setChild" (\() -> setChild_impl this)
    jregisterMethod header_ "isChild" (\() -> isChild_impl this)
    jregisterMethod header_ "getObjectConfigInterface" (\() -> getObjectConfigInterface_impl this)
    jregisterMethod header_ "setObjectConfigInterface" (\() -> setObjectConfigInterface_impl this)
    pure this

initFields_ :: TransformInfo -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.isChild (False)
    jset this.name ("")
    jset this.storeName ("")
    jset this.objectFileName ("")
    jset this.anyType (javaNull)
    jset this.objectConfigFileName ("")
    jset this.objectConfigInterface (javaNull)
    jset this.template ("")
    jset this.templateFileName ("")
    jset this.dataFileName ("")
    jset this.data_ ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_ :: IO TransformInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfo -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_1 :: String -> IO TransformInfo
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: TransformInfo -> String -> IO ()
init_1 this name = do
        initFields_ this
        Control.Monad.void (TransformInfo.setName this name)
        pure ()

new_5 :: String -> String -> String -> String -> String -> IO TransformInfo
new_5 name objectFileName objectConfigFileName templateFileName dataFileName = do
    this <- newRecord_
    init_5 this name objectFileName objectConfigFileName templateFileName dataFileName
    pure this

init_5 :: TransformInfo -> String -> String -> String -> String -> String -> IO ()
init_5 this name objectFileName objectConfigFileName templateFileName dataFileName = do
        initFields_ this
        Control.Monad.void (TransformInfo.setName this name)
        Control.Monad.void (TransformInfo.setObjectFile this objectFileName)
        Control.Monad.void (TransformInfo.setObjectConfigFile this objectConfigFileName)
        Control.Monad.void (TransformInfo.setTemplateFile this templateFileName)
        Control.Monad.void (TransformInfo.setDataFile this dataFileName)
        pure ()


-- throws Exception
override :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
override object_ a1 = jmethod object_ "override" (\() -> (override_impl (javaCast object_ :: TransformInfo))) () a1

override_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
override_super object_ a1 = (override_impl (javaCast object_ :: TransformInfo)) a1

override_impl :: TransformInfo -> HashMap.HashMap -> IO (())
override_impl this hashMap = do
        transformInfoData <- (TransformInfoData.getInstance)
        stringValidationUtil <- (StringValidationUtil.getInstance)
        let aName = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).nAME))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aName))) $ do
            jset (this).name (aName)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- newIORef =<< (StringMaker.new_)
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "TransformInfo properties overridden for: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jio (TransformInfo.getName this)))
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "\n properties: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jio (HashMap.toString hashMap)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jget stringBuffer)))) this "override(HashMap hashMap)")
        let aStoreName = (javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aStoreName))) $ do
            jset (this).storeName (aStoreName)
        let aObjectFileName = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECTFILENAME))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aObjectFileName))) $ do
            jset (this).objectFileName (aObjectFileName)
        stringBuffer <- newIORef =<< (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jio (URLGLOBALS.getMainPath)))
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget (this).storeName))
        Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        fileAbPath <- (AbPath.new_2 (jio (StringMaker.toString ((jget stringBuffer)))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        let aObject = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECT))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aObject))) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TransformInfo override view Object for: " ++ (jio (TransformInfo.getName this))) this "override(HashMap hashMap)")
            fileDataString <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoObjectData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoObjectData.getInstance))).eNCRYPTED_EXTENSION)))) (jio (AbPath.new_2 (jio (AbPath.toString fileAbPath)) aObject)))
            when (fileDataString /= javaNull) $ do
                jset (this).anyType (fileDataString)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECTCONFIG))) :: String)))) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TransformInfo override ObjectConfig for: " ++ (jio (TransformInfo.getName this))) this "override(HashMap hashMap)")
            Control.Monad.void (TransformInfo.setObjectConfig this (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECTCONFIG))) :: String))
        let objectConfigFileName = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).oBJECTCONFIGFILENAME))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil objectConfigFileName))) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TransformInfo override ObjectConfig File for: " ++ (jio (TransformInfo.getName this))) this "override(HashMap hashMap)")
            Control.Monad.void (TransformInfo.setObjectConfigFile this objectConfigFileName)
        let type_ = (javaCast (jio (HashMap.get hashMap (jget ((jio (OutputTypeData.getInstance))).nAME))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil type_))) $ do
            when ((jio (TransformInfo.getObjectConfigInterface this)) == javaNull) $ do
                Control.Monad.void (TransformInfo.setObjectConfigInterface this (javaCast (jio (TransformInfoObjectConfig.new_1 this))))
            Control.Monad.void (TransformInfoObjectConfigInterface.setOutputTypeName ((jio (TransformInfo.getObjectConfigInterface this))) type_)
        let aTemplateFileName = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).tEMPLATEFILENAME))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aTemplateFileName))) $ do
            jset (this).templateFileName (aTemplateFileName)
        let aTemplate = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).tEMPLATE))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aTemplate))) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TransformInfo override Template for: " ++ (jio (TransformInfo.getName this))) this "override(HashMap hashMap)")
            fileDataString <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoTemplateData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoTemplateData.getInstance))).eNCRYPTED_EXTENSION)))) (jio (AbPath.new_2 (jio (AbPath.toString fileAbPath)) aTemplate)))
            when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil fileDataString))) $ do
                jset (this).template (fileDataString)
        let aDataFileName = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).dATAFILENAME))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aDataFileName))) $ do
            jset (this).dataFileName (aDataFileName)
        let aData = (javaCast (jio (HashMap.get hashMap (jget (transformInfoData).dATA))) :: String)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil aData))) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TransformInfo override Data for: " ++ (jio (TransformInfo.getName this))) this "override(HashMap hashMap)")
            fileDataString <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoDataData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoDataData.getInstance))).eNCRYPTED_EXTENSION)))) (jio (AbPath.new_2 (jio (AbPath.toString fileAbPath)) aData)))
            when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil fileDataString))) $ do
                jset (this).data_ (fileDataString)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            assignedValue <- (StringMaker.new_)
            jset stringBuffer (assignedValue)
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "Name: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) aName)
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "\nTemp Object File: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) aObject)
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "\nTemp Object Config File: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jio (AbPath.toString ((jio (TransformInfo.getObjectConfigFilePath this))))))
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "\nTemp Template File: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) aTemplate)
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "\nTemp Data File: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) aData)
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "\nStore Name: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) aStoreName)
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "\nObjectFile: ")
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) (jio (TransformInfo.getObjectFile this)))
            Control.Monad.void (StringMaker.append ((jget stringBuffer)) "->TransformInfo")
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jget stringBuffer)))) this "TransformInfoInterface(HashMap)")
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (TransformInfo.log this)) this "override")
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: TransformInfo))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: TransformInfo))

log_impl :: TransformInfo -> IO (String)
log_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Name: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).name))
        Control.Monad.void (StringMaker.append stringBuffer "\nObject File: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).objectFileName))
        Control.Monad.void (StringMaker.append stringBuffer "\nObject Config File Path: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfo.getObjectConfigFile this)))
        Control.Monad.void (StringMaker.append stringBuffer "\nTemplate File: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).templateFileName))
        Control.Monad.void (StringMaker.append stringBuffer "\nData File: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).dataFileName))
        Control.Monad.void (StringMaker.append stringBuffer "\nStore Name: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).storeName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfo.getObjectFile this)))
        Control.Monad.void (StringMaker.append stringBuffer "->TransformInfo")
        Control.Monad.void (StringMaker.append stringBuffer "TransformInfoInterface(HashMap)")
        (StringMaker.toString stringBuffer)


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: TransformInfo))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: TransformInfo)) a1

setName_impl :: TransformInfo -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: TransformInfo))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: TransformInfo)) a1

setStoreName_impl :: TransformInfo -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        pure ()


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: TransformInfo))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: TransformInfo))

getStoreName_impl :: TransformInfo -> IO (String)
getStoreName_impl this = do
        pure ((jget (this).storeName))


setObject :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setObject object_ a1 = jmethod object_ "setObject" (\() -> (setObject_impl (javaCast object_ :: TransformInfo))) () (jtoObject a1)

setObject_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setObject_super object_ a1 = (setObject_impl (javaCast object_ :: TransformInfo)) (jtoObject a1)

setObject_impl :: TransformInfo -> JavaObject -> IO (())
setObject_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        jset (this).anyType (anyType)
        pure ()


setObjectFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectFile object_ a1 = jmethod object_ "setObjectFile" (\() -> (setObjectFile_impl (javaCast object_ :: TransformInfo))) () a1

setObjectFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectFile_super object_ a1 = (setObjectFile_impl (javaCast object_ :: TransformInfo)) a1

setObjectFile_impl :: TransformInfo -> String -> IO (())
setObjectFile_impl this value = do
        jset (this).objectFileName (value)
        pure ()


setTemplate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplate object_ a1 = jmethod object_ "setTemplate" (\() -> (setTemplate_impl (javaCast object_ :: TransformInfo))) () a1

setTemplate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplate_super object_ a1 = (setTemplate_impl (javaCast object_ :: TransformInfo)) a1

setTemplate_impl :: TransformInfo -> String -> IO (())
setTemplate_impl this value = do
        jset (this).template (value)
        pure ()


setTemplateFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile object_ a1 = jmethod object_ "setTemplateFile" (\() -> (setTemplateFile_impl (javaCast object_ :: TransformInfo))) () a1

setTemplateFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile_super object_ a1 = (setTemplateFile_impl (javaCast object_ :: TransformInfo)) a1

setTemplateFile_impl :: TransformInfo -> String -> IO (())
setTemplateFile_impl this value = do
        jset (this).templateFileName (value)
        pure ()


-- throws Exception
setObjectConfigFileName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFileName object_ a1 = jmethod object_ "setObjectConfigFileName" (\() -> (setObjectConfigFileName_impl (javaCast object_ :: TransformInfo))) () a1

setObjectConfigFileName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFileName_super object_ a1 = (setObjectConfigFileName_impl (javaCast object_ :: TransformInfo)) a1

setObjectConfigFileName_impl :: TransformInfo -> String -> IO (())
setObjectConfigFileName_impl this value = do
        jset (this).objectConfigFileName (value)
        pure ()


-- throws Exception
setObjectConfigFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile object_ a1 = jmethod object_ "setObjectConfigFile" (\() -> (setObjectConfigFile_impl (javaCast object_ :: TransformInfo))) () a1

setObjectConfigFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile_super object_ a1 = (setObjectConfigFile_impl (javaCast object_ :: TransformInfo)) a1

setObjectConfigFile_impl :: TransformInfo -> String -> IO (())
setObjectConfigFile_impl this value = do
        jset (this).objectConfigFileName (value)
        Control.Monad.void (TransformInfo.setObjectConfigInterface this (javaCast (jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance_3 ((jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance))) (jget (this).abeClientInformation) this (jio (TransformInfo.getObjectConfigFilePath this))))))
        pure ()


-- throws Exception
setObjectConfig :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfig object_ a1 = jmethod object_ "setObjectConfig" (\() -> (setObjectConfig_impl (javaCast object_ :: TransformInfo))) () a1

setObjectConfig_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfig_super object_ a1 = (setObjectConfig_impl (javaCast object_ :: TransformInfo)) a1

setObjectConfig_impl :: TransformInfo -> String -> IO (())
setObjectConfig_impl this value = do
        document <- (DomDocumentHelper.create_1 value)
        Control.Monad.void (TransformInfo.setObjectConfigInterface this (javaCast (jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance_3 ((jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance))) (jget (this).abeClientInformation) this document))))
        pure ()


setDataFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDataFile object_ a1 = jmethod object_ "setDataFile" (\() -> (setDataFile_impl (javaCast object_ :: TransformInfo))) () a1

setDataFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDataFile_super object_ a1 = (setDataFile_impl (javaCast object_ :: TransformInfo)) a1

setDataFile_impl :: TransformInfo -> String -> IO (())
setDataFile_impl this value = do
        jset (this).dataFileName (value)
        pure ()


setData :: (JavaObjectClass this_) => this_ -> String -> IO (())
setData object_ a1 = jmethod object_ "setData" (\() -> (setData_impl (javaCast object_ :: TransformInfo))) () a1

setData_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setData_super object_ a1 = (setData_impl (javaCast object_ :: TransformInfo)) a1

setData_impl :: TransformInfo -> String -> IO (())
setData_impl this value = do
        jset (this).data_ (value)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TransformInfo))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TransformInfo))

getName_impl :: TransformInfo -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getObject :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getObject object_ = jmethod object_ "getObject" (\() -> (getObject_impl (javaCast object_ :: TransformInfo))) ()

getObject_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getObject_super object_ = (getObject_impl (javaCast object_ :: TransformInfo))

getObject_impl :: TransformInfo -> IO (Any.Any)
getObject_impl this = do
        pure ((jtoObject (jget (this).anyType)))


getObjectFile :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectFile object_ = jmethod object_ "getObjectFile" (\() -> (getObjectFile_impl (javaCast object_ :: TransformInfo))) ()

getObjectFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectFile_super object_ = (getObjectFile_impl (javaCast object_ :: TransformInfo))

getObjectFile_impl :: TransformInfo -> IO (String)
getObjectFile_impl this = do
        pure ((jget (this).objectFileName))


getTemplate :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplate object_ = jmethod object_ "getTemplate" (\() -> (getTemplate_impl (javaCast object_ :: TransformInfo))) ()

getTemplate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplate_super object_ = (getTemplate_impl (javaCast object_ :: TransformInfo))

getTemplate_impl :: TransformInfo -> IO (String)
getTemplate_impl this = do
        pure ((jget (this).template))


getTemplateFile :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplateFile object_ = jmethod object_ "getTemplateFile" (\() -> (getTemplateFile_impl (javaCast object_ :: TransformInfo))) ()

getTemplateFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplateFile_super object_ = (getTemplateFile_impl (javaCast object_ :: TransformInfo))

getTemplateFile_impl :: TransformInfo -> IO (String)
getTemplateFile_impl this = do
        pure ((jget (this).templateFileName))


-- throws Exception
getTemplateFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath object_ = jmethod object_ "getTemplateFilePath" (\() -> (getTemplateFilePath_impl (javaCast object_ :: TransformInfo))) ()

getTemplateFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath_super object_ = (getTemplateFilePath_impl (javaCast object_ :: TransformInfo))

getTemplateFilePath_impl :: TransformInfo -> IO (AbPath.AbPath)
getTemplateFilePath_impl this = do
        (fmap (\value_ -> javaCast value_ :: AbPath.AbPath) (AbFilePath.new_1 (jio (TransformInfo.getTemplateFile this))))


-- throws Exception
getObjectConfigFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getObjectConfigFilePath object_ = jmethod object_ "getObjectConfigFilePath" (\() -> (getObjectConfigFilePath_impl (javaCast object_ :: TransformInfo))) ()

getObjectConfigFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getObjectConfigFilePath_super object_ = (getObjectConfigFilePath_impl (javaCast object_ :: TransformInfo))

getObjectConfigFilePath_impl :: TransformInfo -> IO (AbPath.AbPath)
getObjectConfigFilePath_impl this = do
        (fmap (\value_ -> javaCast value_ :: AbPath.AbPath) (AbFilePath.new_1 (jio (TransformInfo.getObjectConfigFile this))))


-- throws Exception
getDataFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath object_ = jmethod object_ "getDataFilePath" (\() -> (getDataFilePath_impl (javaCast object_ :: TransformInfo))) ()

getDataFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath_super object_ = (getDataFilePath_impl (javaCast object_ :: TransformInfo))

getDataFilePath_impl :: TransformInfo -> IO (AbPath.AbPath)
getDataFilePath_impl this = do
        (fmap (\value_ -> javaCast value_ :: AbPath.AbPath) (AbFilePath.new_1 (jio (TransformInfo.getDataFile this))))


getObjectConfigFile :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectConfigFile object_ = jmethod object_ "getObjectConfigFile" (\() -> (getObjectConfigFile_impl (javaCast object_ :: TransformInfo))) ()

getObjectConfigFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectConfigFile_super object_ = (getObjectConfigFile_impl (javaCast object_ :: TransformInfo))

getObjectConfigFile_impl :: TransformInfo -> IO (String)
getObjectConfigFile_impl this = do
        pure ((jget (this).objectConfigFileName))


getData :: (JavaObjectClass this_) => this_ -> IO (String)
getData object_ = jmethod object_ "getData" (\() -> (getData_impl (javaCast object_ :: TransformInfo))) ()

getData_super :: (JavaObjectClass this_) => this_ -> IO (String)
getData_super object_ = (getData_impl (javaCast object_ :: TransformInfo))

getData_impl :: TransformInfo -> IO (String)
getData_impl this = do
        stringValidationUtil <- (StringValidationUtil.getInstance)
        dataFileString <- (TransformInfo.getDataFile this)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil dataFileString))) $ do
            handle (\(e :: JavaException) -> do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Could Not Load Data from: " ++ javaToString (jio (TransformInfo.getDataFile this))) this "getData()" e)
                ) $ do
                fileData <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoDataData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoDataData.getInstance))).eNCRYPTED_EXTENSION)))) (jio (TransformInfo.getDataFilePath this)))
                when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jget (this).data_)))) $ do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Data File overriding existing data: " ++ javaToString (jio (TransformInfo.getDataFilePath this))) this "getData()")
                jset (this).data_ (fileData)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Could Not Preview Data: " ++ (jget (this).data_)) this "getData()" e)
            ) $ do
            if (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jget (this).data_)))) then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Data: " ++ (jio (XmlDocumentHelper.toString (jio (DomDocumentHelper.create_1 (jget this.data_)))))) this "getData()")
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "Name: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).name))
                    Control.Monad.void (StringMaker.append stringBuffer "\nEmpty Data For: ")
                    Control.Monad.void (StringMaker.append stringBuffer dataFileString)
                    Control.Monad.void (StringMaker.append stringBuffer "\nPath: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toFileSystemString ((jio (TransformInfo.getDataFilePath this))))))
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "getData()")
        pure ((jget (this).data_))


-- throws Exception
getDataDocument :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDataDocument object_ = jmethod object_ "getDataDocument" (\() -> (getDataDocument_impl (javaCast object_ :: TransformInfo))) ()

getDataDocument_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDataDocument_super object_ = (getDataDocument_impl (javaCast object_ :: TransformInfo))

getDataDocument_impl :: TransformInfo -> IO (Document.Document)
getDataDocument_impl this = do
    javaCatchReturn $ do
        localData <- (TransformInfo.getData this)
        stringValidationUtil <- (StringValidationUtil.getInstance)
        if (jio (StringValidationUtil.isEmpty stringValidationUtil localData)) then do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "No Data So Creating New Document" this "getDataDocument()")
            javaReturn =<< (DomDocumentHelper.create)
        else do
            document <- (DomDocumentHelper.create_1 localData)
            javaReturn (document)


getDataFile :: (JavaObjectClass this_) => this_ -> IO (String)
getDataFile object_ = jmethod object_ "getDataFile" (\() -> (getDataFile_impl (javaCast object_ :: TransformInfo))) ()

getDataFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDataFile_super object_ = (getDataFile_impl (javaCast object_ :: TransformInfo))

getDataFile_impl :: TransformInfo -> IO (String)
getDataFile_impl this = do
        pure ((jget (this).dataFileName))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: TransformInfo))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: TransformInfo))

toHashMap_impl :: TransformInfo -> IO (HashMap.HashMap)
toHashMap_impl this = do
        transformInfoData <- (TransformInfoData.getInstance)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).nAME) (jget (this).name))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).oBJECTFILENAME) (jget (this).objectFileName))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).oBJECT) (jget (this).anyType))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).oBJECTCONFIGFILENAME) (jio (TransformInfo.getObjectConfigFile this)))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).oBJECTCONFIG) (jio (Encoder.encode (jgetBytes (jio (TransformInfoObjectConfigInterface.toString ((jio (TransformInfo.getObjectConfigInterface this)))))))))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).tEMPLATEFILENAME) (jget (this).templateFileName))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).tEMPLATE) (jget (this).template))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).dATAFILENAME) (jget (this).dataFileName))
        Control.Monad.void (HashMap.put hashMap (jget (transformInfoData).dATA) (jio (Encoder.encode (jgetBytes (jget (this).data_)))))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED) time)
        pure (hashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: TransformInfo))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: TransformInfo))

toVector_impl :: TransformInfo -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector (jget (this).name))
        Control.Monad.void (BasicArrayList.add vector (jget (this).storeName))
        Control.Monad.void (BasicArrayList.add vector (jget (this).objectFileName))
        Control.Monad.void (BasicArrayList.add vector (jget (this).anyType))
        Control.Monad.void (BasicArrayList.add vector (jio (TransformInfo.getObjectConfigFile this)))
        Control.Monad.void (BasicArrayList.add vector (jio (Encoder.encode (jgetBytes (jio (TransformInfoObjectConfigInterface.toString ((jio (TransformInfo.getObjectConfigInterface this)))))))))
        Control.Monad.void (BasicArrayList.add vector (jget (this).templateFileName))
        Control.Monad.void (BasicArrayList.add vector (jget (this).template))
        Control.Monad.void (BasicArrayList.add vector (jget (this).dataFileName))
        Control.Monad.void (BasicArrayList.add vector (jio (Encoder.encode (jgetBytes (jget (this).data_)))))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (BasicArrayList.add vector time)
        Control.Monad.void (BasicArrayList.add vector time)
        pure (vector)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: TransformInfo))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: TransformInfo))

getKey_impl :: TransformInfo -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (TransformInfo.getName this)) :: Any.Any)))


setChild :: (JavaObjectClass this_) => this_ -> IO (())
setChild object_ = jmethod object_ "setChild" (\() -> (setChild_impl (javaCast object_ :: TransformInfo))) ()

setChild_super :: (JavaObjectClass this_) => this_ -> IO (())
setChild_super object_ = (setChild_impl (javaCast object_ :: TransformInfo))

setChild_impl :: TransformInfo -> IO (())
setChild_impl this = do
        jset (this).isChild (True)
        pure ()


isChild :: (JavaObjectClass this_) => this_ -> IO (Bool)
isChild object_ = jmethod object_ "isChild" (\() -> (isChild_impl (javaCast object_ :: TransformInfo))) ()

isChild_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isChild_super object_ = (isChild_impl (javaCast object_ :: TransformInfo))

isChild_impl :: TransformInfo -> IO (Bool)
isChild_impl this = do
        pure ((jget (this).isChild))


getObjectConfigInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface object_ = jmethod object_ "getObjectConfigInterface" (\() -> (getObjectConfigInterface_impl (javaCast object_ :: TransformInfo))) ()

getObjectConfigInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface_super object_ = (getObjectConfigInterface_impl (javaCast object_ :: TransformInfo))

getObjectConfigInterface_impl :: TransformInfo -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface_impl this = do
        pure ((jget (this).objectConfigInterface))


setObjectConfigInterface :: (JavaObjectClass this_) => this_ -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface object_ a1 = jmethod object_ "setObjectConfigInterface" (\() -> (setObjectConfigInterface_impl (javaCast object_ :: TransformInfo))) () a1

setObjectConfigInterface_super :: (JavaObjectClass this_) => this_ -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface_super object_ a1 = (setObjectConfigInterface_impl (javaCast object_ :: TransformInfo)) a1

setObjectConfigInterface_impl :: TransformInfo -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface_impl this objectConfigInterface = do
        jset (this).objectConfigInterface (objectConfigInterface)
        pure ()


