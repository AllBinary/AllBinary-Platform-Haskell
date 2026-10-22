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
module ClientInformation where

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
import qualified AbeClientInformationData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified TsUtil -- org.allbinary.TsUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HardwareInterface -- org.allbinary.logic.system.hardware.HardwareInterface
import qualified SystemHardwareFactory -- org.allbinary.logic.system.hardware.SystemHardwareFactory
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified NoOperatingSystem -- org.allbinary.logic.system.os.NoOperatingSystem
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified AbeClientInformationInterface

-- implements AbeClientInformationInterface
data ClientInformation = ClientInformation
    { header_ :: JavaHeader
    , operatingSystemInterface :: IORef (GenericOperatingSystem.GenericOperatingSystem)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , name :: IORef (String)
    , shortName :: IORef (String)
    , version :: IORef (String)
    , specialName :: IORef (String)
    , hardSale :: IORef (Bool)
    , licenseId :: IORef (String)
    , licenseServers :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull ClientInformation where
    javaNull = javaNullRecord "ClientInformation"

instance JavaEquals ClientInformation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ClientInformation where
    (==) = jrecordEquals

instance JavaObjectClass ClientInformation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ClientInformation
newRecord_ = do
    header_ <- newJavaHeader
    operatingSystemInterface <- newIORef javaNull
    tsUtil <- newIORef javaNull
    name <- newIORef ""
    shortName <- newIORef ""
    version <- newIORef ""
    specialName <- newIORef ""
    hardSale <- newIORef False
    licenseId <- newIORef ""
    licenseServers <- newIORef javaNull
    let this = ClientInformation header_ operatingSystemInterface tsUtil name shortName version specialName hardSale licenseId licenseServers
    jregisterLevel header_ this
    AbeClientInformationInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getOperatingSystemInterface" (\() -> getOperatingSystemInterface_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getSpecialName" (\() -> getSpecialName_impl this)
    jregisterMethod header_ "getVersion" (\() -> getVersion_impl this)
    jregisterMethod header_ "getLicenseId" (\() -> getLicenseId_impl this)
    jregisterMethod header_ "getLicenseServers" (\() -> getLicenseServers_impl this)
    jregisterMethod header_ "getLicenseServer" (\() -> getLicenseServer_impl this)
    jregisterMethod header_ "getNumberOfLicenseServers" (\() -> getNumberOfLicenseServers_impl this)
    jregisterMethod header_ "toHashtable" (\() -> toHashtable_impl this)
    jregisterMethod header_ "isSameId" (\() -> isSameId_impl this)
    jregisterMethod header_ "isLargerOrDifferentServerList" (\() -> isLargerOrDifferentServerList_impl this)
    jregisterMethod header_ "setHardSale" (\() -> setHardSale_impl this)
    jregisterMethod header_ "isHardSale" (\() -> isHardSale_impl this)
    jregisterMethod header_ "setOperatingSystemInterface" (\() -> setOperatingSystemInterface_impl this)
    jregisterMethod header_ "setLicenseId" (\() -> setLicenseId_impl this)
    jregisterMethod header_ "setLicenseServers" (\() -> setLicenseServers_impl this)
    jregisterMethod header_ "toShortString" (\() -> toShortString_impl this)
    pure this

initFields_ :: ClientInformation -> IO ()
initFields_ this = do
    jset this.operatingSystemInterface (NoOperatingSystem.nO_OPERATING_SYSTEM)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.name (javaNull)
    jset this.shortName (javaNull)
    jset this.version (javaNull)
    jset this.specialName (javaNull)
    jset this.hardSale (True)
    jset this.licenseId ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.licenseServers =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    pure ()

new_4 :: String -> String -> String -> String -> IO ClientInformation
new_4 name version specialName shortName = do
    this <- newRecord_
    init_4 this name version specialName shortName
    pure this

init_4 :: ClientInformation -> String -> String -> String -> String -> IO ()
init_4 this name version specialName shortName = do
        initFields_ this
        jset (this).name (name)
        jset (this).version (version)
        jset (this).specialName (specialName)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) shortName))) (jget ((jio (CommonSeps.getInstance))).uNDERSCORE)))) version))))
        jset (this).shortName (assignedValue)
        Control.Monad.void (ClientInformation.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ClientInformation))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ClientInformation))

init_impl :: ClientInformation -> IO (())
init_impl this = do
        pure ()


getOperatingSystemInterface :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInterface object_ = jmethod object_ "getOperatingSystemInterface" (\() -> (getOperatingSystemInterface_impl (javaCast object_ :: ClientInformation))) ()

getOperatingSystemInterface_super :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInterface_super object_ = (getOperatingSystemInterface_impl (javaCast object_ :: ClientInformation))

getOperatingSystemInterface_impl :: ClientInformation -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInterface_impl this = do
        pure ((jget (this).operatingSystemInterface))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: ClientInformation))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: ClientInformation))

