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
-- package org.allbinary.business.category.store.theme
module StoreThemeCategoryInterface (module StoreThemeCategoryInterface, module CategoryInterface, module TableMappingInterface, module ValidationInterface, module CompositeTransformInfoInterface) where

import CategoryInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addTheme, addTheme_super, addTheme_impl, getThemes, getThemes_super, getThemes_impl, toString)
import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addTheme, addTheme_super, addTheme_impl, getThemes, getThemes_super, getThemes_impl, toString)
import ValidationInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addTheme, addTheme_super, addTheme_impl, getThemes, getThemes_super, getThemes_impl, toString)
import CompositeTransformInfoInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addTheme, addTheme_super, addTheme_impl, getThemes, getThemes_super, getThemes_impl, toString)
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
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified ThemeValidation -- org.allbinary.logic.visual.theme.ThemeValidation
import qualified CompositeTransformInfoInterface -- org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface

-- Java interface: the classes that implement it have these functions
data StoreThemeCategoryInterface = StoreThemeCategoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull StoreThemeCategoryInterface where
    javaNull = javaNullRecord "StoreThemeCategoryInterface"

instance JavaEquals StoreThemeCategoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreThemeCategoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass StoreThemeCategoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StoreThemeCategoryInterface
fromHeader_ header = StoreThemeCategoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StoreThemeCategoryInterface header)
    CategoryInterface.registerInterface_ header
    TableMappingInterface.registerInterface_ header
    ValidationInterface.registerInterface_ header
    CompositeTransformInfoInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


addTheme :: (JavaObjectClass this_) => this_ -> ThemeValidation.ThemeValidation -> IO (())
addTheme object_ a1 = jmethod object_ "addTheme" (\() -> (addTheme_impl (javaCast object_ :: StoreThemeCategoryInterface))) () a1

addTheme_super :: (JavaObjectClass this_) => this_ -> ThemeValidation.ThemeValidation -> IO (())
addTheme_super object_ a1 = (addTheme_impl (javaCast object_ :: StoreThemeCategoryInterface)) a1

addTheme_impl :: StoreThemeCategoryInterface -> ThemeValidation.ThemeValidation -> IO (())
addTheme_impl this themeValidation = javaAbstractMethod "addTheme"


getThemes :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getThemes object_ = jmethod object_ "getThemes" (\() -> (getThemes_impl (javaCast object_ :: StoreThemeCategoryInterface))) ()

getThemes_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getThemes_super object_ = (getThemes_impl (javaCast object_ :: StoreThemeCategoryInterface))

getThemes_impl :: StoreThemeCategoryInterface -> IO (BasicArrayList.BasicArrayList)
getThemes_impl this = javaAbstractMethod "getThemes"


