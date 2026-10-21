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
module AbeNoLicense where

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
import qualified LicenseTypeFactory -- same package or java.lang
import qualified LicenseType -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified AbeLicenseInterface

-- implements AbeLicenseInterface
data AbeNoLicense = AbeNoLicense
    { header_ :: JavaHeader
    , serverVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AbeNoLicense where
    javaNull = javaNullRecord "AbeNoLicense"

instance JavaEquals AbeNoLicense where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeNoLicense where
    (==) = jrecordEquals

instance JavaObjectClass AbeNoLicense where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE abeNoLicense #-}
abeNoLicense = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbeNoLicense
newRecord_ = do
    header_ <- newJavaHeader
    serverVector <- newIORef javaNull
    let this = AbeNoLicense header_ serverVector
    jregisterLevel header_ this
    AbeLicenseInterface.registerInterface_ header_
    jregisterMethod header_ "hasKey" (\() -> hasKey_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getLicenseId" (\() -> getLicenseId_impl this)
    jregisterMethod header_ "getSpecial" (\() -> getSpecial_impl this)
    jregisterMethod header_ "getServers" (\() -> getServers_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getLicenseType" (\() -> getLicenseType_impl this)
    pure this

initFields_ :: AbeNoLicense -> IO ()
initFields_ this = do
    jset this.serverVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO AbeNoLicense
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbeNoLicense -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (AbeNoLicense)
getInstance = do
        pure ((jget AbeNoLicense.abeNoLicense))


hasKey :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasKey object_ = jmethod object_ "hasKey" (\() -> (hasKey_impl (javaCast object_ :: AbeNoLicense))) ()

hasKey_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasKey_super object_ = (hasKey_impl (javaCast object_ :: AbeNoLicense))

hasKey_impl :: AbeNoLicense -> IO (Bool)
hasKey_impl this = do
        pure (False)


getKey :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getKey object_ a1 = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: AbeNoLicense))) () a1

getKey_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getKey_super object_ a1 = (getKey_impl (javaCast object_ :: AbeNoLicense)) a1

getKey_impl :: AbeNoLicense -> String -> IO (String)
getKey_impl this keyName = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getLicenseId :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId object_ = jmethod object_ "getLicenseId" (\() -> (getLicenseId_impl (javaCast object_ :: AbeNoLicense))) ()

getLicenseId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId_super object_ = (getLicenseId_impl (javaCast object_ :: AbeNoLicense))

getLicenseId_impl :: AbeNoLicense -> IO (String)
getLicenseId_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getSpecial :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial object_ = jmethod object_ "getSpecial" (\() -> (getSpecial_impl (javaCast object_ :: AbeNoLicense))) ()

getSpecial_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial_super object_ = (getSpecial_impl (javaCast object_ :: AbeNoLicense))

getSpecial_impl :: AbeNoLicense -> IO (String)
getSpecial_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getServers :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getServers object_ = jmethod object_ "getServers" (\() -> (getServers_impl (javaCast object_ :: AbeNoLicense))) ()

getServers_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getServers_super object_ = (getServers_impl (javaCast object_ :: AbeNoLicense))

getServers_impl :: AbeNoLicense -> IO (BasicArrayList.BasicArrayList)
getServers_impl this = do
        pure ((jget (this).serverVector))


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: AbeNoLicense))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: AbeNoLicense))

isValid_impl :: AbeNoLicense -> IO (Bool)
isValid_impl this = do
        pure (False)


getLicenseType :: (JavaObjectClass this_) => this_ -> IO (LicenseType.LicenseType)
getLicenseType object_ = jmethod object_ "getLicenseType" (\() -> (getLicenseType_impl (javaCast object_ :: AbeNoLicense))) ()

getLicenseType_super :: (JavaObjectClass this_) => this_ -> IO (LicenseType.LicenseType)
getLicenseType_super object_ = (getLicenseType_impl (javaCast object_ :: AbeNoLicense))

getLicenseType_impl :: AbeNoLicense -> IO (LicenseType.LicenseType)
getLicenseType_impl this = do
        pure ((jget ((jio (LicenseTypeFactory.getInstance))).uNKNOWN))


