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
-- package org.allbinary.input.automation.module.generic.configuration
module GenericModuleConfigurationInterface where

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
import qualified GenericProfile -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile

-- Java interface: the classes that implement it have these functions
data GenericModuleConfigurationInterface = GenericModuleConfigurationInterface
    { header_ :: JavaHeader
    }

instance JavaNull GenericModuleConfigurationInterface where
    javaNull = javaNullRecord "GenericModuleConfigurationInterface"

instance JavaEquals GenericModuleConfigurationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericModuleConfigurationInterface where
    (==) = jrecordEquals

instance JavaObjectClass GenericModuleConfigurationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GenericModuleConfigurationInterface
fromHeader_ header = GenericModuleConfigurationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GenericModuleConfigurationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getSelectedGenericProfile :: (JavaObjectClass this_) => this_ -> IO (GenericProfile.GenericProfile)
getSelectedGenericProfile object_ = jmethod object_ "getSelectedGenericProfile" (\() -> (getSelectedGenericProfile_impl (javaCast object_ :: GenericModuleConfigurationInterface))) ()

getSelectedGenericProfile_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfile.GenericProfile)
getSelectedGenericProfile_super object_ = (getSelectedGenericProfile_impl (javaCast object_ :: GenericModuleConfigurationInterface))

getSelectedGenericProfile_impl :: GenericModuleConfigurationInterface -> IO (GenericProfile.GenericProfile)
getSelectedGenericProfile_impl this = javaAbstractMethod "getSelectedGenericProfile"


setSelectedGenericProfile :: (JavaObjectClass this_) => this_ -> GenericProfile.GenericProfile -> IO (())
setSelectedGenericProfile object_ a1 = jmethod object_ "setSelectedGenericProfile" (\() -> (setSelectedGenericProfile_impl (javaCast object_ :: GenericModuleConfigurationInterface))) () a1

setSelectedGenericProfile_super :: (JavaObjectClass this_) => this_ -> GenericProfile.GenericProfile -> IO (())
setSelectedGenericProfile_super object_ a1 = (setSelectedGenericProfile_impl (javaCast object_ :: GenericModuleConfigurationInterface)) a1

setSelectedGenericProfile_impl :: GenericModuleConfigurationInterface -> GenericProfile.GenericProfile -> IO (())
setSelectedGenericProfile_impl this selectedGenericProfile = javaAbstractMethod "setSelectedGenericProfile"


