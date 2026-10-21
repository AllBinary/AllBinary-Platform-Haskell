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
-- package org.allbinary.logic.system.security.licensing
module AbeLicenseInterface where

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
import qualified LicenseType -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data AbeLicenseInterface = AbeLicenseInterface
    { header_ :: JavaHeader
    }

instance JavaNull AbeLicenseInterface where
    javaNull = javaNullRecord "AbeLicenseInterface"

instance JavaEquals AbeLicenseInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeLicenseInterface where
    (==) = jrecordEquals

instance JavaObjectClass AbeLicenseInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AbeLicenseInterface
fromHeader_ header = AbeLicenseInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AbeLicenseInterface header)


hasKey :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasKey object_ = jmethod object_ "hasKey" (\() -> (hasKey_impl (javaCast object_ :: AbeLicenseInterface))) ()

hasKey_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasKey_super object_ = (hasKey_impl (javaCast object_ :: AbeLicenseInterface))

hasKey_impl :: AbeLicenseInterface -> IO (Bool)
hasKey_impl this = javaAbstractMethod "hasKey"


getKey :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getKey object_ a1 = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: AbeLicenseInterface))) () a1

getKey_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getKey_super object_ a1 = (getKey_impl (javaCast object_ :: AbeLicenseInterface)) a1

getKey_impl :: AbeLicenseInterface -> String -> IO (String)
getKey_impl this keyName = javaAbstractMethod "getKey"


getLicenseId :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId object_ = jmethod object_ "getLicenseId" (\() -> (getLicenseId_impl (javaCast object_ :: AbeLicenseInterface))) ()

getLicenseId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId_super object_ = (getLicenseId_impl (javaCast object_ :: AbeLicenseInterface))

getLicenseId_impl :: AbeLicenseInterface -> IO (String)
getLicenseId_impl this = javaAbstractMethod "getLicenseId"


getServers :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getServers object_ = jmethod object_ "getServers" (\() -> (getServers_impl (javaCast object_ :: AbeLicenseInterface))) ()

getServers_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getServers_super object_ = (getServers_impl (javaCast object_ :: AbeLicenseInterface))

getServers_impl :: AbeLicenseInterface -> IO (BasicArrayList.BasicArrayList)
getServers_impl this = javaAbstractMethod "getServers"


getSpecial :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial object_ = jmethod object_ "getSpecial" (\() -> (getSpecial_impl (javaCast object_ :: AbeLicenseInterface))) ()

getSpecial_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial_super object_ = (getSpecial_impl (javaCast object_ :: AbeLicenseInterface))

getSpecial_impl :: AbeLicenseInterface -> IO (String)
getSpecial_impl this = javaAbstractMethod "getSpecial"


getLicenseType :: (JavaObjectClass this_) => this_ -> IO (LicenseType.LicenseType)
getLicenseType object_ = jmethod object_ "getLicenseType" (\() -> (getLicenseType_impl (javaCast object_ :: AbeLicenseInterface))) ()

getLicenseType_super :: (JavaObjectClass this_) => this_ -> IO (LicenseType.LicenseType)
getLicenseType_super object_ = (getLicenseType_impl (javaCast object_ :: AbeLicenseInterface))

getLicenseType_impl :: AbeLicenseInterface -> IO (LicenseType.LicenseType)
getLicenseType_impl this = javaAbstractMethod "getLicenseType"


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: AbeLicenseInterface))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: AbeLicenseInterface))

isValid_impl :: AbeLicenseInterface -> IO (Bool)
isValid_impl this = javaAbstractMethod "isValid"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AbeLicenseInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AbeLicenseInterface))

toString_impl :: AbeLicenseInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


