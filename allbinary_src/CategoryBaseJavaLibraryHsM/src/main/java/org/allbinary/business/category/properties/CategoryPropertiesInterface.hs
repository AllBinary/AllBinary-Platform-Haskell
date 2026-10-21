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
-- package org.allbinary.business.category.properties
module CategoryPropertiesInterface (module CategoryPropertiesInterface, module TableMappingInterface, module ValidationInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setValue, setValue_super, setValue_impl, getValue, getValue_super, getValue_impl, getWebAppPath, getWebAppPath_super, getWebAppPath_impl, getPath, getPath_super, getPath_impl, getFileName, getFileName_super, getFileName_impl, isRoot, isRoot_super, isRoot_impl, isRealRoot, isRealRoot_super, isRealRoot_impl, toString)
import ValidationInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setValue, setValue_super, setValue_impl, getValue, getValue_super, getValue_impl, getWebAppPath, getWebAppPath_super, getWebAppPath_impl, getPath, getPath_super, getPath_impl, getFileName, getFileName_super, getFileName_impl, isRoot, isRoot_super, isRoot_impl, isRealRoot, isRealRoot_super, isRealRoot_impl, toString)
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
import qualified CategoryHierarchyInterface -- org.allbinary.business.category.hierarchy.CategoryHierarchyInterface
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

-- Java interface: the classes that implement it have these functions
data CategoryPropertiesInterface = CategoryPropertiesInterface
    { header_ :: JavaHeader
    }

instance JavaNull CategoryPropertiesInterface where
    javaNull = javaNullRecord "CategoryPropertiesInterface"

instance JavaEquals CategoryPropertiesInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryPropertiesInterface where
    (==) = jrecordEquals

instance JavaObjectClass CategoryPropertiesInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CategoryPropertiesInterface
fromHeader_ header = CategoryPropertiesInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CategoryPropertiesInterface header)
    TableMappingInterface.registerInterface_ header
    ValidationInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setValue :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: CategoryPropertiesInterface))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: CategoryPropertiesInterface)) a1

setValue_impl :: CategoryPropertiesInterface -> String -> IO (())
setValue_impl this value = javaAbstractMethod "setValue"


getValue :: (JavaObjectClass this_) => this_ -> IO (String)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: CategoryPropertiesInterface))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (String)
getValue_super object_ = (getValue_impl (javaCast object_ :: CategoryPropertiesInterface))

getValue_impl :: CategoryPropertiesInterface -> IO (String)
getValue_impl this = javaAbstractMethod "getValue"


-- throws Exception
getWebAppPath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath object_ = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: CategoryPropertiesInterface))) ()

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getWebAppPath_super object_ = (getWebAppPath_impl (javaCast object_ :: CategoryPropertiesInterface))

getWebAppPath_impl :: CategoryPropertiesInterface -> IO (AbPath.AbPath)
getWebAppPath_impl this = javaAbstractMethod "getWebAppPath"


-- throws Exception
getPath :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath object_ a1 = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: CategoryPropertiesInterface))) () a1

getPath_super :: (JavaObjectClass this_) => this_ -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath_super object_ a1 = (getPath_impl (javaCast object_ :: CategoryPropertiesInterface)) a1

getPath_impl :: CategoryPropertiesInterface -> CategoryHierarchyInterface.CategoryHierarchyInterface -> IO (AbPath.AbPath)
getPath_impl this categoryHierarchyInterface = javaAbstractMethod "getPath"


-- throws Exception
getFileName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName object_ = jmethod object_ "getFileName" (\() -> (getFileName_impl (javaCast object_ :: CategoryPropertiesInterface))) ()

getFileName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName_super object_ = (getFileName_impl (javaCast object_ :: CategoryPropertiesInterface))

getFileName_impl :: CategoryPropertiesInterface -> IO (String)
getFileName_impl this = javaAbstractMethod "getFileName"


-- throws Exception
isRoot :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoot object_ = jmethod object_ "isRoot" (\() -> (isRoot_impl (javaCast object_ :: CategoryPropertiesInterface))) ()

isRoot_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRoot_super object_ = (isRoot_impl (javaCast object_ :: CategoryPropertiesInterface))

isRoot_impl :: CategoryPropertiesInterface -> IO (Bool)
isRoot_impl this = javaAbstractMethod "isRoot"


-- throws Exception
isRealRoot :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRealRoot object_ = jmethod object_ "isRealRoot" (\() -> (isRealRoot_impl (javaCast object_ :: CategoryPropertiesInterface))) ()

isRealRoot_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRealRoot_super object_ = (isRealRoot_impl (javaCast object_ :: CategoryPropertiesInterface))

isRealRoot_impl :: CategoryPropertiesInterface -> IO (Bool)
isRealRoot_impl this = javaAbstractMethod "isRealRoot"


