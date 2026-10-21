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
module TransformInfoBasic (module TransformInfoBasic, module AbContext) where

import AbContext hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getStoreName, getStoreName_super, getStoreName_impl, log, log_super, log_impl, override, override_super, override_impl, getName, getName_super, getName_impl, getObjectFile, getObjectFile_super, getObjectFile_impl, getObject, getObject_super, getObject_impl, getObjectConfigInterface, getObjectConfigInterface_super, getObjectConfigInterface_impl, setObjectConfigInterface, setObjectConfigInterface_super, setObjectConfigInterface_impl, getTemplateFilePath, getTemplateFilePath_super, getTemplateFilePath_impl, getTemplateFile, getTemplateFile_super, getTemplateFile_impl, getTemplate, getTemplate_super, getTemplate_impl, getDataFilePath, getDataFilePath_super, getDataFilePath_impl, getDataFile, getDataFile_super, getDataFile_impl, getDataDocument, getDataDocument_super, getDataDocument_impl, setName, setName_super, setName_impl, setStoreName, setStoreName_super, setStoreName_impl, setObjectFile, setObjectFile_super, setObjectFile_impl, setObject, setObject_super, setObject_impl, setObjectConfigFile, setObjectConfigFile_super, setObjectConfigFile_impl, setTemplateFile, setTemplateFile_super, setTemplateFile_impl, setTemplate, setTemplate_super, setTemplate_impl, setDataFile, setDataFile_super, setDataFile_impl, setData, setData_super, setData_impl, setChild, setChild_super, setChild_impl, isChild, isChild_super, isChild_impl, getImportUriPath, getImportUriPath_super, getImportUriPath_impl, setImportUriPath, setImportUriPath_super, setImportUriPath_impl, getKey, getKey_super, getKey_impl, toVector, toVector_super, toVector_impl, toHashMap, toHashMap_super, toHashMap_impl, storeFrontInterface)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified AbContext -- org.allbinary.business.context.AbContext
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified TransformInfoObjectConfigInterface -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface
import qualified Document -- org.w3c.dom.Document
import qualified TransformInfoHttpInterface

-- implements TransformInfoHttpInterface
data TransformInfoBasic = TransformInfoBasic
    { header_ :: JavaHeader
    , base :: AbContext.AbContext
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    }

instance JavaNull TransformInfoBasic where
    javaNull = javaNullRecord "TransformInfoBasic"

instance JavaEquals TransformInfoBasic where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoBasic where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoBasic where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoBasic
newRecord_ = do
    base <- AbContext.newRecord_
    let header_ = base.header_
    storeFrontInterface <- newIORef javaNull
    let this = TransformInfoBasic header_ base storeFrontInterface
    jregisterLevel header_ this
    TransformInfoHttpInterface.registerInterface_ header_
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "override" (\() -> override_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getObjectFile" (\() -> getObjectFile_impl this)
    jregisterMethod header_ "getObject" (\() -> getObject_impl this)
    jregisterMethod header_ "getObjectConfigInterface" (\() -> getObjectConfigInterface_impl this)
    jregisterMethod header_ "setObjectConfigInterface" (\() -> setObjectConfigInterface_impl this)
    jregisterMethod header_ "getTemplateFilePath" (\() -> getTemplateFilePath_impl this)
    jregisterMethod header_ "getTemplateFile" (\() -> getTemplateFile_impl this)
    jregisterMethod header_ "getTemplate" (\() -> getTemplate_impl this)
    jregisterMethod header_ "getDataFilePath" (\() -> getDataFilePath_impl this)
    jregisterMethod header_ "getDataFile" (\() -> getDataFile_impl this)
    jregisterMethod header_ "getDataDocument" (\() -> getDataDocument_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "setObjectFile" (\() -> setObjectFile_impl this)
    jregisterMethod header_ "setObject" (\() -> setObject_impl this)
    jregisterMethod header_ "setObjectConfigFile" (\() -> setObjectConfigFile_impl this)
    jregisterMethod header_ "setTemplateFile" (\() -> setTemplateFile_impl this)
    jregisterMethod header_ "setTemplate" (\() -> setTemplate_impl this)
    jregisterMethod header_ "setDataFile" (\() -> setDataFile_impl this)
    jregisterMethod header_ "setData" (\() -> setData_impl this)
    jregisterMethod header_ "setChild" (\() -> setChild_impl this)
    jregisterMethod header_ "isChild" (\() -> isChild_impl this)
    jregisterMethod header_ "getImportUriPath" (\() -> getImportUriPath_impl this)
    jregisterMethod header_ "setImportUriPath" (\() -> setImportUriPath_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    pure this

initFields_ :: TransformInfoBasic -> IO ()
initFields_ this = do
    jset this.storeFrontInterface (javaNull)
    pure ()

new_3 :: StoreFrontInterface.StoreFrontInterface -> HashMap.HashMap -> PageContext.PageContext -> IO TransformInfoBasic
new_3 storeFrontInterface propertiesHashMap pageContext = do
    this <- newRecord_
    init_3 this storeFrontInterface propertiesHashMap pageContext
    pure this

init_3 :: TransformInfoBasic -> StoreFrontInterface.StoreFrontInterface -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_3 this storeFrontInterface propertiesHashMap pageContext = do
        AbContext.init_2 this.base (propertiesHashMap) (pageContext)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).storeFrontInterface (storeFrontInterface)
        pure ()


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: TransformInfoBasic))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: TransformInfoBasic))

