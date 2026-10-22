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
module AbeClientLicense where

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
import qualified LicenseType -- same package or java.lang
import qualified AbeClientInformationData -- same package or java.lang
import qualified LicenseTypeFactory -- same package or java.lang
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified AbeLicenseInterface

-- implements AbeLicenseInterface
data AbeClientLicense = AbeClientLicense
    { header_ :: JavaHeader
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , id :: IORef (String)
    , servers :: IORef (BasicArrayList.BasicArrayList)
    , special :: IORef (String)
    , licenseType :: IORef (LicenseType.LicenseType)
    }

instance JavaNull AbeClientLicense where
    javaNull = javaNullRecord "AbeClientLicense"

instance JavaEquals AbeClientLicense where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeClientLicense where
    (==) = jrecordEquals

instance JavaObjectClass AbeClientLicense where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbeClientLicense
newRecord_ = do
    header_ <- newJavaHeader
    hashtable <- newIORef javaNull
    id <- newIORef ""
    servers <- newIORef javaNull
    special <- newIORef ""
    licenseType <- newIORef javaNull
    let this = AbeClientLicense header_ hashtable id servers special licenseType
    jregisterLevel header_ this
    AbeLicenseInterface.registerInterface_ header_
    jregisterMethod header_ "hasKey" (\() -> hasKey_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getLicenseId" (\() -> getLicenseId_impl this)
    jregisterMethod header_ "getServers" (\() -> getServers_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "setSpecial" (\() -> setSpecial_impl this)
    jregisterMethod header_ "getSpecial" (\() -> getSpecial_impl this)
    jregisterMethod header_ "getLicenseType" (\() -> getLicenseType_impl this)
    pure this

initFields_ :: AbeClientLicense -> IO ()
initFields_ this = do
    jset this.hashtable (javaNull)
    jset this.id (javaNull)
    jset this.servers (javaNull)
    jset this.special ("")
    jset this.licenseType (javaNull)
    pure ()

new_1 :: ABHashtable.ABHashtable -> IO AbeClientLicense
new_1 hashtable = do
    this <- newRecord_
    init_1 this hashtable
    pure this

init_1 :: AbeClientLicense -> ABHashtable.ABHashtable -> IO ()
init_1 this hashtable = do
        initFields_ this
        assignedValue <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        jset (this).hashtable (assignedValue)
        abeClientInformationData <- (AbeClientInformationData.getInstance)
        keyValue <- (ABHashtable.get hashtable (jget (abeClientInformationData).kEY))
        when (keyValue /= javaNull) $ do
            when (javaInstanceOf keyValue "String") $ do
                Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) (jget (abeClientInformationData).kEY) keyValue)
        jset (this).id ((javaCast (jio (ABHashtable.get hashtable (jget (abeClientInformationData).lICENSEID))) :: String))
        let vector = (javaCast (jio (ABHashtable.get hashtable (jget (abeClientInformationData).lICENSESERVERS))) :: BasicArrayList.BasicArrayList)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).servers (assignedValue)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).servers)) (jio (BasicArrayList.get vector index)))
        stringUtil <- (StringUtil.getInstance)
        Control.Monad.void (AbeClientLicense.setSpecial this (jio (StringUtil.getNonNull stringUtil (javaCast (jio (ABHashtable.get hashtable (jget (abeClientInformationData).sPECIAL))) :: String))))
        licenseTypeString <- (StringUtil.getNonNull stringUtil (javaCast (jio (ABHashtable.get hashtable (jget (abeClientInformationData).lICENSE_TYPE))) :: String))
        assignedValue <- (LicenseTypeFactory.getInstance_1 ((jio (LicenseTypeFactory.getInstance))) licenseTypeString)
        jset (this).licenseType (assignedValue)
        pure ()


hasRequiredKeys :: ABHashtable.ABHashtable -> IO (Bool)
hasRequiredKeys resultHashtable = do
    javaCatchReturn $ do
        abeClientInformationData <- (AbeClientInformationData.getInstance)
        if ((((jio (ABHashtable.containsKey resultHashtable (jget (abeClientInformationData).lICENSEID))) && (jio (ABHashtable.containsKey resultHashtable (jget (abeClientInformationData).lICENSESERVERS)))) && (jio (ABHashtable.containsKey resultHashtable (jget (abeClientInformationData).kEY)))) && (jio (ABHashtable.containsKey resultHashtable (jget (abeClientInformationData).lICENSE_TYPE)))) then do
            javaReturn (True)
        else do
            javaReturn (False)


