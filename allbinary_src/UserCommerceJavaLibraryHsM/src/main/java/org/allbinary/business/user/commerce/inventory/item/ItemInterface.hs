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
-- package org.allbinary.business.user.commerce.inventory.item
module ItemInterface (module ItemInterface, module TableMappingInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setId, setId_super, setId_impl, setNumber, setNumber_super, setNumber_impl, setInBaskets, setInBaskets_super, setInBaskets_impl, setWeight, setWeight_super, setWeight_impl, setEnabled, setEnabled_super, setEnabled_impl, setNewOrUsed, setNewOrUsed_super, setNewOrUsed_impl, setSummary, setSummary_super, setSummary_impl, setDistributor, setDistributor_super, setDistributor_impl, setIdUsedByDistributor, setIdUsedByDistributor_super, setIdUsedByDistributor_impl, setProducedBy, setProducedBy_super, setProducedBy_impl, setProductionDate, setProductionDate_super, setProductionDate_impl, setStartProductionDate, setStartProductionDate_super, setStartProductionDate_impl, setDescription, setDescription_super, setDescription_impl, setKeywords, setKeywords_super, setKeywords_impl, setCategory, setCategory_super, setCategory_impl, setType, setType_super, setType_impl, setSmallImage, setSmallImage_super, setSmallImage_impl, setMediumImage, setMediumImage_super, setMediumImage_impl, setLargeImage, setLargeImage_super, setLargeImage_impl, setTimeEntered, setTimeEntered_super, setTimeEntered_impl, setLastModified, setLastModified_super, setLastModified_impl, setPrice, setPrice_super, setPrice_impl, setComment, setComment_super, setComment_impl, setCustoms, setCustoms_super, setCustoms_impl, setDownloads, setDownloads_super, setDownloads_impl, setGroups, setGroups_super, setGroups_impl, setOptions, setOptions_super, setOptions_impl, setPermissions, setPermissions_super, setPermissions_impl, setSpecials, setSpecials_super, setSpecials_impl, getId, getId_super, getId_impl, getNumber, getNumber_super, getNumber_impl, getInBaskets, getInBaskets_super, getInBaskets_impl, getWeight, getWeight_super, getWeight_impl, getEnabled, getEnabled_super, getEnabled_impl, getNewOrUsed, getNewOrUsed_super, getNewOrUsed_impl, getSummary, getSummary_super, getSummary_impl, getDistributor, getDistributor_super, getDistributor_impl, getIdUsedByDistributor, getIdUsedByDistributor_super, getIdUsedByDistributor_impl, getProducedBy, getProducedBy_super, getProducedBy_impl, getProductionDate, getProductionDate_super, getProductionDate_impl, getStartProductionDate, getStartProductionDate_super, getStartProductionDate_impl, getDescription, getDescription_super, getDescription_impl, getKeywords, getKeywords_super, getKeywords_impl, getCategory, getCategory_super, getCategory_impl, getType, getType_super, getType_impl, getSmallImage, getSmallImage_super, getSmallImage_impl, getMediumImage, getMediumImage_super, getMediumImage_impl, getLargeImage, getLargeImage_super, getLargeImage_impl, getTimeEntered, getTimeEntered_super, getTimeEntered_impl, getLastModified, getLastModified_super, getLastModified_impl, getPrice, getPrice_super, getPrice_impl, getComment, getComment_super, getComment_impl, getCustoms, getCustoms_super, getCustoms_impl, getDownloads, getDownloads_super, getDownloads_impl, getGroups, getGroups_super, getGroups_impl, getOptions, getOptions_super, getOptions_impl, getPermissions, getPermissions_super, getPermissions_impl, getSpecials, getSpecials_super, getSpecials_impl, getTotal, getTotal_super, getTotal_impl, toString)
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
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface

-- Java interface: the classes that implement it have these functions
data ItemInterface = ItemInterface
    { header_ :: JavaHeader
    }

instance JavaNull ItemInterface where
    javaNull = javaNullRecord "ItemInterface"

instance JavaEquals ItemInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemInterface where
    (==) = jrecordEquals

instance JavaObjectClass ItemInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ItemInterface
fromHeader_ header = ItemInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ItemInterface header)
    TableMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setId :: (JavaObjectClass this_) => this_ -> String -> IO (())
