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
-- package org.allbinary.logic.visual.transform.info.objectConfig
module TransformInfoObjectConfigInterface (module TransformInfoObjectConfigInterface, module DomDocumentMappingInterface) where

import DomDocumentMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, containsView, containsView_super, containsView_impl, getName, getName_super, getName_impl, getTransformsGroup, getTransformsGroup_super, getTransformsGroup_impl, getTransforms, getTransforms_super, getTransforms_impl, getParentTransforms, getParentTransforms_super, getParentTransforms_impl, getGroupTransforms, getGroupTransforms_super, getGroupTransforms_impl, getOutputTypeName, getOutputTypeName_super, getOutputTypeName_impl, setOutputTypeName, setOutputTypeName_super, setOutputTypeName_impl, getInputOutputTypeName, getInputOutputTypeName_super, getInputOutputTypeName_impl, getInputOutputTypeFile, getInputOutputTypeFile_super, getInputOutputTypeFile_impl, getImportUriPath, getImportUriPath_super, getImportUriPath_impl, toString, toString_super, toString_impl, toString)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomDocumentMappingInterface -- org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface

-- Java interface: the classes that implement it have these functions
data TransformInfoObjectConfigInterface = TransformInfoObjectConfigInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoObjectConfigInterface where
    javaNull = javaNullRecord "TransformInfoObjectConfigInterface"

instance JavaEquals TransformInfoObjectConfigInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInfoObjectConfigInterface
fromHeader_ header = TransformInfoObjectConfigInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInfoObjectConfigInterface header)
    DomDocumentMappingInterface.registerInterface_ header


containsView :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (Bool)
containsView object_ a1 = jmethod object_ "containsView" (\() -> (containsView_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) () a1

containsView_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (Bool)
containsView_super object_ a1 = (containsView_impl (javaCast object_ :: TransformInfoObjectConfigInterface)) a1

containsView_impl :: TransformInfoObjectConfigInterface -> TransformInfoInterface.TransformInfoInterface -> IO (Bool)
containsView_impl this transformInfoInterface = javaAbstractMethod "containsView"


-- throws Exception
getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

getName_impl :: TransformInfoObjectConfigInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


-- throws Exception
getTransformsGroup :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getTransformsGroup object_ a1 = jmethod object_ "getTransformsGroup" (\() -> (getTransformsGroup_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) () a1

getTransformsGroup_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getTransformsGroup_super object_ a1 = (getTransformsGroup_impl (javaCast object_ :: TransformInfoObjectConfigInterface)) a1

getTransformsGroup_impl :: TransformInfoObjectConfigInterface -> String -> IO (BasicArrayList.BasicArrayList)
getTransformsGroup_impl this group = javaAbstractMethod "getTransformsGroup"


-- throws Exception
getTransforms :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTransforms object_ = jmethod object_ "getTransforms" (\() -> (getTransforms_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

getTransforms_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTransforms_super object_ = (getTransforms_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

getTransforms_impl :: TransformInfoObjectConfigInterface -> IO (BasicArrayList.BasicArrayList)
getTransforms_impl this = javaAbstractMethod "getTransforms"


-- throws Exception
getParentTransforms :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getParentTransforms object_ = jmethod object_ "getParentTransforms" (\() -> (getParentTransforms_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

getParentTransforms_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getParentTransforms_super object_ = (getParentTransforms_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

getParentTransforms_impl :: TransformInfoObjectConfigInterface -> IO (BasicArrayList.BasicArrayList)
getParentTransforms_impl this = javaAbstractMethod "getParentTransforms"


-- throws Exception
getGroupTransforms :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGroupTransforms object_ = jmethod object_ "getGroupTransforms" (\() -> (getGroupTransforms_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

getGroupTransforms_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGroupTransforms_super object_ = (getGroupTransforms_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

getGroupTransforms_impl :: TransformInfoObjectConfigInterface -> IO (BasicArrayList.BasicArrayList)
getGroupTransforms_impl this = javaAbstractMethod "getGroupTransforms"


-- throws Exception
getOutputTypeName :: (JavaObjectClass this_) => this_ -> IO (String)
getOutputTypeName object_ = jmethod object_ "getOutputTypeName" (\() -> (getOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

getOutputTypeName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOutputTypeName_super object_ = (getOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

getOutputTypeName_impl :: TransformInfoObjectConfigInterface -> IO (String)
getOutputTypeName_impl this = javaAbstractMethod "getOutputTypeName"


setOutputTypeName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOutputTypeName object_ a1 = jmethod object_ "setOutputTypeName" (\() -> (setOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) () a1

setOutputTypeName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOutputTypeName_super object_ a1 = (setOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfigInterface)) a1

setOutputTypeName_impl :: TransformInfoObjectConfigInterface -> String -> IO (())
setOutputTypeName_impl this value = javaAbstractMethod "setOutputTypeName"


-- throws Exception
getInputOutputTypeName :: (JavaObjectClass this_) => this_ -> IO (String)
getInputOutputTypeName object_ = jmethod object_ "getInputOutputTypeName" (\() -> (getInputOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

getInputOutputTypeName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInputOutputTypeName_super object_ = (getInputOutputTypeName_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

getInputOutputTypeName_impl :: TransformInfoObjectConfigInterface -> IO (String)
getInputOutputTypeName_impl this = javaAbstractMethod "getInputOutputTypeName"


-- throws Exception
getInputOutputTypeFile :: (JavaObjectClass this_) => this_ -> IO (String)
getInputOutputTypeFile object_ = jmethod object_ "getInputOutputTypeFile" (\() -> (getInputOutputTypeFile_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

getInputOutputTypeFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInputOutputTypeFile_super object_ = (getInputOutputTypeFile_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

getInputOutputTypeFile_impl :: TransformInfoObjectConfigInterface -> IO (String)
getInputOutputTypeFile_impl this = javaAbstractMethod "getInputOutputTypeFile"


-- throws Exception
getImportUriPath :: (JavaObjectClass this_) => this_ -> IO (String)
getImportUriPath object_ = jmethod object_ "getImportUriPath" (\() -> (getImportUriPath_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

getImportUriPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getImportUriPath_super object_ = (getImportUriPath_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

getImportUriPath_impl :: TransformInfoObjectConfigInterface -> IO (String)
getImportUriPath_impl this = javaAbstractMethod "getImportUriPath"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TransformInfoObjectConfigInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TransformInfoObjectConfigInterface))

toString_impl :: TransformInfoObjectConfigInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


