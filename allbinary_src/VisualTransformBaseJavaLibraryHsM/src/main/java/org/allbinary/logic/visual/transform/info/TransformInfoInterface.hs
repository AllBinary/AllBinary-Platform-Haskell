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
module TransformInfoInterface (module TransformInfoInterface, module TableMappingInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, log, log_super, log_impl, override, override_super, override_impl, getName, getName_super, getName_impl, setStoreName, setStoreName_super, setStoreName_impl, getStoreName, getStoreName_super, getStoreName_impl, getObjectFile, getObjectFile_super, getObjectFile_impl, getObject, getObject_super, getObject_impl, getTemplateFilePath, getTemplateFilePath_super, getTemplateFilePath_impl, getTemplateFile, getTemplateFile_super, getTemplateFile_impl, getTemplate, getTemplate_super, getTemplate_impl, getDataFilePath, getDataFilePath_super, getDataFilePath_impl, getDataFile, getDataFile_super, getDataFile_impl, getDataDocument, getDataDocument_super, getDataDocument_impl, setName, setName_super, setName_impl, setObjectFile, setObjectFile_super, setObjectFile_impl, setObject, setObject_super, setObject_impl, setObjectConfigInterface, setObjectConfigInterface_super, setObjectConfigInterface_impl, getObjectConfigInterface, getObjectConfigInterface_super, getObjectConfigInterface_impl, setTemplateFile, setTemplateFile_super, setTemplateFile_impl, setTemplate, setTemplate_super, setTemplate_impl, setDataFile, setDataFile_super, setDataFile_impl, setData, setData_super, setData_impl, setChild, setChild_super, setChild_impl, isChild, isChild_super, isChild_impl, toString)
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
import qualified HashMap -- java.util.HashMap
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified TransformInfoObjectConfigInterface -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface
import qualified Document -- org.w3c.dom.Document

-- Java interface: the classes that implement it have these functions
data TransformInfoInterface = TransformInfoInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoInterface where
    javaNull = javaNullRecord "TransformInfoInterface"

instance JavaEquals TransformInfoInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInfoInterface
fromHeader_ header = TransformInfoInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInfoInterface header)
    TableMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: TransformInfoInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: TransformInfoInterface))

log_impl :: TransformInfoInterface -> IO (String)
log_impl this = javaAbstractMethod "log"


-- throws Exception
override :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
override object_ a1 = jmethod object_ "override" (\() -> (override_impl (javaCast object_ :: TransformInfoInterface))) () a1

override_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
override_super object_ a1 = (override_impl (javaCast object_ :: TransformInfoInterface)) a1

override_impl :: TransformInfoInterface -> HashMap.HashMap -> IO (())
override_impl this hashMap = javaAbstractMethod "override"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TransformInfoInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TransformInfoInterface))

getName_impl :: TransformInfoInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: TransformInfoInterface))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: TransformInfoInterface)) a1

setStoreName_impl :: TransformInfoInterface -> String -> IO (())
setStoreName_impl this value = javaAbstractMethod "setStoreName"


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: TransformInfoInterface))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: TransformInfoInterface))

getStoreName_impl :: TransformInfoInterface -> IO (String)
getStoreName_impl this = javaAbstractMethod "getStoreName"


getObjectFile :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectFile object_ = jmethod object_ "getObjectFile" (\() -> (getObjectFile_impl (javaCast object_ :: TransformInfoInterface))) ()

getObjectFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getObjectFile_super object_ = (getObjectFile_impl (javaCast object_ :: TransformInfoInterface))

getObjectFile_impl :: TransformInfoInterface -> IO (String)
getObjectFile_impl this = javaAbstractMethod "getObjectFile"


getObject :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getObject object_ = jmethod object_ "getObject" (\() -> (getObject_impl (javaCast object_ :: TransformInfoInterface))) ()

getObject_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getObject_super object_ = (getObject_impl (javaCast object_ :: TransformInfoInterface))