setId object_ a1 = jmethod object_ "setId" (\() -> (setId_impl (javaCast object_ :: ItemInterface))) () a1

setId_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setId_super object_ a1 = (setId_impl (javaCast object_ :: ItemInterface)) a1

setId_impl :: ItemInterface -> String -> IO (())
setId_impl this itemId = javaAbstractMethod "setId"


setNumber :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNumber object_ a1 = jmethod object_ "setNumber" (\() -> (setNumber_impl (javaCast object_ :: ItemInterface))) () a1

setNumber_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNumber_super object_ a1 = (setNumber_impl (javaCast object_ :: ItemInterface)) a1

setNumber_impl :: ItemInterface -> String -> IO (())
setNumber_impl this number = javaAbstractMethod "setNumber"


setInBaskets :: (JavaObjectClass this_) => this_ -> String -> IO (())
setInBaskets object_ a1 = jmethod object_ "setInBaskets" (\() -> (setInBaskets_impl (javaCast object_ :: ItemInterface))) () a1

setInBaskets_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setInBaskets_super object_ a1 = (setInBaskets_impl (javaCast object_ :: ItemInterface)) a1

setInBaskets_impl :: ItemInterface -> String -> IO (())
setInBaskets_impl this value = javaAbstractMethod "setInBaskets"


setWeight :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWeight object_ a1 = jmethod object_ "setWeight" (\() -> (setWeight_impl (javaCast object_ :: ItemInterface))) () a1

setWeight_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWeight_super object_ a1 = (setWeight_impl (javaCast object_ :: ItemInterface)) a1

setWeight_impl :: ItemInterface -> String -> IO (())
setWeight_impl this value = javaAbstractMethod "setWeight"


setEnabled :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnabled object_ a1 = jmethod object_ "setEnabled" (\() -> (setEnabled_impl (javaCast object_ :: ItemInterface))) () a1

setEnabled_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnabled_super object_ a1 = (setEnabled_impl (javaCast object_ :: ItemInterface)) a1

setEnabled_impl :: ItemInterface -> String -> IO (())
setEnabled_impl this value = javaAbstractMethod "setEnabled"


setNewOrUsed :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNewOrUsed object_ a1 = jmethod object_ "setNewOrUsed" (\() -> (setNewOrUsed_impl (javaCast object_ :: ItemInterface))) () a1

setNewOrUsed_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNewOrUsed_super object_ a1 = (setNewOrUsed_impl (javaCast object_ :: ItemInterface)) a1

setNewOrUsed_impl :: ItemInterface -> String -> IO (())
setNewOrUsed_impl this value = javaAbstractMethod "setNewOrUsed"


setSummary :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSummary object_ a1 = jmethod object_ "setSummary" (\() -> (setSummary_impl (javaCast object_ :: ItemInterface))) () a1

setSummary_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSummary_super object_ a1 = (setSummary_impl (javaCast object_ :: ItemInterface)) a1

setSummary_impl :: ItemInterface -> String -> IO (())
setSummary_impl this value = javaAbstractMethod "setSummary"


setDistributor :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDistributor object_ a1 = jmethod object_ "setDistributor" (\() -> (setDistributor_impl (javaCast object_ :: ItemInterface))) () a1

setDistributor_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDistributor_super object_ a1 = (setDistributor_impl (javaCast object_ :: ItemInterface)) a1

setDistributor_impl :: ItemInterface -> String -> IO (())
setDistributor_impl this value = javaAbstractMethod "setDistributor"


setIdUsedByDistributor :: (JavaObjectClass this_) => this_ -> String -> IO (())
setIdUsedByDistributor object_ a1 = jmethod object_ "setIdUsedByDistributor" (\() -> (setIdUsedByDistributor_impl (javaCast object_ :: ItemInterface))) () a1

setIdUsedByDistributor_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setIdUsedByDistributor_super object_ a1 = (setIdUsedByDistributor_impl (javaCast object_ :: ItemInterface)) a1

setIdUsedByDistributor_impl :: ItemInterface -> String -> IO (())
setIdUsedByDistributor_impl this value = javaAbstractMethod "setIdUsedByDistributor"


setProducedBy :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProducedBy object_ a1 = jmethod object_ "setProducedBy" (\() -> (setProducedBy_impl (javaCast object_ :: ItemInterface))) () a1

