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
-- package org.allbinary.business.user.commerce.inventory.item.download
module DownloadableItem where

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
import qualified DownloadItemData -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified ProductIdGenerator -- org.allbinary.data.generator.ProductIdGenerator
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TimeUtil -- org.allbinary.time.TimeUtil

data DownloadableItem = DownloadableItem
    { header_ :: JavaHeader
    , id :: IORef (String)
    , basicItemId :: IORef (String)
    , enabled :: IORef (String)
    , system :: IORef (String)
    , platform :: IORef (String)
    , specialName :: IORef (String)
    , version :: IORef (String)
    , changes :: IORef (String)
    , licenseFile :: IORef (String)
    , file :: IORef (String)
    , size :: IORef (Int64)
    , validTime :: IORef (Int64)
    , retries :: IORef (String)
    }

instance JavaNull DownloadableItem where
    javaNull = javaNullRecord "DownloadableItem"

instance JavaEquals DownloadableItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownloadableItem where
    (==) = jrecordEquals

instance JavaObjectClass DownloadableItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DownloadableItem
newRecord_ = do
    header_ <- newJavaHeader
    id <- newIORef ""
    basicItemId <- newIORef ""
    enabled <- newIORef ""
    system <- newIORef ""
    platform <- newIORef ""
    specialName <- newIORef ""
    version <- newIORef ""
    changes <- newIORef ""
    licenseFile <- newIORef ""
    file <- newIORef ""
    size <- newIORef javaNull
    validTime <- newIORef javaNull
    retries <- newIORef ""
    let this = DownloadableItem header_ id basicItemId enabled system platform specialName version changes licenseFile file size validTime retries
    jregisterLevel header_ this
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getSystem" (\() -> getSystem_impl this)
    jregisterMethod header_ "getPlatform" (\() -> getPlatform_impl this)
    jregisterMethod header_ "getSpecialName" (\() -> getSpecialName_impl this)
    jregisterMethod header_ "getVersion" (\() -> getVersion_impl this)
    jregisterMethod header_ "getChanges" (\() -> getChanges_impl this)
    jregisterMethod header_ "getLicenseFile" (\() -> getLicenseFile_impl this)
    jregisterMethod header_ "getFile" (\() -> getFile_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "getValidTime" (\() -> getValidTime_impl this)
    jregisterMethod header_ "getRetries" (\() -> getRetries_impl this)
    pure this

initFields_ :: DownloadableItem -> IO ()
initFields_ this = do
    jset this.id (javaNull)
    jset this.basicItemId (javaNull)
    jset this.enabled (javaNull)
    jset this.system (javaNull)
    jset this.platform (javaNull)
    jset this.specialName (javaNull)
    jset this.version (javaNull)
    jset this.changes (javaNull)
    jset this.licenseFile (javaNull)
    jset this.file (javaNull)
    jset this.size (javaNull)
    jset this.validTime (javaNull)
    jset this.retries (javaNull)
    pure ()

new_1 :: String -> IO DownloadableItem
new_1 id = do
    this <- newRecord_
    init_1 this id
    pure this

init_1 :: DownloadableItem -> String -> IO ()
init_1 this id = do
        initFields_ this
        let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        assignedValue <- (ProductIdGenerator.getNext ((jio (ProductIdGenerator.new_))))
        jset (this).id (assignedValue)
        jset (this).basicItemId (id)
        jset (this).enabled ((jget ((jio (EntryData.getInstance))).yES))
        jset (this).system ("Java")
        jset (this).platform ("Android")
        jset (this).specialName (eMPTY_STRING)
        jset (this).version (eMPTY_STRING)
        jset (this).changes (eMPTY_STRING)
        jset (this).licenseFile (eMPTY_STRING)
        jset (this).file (eMPTY_STRING)
        jset (this).size ((javaToString 0))
        jset (this).validTime ((javaToString 0))
        jset (this).retries (eMPTY_STRING)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO DownloadableItem
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: DownloadableItem -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).id ((javaCast (jio (HashMap.get hashMap (DownloadItemData.iD))) :: String))
        jset (this).basicItemId ((javaCast (jio (HashMap.get hashMap (jget ((jio (BasicItemData.getInstance))).iD))) :: String))
        jset (this).enabled ((javaCast (jio (HashMap.get hashMap (jget ((jio (EntryData.getInstance))).eNABLE))) :: String))
        jset (this).system ((javaCast (jio (HashMap.get hashMap (DownloadItemData.sYSTEM))) :: String))
        jset (this).platform ((javaCast (jio (HashMap.get hashMap (DownloadItemData.pLATFORM))) :: String))
        jset (this).specialName ((javaCast (jio (HashMap.get hashMap (DownloadItemData.sPECIAL_NAME))) :: String))
        jset (this).version ((javaCast (jio (HashMap.get hashMap (DownloadItemData.vERSION))) :: String))
        jset (this).changes ((javaCast (jio (HashMap.get hashMap (DownloadItemData.cHANGES))) :: String))
        jset (this).licenseFile ((javaCast (jio (HashMap.get hashMap (DownloadItemData.lICENSE_FILE))) :: String))
        jset (this).file ((javaCast (jio (HashMap.get hashMap (DownloadItemData.fILE))) :: String))
        let value = (javaCast (jio (HashMap.get hashMap (DownloadItemData.sIZE))) :: String)
        if (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) value))) then do
            jset (this).size ((javaToString value))
        else do
            jset (this).size ((Prelude.fromIntegral (0) :: Int64))
        let validTime = (javaCast (jio (HashMap.get hashMap (DownloadItemData.vALID_TIME))) :: String)
        if (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) validTime))) then do
            jset (this).validTime ((javaToString validTime))
        else do
            let totalYears = (javaCast (jio (HashMap.get hashMap (DownloadItemData.vALID_TIME_YEARS))) :: String)
            let totalMonths = (javaCast (jio (HashMap.get hashMap (DownloadItemData.vALID_TIME_MONTHS))) :: String)
            let totalDays = (javaCast (jio (HashMap.get hashMap (DownloadItemData.vALID_TIME_DAYS))) :: String)
            let totalHours = (javaCast (jio (HashMap.get hashMap (DownloadItemData.vALID_TIME_HOURS))) :: String)
            let totalMinutes = (javaCast (jio (HashMap.get hashMap (DownloadItemData.vALID_TIME_MINUTES))) :: String)
            let totalSeconds = (javaCast (jio (HashMap.get hashMap (DownloadItemData.vALID_TIME_SECONDS))) :: String)
            totalTime <- (TimeUtil.getTotalTime ((jio (TimeUtil.getInstance))) totalYears totalMonths totalDays totalHours totalMinutes totalSeconds)
            jset (this).validTime ((Prelude.fromIntegral (totalTime) :: Int64))
        jset (this).retries ((javaCast (jio (HashMap.get hashMap (DownloadItemData.rETRIES))) :: String))
        pure ()


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: DownloadableItem))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: DownloadableItem))

