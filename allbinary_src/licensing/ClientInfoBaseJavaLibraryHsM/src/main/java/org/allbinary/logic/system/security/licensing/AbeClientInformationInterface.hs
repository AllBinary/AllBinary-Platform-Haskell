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
module AbeClientInformationInterface where

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
import qualified Any -- same package or java.lang
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data AbeClientInformationInterface = AbeClientInformationInterface
    { header_ :: JavaHeader
    }

instance JavaNull AbeClientInformationInterface where
    javaNull = javaNullRecord "AbeClientInformationInterface"

instance JavaEquals AbeClientInformationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeClientInformationInterface where
    (==) = jrecordEquals

instance JavaObjectClass AbeClientInformationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AbeClientInformationInterface
fromHeader_ header = AbeClientInformationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AbeClientInformationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AbeClientInformationInterface))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AbeClientInformationInterface))

init_impl :: AbeClientInformationInterface -> IO (())
init_impl this = javaAbstractMethod "init"


getOperatingSystemInterface :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInterface object_ = jmethod object_ "getOperatingSystemInterface" (\() -> (getOperatingSystemInterface_impl (javaCast object_ :: AbeClientInformationInterface))) ()

getOperatingSystemInterface_super :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInterface_super object_ = (getOperatingSystemInterface_impl (javaCast object_ :: AbeClientInformationInterface))

getOperatingSystemInterface_impl :: AbeClientInformationInterface -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInterface_impl this = javaAbstractMethod "getOperatingSystemInterface"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AbeClientInformationInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AbeClientInformationInterface))

getName_impl :: AbeClientInformationInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getSpecialName :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecialName object_ = jmethod object_ "getSpecialName" (\() -> (getSpecialName_impl (javaCast object_ :: AbeClientInformationInterface))) ()

getSpecialName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecialName_super object_ = (getSpecialName_impl (javaCast object_ :: AbeClientInformationInterface))

getSpecialName_impl :: AbeClientInformationInterface -> IO (String)
getSpecialName_impl this = javaAbstractMethod "getSpecialName"


getVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion object_ = jmethod object_ "getVersion" (\() -> (getVersion_impl (javaCast object_ :: AbeClientInformationInterface))) ()

getVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion_super object_ = (getVersion_impl (javaCast object_ :: AbeClientInformationInterface))

getVersion_impl :: AbeClientInformationInterface -> IO (String)
getVersion_impl this = javaAbstractMethod "getVersion"


getLicenseId :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId object_ = jmethod object_ "getLicenseId" (\() -> (getLicenseId_impl (javaCast object_ :: AbeClientInformationInterface))) ()

getLicenseId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId_super object_ = (getLicenseId_impl (javaCast object_ :: AbeClientInformationInterface))

getLicenseId_impl :: AbeClientInformationInterface -> IO (String)
getLicenseId_impl this = javaAbstractMethod "getLicenseId"


getLicenseServers :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getLicenseServers object_ = jmethod object_ "getLicenseServers" (\() -> (getLicenseServers_impl (javaCast object_ :: AbeClientInformationInterface))) ()

getLicenseServers_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getLicenseServers_super object_ = (getLicenseServers_impl (javaCast object_ :: AbeClientInformationInterface))

getLicenseServers_impl :: AbeClientInformationInterface -> IO (BasicArrayList.BasicArrayList)
getLicenseServers_impl this = javaAbstractMethod "getLicenseServers"


getLicenseServer :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getLicenseServer object_ a1 = jmethod object_ "getLicenseServer" (\() -> (getLicenseServer_impl (javaCast object_ :: AbeClientInformationInterface))) () a1

getLicenseServer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getLicenseServer_super object_ a1 = (getLicenseServer_impl (javaCast object_ :: AbeClientInformationInterface)) a1

getLicenseServer_impl :: AbeClientInformationInterface -> Int -> IO (String)
getLicenseServer_impl this index = javaAbstractMethod "getLicenseServer"


getNumberOfLicenseServers :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfLicenseServers object_ = jmethod object_ "getNumberOfLicenseServers" (\() -> (getNumberOfLicenseServers_impl (javaCast object_ :: AbeClientInformationInterface))) ()

getNumberOfLicenseServers_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfLicenseServers_super object_ = (getNumberOfLicenseServers_impl (javaCast object_ :: AbeClientInformationInterface))

getNumberOfLicenseServers_impl :: AbeClientInformationInterface -> IO (Int)
getNumberOfLicenseServers_impl this = javaAbstractMethod "getNumberOfLicenseServers"


toHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable object_ = jmethod object_ "toHashtable" (\() -> (toHashtable_impl (javaCast object_ :: AbeClientInformationInterface))) ()

toHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable_super object_ = (toHashtable_impl (javaCast object_ :: AbeClientInformationInterface))

toHashtable_impl :: AbeClientInformationInterface -> IO (ABHashtable.ABHashtable)
toHashtable_impl this = javaAbstractMethod "toHashtable"


isSameId :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSameId object_ a1 = jmethod object_ "isSameId" (\() -> (isSameId_impl (javaCast object_ :: AbeClientInformationInterface))) () a1

isSameId_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSameId_super object_ a1 = (isSameId_impl (javaCast object_ :: AbeClientInformationInterface)) a1

isSameId_impl :: AbeClientInformationInterface -> String -> IO (Bool)
isSameId_impl this alicenseId = javaAbstractMethod "isSameId"


isLargerOrDifferentServerList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
isLargerOrDifferentServerList object_ a1 = jmethod object_ "isLargerOrDifferentServerList" (\() -> (isLargerOrDifferentServerList_impl (javaCast object_ :: AbeClientInformationInterface))) () a1

isLargerOrDifferentServerList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
isLargerOrDifferentServerList_super object_ a1 = (isLargerOrDifferentServerList_impl (javaCast object_ :: AbeClientInformationInterface)) a1

isLargerOrDifferentServerList_impl :: AbeClientInformationInterface -> BasicArrayList.BasicArrayList -> IO (Bool)
isLargerOrDifferentServerList_impl this vector = javaAbstractMethod "isLargerOrDifferentServerList"


isHardSale :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHardSale object_ = jmethod object_ "isHardSale" (\() -> (isHardSale_impl (javaCast object_ :: AbeClientInformationInterface))) ()

isHardSale_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHardSale_super object_ = (isHardSale_impl (javaCast object_ :: AbeClientInformationInterface))

isHardSale_impl :: AbeClientInformationInterface -> IO (Bool)
isHardSale_impl this = javaAbstractMethod "isHardSale"


toShortString :: (JavaObjectClass this_) => this_ -> IO (String)
toShortString object_ = jmethod object_ "toShortString" (\() -> (toShortString_impl (javaCast object_ :: AbeClientInformationInterface))) ()

toShortString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toShortString_super object_ = (toShortString_impl (javaCast object_ :: AbeClientInformationInterface))

toShortString_impl :: AbeClientInformationInterface -> IO (String)
toShortString_impl this = javaAbstractMethod "toShortString"