setProducedBy_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProducedBy_super object_ a1 = (setProducedBy_impl (javaCast object_ :: ItemInterface)) a1

setProducedBy_impl :: ItemInterface -> String -> IO (())
setProducedBy_impl this value = javaAbstractMethod "setProducedBy"


setProductionDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProductionDate object_ a1 = jmethod object_ "setProductionDate" (\() -> (setProductionDate_impl (javaCast object_ :: ItemInterface))) () a1

setProductionDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProductionDate_super object_ a1 = (setProductionDate_impl (javaCast object_ :: ItemInterface)) a1

setProductionDate_impl :: ItemInterface -> String -> IO (())
setProductionDate_impl this value = javaAbstractMethod "setProductionDate"


setStartProductionDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStartProductionDate object_ a1 = jmethod object_ "setStartProductionDate" (\() -> (setStartProductionDate_impl (javaCast object_ :: ItemInterface))) () a1

setStartProductionDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStartProductionDate_super object_ a1 = (setStartProductionDate_impl (javaCast object_ :: ItemInterface)) a1

setStartProductionDate_impl :: ItemInterface -> String -> IO (())
setStartProductionDate_impl this value = javaAbstractMethod "setStartProductionDate"


setDescription :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription object_ a1 = jmethod object_ "setDescription" (\() -> (setDescription_impl (javaCast object_ :: ItemInterface))) () a1

setDescription_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription_super object_ a1 = (setDescription_impl (javaCast object_ :: ItemInterface)) a1

setDescription_impl :: ItemInterface -> String -> IO (())
setDescription_impl this value = javaAbstractMethod "setDescription"


setKeywords :: (JavaObjectClass this_) => this_ -> String -> IO (())
setKeywords object_ a1 = jmethod object_ "setKeywords" (\() -> (setKeywords_impl (javaCast object_ :: ItemInterface))) () a1

setKeywords_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setKeywords_super object_ a1 = (setKeywords_impl (javaCast object_ :: ItemInterface)) a1

setKeywords_impl :: ItemInterface -> String -> IO (())
setKeywords_impl this value = javaAbstractMethod "setKeywords"


setCategory :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCategory object_ a1 = jmethod object_ "setCategory" (\() -> (setCategory_impl (javaCast object_ :: ItemInterface))) () a1

setCategory_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCategory_super object_ a1 = (setCategory_impl (javaCast object_ :: ItemInterface)) a1

setCategory_impl :: ItemInterface -> String -> IO (())
setCategory_impl this value = javaAbstractMethod "setCategory"


setType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType object_ a1 = jmethod object_ "setType" (\() -> (setType_impl (javaCast object_ :: ItemInterface))) () a1

setType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType_super object_ a1 = (setType_impl (javaCast object_ :: ItemInterface)) a1

setType_impl :: ItemInterface -> String -> IO (())
setType_impl this value = javaAbstractMethod "setType"


setSmallImage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSmallImage object_ a1 = jmethod object_ "setSmallImage" (\() -> (setSmallImage_impl (javaCast object_ :: ItemInterface))) () a1

setSmallImage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSmallImage_super object_ a1 = (setSmallImage_impl (javaCast object_ :: ItemInterface)) a1

setSmallImage_impl :: ItemInterface -> String -> IO (())
setSmallImage_impl this value = javaAbstractMethod "setSmallImage"


setMediumImage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMediumImage object_ a1 = jmethod object_ "setMediumImage" (\() -> (setMediumImage_impl (javaCast object_ :: ItemInterface))) () a1

setMediumImage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMediumImage_super object_ a1 = (setMediumImage_impl (javaCast object_ :: ItemInterface)) a1

setMediumImage_impl :: ItemInterface -> String -> IO (())
setMediumImage_impl this value = javaAbstractMethod "setMediumImage"


setLargeImage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLargeImage object_ a1 = jmethod object_ "setLargeImage" (\() -> (setLargeImage_impl (javaCast object_ :: ItemInterface))) () a1

setLargeImage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLargeImage_super object_ a1 = (setLargeImage_impl (javaCast object_ :: ItemInterface)) a1

setLargeImage_impl :: ItemInterface -> String -> IO (())
setLargeImage_impl this value = javaAbstractMethod "setLargeImage"