getObject_impl :: TransformInfoInterface -> IO (Any.Any)
getObject_impl this = javaAbstractMethod "getObject"


-- throws Exception
getTemplateFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath object_ = jmethod object_ "getTemplateFilePath" (\() -> (getTemplateFilePath_impl (javaCast object_ :: TransformInfoInterface))) ()

getTemplateFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getTemplateFilePath_super object_ = (getTemplateFilePath_impl (javaCast object_ :: TransformInfoInterface))

getTemplateFilePath_impl :: TransformInfoInterface -> IO (AbPath.AbPath)
getTemplateFilePath_impl this = javaAbstractMethod "getTemplateFilePath"


getTemplateFile :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplateFile object_ = jmethod object_ "getTemplateFile" (\() -> (getTemplateFile_impl (javaCast object_ :: TransformInfoInterface))) ()

getTemplateFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplateFile_super object_ = (getTemplateFile_impl (javaCast object_ :: TransformInfoInterface))

getTemplateFile_impl :: TransformInfoInterface -> IO (String)
getTemplateFile_impl this = javaAbstractMethod "getTemplateFile"


getTemplate :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplate object_ = jmethod object_ "getTemplate" (\() -> (getTemplate_impl (javaCast object_ :: TransformInfoInterface))) ()

getTemplate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTemplate_super object_ = (getTemplate_impl (javaCast object_ :: TransformInfoInterface))

getTemplate_impl :: TransformInfoInterface -> IO (String)
getTemplate_impl this = javaAbstractMethod "getTemplate"


-- throws Exception
getDataFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath object_ = jmethod object_ "getDataFilePath" (\() -> (getDataFilePath_impl (javaCast object_ :: TransformInfoInterface))) ()

getDataFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getDataFilePath_super object_ = (getDataFilePath_impl (javaCast object_ :: TransformInfoInterface))

getDataFilePath_impl :: TransformInfoInterface -> IO (AbPath.AbPath)
getDataFilePath_impl this = javaAbstractMethod "getDataFilePath"


getDataFile :: (JavaObjectClass this_) => this_ -> IO (String)
getDataFile object_ = jmethod object_ "getDataFile" (\() -> (getDataFile_impl (javaCast object_ :: TransformInfoInterface))) ()

getDataFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDataFile_super object_ = (getDataFile_impl (javaCast object_ :: TransformInfoInterface))

getDataFile_impl :: TransformInfoInterface -> IO (String)
getDataFile_impl this = javaAbstractMethod "getDataFile"


-- throws Exception
getDataDocument :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDataDocument object_ = jmethod object_ "getDataDocument" (\() -> (getDataDocument_impl (javaCast object_ :: TransformInfoInterface))) ()

getDataDocument_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDataDocument_super object_ = (getDataDocument_impl (javaCast object_ :: TransformInfoInterface))

getDataDocument_impl :: TransformInfoInterface -> IO (Document.Document)
getDataDocument_impl this = javaAbstractMethod "getDataDocument"


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: TransformInfoInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: TransformInfoInterface)) a1

setName_impl :: TransformInfoInterface -> String -> IO (())
setName_impl this value = javaAbstractMethod "setName"


setObjectFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectFile object_ a1 = jmethod object_ "setObjectFile" (\() -> (setObjectFile_impl (javaCast object_ :: TransformInfoInterface))) () a1

setObjectFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectFile_super object_ a1 = (setObjectFile_impl (javaCast object_ :: TransformInfoInterface)) a1

setObjectFile_impl :: TransformInfoInterface -> String -> IO (())
setObjectFile_impl this value = javaAbstractMethod "setObjectFile"


setObject :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setObject object_ a1 = jmethod object_ "setObject" (\() -> (setObject_impl (javaCast object_ :: TransformInfoInterface))) () (jtoObject a1)

setObject_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setObject_super object_ a1 = (setObject_impl (javaCast object_ :: TransformInfoInterface)) (jtoObject a1)

setObject_impl :: TransformInfoInterface -> JavaObject -> IO (())
setObject_impl this anyTypeObject_ = javaAbstractMethod "setObject"


