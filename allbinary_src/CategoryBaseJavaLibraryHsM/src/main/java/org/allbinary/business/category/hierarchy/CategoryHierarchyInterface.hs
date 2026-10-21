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
-- package org.allbinary.business.category.hierarchy
module CategoryHierarchyInterface where

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
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface

-- Java interface: the classes that implement it have these functions
data CategoryHierarchyInterface = CategoryHierarchyInterface
    { header_ :: JavaHeader
    }

instance JavaNull CategoryHierarchyInterface where
    javaNull = javaNullRecord "CategoryHierarchyInterface"

instance JavaEquals CategoryHierarchyInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryHierarchyInterface where
    (==) = jrecordEquals

instance JavaObjectClass CategoryHierarchyInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CategoryHierarchyInterface
fromHeader_ header = CategoryHierarchyInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CategoryHierarchyInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: CategoryHierarchyInterface))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: CategoryHierarchyInterface))

getLevel_impl :: CategoryHierarchyInterface -> IO (Int)
getLevel_impl this = javaAbstractMethod "getLevel"


getLevelString :: (JavaObjectClass this_) => this_ -> IO (String)
getLevelString object_ = jmethod object_ "getLevelString" (\() -> (getLevelString_impl (javaCast object_ :: CategoryHierarchyInterface))) ()

getLevelString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLevelString_super object_ = (getLevelString_impl (javaCast object_ :: CategoryHierarchyInterface))

getLevelString_impl :: CategoryHierarchyInterface -> IO (String)
getLevelString_impl this = javaAbstractMethod "getLevelString"


getRoot :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRoot object_ = jmethod object_ "getRoot" (\() -> (getRoot_impl (javaCast object_ :: CategoryHierarchyInterface))) ()

getRoot_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRoot_super object_ = (getRoot_impl (javaCast object_ :: CategoryHierarchyInterface))

getRoot_impl :: CategoryHierarchyInterface -> IO (CategoryInterface.CategoryInterface)
getRoot_impl this = javaAbstractMethod "getRoot"


getParent :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getParent object_ = jmethod object_ "getParent" (\() -> (getParent_impl (javaCast object_ :: CategoryHierarchyInterface))) ()

getParent_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getParent_super object_ = (getParent_impl (javaCast object_ :: CategoryHierarchyInterface))

getParent_impl :: CategoryHierarchyInterface -> IO (CategoryInterface.CategoryInterface)
getParent_impl this = javaAbstractMethod "getParent"


setLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel object_ a1 = jmethod object_ "setLevel" (\() -> (setLevel_impl (javaCast object_ :: CategoryHierarchyInterface))) () a1

setLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel_super object_ a1 = (setLevel_impl (javaCast object_ :: CategoryHierarchyInterface)) a1

setLevel_impl :: CategoryHierarchyInterface -> Int -> IO (())
setLevel_impl this level = javaAbstractMethod "setLevel"


setRoot :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
setRoot object_ a1 = jmethod object_ "setRoot" (\() -> (setRoot_impl (javaCast object_ :: CategoryHierarchyInterface))) () a1

setRoot_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
setRoot_super object_ a1 = (setRoot_impl (javaCast object_ :: CategoryHierarchyInterface)) a1

setRoot_impl :: CategoryHierarchyInterface -> CategoryInterface.CategoryInterface -> IO (())
setRoot_impl this categoryInterface = javaAbstractMethod "setRoot"


setParent :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
setParent object_ a1 = jmethod object_ "setParent" (\() -> (setParent_impl (javaCast object_ :: CategoryHierarchyInterface))) () a1

setParent_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
setParent_super object_ a1 = (setParent_impl (javaCast object_ :: CategoryHierarchyInterface)) a1

setParent_impl :: CategoryHierarchyInterface -> CategoryInterface.CategoryInterface -> IO (())
setParent_impl this categoryInterface = javaAbstractMethod "setParent"