getName_impl :: ClientInformation -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getSpecialName :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecialName object_ = jmethod object_ "getSpecialName" (\() -> (getSpecialName_impl (javaCast object_ :: ClientInformation))) ()

getSpecialName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecialName_super object_ = (getSpecialName_impl (javaCast object_ :: ClientInformation))

getSpecialName_impl :: ClientInformation -> IO (String)
getSpecialName_impl this = do
        pure ((jget (this).specialName))


getVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion object_ = jmethod object_ "getVersion" (\() -> (getVersion_impl (javaCast object_ :: ClientInformation))) ()

getVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion_super object_ = (getVersion_impl (javaCast object_ :: ClientInformation))

getVersion_impl :: ClientInformation -> IO (String)
getVersion_impl this = do
        pure ((jget (this).version))


getLicenseId :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId object_ = jmethod object_ "getLicenseId" (\() -> (getLicenseId_impl (javaCast object_ :: ClientInformation))) ()

getLicenseId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId_super object_ = (getLicenseId_impl (javaCast object_ :: ClientInformation))

getLicenseId_impl :: ClientInformation -> IO (String)
getLicenseId_impl this = do
        pure ((jget (this).licenseId))


getLicenseServers :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getLicenseServers object_ = jmethod object_ "getLicenseServers" (\() -> (getLicenseServers_impl (javaCast object_ :: ClientInformation))) ()

getLicenseServers_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getLicenseServers_super object_ = (getLicenseServers_impl (javaCast object_ :: ClientInformation))

getLicenseServers_impl :: ClientInformation -> IO (BasicArrayList.BasicArrayList)
getLicenseServers_impl this = do
        pure ((jget (this).licenseServers))


getLicenseServer :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getLicenseServer object_ a1 = jmethod object_ "getLicenseServer" (\() -> (getLicenseServer_impl (javaCast object_ :: ClientInformation))) () a1

getLicenseServer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getLicenseServer_super object_ a1 = (getLicenseServer_impl (javaCast object_ :: ClientInformation)) a1

getLicenseServer_impl :: ClientInformation -> Int -> IO (String)
getLicenseServer_impl this index = do
        pure ((javaCast (jindex ((jget ((jget (this).licenseServers)).objectArray)) (index)) :: String))


getNumberOfLicenseServers :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfLicenseServers object_ = jmethod object_ "getNumberOfLicenseServers" (\() -> (getNumberOfLicenseServers_impl (javaCast object_ :: ClientInformation))) ()

getNumberOfLicenseServers_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfLicenseServers_super object_ = (getNumberOfLicenseServers_impl (javaCast object_ :: ClientInformation))

getNumberOfLicenseServers_impl :: ClientInformation -> IO (Int)
getNumberOfLicenseServers_impl this = do
        (BasicArrayList.size ((jget (this).licenseServers)))


toHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable object_ = jmethod object_ "toHashtable" (\() -> (toHashtable_impl (javaCast object_ :: ClientInformation))) ()

toHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable_super object_ = (toHashtable_impl (javaCast object_ :: ClientInformation))

toHashtable_impl :: ClientInformation -> IO (ABHashtable.ABHashtable)
toHashtable_impl this = do
        abeClientInformationData <- (AbeClientInformationData.getInstance)
        genericOperatingSystem <- (ClientInformation.getOperatingSystemInterface this)
        clientInfoHashtable <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).nAME) (jget (this).name))
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).vERSION) (jget (this).version))
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).sPECIALNAME) (jget (this).specialName))
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).lICENSEID) (jio (ClientInformation.getLicenseId this)))
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).oSNAME) (jio (GenericOperatingSystem.getName genericOperatingSystem)))
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).oSARCH) (jio (GenericOperatingSystem.getArch genericOperatingSystem)))
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).oSVERSION) (jio (GenericOperatingSystem.getVersion genericOperatingSystem)))
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).oS) (jio (GenericOperatingSystem.toString genericOperatingSystem)))
        hardwareInterface <- (fmap (\value_ -> javaCast value_ :: HardwareInterface.HardwareInterface) (SystemHardwareFactory.getInstance_1 ((jio (SystemHardwareFactory.getInstance))) genericOperatingSystem))
        hardwareString <- (HardwareInterface.toString hardwareInterface)
        Control.Monad.void (ABHashtable.put clientInfoHashtable (jget (abeClientInformationData).hARDWARE) hardwareString)
        pure (clientInfoHashtable)


isSameId :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSameId object_ a1 = jmethod object_ "isSameId" (\() -> (isSameId_impl (javaCast object_ :: ClientInformation))) () a1

isSameId_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSameId_super object_ a1 = (isSameId_impl (javaCast object_ :: ClientInformation)) a1

