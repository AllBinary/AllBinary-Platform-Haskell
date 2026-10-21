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
-- package org.allbinary.data.tree.category
module CategoryLoaderInterface (module CategoryLoaderInterface, module CategoryModifierTreeInterface) where

import CategoryModifierTreeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDoc, getDoc_super, getDoc_impl, get, get_super, get_impl, getAll, getAll_super, getAll_impl, toString)
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
import qualified Document -- org.w3c.dom.Document
import qualified CategoryModifierTreeInterface

-- Java interface: the classes that implement it have these functions
data CategoryLoaderInterface = CategoryLoaderInterface
    { header_ :: JavaHeader
    }

instance JavaNull CategoryLoaderInterface where
    javaNull = javaNullRecord "CategoryLoaderInterface"

instance JavaEquals CategoryLoaderInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryLoaderInterface where
    (==) = jrecordEquals

instance JavaObjectClass CategoryLoaderInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CategoryLoaderInterface
fromHeader_ header = CategoryLoaderInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CategoryLoaderInterface header)
    CategoryModifierTreeInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getDoc :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Document.Document)
getDoc object_ a1 = jmethod object_ "getDoc" (\() -> (getDoc_impl (javaCast object_ :: CategoryLoaderInterface))) () a1

getDoc_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (Document.Document)
getDoc_super object_ a1 = (getDoc_impl (javaCast object_ :: CategoryLoaderInterface)) a1

getDoc_impl :: CategoryLoaderInterface -> CategoryInterface.CategoryInterface -> IO (Document.Document)
getDoc_impl this categoryInterface = javaAbstractMethod "getDoc"


get :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: CategoryLoaderInterface))) () a1

get_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
get_super object_ a1 = (get_impl (javaCast object_ :: CategoryLoaderInterface)) a1

get_impl :: CategoryLoaderInterface -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
get_impl this categoryInterface = javaAbstractMethod "get"


getAll :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
getAll object_ a1 = jmethod object_ "getAll" (\() -> (getAll_impl (javaCast object_ :: CategoryLoaderInterface))) () a1

getAll_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
getAll_super object_ a1 = (getAll_impl (javaCast object_ :: CategoryLoaderInterface)) a1

getAll_impl :: CategoryLoaderInterface -> CategoryInterface.CategoryInterface -> IO (CategoryInterface.CategoryInterface)
getAll_impl this categoryInterface = javaAbstractMethod "getAll"


