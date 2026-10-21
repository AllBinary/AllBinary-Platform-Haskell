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
module CategoryHierarchy where

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
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CategoryHierarchyInterface

-- implements CategoryHierarchyInterface
data CategoryHierarchy = CategoryHierarchy
    { header_ :: JavaHeader
    , rootCategoryInterface :: IORef (CategoryInterface.CategoryInterface)
    , parentCategoryInterface :: IORef (CategoryInterface.CategoryInterface)
    , level :: IORef (Int)
    }

instance JavaNull CategoryHierarchy where
    javaNull = javaNullRecord "CategoryHierarchy"

instance JavaEquals CategoryHierarchy where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryHierarchy where
    (==) = jrecordEquals

instance JavaObjectClass CategoryHierarchy where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryHierarchy
newRecord_ = do
    header_ <- newJavaHeader
    rootCategoryInterface <- newIORef javaNull
    parentCategoryInterface <- newIORef javaNull
    level <- newIORef 0
    let this = CategoryHierarchy header_ rootCategoryInterface parentCategoryInterface level
    jregisterLevel header_ this
    CategoryHierarchyInterface.registerInterface_ header_
    jregisterMethod header_ "getLevel" (\() -> getLevel_impl this)
    jregisterMethod header_ "getLevelString" (\() -> getLevelString_impl this)
    jregisterMethod header_ "setLevel" (\() -> setLevel_impl this)
    jregisterMethod header_ "setParent" (\() -> setParent_impl this)
    jregisterMethod header_ "setRoot" (\() -> setRoot_impl this)
    jregisterMethod header_ "getRoot" (\() -> getRoot_impl this)
    jregisterMethod header_ "getParent" (\() -> getParent_impl this)
    pure this

initFields_ :: CategoryHierarchy -> IO ()
initFields_ this = do
    jset this.rootCategoryInterface (javaNull)
    jset this.parentCategoryInterface (javaNull)
    jset this.level (0)
    pure ()

new_2 :: CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO CategoryHierarchy
new_2 rootCategoryInterface parentCategoryInterface = do
    this <- newRecord_
    init_2 this rootCategoryInterface parentCategoryInterface
    pure this

init_2 :: CategoryHierarchy -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO ()
init_2 this rootCategoryInterface parentCategoryInterface = do
        initFields_ this
        jset (this).level (0)
        Control.Monad.void (CategoryHierarchy.setRoot this rootCategoryInterface)
        Control.Monad.void (CategoryHierarchy.setParent this parentCategoryInterface)
        pure ()

new_3 :: CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Int -> IO CategoryHierarchy
new_3 rootCategoryInterface parentCategoryInterface level = do
    this <- newRecord_
    init_3 this rootCategoryInterface parentCategoryInterface level
    pure this

init_3 :: CategoryHierarchy -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Int -> IO ()
init_3 this rootCategoryInterface parentCategoryInterface level = do
        initFields_ this
        jset (this).level (level)
        Control.Monad.void (CategoryHierarchy.setRoot this rootCategoryInterface)
        Control.Monad.void (CategoryHierarchy.setParent this parentCategoryInterface)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_3 :: CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO CategoryHierarchy
new_3 rootCategoryInterface parentCategoryInterface categoryPropertiesHashMap = do
    this <- newRecord_
    init_3 this rootCategoryInterface parentCategoryInterface categoryPropertiesHashMap
    pure this

init_3 :: CategoryHierarchy -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO ()
init_3 this rootCategoryInterface parentCategoryInterface categoryPropertiesHashMap = do
        initFields_ this
        levelString <- (StringUtil.getNonNull ((jio (StringUtil.getInstance))) (javaCast (jio (HashMap.get categoryPropertiesHashMap (jget ((jio (CategoryData.getInstance))).lEVEL))) :: String))
        jset (this).level ((javaToString levelString))
        Control.Monad.void (CategoryHierarchy.setRoot this rootCategoryInterface)
        Control.Monad.void (CategoryHierarchy.setParent this parentCategoryInterface)
        pure ()


getLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: CategoryHierarchy))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: CategoryHierarchy))

getLevel_impl :: CategoryHierarchy -> IO (Int)
getLevel_impl this = do
        pure ((jget (this).level))


getLevelString :: (JavaObjectClass this_) => this_ -> IO (String)
getLevelString object_ = jmethod object_ "getLevelString" (\() -> (getLevelString_impl (javaCast object_ :: CategoryHierarchy))) ()

getLevelString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLevelString_super object_ = (getLevelString_impl (javaCast object_ :: CategoryHierarchy))

getLevelString_impl :: CategoryHierarchy -> IO (String)
getLevelString_impl this = do
        pure ((javaToString (jget (this).level)))


setLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel object_ a1 = jmethod object_ "setLevel" (\() -> (setLevel_impl (javaCast object_ :: CategoryHierarchy))) () a1

setLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel_super object_ a1 = (setLevel_impl (javaCast object_ :: CategoryHierarchy)) a1

setLevel_impl :: CategoryHierarchy -> Int -> IO (())
setLevel_impl this level = do
        jset (this).level (level)
        pure ()


setParent :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
setParent object_ a1 = jmethod object_ "setParent" (\() -> (setParent_impl (javaCast object_ :: CategoryHierarchy))) () a1

setParent_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
setParent_super object_ a1 = (setParent_impl (javaCast object_ :: CategoryHierarchy)) a1

setParent_impl :: CategoryHierarchy -> CategoryInterface.CategoryInterface -> IO (())
setParent_impl this categoryInterface = do
        jset (this).parentCategoryInterface (categoryInterface)
        pure ()


setRoot :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
setRoot object_ a1 = jmethod object_ "setRoot" (\() -> (setRoot_impl (javaCast object_ :: CategoryHierarchy))) () a1

setRoot_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
setRoot_super object_ a1 = (setRoot_impl (javaCast object_ :: CategoryHierarchy)) a1

setRoot_impl :: CategoryHierarchy -> CategoryInterface.CategoryInterface -> IO (())
setRoot_impl this categoryInterface = do
        jset (this).rootCategoryInterface (categoryInterface)
        pure ()


getRoot :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRoot object_ = jmethod object_ "getRoot" (\() -> (getRoot_impl (javaCast object_ :: CategoryHierarchy))) ()

getRoot_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRoot_super object_ = (getRoot_impl (javaCast object_ :: CategoryHierarchy))

getRoot_impl :: CategoryHierarchy -> IO (CategoryInterface.CategoryInterface)
getRoot_impl this = do
        pure ((jget (this).rootCategoryInterface))


getParent :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getParent object_ = jmethod object_ "getParent" (\() -> (getParent_impl (javaCast object_ :: CategoryHierarchy))) ()

getParent_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getParent_super object_ = (getParent_impl (javaCast object_ :: CategoryHierarchy))

getParent_impl :: CategoryHierarchy -> IO (CategoryInterface.CategoryInterface)
getParent_impl this = do
        pure ((jget (this).parentCategoryInterface))