isSameId_impl :: ClientInformation -> String -> IO (Bool)
isSameId_impl this alicenseId = do
    javaCatchReturn $ do
        if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) (jio (ClientInformation.getLicenseId this)) alicenseId)) == 0) then do
            javaReturn (True)
        else do
            javaReturn (False)


isLargerOrDifferentServerList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
isLargerOrDifferentServerList object_ a1 = jmethod object_ "isLargerOrDifferentServerList" (\() -> (isLargerOrDifferentServerList_impl (javaCast object_ :: ClientInformation))) () a1

isLargerOrDifferentServerList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
isLargerOrDifferentServerList_super object_ a1 = (isLargerOrDifferentServerList_impl (javaCast object_ :: ClientInformation)) a1

isLargerOrDifferentServerList_impl :: ClientInformation -> BasicArrayList.BasicArrayList -> IO (Bool)
isLargerOrDifferentServerList_impl this list = do
    javaCatchReturn $ do
        let size = ((jio (BasicArrayList.size list)) - 1)
        let currentSize = ((jio (BasicArrayList.size ((jget (this).licenseServers)))) - 1)
        when (size > currentSize) $ do
            javaReturn (True)
        forM_ [size, size + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let newServerName = (javaCast (jindex ((jget (list).objectArray)) (index)) :: String)
            forM_ [currentSize, currentSize + (-1) .. 0] $ \index2 -> javaIteration (pure ()) $ do
                let nextOldServerName = (javaCast (jindex ((jget ((jget (this).licenseServers)).objectArray)) (index)) :: String)
                when ((jio (TsUtil.compareTo ((jget (this).tsUtil)) newServerName nextOldServerName)) /= 0) $ do
                    javaReturn (True)
        pure (False)


setHardSale :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHardSale object_ a1 = jmethod object_ "setHardSale" (\() -> (setHardSale_impl (javaCast object_ :: ClientInformation))) () a1

setHardSale_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHardSale_super object_ a1 = (setHardSale_impl (javaCast object_ :: ClientInformation)) a1

setHardSale_impl :: ClientInformation -> Bool -> IO (())
setHardSale_impl this hardSale = do
        jset (this).hardSale (hardSale)
        pure ()


isHardSale :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHardSale object_ = jmethod object_ "isHardSale" (\() -> (isHardSale_impl (javaCast object_ :: ClientInformation))) ()

isHardSale_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHardSale_super object_ = (isHardSale_impl (javaCast object_ :: ClientInformation))

isHardSale_impl :: ClientInformation -> IO (Bool)
isHardSale_impl this = do
        pure ((jget (this).hardSale))


setOperatingSystemInterface :: (JavaObjectClass this_) => this_ -> GenericOperatingSystem.GenericOperatingSystem -> IO (())
setOperatingSystemInterface object_ a1 = jmethod object_ "setOperatingSystemInterface" (\() -> (setOperatingSystemInterface_impl (javaCast object_ :: ClientInformation))) () a1

setOperatingSystemInterface_super :: (JavaObjectClass this_) => this_ -> GenericOperatingSystem.GenericOperatingSystem -> IO (())
setOperatingSystemInterface_super object_ a1 = (setOperatingSystemInterface_impl (javaCast object_ :: ClientInformation)) a1

setOperatingSystemInterface_impl :: ClientInformation -> GenericOperatingSystem.GenericOperatingSystem -> IO (())
setOperatingSystemInterface_impl this operatingSystemInterface = do
        jset (this).operatingSystemInterface (operatingSystemInterface)
        pure ()


setLicenseId :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLicenseId object_ a1 = jmethod object_ "setLicenseId" (\() -> (setLicenseId_impl (javaCast object_ :: ClientInformation))) () a1

setLicenseId_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLicenseId_super object_ a1 = (setLicenseId_impl (javaCast object_ :: ClientInformation)) a1

setLicenseId_impl :: ClientInformation -> String -> IO (())
setLicenseId_impl this licenseId = do
        jset (this).licenseId (licenseId)
        pure ()


setLicenseServers :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setLicenseServers object_ a1 = jmethod object_ "setLicenseServers" (\() -> (setLicenseServers_impl (javaCast object_ :: ClientInformation))) () a1

setLicenseServers_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setLicenseServers_super object_ a1 = (setLicenseServers_impl (javaCast object_ :: ClientInformation)) a1

setLicenseServers_impl :: ClientInformation -> BasicArrayList.BasicArrayList -> IO (())
setLicenseServers_impl this licenseServers = do
        jset (this).licenseServers (licenseServers)
        pure ()


toShortString :: (JavaObjectClass this_) => this_ -> IO (String)
toShortString object_ = jmethod object_ "toShortString" (\() -> (toShortString_impl (javaCast object_ :: ClientInformation))) ()

toShortString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toShortString_super object_ = (toShortString_impl (javaCast object_ :: ClientInformation))

toShortString_impl :: ClientInformation -> IO (String)
toShortString_impl this = do
        pure ((jget (this).shortName))


