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
-- package org.allbinary.business.category
module CategoryInterface (module CategoryInterface, module TableMappingInterface, module ValidationInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getChildNodes, getChildNodes_super, getChildNodes_impl, addChildProperty, addChildProperty_super, addChildProperty_impl, addChild, addChild_super, addChild_impl, removeChild, removeChild_super, removeChild_impl, isLeaf, isLeaf_super, isLeaf_impl, getProperties, getProperties_super, getProperties_impl, setProperties, setProperties_super, setProperties_impl, getHierarchy, getHierarchy_super, getHierarchy_impl, setHierarchy, setHierarchy_super, setHierarchy_impl, getPath, getPath_super, getPath_impl, getFilePath, getFilePath_super, getFilePath_impl, getWebAppPath, getWebAppPath_super, getWebAppPath_impl, getRootFilePath, getRootFilePath_super, getRootFilePath_impl, log, log_super, log_impl, toString)
import ValidationInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getChildNodes, getChildNodes_super, getChildNodes_impl, addChildProperty, addChildProperty_super, addChildProperty_impl, addChild, addChild_super, addChild_impl, removeChild, removeChild_super, removeChild_impl, isLeaf, isLeaf_super, isLeaf_impl, getProperties, getProperties_super, getProperties_impl, setProperties, setProperties_super, setProperties_impl, getHierarchy, getHierarchy_super, getHierarchy_impl, setHierarchy, setHierarchy_super, setHierarchy_impl, getPath, getPath_super, getPath_impl, getFilePath, getFilePath_super, getFilePath_impl, getWebAppPath, getWebAppPath_super, getWebAppPath_impl, getRootFilePath, getRootFilePath_super, getRootFilePath_impl, log, log_super, log_impl, toString)
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
import qualified CategoryHierarchyInterface -- org.allbinary.business.category.hierarchy.CategoryHierarchyInterface
import qualified CategoryPropertiesInterface -- org.allbinary.business.category.properties.CategoryPropertiesInterface
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

-- Java interface: the classes that implement it have these functions
data CategoryInterface = CategoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull CategoryInterface where
    javaNull = javaNullRecord "CategoryInterface"

instance JavaEquals CategoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass CategoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CategoryInterface
fromHeader_ header = CategoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CategoryInterface header)
    TableMappingInterface.registerInterface_ header
    ValidationInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getChildNodes :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getChildNodes object_ = jmethod object_ "getChildNodes" (\() -> (getChildNodes_impl (javaCast object_ :: CategoryInterface))) ()

getChildNodes_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getChildNodes_super object_ = (getChildNodes_impl (javaCast object_ :: CategoryInterface))

getChildNodes_impl :: CategoryInterface -> IO (BasicArrayList.BasicArrayList)
getChildNodes_impl this = javaAbstractMethod "getChildNodes"


addChildProperty :: (JavaObjectClass this_) => this_ -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (Bool)
addChildProperty object_ a1 = jmethod object_ "addChildProperty" (\() -> (addChildProperty_impl (javaCast object_ :: CategoryInterface))) () a1

addChildProperty_super :: (JavaObjectClass this_) => this_ -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (Bool)
addChildProperty_super object_ a1 = (addChildProperty_impl (javaCast object_ :: CategoryInterface)) a1

addChildProperty_impl :: CategoryInterface -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (Bool)
addChildProperty_impl this categoryPropertiesInterface = javaAbstractMethod "addChildProperty"


addChild :: (JavaObjectClass this_) => this_ -> CategoryInterface -> IO (Bool)
addChild object_ a1 = jmethod object_ "addChild" (\() -> (addChild_impl (javaCast object_ :: CategoryInterface))) () a1

addChild_super :: (JavaObjectClass this_) => this_ -> CategoryInterface -> IO (Bool)
addChild_super object_ a1 = (addChild_impl (javaCast object_ :: CategoryInterface)) a1

addChild_impl :: CategoryInterface -> CategoryInterface -> IO (Bool)
addChild_impl this categoryInterface = javaAbstractMethod "addChild"


removeChild :: (JavaObjectClass this_) => this_ -> CategoryInterface -> IO (Bool)
removeChild object_ a1 = jmethod object_ "removeChild" (\() -> (removeChild_impl (javaCast object_ :: CategoryInterface))) () a1

removeChild_super :: (JavaObjectClass this_) => this_ -> CategoryInterface -> IO (Bool)
removeChild_super object_ a1 = (removeChild_impl (javaCast object_ :: CategoryInterface)) a1