getStoreName_impl :: TransformInfoBasic -> IO (String)
getStoreName_impl this = do
        (StoreFrontInterface.getName ((jget (this).storeFrontInterface)))


log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: TransformInfoBasic))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: TransformInfoBasic))

log_impl :: TransformInfoBasic -> IO (String)
log_impl this = do
        pure ((jget ((jget this.base.commonStrings)).nOT_IMPLEMENTED))


override :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
override object_ a1 = jmethod object_ "override" (\() -> (override_impl (javaCast object_ :: TransformInfoBasic))) () a1

override_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
override_super object_ a1 = (override_impl (javaCast object_ :: TransformInfoBasic)) a1

override_impl :: TransformInfoBasic -> HashMap.HashMap -> IO (())
override_impl this hashMap = do
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TransformInfoBasic))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TransformInfoBasic))

getName_impl :: TransformInfoBasic -> IO (String)
getName_impl this = do
        pure (javaNull)


getObjectFile :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectFile object_ = jmethod object_ "getObjectFile" (\() -> (getObjectFile_impl (javaCast object_ :: TransformInfoBasic))) ()

getObjectFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectFile_super object_ = (getObjectFile_impl (javaCast object_ :: TransformInfoBasic))

getObjectFile_impl :: TransformInfoBasic -> IO (String)
getObjectFile_impl this = do
        pure (javaNull)


getObject :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getObject object_ = jmethod object_ "getObject" (\() -> (getObject_impl (javaCast object_ :: TransformInfoBasic))) ()

getObject_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getObject_super object_ = (getObject_impl (javaCast object_ :: TransformInfoBasic))

getObject_impl :: TransformInfoBasic -> IO (Any.Any)
getObject_impl this = do
        pure (javaNull)


getObjectConfigInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface object_ = jmethod object_ "getObjectConfigInterface" (\() -> (getObjectConfigInterface_impl (javaCast object_ :: TransformInfoBasic))) ()

getObjectConfigInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface_super object_ = (getObjectConfigInterface_impl (javaCast object_ :: TransformInfoBasic))

getObjectConfigInterface_impl :: TransformInfoBasic -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface_impl this = do
        pure (javaNull)


setObjectConfigInterface :: (JavaObjectClass this_) => this_ -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface object_ a1 = jmethod object_ "setObjectConfigInterface" (\() -> (setObjectConfigInterface_impl (javaCast object_ :: TransformInfoBasic))) () a1

setObjectConfigInterface_super :: (JavaObjectClass this_) => this_ -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface_super object_ a1 = (setObjectConfigInterface_impl (javaCast object_ :: TransformInfoBasic)) a1

setObjectConfigInterface_impl :: TransformInfoBasic -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface_impl this transformInfoObjectConfigInterface = do
        pure ()


getTemplateFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath object_ = jmethod object_ "getTemplateFilePath" (\() -> (getTemplateFilePath_impl (javaCast object_ :: TransformInfoBasic))) ()

getTemplateFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath_super object_ = (getTemplateFilePath_impl (javaCast object_ :: TransformInfoBasic))

getTemplateFilePath_impl :: TransformInfoBasic -> IO (AbPath.AbPath)
getTemplateFilePath_impl this = do
        pure (javaNull)


getTemplateFile :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplateFile object_ = jmethod object_ "getTemplateFile" (\() -> (getTemplateFile_impl (javaCast object_ :: TransformInfoBasic))) ()

getTemplateFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplateFile_super object_ = (getTemplateFile_impl (javaCast object_ :: TransformInfoBasic))

getTemplateFile_impl :: TransformInfoBasic -> IO (String)
getTemplateFile_impl this = do
        pure (javaNull)


getTemplate :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplate object_ = jmethod object_ "getTemplate" (\() -> (getTemplate_impl (javaCast object_ :: TransformInfoBasic))) ()

getTemplate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplate_super object_ = (getTemplate_impl (javaCast object_ :: TransformInfoBasic))

getTemplate_impl :: TransformInfoBasic -> IO (String)
getTemplate_impl this = do
        pure (javaNull)


getDataFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath object_ = jmethod object_ "getDataFilePath" (\() -> (getDataFilePath_impl (javaCast object_ :: TransformInfoBasic))) ()

getDataFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath_super object_ = (getDataFilePath_impl (javaCast object_ :: TransformInfoBasic))

getDataFilePath_impl :: TransformInfoBasic -> IO (AbPath.AbPath)
getDataFilePath_impl this = do
        pure (javaNull)


getDataFile :: (JavaObjectClass this_) => this_ -> IO (String)
getDataFile object_ = jmethod object_ "getDataFile" (\() -> (getDataFile_impl (javaCast object_ :: TransformInfoBasic))) ()

getDataFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDataFile_super object_ = (getDataFile_impl (javaCast object_ :: TransformInfoBasic))

getDataFile_impl :: TransformInfoBasic -> IO (String)
getDataFile_impl this = do
        pure (javaNull)


-- throws Exception
getDataDocument :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDataDocument object_ = jmethod object_ "getDataDocument" (\() -> (getDataDocument_impl (javaCast object_ :: TransformInfoBasic))) ()

getDataDocument_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDataDocument_super object_ = (getDataDocument_impl (javaCast object_ :: TransformInfoBasic))

getDataDocument_impl :: TransformInfoBasic -> IO (Document.Document)
getDataDocument_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget this.base.commonStrings)).nOT_IMPLEMENTED)))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: TransformInfoBasic))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: TransformInfoBasic)) a1

setName_impl :: TransformInfoBasic -> String -> IO (())
setName_impl this value = do
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: TransformInfoBasic))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: TransformInfoBasic)) a1

setStoreName_impl :: TransformInfoBasic -> String -> IO (())
setStoreName_impl this value = do
        pure ()


setObjectFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectFile object_ a1 = jmethod object_ "setObjectFile" (\() -> (setObjectFile_impl (javaCast object_ :: TransformInfoBasic))) () a1

setObjectFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectFile_super object_ a1 = (setObjectFile_impl (javaCast object_ :: TransformInfoBasic)) a1

setObjectFile_impl :: TransformInfoBasic -> String -> IO (())
setObjectFile_impl this value = do
        pure ()


setObject :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setObject object_ a1 = jmethod object_ "setObject" (\() -> (setObject_impl (javaCast object_ :: TransformInfoBasic))) () (jtoObject a1)

setObject_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setObject_super object_ a1 = (setObject_impl (javaCast object_ :: TransformInfoBasic)) (jtoObject a1)

setObject_impl :: TransformInfoBasic -> JavaObject -> IO (())
setObject_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


setObjectConfigFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile object_ a1 = jmethod object_ "setObjectConfigFile" (\() -> (setObjectConfigFile_impl (javaCast object_ :: TransformInfoBasic))) () a1

setObjectConfigFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile_super object_ a1 = (setObjectConfigFile_impl (javaCast object_ :: TransformInfoBasic)) a1

setObjectConfigFile_impl :: TransformInfoBasic -> String -> IO (())
setObjectConfigFile_impl this value = do
        pure ()


setTemplateFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile object_ a1 = jmethod object_ "setTemplateFile" (\() -> (setTemplateFile_impl (javaCast object_ :: TransformInfoBasic))) () a1

setTemplateFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile_super object_ a1 = (setTemplateFile_impl (javaCast object_ :: TransformInfoBasic)) a1

setTemplateFile_impl :: TransformInfoBasic -> String -> IO (())
setTemplateFile_impl this value = do
        pure ()


setTemplate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplate object_ a1 = jmethod object_ "setTemplate" (\() -> (setTemplate_impl (javaCast object_ :: TransformInfoBasic))) () a1

setTemplate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplate_super object_ a1 = (setTemplate_impl (javaCast object_ :: TransformInfoBasic)) a1

setTemplate_impl :: TransformInfoBasic -> String -> IO (())
setTemplate_impl this value = do
        pure ()


setDataFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDataFile object_ a1 = jmethod object_ "setDataFile" (\() -> (setDataFile_impl (javaCast object_ :: TransformInfoBasic))) () a1

setDataFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDataFile_super object_ a1 = (setDataFile_impl (javaCast object_ :: TransformInfoBasic)) a1

setDataFile_impl :: TransformInfoBasic -> String -> IO (())
setDataFile_impl this value = do
        pure ()


setData :: (JavaObjectClass this_) => this_ -> String -> IO (())
setData object_ a1 = jmethod object_ "setData" (\() -> (setData_impl (javaCast object_ :: TransformInfoBasic))) () a1

setData_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setData_super object_ a1 = (setData_impl (javaCast object_ :: TransformInfoBasic)) a1

setData_impl :: TransformInfoBasic -> String -> IO (())
setData_impl this value = do
        pure ()


setChild :: (JavaObjectClass this_) => this_ -> IO (())
setChild object_ = jmethod object_ "setChild" (\() -> (setChild_impl (javaCast object_ :: TransformInfoBasic))) ()

setChild_super :: (JavaObjectClass this_) => this_ -> IO (())
setChild_super object_ = (setChild_impl (javaCast object_ :: TransformInfoBasic))

setChild_impl :: TransformInfoBasic -> IO (())
setChild_impl this = do
        pure ()


isChild :: (JavaObjectClass this_) => this_ -> IO (Bool)
isChild object_ = jmethod object_ "isChild" (\() -> (isChild_impl (javaCast object_ :: TransformInfoBasic))) ()

isChild_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isChild_super object_ = (isChild_impl (javaCast object_ :: TransformInfoBasic))

isChild_impl :: TransformInfoBasic -> IO (Bool)
isChild_impl this = do
        pure (True)


getImportUriPath :: (JavaObjectClass this_) => this_ -> IO (String)
getImportUriPath object_ = jmethod object_ "getImportUriPath" (\() -> (getImportUriPath_impl (javaCast object_ :: TransformInfoBasic))) ()

getImportUriPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getImportUriPath_super object_ = (getImportUriPath_impl (javaCast object_ :: TransformInfoBasic))

getImportUriPath_impl :: TransformInfoBasic -> IO (String)
getImportUriPath_impl this = do
        pure (javaNull)


setImportUriPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setImportUriPath object_ a1 = jmethod object_ "setImportUriPath" (\() -> (setImportUriPath_impl (javaCast object_ :: TransformInfoBasic))) () a1

setImportUriPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setImportUriPath_super object_ a1 = (setImportUriPath_impl (javaCast object_ :: TransformInfoBasic)) a1

setImportUriPath_impl :: TransformInfoBasic -> String -> IO (())
setImportUriPath_impl this importUriPath = do
        pure ()


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: TransformInfoBasic))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: TransformInfoBasic))

getKey_impl :: TransformInfoBasic -> IO (Any.Any)
getKey_impl this = do
        pure (javaNull)


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: TransformInfoBasic))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: TransformInfoBasic))

toVector_impl :: TransformInfoBasic -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        pure (javaNull)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: TransformInfoBasic))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: TransformInfoBasic))

toHashMap_impl :: TransformInfoBasic -> IO (HashMap.HashMap)
toHashMap_impl this = do
        pure (javaNull)