setTimeEntered :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeEntered object_ a1 = jmethod object_ "setTimeEntered" (\() -> (setTimeEntered_impl (javaCast object_ :: ItemInterface))) () a1

setTimeEntered_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeEntered_super object_ a1 = (setTimeEntered_impl (javaCast object_ :: ItemInterface)) a1

setTimeEntered_impl :: ItemInterface -> String -> IO (())
setTimeEntered_impl this value = javaAbstractMethod "setTimeEntered"


setLastModified :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified object_ a1 = jmethod object_ "setLastModified" (\() -> (setLastModified_impl (javaCast object_ :: ItemInterface))) () a1

setLastModified_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified_super object_ a1 = (setLastModified_impl (javaCast object_ :: ItemInterface)) a1

setLastModified_impl :: ItemInterface -> String -> IO (())
setLastModified_impl this value = javaAbstractMethod "setLastModified"


setPrice :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setPrice object_ a1 = jmethod object_ "setPrice" (\() -> (setPrice_impl (javaCast object_ :: ItemInterface))) () a1

setPrice_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setPrice_super object_ a1 = (setPrice_impl (javaCast object_ :: ItemInterface)) a1

setPrice_impl :: ItemInterface -> Money.Money -> IO (())
setPrice_impl this value = javaAbstractMethod "setPrice"


setComment :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComment object_ a1 = jmethod object_ "setComment" (\() -> (setComment_impl (javaCast object_ :: ItemInterface))) () a1

setComment_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComment_super object_ a1 = (setComment_impl (javaCast object_ :: ItemInterface)) a1

setComment_impl :: ItemInterface -> String -> IO (())
setComment_impl this value = javaAbstractMethod "setComment"


setCustoms :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCustoms object_ a1 = jmethod object_ "setCustoms" (\() -> (setCustoms_impl (javaCast object_ :: ItemInterface))) () a1

setCustoms_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCustoms_super object_ a1 = (setCustoms_impl (javaCast object_ :: ItemInterface)) a1

setCustoms_impl :: ItemInterface -> String -> IO (())
setCustoms_impl this value = javaAbstractMethod "setCustoms"


setDownloads :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDownloads object_ a1 = jmethod object_ "setDownloads" (\() -> (setDownloads_impl (javaCast object_ :: ItemInterface))) () a1

setDownloads_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDownloads_super object_ a1 = (setDownloads_impl (javaCast object_ :: ItemInterface)) a1

setDownloads_impl :: ItemInterface -> String -> IO (())
setDownloads_impl this value = javaAbstractMethod "setDownloads"


setGroups :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGroups object_ a1 = jmethod object_ "setGroups" (\() -> (setGroups_impl (javaCast object_ :: ItemInterface))) () a1

setGroups_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGroups_super object_ a1 = (setGroups_impl (javaCast object_ :: ItemInterface)) a1

setGroups_impl :: ItemInterface -> String -> IO (())
setGroups_impl this value = javaAbstractMethod "setGroups"


setOptions :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOptions object_ a1 = jmethod object_ "setOptions" (\() -> (setOptions_impl (javaCast object_ :: ItemInterface))) () a1

setOptions_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOptions_super object_ a1 = (setOptions_impl (javaCast object_ :: ItemInterface)) a1

setOptions_impl :: ItemInterface -> String -> IO (())
setOptions_impl this value = javaAbstractMethod "setOptions"


setPermissions :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPermissions object_ a1 = jmethod object_ "setPermissions" (\() -> (setPermissions_impl (javaCast object_ :: ItemInterface))) () a1

setPermissions_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPermissions_super object_ a1 = (setPermissions_impl (javaCast object_ :: ItemInterface)) a1

setPermissions_impl :: ItemInterface -> String -> IO (())
setPermissions_impl this value = javaAbstractMethod "setPermissions"


setSpecials :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecials object_ a1 = jmethod object_ "setSpecials" (\() -> (setSpecials_impl (javaCast object_ :: ItemInterface))) () a1

setSpecials_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecials_super object_ a1 = (setSpecials_impl (javaCast object_ :: ItemInterface)) a1

setSpecials_impl :: ItemInterface -> String -> IO (())
setSpecials_impl this value = javaAbstractMethod "setSpecials"


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: ItemInterface))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: ItemInterface))

