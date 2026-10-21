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
module CategoryModifierTreeInterface where

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
data CategoryModifierTreeInterface = CategoryModifierTreeInterface
    { header_ :: JavaHeader
    }

instance JavaNull CategoryModifierTreeInterface where
    javaNull = javaNullRecord "CategoryModifierTreeInterface"

instance JavaEquals CategoryModifierTreeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryModifierTreeInterface where
    (==) = jrecordEquals

instance JavaObjectClass CategoryModifierTreeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CategoryModifierTreeInterface
fromHeader_ header = CategoryModifierTreeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CategoryModifierTreeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


insert :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: CategoryModifierTreeInterface))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: CategoryModifierTreeInterface)) a1 a2

insert_impl :: CategoryModifierTreeInterface -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
insert_impl this parentCategoryInterface newChildCategoryInterface = javaAbstractMethod "insert"


delete :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
delete object_ a1 a2 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: CategoryModifierTreeInterface))) () a1 a2

delete_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
delete_super object_ a1 a2 = (delete_impl (javaCast object_ :: CategoryModifierTreeInterface)) a1 a2

delete_impl :: CategoryModifierTreeInterface -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
delete_impl this parentCategoryInterface newChildCategoryInterface = javaAbstractMethod "delete"


