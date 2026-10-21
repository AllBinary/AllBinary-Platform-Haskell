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
-- package org.allbinary.logic.visual.theme
module ThemeInterface (module ThemeInterface, module TableMappingInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getName, getName_super, getName_impl, getPath, getPath_super, getPath_impl, getPreviewImageName, getPreviewImageName_super, getPreviewImageName_impl, getPreviewImagePath, getPreviewImagePath_super, getPreviewImagePath_impl, toString)
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
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface

-- Java interface: the classes that implement it have these functions
data ThemeInterface = ThemeInterface
    { header_ :: JavaHeader
    }

instance JavaNull ThemeInterface where
    javaNull = javaNullRecord "ThemeInterface"

instance JavaEquals ThemeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThemeInterface where
    (==) = jrecordEquals

instance JavaObjectClass ThemeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ThemeInterface
fromHeader_ header = ThemeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ThemeInterface header)
    TableMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: ThemeInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: ThemeInterface))

getName_impl :: ThemeInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: ThemeInterface))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: ThemeInterface))

getPath_impl :: ThemeInterface -> IO (String)
getPath_impl this = javaAbstractMethod "getPath"


getPreviewImageName :: (JavaObjectClass this_) => this_ -> IO (String)
getPreviewImageName object_ = jmethod object_ "getPreviewImageName" (\() -> (getPreviewImageName_impl (javaCast object_ :: ThemeInterface))) ()

getPreviewImageName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPreviewImageName_super object_ = (getPreviewImageName_impl (javaCast object_ :: ThemeInterface))

getPreviewImageName_impl :: ThemeInterface -> IO (String)
getPreviewImageName_impl this = javaAbstractMethod "getPreviewImageName"


getPreviewImagePath :: (JavaObjectClass this_) => this_ -> IO (String)
getPreviewImagePath object_ = jmethod object_ "getPreviewImagePath" (\() -> (getPreviewImagePath_impl (javaCast object_ :: ThemeInterface))) ()

getPreviewImagePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPreviewImagePath_super object_ = (getPreviewImagePath_impl (javaCast object_ :: ThemeInterface))

getPreviewImagePath_impl :: ThemeInterface -> IO (String)
getPreviewImagePath_impl this = javaAbstractMethod "getPreviewImagePath"