getId_impl :: ItemInterface -> IO (String)
getId_impl this = javaAbstractMethod "getId"


getNumber :: (JavaObjectClass this_) => this_ -> IO (String)
getNumber object_ = jmethod object_ "getNumber" (\() -> (getNumber_impl (javaCast object_ :: ItemInterface))) ()

getNumber_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNumber_super object_ = (getNumber_impl (javaCast object_ :: ItemInterface))

getNumber_impl :: ItemInterface -> IO (String)
getNumber_impl this = javaAbstractMethod "getNumber"


getInBaskets :: (JavaObjectClass this_) => this_ -> IO (String)
getInBaskets object_ = jmethod object_ "getInBaskets" (\() -> (getInBaskets_impl (javaCast object_ :: ItemInterface))) ()

getInBaskets_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInBaskets_super object_ = (getInBaskets_impl (javaCast object_ :: ItemInterface))

getInBaskets_impl :: ItemInterface -> IO (String)
getInBaskets_impl this = javaAbstractMethod "getInBaskets"


getWeight :: (JavaObjectClass this_) => this_ -> IO (String)
getWeight object_ = jmethod object_ "getWeight" (\() -> (getWeight_impl (javaCast object_ :: ItemInterface))) ()

getWeight_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWeight_super object_ = (getWeight_impl (javaCast object_ :: ItemInterface))

getWeight_impl :: ItemInterface -> IO (String)
getWeight_impl this = javaAbstractMethod "getWeight"


getEnabled :: (JavaObjectClass this_) => this_ -> IO (String)
getEnabled object_ = jmethod object_ "getEnabled" (\() -> (getEnabled_impl (javaCast object_ :: ItemInterface))) ()

getEnabled_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEnabled_super object_ = (getEnabled_impl (javaCast object_ :: ItemInterface))

getEnabled_impl :: ItemInterface -> IO (String)
getEnabled_impl this = javaAbstractMethod "getEnabled"


getNewOrUsed :: (JavaObjectClass this_) => this_ -> IO (String)
getNewOrUsed object_ = jmethod object_ "getNewOrUsed" (\() -> (getNewOrUsed_impl (javaCast object_ :: ItemInterface))) ()

getNewOrUsed_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNewOrUsed_super object_ = (getNewOrUsed_impl (javaCast object_ :: ItemInterface))

getNewOrUsed_impl :: ItemInterface -> IO (String)
getNewOrUsed_impl this = javaAbstractMethod "getNewOrUsed"


getSummary :: (JavaObjectClass this_) => this_ -> IO (String)
getSummary object_ = jmethod object_ "getSummary" (\() -> (getSummary_impl (javaCast object_ :: ItemInterface))) ()

getSummary_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSummary_super object_ = (getSummary_impl (javaCast object_ :: ItemInterface))

getSummary_impl :: ItemInterface -> IO (String)
getSummary_impl this = javaAbstractMethod "getSummary"


getDistributor :: (JavaObjectClass this_) => this_ -> IO (String)
getDistributor object_ = jmethod object_ "getDistributor" (\() -> (getDistributor_impl (javaCast object_ :: ItemInterface))) ()

getDistributor_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDistributor_super object_ = (getDistributor_impl (javaCast object_ :: ItemInterface))

getDistributor_impl :: ItemInterface -> IO (String)
getDistributor_impl this = javaAbstractMethod "getDistributor"


getIdUsedByDistributor :: (JavaObjectClass this_) => this_ -> IO (String)
getIdUsedByDistributor object_ = jmethod object_ "getIdUsedByDistributor" (\() -> (getIdUsedByDistributor_impl (javaCast object_ :: ItemInterface))) ()

getIdUsedByDistributor_super :: (JavaObjectClass this_) => this_ -> IO (String)
getIdUsedByDistributor_super object_ = (getIdUsedByDistributor_impl (javaCast object_ :: ItemInterface))

getIdUsedByDistributor_impl :: ItemInterface -> IO (String)
getIdUsedByDistributor_impl this = javaAbstractMethod "getIdUsedByDistributor"


getProducedBy :: (JavaObjectClass this_) => this_ -> IO (String)
getProducedBy object_ = jmethod object_ "getProducedBy" (\() -> (getProducedBy_impl (javaCast object_ :: ItemInterface))) ()