toVector_impl :: DownloadableItem -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        calendar <- (Calendar.getInstance)
        let time = (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64))
        values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getId this)))
        Control.Monad.void (BasicArrayList.add values (jget (this).basicItemId))
        Control.Monad.void (BasicArrayList.add values (jget (this).enabled))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getSpecialName this)))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getVersion this)))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getChanges this)))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getSystem this)))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getPlatform this)))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getLicenseFile this)))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getFile this)))
        Control.Monad.void (BasicArrayList.add values (javaToString (jio (DownloadableItem.getSize this))))
        Control.Monad.void (BasicArrayList.add values (javaToString (jio (DownloadableItem.getValidTime this))))
        Control.Monad.void (BasicArrayList.add values (jio (DownloadableItem.getRetries this)))
        Control.Monad.void (BasicArrayList.add values time)
        Control.Monad.void (BasicArrayList.add values time)
        pure (values)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: DownloadableItem))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: DownloadableItem))

toHashMap_impl :: DownloadableItem -> IO (HashMap.HashMap)
toHashMap_impl this = do
        values <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put values (DownloadItemData.iD) (jio (DownloadableItem.getId this)))
        Control.Monad.void (HashMap.put values (jget ((jio (BasicItemData.getInstance))).iD) (jget (this).basicItemId))
        Control.Monad.void (HashMap.put values (jget ((jio (EntryData.getInstance))).eNABLE) (jget (this).enabled))
        Control.Monad.void (HashMap.put values (DownloadItemData.sYSTEM) (jio (DownloadableItem.getSystem this)))
        Control.Monad.void (HashMap.put values (DownloadItemData.pLATFORM) (jio (DownloadableItem.getPlatform this)))
        Control.Monad.void (HashMap.put values (DownloadItemData.sPECIAL_NAME) (jio (DownloadableItem.getSpecialName this)))
        Control.Monad.void (HashMap.put values (DownloadItemData.vERSION) (jio (DownloadableItem.getVersion this)))
        Control.Monad.void (HashMap.put values (DownloadItemData.cHANGES) (jio (DownloadableItem.getChanges this)))
        Control.Monad.void (HashMap.put values (DownloadItemData.lICENSE_FILE) (jio (DownloadableItem.getLicenseFile this)))
        Control.Monad.void (HashMap.put values (DownloadItemData.fILE) (jio (DownloadableItem.getFile this)))
        Control.Monad.void (HashMap.put values (DownloadItemData.sIZE) (javaToString (jio (DownloadableItem.getSize this))))
        Control.Monad.void (HashMap.put values (DownloadItemData.vALID_TIME) (javaToString (jio (DownloadableItem.getValidTime this))))
        Control.Monad.void (HashMap.put values (DownloadItemData.rETRIES) (jio (DownloadableItem.getRetries this)))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (HashMap.put values (jget ((jio (EntryData.getInstance))).lASTMODIFIED) time)
        pure (values)


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: DownloadableItem))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: DownloadableItem))