-- throws Exception
setObjectConfigInterface :: (JavaObjectClass this_) => this_ -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface object_ a1 = jmethod object_ "setObjectConfigInterface" (\() -> (setObjectConfigInterface_impl (javaCast object_ :: TransformInfoInterface))) () a1

setObjectConfigInterface_super :: (JavaObjectClass this_) => this_ -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface_super object_ a1 = (setObjectConfigInterface_impl (javaCast object_ :: TransformInfoInterface)) a1

setObjectConfigInterface_impl :: TransformInfoInterface -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> IO (())
setObjectConfigInterface_impl this transformInfoObjectConfigInterface = javaAbstractMethod "setObjectConfigInterface"


-- throws Exception
getObjectConfigInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface object_ = jmethod object_ "getObjectConfigInterface" (\() -> (getObjectConfigInterface_impl (javaCast object_ :: TransformInfoInterface))) ()

getObjectConfigInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface_super object_ = (getObjectConfigInterface_impl (javaCast object_ :: TransformInfoInterface))

getObjectConfigInterface_impl :: TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getObjectConfigInterface_impl this = javaAbstractMethod "getObjectConfigInterface"


setTemplateFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile object_ a1 = jmethod object_ "setTemplateFile" (\() -> (setTemplateFile_impl (javaCast object_ :: TransformInfoInterface))) () a1

setTemplateFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplateFile_super object_ a1 = (setTemplateFile_impl (javaCast object_ :: TransformInfoInterface)) a1

setTemplateFile_impl :: TransformInfoInterface -> String -> IO (())
setTemplateFile_impl this value = javaAbstractMethod "setTemplateFile"


setTemplate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplate object_ a1 = jmethod object_ "setTemplate" (\() -> (setTemplate_impl (javaCast object_ :: TransformInfoInterface))) () a1

setTemplate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTemplate_super object_ a1 = (setTemplate_impl (javaCast object_ :: TransformInfoInterface)) a1

setTemplate_impl :: TransformInfoInterface -> String -> IO (())
setTemplate_impl this value = javaAbstractMethod "setTemplate"


setDataFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDataFile object_ a1 = jmethod object_ "setDataFile" (\() -> (setDataFile_impl (javaCast object_ :: TransformInfoInterface))) () a1

setDataFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDataFile_super object_ a1 = (setDataFile_impl (javaCast object_ :: TransformInfoInterface)) a1

setDataFile_impl :: TransformInfoInterface -> String -> IO (())
setDataFile_impl this value = javaAbstractMethod "setDataFile"


setData :: (JavaObjectClass this_) => this_ -> String -> IO (())
setData object_ a1 = jmethod object_ "setData" (\() -> (setData_impl (javaCast object_ :: TransformInfoInterface))) () a1

setData_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setData_super object_ a1 = (setData_impl (javaCast object_ :: TransformInfoInterface)) a1

setData_impl :: TransformInfoInterface -> String -> IO (())
setData_impl this value = javaAbstractMethod "setData"


setChild :: (JavaObjectClass this_) => this_ -> IO (())
setChild object_ = jmethod object_ "setChild" (\() -> (setChild_impl (javaCast object_ :: TransformInfoInterface))) ()

setChild_super :: (JavaObjectClass this_) => this_ -> IO (())
setChild_super object_ = (setChild_impl (javaCast object_ :: TransformInfoInterface))

setChild_impl :: TransformInfoInterface -> IO (())
setChild_impl this = javaAbstractMethod "setChild"


isChild :: (JavaObjectClass this_) => this_ -> IO (Bool)
isChild object_ = jmethod object_ "isChild" (\() -> (isChild_impl (javaCast object_ :: TransformInfoInterface))) ()

isChild_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isChild_super object_ = (isChild_impl (javaCast object_ :: TransformInfoInterface))

isChild_impl :: TransformInfoInterface -> IO (Bool)
isChild_impl this = javaAbstractMethod "isChild"