getProducedBy_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProducedBy_super object_ = (getProducedBy_impl (javaCast object_ :: ItemInterface))

getProducedBy_impl :: ItemInterface -> IO (String)
getProducedBy_impl this = javaAbstractMethod "getProducedBy"


getProductionDate :: (JavaObjectClass this_) => this_ -> IO (String)
getProductionDate object_ = jmethod object_ "getProductionDate" (\() -> (getProductionDate_impl (javaCast object_ :: ItemInterface))) ()

getProductionDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProductionDate_super object_ = (getProductionDate_impl (javaCast object_ :: ItemInterface))

getProductionDate_impl :: ItemInterface -> IO (String)
getProductionDate_impl this = javaAbstractMethod "getProductionDate"


getStartProductionDate :: (JavaObjectClass this_) => this_ -> IO (String)
getStartProductionDate object_ = jmethod object_ "getStartProductionDate" (\() -> (getStartProductionDate_impl (javaCast object_ :: ItemInterface))) ()

getStartProductionDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStartProductionDate_super object_ = (getStartProductionDate_impl (javaCast object_ :: ItemInterface))

getStartProductionDate_impl :: ItemInterface -> IO (String)
getStartProductionDate_impl this = javaAbstractMethod "getStartProductionDate"


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: ItemInterface))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: ItemInterface))

getDescription_impl :: ItemInterface -> IO (String)
getDescription_impl this = javaAbstractMethod "getDescription"


getKeywords :: (JavaObjectClass this_) => this_ -> IO (String)
getKeywords object_ = jmethod object_ "getKeywords" (\() -> (getKeywords_impl (javaCast object_ :: ItemInterface))) ()

getKeywords_super :: (JavaObjectClass this_) => this_ -> IO (String)
getKeywords_super object_ = (getKeywords_impl (javaCast object_ :: ItemInterface))

getKeywords_impl :: ItemInterface -> IO (String)
getKeywords_impl this = javaAbstractMethod "getKeywords"


getCategory :: (JavaObjectClass this_) => this_ -> IO (String)
getCategory object_ = jmethod object_ "getCategory" (\() -> (getCategory_impl (javaCast object_ :: ItemInterface))) ()

getCategory_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCategory_super object_ = (getCategory_impl (javaCast object_ :: ItemInterface))

getCategory_impl :: ItemInterface -> IO (String)
getCategory_impl this = javaAbstractMethod "getCategory"


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: ItemInterface))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: ItemInterface))

getType_impl :: ItemInterface -> IO (String)
getType_impl this = javaAbstractMethod "getType"


getSmallImage :: (JavaObjectClass this_) => this_ -> IO (String)
getSmallImage object_ = jmethod object_ "getSmallImage" (\() -> (getSmallImage_impl (javaCast object_ :: ItemInterface))) ()

getSmallImage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSmallImage_super object_ = (getSmallImage_impl (javaCast object_ :: ItemInterface))

getSmallImage_impl :: ItemInterface -> IO (String)
getSmallImage_impl this = javaAbstractMethod "getSmallImage"


getMediumImage :: (JavaObjectClass this_) => this_ -> IO (String)
getMediumImage object_ = jmethod object_ "getMediumImage" (\() -> (getMediumImage_impl (javaCast object_ :: ItemInterface))) ()

getMediumImage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMediumImage_super object_ = (getMediumImage_impl (javaCast object_ :: ItemInterface))

getMediumImage_impl :: ItemInterface -> IO (String)
getMediumImage_impl this = javaAbstractMethod "getMediumImage"


getLargeImage :: (JavaObjectClass this_) => this_ -> IO (String)
getLargeImage object_ = jmethod object_ "getLargeImage" (\() -> (getLargeImage_impl (javaCast object_ :: ItemInterface))) ()

getLargeImage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLargeImage_super object_ = (getLargeImage_impl (javaCast object_ :: ItemInterface))

getLargeImage_impl :: ItemInterface -> IO (String)
getLargeImage_impl this = javaAbstractMethod "getLargeImage"


getTimeEntered :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeEntered object_ = jmethod object_ "getTimeEntered" (\() -> (getTimeEntered_impl (javaCast object_ :: ItemInterface))) ()

getTimeEntered_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeEntered_super object_ = (getTimeEntered_impl (javaCast object_ :: ItemInterface))