removeChild_impl :: CategoryInterface -> CategoryInterface -> IO (Bool)
removeChild_impl this categoryInterface = javaAbstractMethod "removeChild"


-- throws Exception
isLeaf :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLeaf object_ = jmethod object_ "isLeaf" (\() -> (isLeaf_impl (javaCast object_ :: CategoryInterface))) ()

isLeaf_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLeaf_super object_ = (isLeaf_impl (javaCast object_ :: CategoryInterface))

isLeaf_impl :: CategoryInterface -> IO (Bool)
isLeaf_impl this = javaAbstractMethod "isLeaf"


getProperties :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getProperties object_ = jmethod object_ "getProperties" (\() -> (getProperties_impl (javaCast object_ :: CategoryInterface))) ()

getProperties_super :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getProperties_super object_ = (getProperties_impl (javaCast object_ :: CategoryInterface))

getProperties_impl :: CategoryInterface -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getProperties_impl this = javaAbstractMethod "getProperties"


setProperties :: (JavaObjectClass this_) => this_ -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (())
setProperties object_ a1 = jmethod object_ "setProperties" (\() -> (setProperties_impl (javaCast object_ :: CategoryInterface))) () a1

setProperties_super :: (JavaObjectClass this_) => this_ -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (())
setProperties_super object_ a1 = (setProperties_impl (javaCast object_ :: CategoryInterface)) a1

setProperties_impl :: CategoryInterface -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO (())
setProperties_impl this categoryPropertiesInterface = javaAbstractMethod "setProperties"


getHierarchy :: (JavaObjectClass this_) => this_ -> IO (CategoryHierarchyInterface.CategoryHierarchyInterface)
getHierarchy object_ = jmethod object_ "getHierarchy" (\() -> (getHierarchy_impl (javaCast object_ :: CategoryInterface))) ()

getHierarchy_super :: (JavaObjectClass this_) => this_ -> IO (CategoryHierarchyInterface.CategoryHierarchyInterface)
getHierarchy_super object_ = (getHierarchy_impl (javaCast object_ :: CategoryInterface))

getHierarchy_impl :: CategoryInterface -> IO (CategoryHierarchyInterface.CategoryHierarchyInterface)
getHierarchy_impl this = javaAbstractMethod "getHierarchy"


setHierarchy :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (())
setHierarchy object_ a1 = jmethod object_ "setHierarchy" (\() -> (setHierarchy_impl (javaCast object_ :: CategoryInterface))) () a1

setHierarchy_super :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (())
setHierarchy_super object_ a1 = (setHierarchy_impl (javaCast object_ :: CategoryInterface)) a1

setHierarchy_impl :: CategoryInterface -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (())
setHierarchy_impl this categoryHierarchyInterface = javaAbstractMethod "setHierarchy"


-- throws Exception
getPath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: CategoryInterface))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getPath_super object_ = (getPath_impl (javaCast object_ :: CategoryInterface))

getPath_impl :: CategoryInterface -> IO (AbPath.AbPath)
getPath_impl this = javaAbstractMethod "getPath"


-- throws Exception
getFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getFilePath object_ = jmethod object_ "getFilePath" (\() -> (getFilePath_impl (javaCast object_ :: CategoryInterface))) ()

getFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getFilePath_super object_ = (getFilePath_impl (javaCast object_ :: CategoryInterface))

getFilePath_impl :: CategoryInterface -> IO (AbPath.AbPath)
getFilePath_impl this = javaAbstractMethod "getFilePath"


-- throws Exception
getWebAppPath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath object_ = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: CategoryInterface))) ()

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath_super object_ = (getWebAppPath_impl (javaCast object_ :: CategoryInterface))

getWebAppPath_impl :: CategoryInterface -> IO (AbPath.AbPath)
getWebAppPath_impl this = javaAbstractMethod "getWebAppPath"


-- throws Exception
getRootFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath object_ = jmethod object_ "getRootFilePath" (\() -> (getRootFilePath_impl (javaCast object_ :: CategoryInterface))) ()

getRootFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath_super object_ = (getRootFilePath_impl (javaCast object_ :: CategoryInterface))

getRootFilePath_impl :: CategoryInterface -> IO (AbPath.AbPath)
getRootFilePath_impl this = javaAbstractMethod "getRootFilePath"


-- throws Exception
log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: CategoryInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: CategoryInterface))

log_impl :: CategoryInterface -> IO (())
log_impl this = javaAbstractMethod "log"