hasKey :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasKey object_ = jmethod object_ "hasKey" (\() -> (hasKey_impl (javaCast object_ :: AbeClientLicense))) ()

hasKey_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasKey_super object_ = (hasKey_impl (javaCast object_ :: AbeClientLicense))

hasKey_impl :: AbeClientLicense -> IO (Bool)
hasKey_impl this = do
        (AbeClientLicense.isValid this)


getKey :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getKey object_ a1 = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: AbeClientLicense))) () a1

getKey_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getKey_super object_ a1 = (getKey_impl (javaCast object_ :: AbeClientLicense)) a1

getKey_impl :: AbeClientLicense -> String -> IO (String)
getKey_impl this keyName = do
        pure ((javaCast (jio (ABHashtable.get ((jget (this).hashtable)) keyName)) :: String))


getLicenseId :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId object_ = jmethod object_ "getLicenseId" (\() -> (getLicenseId_impl (javaCast object_ :: AbeClientLicense))) ()

getLicenseId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId_super object_ = (getLicenseId_impl (javaCast object_ :: AbeClientLicense))

getLicenseId_impl :: AbeClientLicense -> IO (String)
getLicenseId_impl this = do
        pure ((jget (this).id))


getServers :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getServers object_ = jmethod object_ "getServers" (\() -> (getServers_impl (javaCast object_ :: AbeClientLicense))) ()

getServers_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getServers_super object_ = (getServers_impl (javaCast object_ :: AbeClientLicense))

getServers_impl :: AbeClientLicense -> IO (BasicArrayList.BasicArrayList)
getServers_impl this = do
        pure ((jget (this).servers))


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: AbeClientLicense))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: AbeClientLicense))

isValid_impl :: AbeClientLicense -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (AbeClientLicense.getKey this (jget ((jio (AbeClientInformationData.getInstance))).kEY)))))) $ do
            javaReturn (True)
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AbeClientLicense))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AbeClientLicense))

toString_impl :: AbeClientLicense -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        let bREAK = "<br/>"
        Control.Monad.void (StringMaker.append stringBuffer "License Id: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbeClientLicense.getLicenseId this)))
        Control.Monad.void (StringMaker.append stringBuffer bREAK)
        Control.Monad.void (StringMaker.append stringBuffer "Is Valid: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (AbeClientLicense.isValid this)))
        Control.Monad.void (StringMaker.append stringBuffer bREAK)
        Control.Monad.void (StringMaker.append stringBuffer "Keys: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (ABHashtable.toString ((jget (this).hashtable)))))
        Control.Monad.void (StringMaker.append stringBuffer bREAK)
        serverVector <- (AbeClientLicense.getServers this)
        size <- (BasicArrayList.size serverVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let nextServerString = (javaCast (jio (BasicArrayList.get serverVector index)) :: String)
            Control.Monad.void (StringMaker.append stringBuffer "Server: ")
            Control.Monad.void (StringMaker.append stringBuffer nextServerString)
            Control.Monad.void (StringMaker.append stringBuffer bREAK)
        (StringMaker.toString stringBuffer)


setSpecial :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial object_ a1 = jmethod object_ "setSpecial" (\() -> (setSpecial_impl (javaCast object_ :: AbeClientLicense))) () a1

setSpecial_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial_super object_ a1 = (setSpecial_impl (javaCast object_ :: AbeClientLicense)) a1

setSpecial_impl :: AbeClientLicense -> String -> IO (())
setSpecial_impl this special = do
        jset (this).special (special)
        pure ()


getSpecial :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial object_ = jmethod object_ "getSpecial" (\() -> (getSpecial_impl (javaCast object_ :: AbeClientLicense))) ()

getSpecial_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial_super object_ = (getSpecial_impl (javaCast object_ :: AbeClientLicense))

getSpecial_impl :: AbeClientLicense -> IO (String)
getSpecial_impl this = do
        pure ((jget (this).special))


getLicenseType :: (JavaObjectClass this_) => this_ -> IO (LicenseType.LicenseType)
getLicenseType object_ = jmethod object_ "getLicenseType" (\() -> (getLicenseType_impl (javaCast object_ :: AbeClientLicense))) ()

getLicenseType_super :: (JavaObjectClass this_) => this_ -> IO (LicenseType.LicenseType)
getLicenseType_super object_ = (getLicenseType_impl (javaCast object_ :: AbeClientLicense))

getLicenseType_impl :: AbeClientLicense -> IO (LicenseType.LicenseType)
getLicenseType_impl this = do
        pure ((jget (this).licenseType))