getTimeEntered_impl :: ItemInterface -> IO (String)
getTimeEntered_impl this = javaAbstractMethod "getTimeEntered"


getLastModified :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified object_ = jmethod object_ "getLastModified" (\() -> (getLastModified_impl (javaCast object_ :: ItemInterface))) ()

getLastModified_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified_super object_ = (getLastModified_impl (javaCast object_ :: ItemInterface))

getLastModified_impl :: ItemInterface -> IO (String)
getLastModified_impl this = javaAbstractMethod "getLastModified"


getPrice :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getPrice object_ = jmethod object_ "getPrice" (\() -> (getPrice_impl (javaCast object_ :: ItemInterface))) ()

getPrice_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getPrice_super object_ = (getPrice_impl (javaCast object_ :: ItemInterface))

getPrice_impl :: ItemInterface -> IO (Money.Money)
getPrice_impl this = javaAbstractMethod "getPrice"


getComment :: (JavaObjectClass this_) => this_ -> IO (String)
getComment object_ = jmethod object_ "getComment" (\() -> (getComment_impl (javaCast object_ :: ItemInterface))) ()

getComment_super :: (JavaObjectClass this_) => this_ -> IO (String)
getComment_super object_ = (getComment_impl (javaCast object_ :: ItemInterface))

getComment_impl :: ItemInterface -> IO (String)
getComment_impl this = javaAbstractMethod "getComment"


getCustoms :: (JavaObjectClass this_) => this_ -> IO (String)
getCustoms object_ = jmethod object_ "getCustoms" (\() -> (getCustoms_impl (javaCast object_ :: ItemInterface))) ()

getCustoms_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCustoms_super object_ = (getCustoms_impl (javaCast object_ :: ItemInterface))

getCustoms_impl :: ItemInterface -> IO (String)
getCustoms_impl this = javaAbstractMethod "getCustoms"


getDownloads :: (JavaObjectClass this_) => this_ -> IO (String)
getDownloads object_ = jmethod object_ "getDownloads" (\() -> (getDownloads_impl (javaCast object_ :: ItemInterface))) ()

getDownloads_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDownloads_super object_ = (getDownloads_impl (javaCast object_ :: ItemInterface))

getDownloads_impl :: ItemInterface -> IO (String)
getDownloads_impl this = javaAbstractMethod "getDownloads"


getGroups :: (JavaObjectClass this_) => this_ -> IO (String)
getGroups object_ = jmethod object_ "getGroups" (\() -> (getGroups_impl (javaCast object_ :: ItemInterface))) ()

getGroups_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGroups_super object_ = (getGroups_impl (javaCast object_ :: ItemInterface))

getGroups_impl :: ItemInterface -> IO (String)
getGroups_impl this = javaAbstractMethod "getGroups"


getOptions :: (JavaObjectClass this_) => this_ -> IO (String)
getOptions object_ = jmethod object_ "getOptions" (\() -> (getOptions_impl (javaCast object_ :: ItemInterface))) ()

getOptions_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOptions_super object_ = (getOptions_impl (javaCast object_ :: ItemInterface))

getOptions_impl :: ItemInterface -> IO (String)
getOptions_impl this = javaAbstractMethod "getOptions"


getPermissions :: (JavaObjectClass this_) => this_ -> IO (String)
getPermissions object_ = jmethod object_ "getPermissions" (\() -> (getPermissions_impl (javaCast object_ :: ItemInterface))) ()

getPermissions_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPermissions_super object_ = (getPermissions_impl (javaCast object_ :: ItemInterface))

getPermissions_impl :: ItemInterface -> IO (String)
getPermissions_impl this = javaAbstractMethod "getPermissions"


getSpecials :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecials object_ = jmethod object_ "getSpecials" (\() -> (getSpecials_impl (javaCast object_ :: ItemInterface))) ()

getSpecials_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecials_super object_ = (getSpecials_impl (javaCast object_ :: ItemInterface))

getSpecials_impl :: ItemInterface -> IO (String)
getSpecials_impl this = javaAbstractMethod "getSpecials"


getTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: ItemInterface))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: ItemInterface))

getTotal_impl :: ItemInterface -> IO (Money.Money)
getTotal_impl this = javaAbstractMethod "getTotal"