getId_impl :: DownloadableItem -> IO (String)
getId_impl this = do
        pure ((jget (this).id))


getSystem :: (JavaObjectClass this_) => this_ -> IO (String)
getSystem object_ = jmethod object_ "getSystem" (\() -> (getSystem_impl (javaCast object_ :: DownloadableItem))) ()

getSystem_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSystem_super object_ = (getSystem_impl (javaCast object_ :: DownloadableItem))

getSystem_impl :: DownloadableItem -> IO (String)
getSystem_impl this = do
        pure ((jget (this).system))


getPlatform :: (JavaObjectClass this_) => this_ -> IO (String)
getPlatform object_ = jmethod object_ "getPlatform" (\() -> (getPlatform_impl (javaCast object_ :: DownloadableItem))) ()

getPlatform_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPlatform_super object_ = (getPlatform_impl (javaCast object_ :: DownloadableItem))

getPlatform_impl :: DownloadableItem -> IO (String)
getPlatform_impl this = do
        pure ((jget (this).platform))


getSpecialName :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecialName object_ = jmethod object_ "getSpecialName" (\() -> (getSpecialName_impl (javaCast object_ :: DownloadableItem))) ()

getSpecialName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecialName_super object_ = (getSpecialName_impl (javaCast object_ :: DownloadableItem))

getSpecialName_impl :: DownloadableItem -> IO (String)
getSpecialName_impl this = do
        pure ((jget (this).specialName))


getVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion object_ = jmethod object_ "getVersion" (\() -> (getVersion_impl (javaCast object_ :: DownloadableItem))) ()

getVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVersion_super object_ = (getVersion_impl (javaCast object_ :: DownloadableItem))

getVersion_impl :: DownloadableItem -> IO (String)
getVersion_impl this = do
        pure ((jget (this).version))


getChanges :: (JavaObjectClass this_) => this_ -> IO (String)
getChanges object_ = jmethod object_ "getChanges" (\() -> (getChanges_impl (javaCast object_ :: DownloadableItem))) ()

getChanges_super :: (JavaObjectClass this_) => this_ -> IO (String)
getChanges_super object_ = (getChanges_impl (javaCast object_ :: DownloadableItem))

getChanges_impl :: DownloadableItem -> IO (String)
getChanges_impl this = do
        pure ((jget (this).changes))


getLicenseFile :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseFile object_ = jmethod object_ "getLicenseFile" (\() -> (getLicenseFile_impl (javaCast object_ :: DownloadableItem))) ()

getLicenseFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseFile_super object_ = (getLicenseFile_impl (javaCast object_ :: DownloadableItem))

getLicenseFile_impl :: DownloadableItem -> IO (String)
getLicenseFile_impl this = do
        pure ((jget (this).licenseFile))


getFile :: (JavaObjectClass this_) => this_ -> IO (String)
getFile object_ = jmethod object_ "getFile" (\() -> (getFile_impl (javaCast object_ :: DownloadableItem))) ()

getFile_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFile_super object_ = (getFile_impl (javaCast object_ :: DownloadableItem))

getFile_impl :: DownloadableItem -> IO (String)
getFile_impl this = do
        pure ((jget (this).file))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: DownloadableItem))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSize_super object_ = (getSize_impl (javaCast object_ :: DownloadableItem))

getSize_impl :: DownloadableItem -> IO (Int64)
getSize_impl this = do
        pure ((jget (this).size))


getValidTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getValidTime object_ = jmethod object_ "getValidTime" (\() -> (getValidTime_impl (javaCast object_ :: DownloadableItem))) ()

getValidTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getValidTime_super object_ = (getValidTime_impl (javaCast object_ :: DownloadableItem))

getValidTime_impl :: DownloadableItem -> IO (Int64)
getValidTime_impl this = do
        pure ((jget (this).validTime))


getRetries :: (JavaObjectClass this_) => this_ -> IO (String)
getRetries object_ = jmethod object_ "getRetries" (\() -> (getRetries_impl (javaCast object_ :: DownloadableItem))) ()

getRetries_super :: (JavaObjectClass this_) => this_ -> IO (String)
getRetries_super object_ = (getRetries_impl (javaCast object_ :: DownloadableItem))

getRetries_impl :: DownloadableItem -> IO (String)
getRetries_impl this = do
        pure ((jget (this).retries))


