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
module BasicItem where

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
import qualified BasicItemData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified MoneyException -- org.allbinary.business.user.commerce.money.MoneyException
import qualified ProductIdGenerator -- org.allbinary.data.generator.ProductIdGenerator
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ItemInterface

-- implements ItemInterface
data BasicItem = BasicItem
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , itemId :: IORef (String)
    , number :: IORef (String)
    , inBaskets :: IORef (String)
    , weight :: IORef (String)
    , enabled :: IORef (String)
    , newOrUsed :: IORef (String)
    , summary :: IORef (String)
    , distributor :: IORef (String)
    , idUsedByDistributor :: IORef (String)
    , producedBy :: IORef (String)
    , productionDate :: IORef (String)
    , startProductionDate :: IORef (String)
    , description :: IORef (String)
    , keywords :: IORef (String)
    , category :: IORef (String)
    , type_ :: IORef (String)
    , smallImage :: IORef (String)
    , mediumImage :: IORef (String)
    , largeImage :: IORef (String)
    , price :: IORef (Money.Money)
    , comment :: IORef (String)
    , customs :: IORef (String)
    , downloads :: IORef (String)
    , groups :: IORef (String)
    , options :: IORef (String)
    , permissions :: IORef (String)
    , specials :: IORef (String)
    , downloadable :: IORef (Bool)
    , timeEntered :: IORef (String)
    , lastModified :: IORef (String)
    }

instance JavaNull BasicItem where
    javaNull = javaNullRecord "BasicItem"

instance JavaEquals BasicItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicItem where
    (==) = jrecordEquals

instance JavaObjectClass BasicItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicItem
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    basicItemData <- newIORef javaNull
    itemId <- newIORef ""
    number <- newIORef ""
    inBaskets <- newIORef ""
    weight <- newIORef ""
    enabled <- newIORef ""
    newOrUsed <- newIORef ""
    summary <- newIORef ""
    distributor <- newIORef ""
    idUsedByDistributor <- newIORef ""
    producedBy <- newIORef ""
    productionDate <- newIORef ""
    startProductionDate <- newIORef ""
    description <- newIORef ""
    keywords <- newIORef ""
    category <- newIORef ""
    type_ <- newIORef ""
    smallImage <- newIORef ""
    mediumImage <- newIORef ""
    largeImage <- newIORef ""
    price <- newIORef javaNull
    comment <- newIORef ""
    customs <- newIORef ""
    downloads <- newIORef ""
    groups <- newIORef ""
    options <- newIORef ""
    permissions <- newIORef ""
    specials <- newIORef ""
    downloadable <- newIORef False
    timeEntered <- newIORef ""
    lastModified <- newIORef ""
    let this = BasicItem header_ logUtil commonStrings basicItemData itemId number inBaskets weight enabled newOrUsed summary distributor idUsedByDistributor producedBy productionDate startProductionDate description keywords category type_ smallImage mediumImage largeImage price comment customs downloads groups options permissions specials downloadable timeEntered lastModified
    jregisterLevel header_ this
    ItemInterface.registerInterface_ header_
    jregisterMethod header_ "setId" (\() -> setId_impl this)
    jregisterMethod header_ "setNumber" (\() -> setNumber_impl this)
    jregisterMethod header_ "setInBaskets" (\() -> setInBaskets_impl this)
    jregisterMethod header_ "setWeight" (\() -> setWeight_impl this)
    jregisterMethod header_ "setNewOrUsed" (\() -> setNewOrUsed_impl this)
    jregisterMethod header_ "setSummary" (\() -> setSummary_impl this)
    jregisterMethod header_ "setDistributor" (\() -> setDistributor_impl this)
    jregisterMethod header_ "setIdUsedByDistributor" (\() -> setIdUsedByDistributor_impl this)
    jregisterMethod header_ "setProducedBy" (\() -> setProducedBy_impl this)
    jregisterMethod header_ "setProductionDate" (\() -> setProductionDate_impl this)
    jregisterMethod header_ "setStartProductionDate" (\() -> setStartProductionDate_impl this)
    jregisterMethod header_ "setDescription" (\() -> setDescription_impl this)
    jregisterMethod header_ "setKeywords" (\() -> setKeywords_impl this)
    jregisterMethod header_ "setCategory" (\() -> setCategory_impl this)
    jregisterMethod header_ "setType" (\() -> setType_impl this)
    jregisterMethod header_ "setSmallImage" (\() -> setSmallImage_impl this)
    jregisterMethod header_ "setMediumImage" (\() -> setMediumImage_impl this)
    jregisterMethod header_ "setLargeImage" (\() -> setLargeImage_impl this)
    jregisterMethod header_ "setTimeEntered" (\() -> setTimeEntered_impl this)
    jregisterMethod header_ "setLastModified" (\() -> setLastModified_impl this)
    jregisterMethod header_ "setPrice" (\() -> setPrice_impl this)
    jregisterMethod header_ "setComment" (\() -> setComment_impl this)
    jregisterMethod header_ "setCustoms" (\() -> setCustoms_impl this)
    jregisterMethod header_ "setDownloads" (\() -> setDownloads_impl this)
    jregisterMethod header_ "setGroups" (\() -> setGroups_impl this)
    jregisterMethod header_ "setOptions" (\() -> setOptions_impl this)
    jregisterMethod header_ "setPermissions" (\() -> setPermissions_impl this)
    jregisterMethod header_ "setSpecials" (\() -> setSpecials_impl this)
    jregisterMethod header_ "setEnabled" (\() -> setEnabled_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getNumber" (\() -> getNumber_impl this)
    jregisterMethod header_ "getInBaskets" (\() -> getInBaskets_impl this)
    jregisterMethod header_ "getWeight" (\() -> getWeight_impl this)
    jregisterMethod header_ "getNewOrUsed" (\() -> getNewOrUsed_impl this)
    jregisterMethod header_ "getSummary" (\() -> getSummary_impl this)
    jregisterMethod header_ "getDistributor" (\() -> getDistributor_impl this)
    jregisterMethod header_ "getIdUsedByDistributor" (\() -> getIdUsedByDistributor_impl this)
    jregisterMethod header_ "getProducedBy" (\() -> getProducedBy_impl this)
    jregisterMethod header_ "getProductionDate" (\() -> getProductionDate_impl this)
    jregisterMethod header_ "getStartProductionDate" (\() -> getStartProductionDate_impl this)
    jregisterMethod header_ "getDescription" (\() -> getDescription_impl this)
    jregisterMethod header_ "getKeywords" (\() -> getKeywords_impl this)
    jregisterMethod header_ "getCategory" (\() -> getCategory_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getSmallImage" (\() -> getSmallImage_impl this)
    jregisterMethod header_ "getMediumImage" (\() -> getMediumImage_impl this)
    jregisterMethod header_ "getLargeImage" (\() -> getLargeImage_impl this)
    jregisterMethod header_ "getTimeEntered" (\() -> getTimeEntered_impl this)
    jregisterMethod header_ "getLastModified" (\() -> getLastModified_impl this)
    jregisterMethod header_ "getPrice" (\() -> getPrice_impl this)
    jregisterMethod header_ "getComment" (\() -> getComment_impl this)
    jregisterMethod header_ "getCustoms" (\() -> getCustoms_impl this)
    jregisterMethod header_ "getDownloads" (\() -> getDownloads_impl this)
    jregisterMethod header_ "getGroups" (\() -> getGroups_impl this)
    jregisterMethod header_ "getOptions" (\() -> getOptions_impl this)
    jregisterMethod header_ "getPermissions" (\() -> getPermissions_impl this)
    jregisterMethod header_ "getSpecials" (\() -> getSpecials_impl this)
    jregisterMethod header_ "setDownloadable" (\() -> setDownloadable_impl this)
    jregisterMethod header_ "isDownloadable" (\() -> isDownloadable_impl this)
    jregisterMethod header_ "getEnabled" (\() -> getEnabled_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    pure this

initFields_ :: BasicItem -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.itemId (javaNull)
    jset this.number (javaNull)
    jset this.inBaskets (javaNull)
    jset this.weight (javaNull)
    jset this.enabled (javaNull)
    jset this.newOrUsed (javaNull)
    jset this.summary (javaNull)
    jset this.distributor (javaNull)
    jset this.idUsedByDistributor (javaNull)
    jset this.producedBy (javaNull)
    jset this.productionDate (javaNull)
    jset this.startProductionDate (javaNull)
    jset this.description (javaNull)
    jset this.keywords (javaNull)
    jset this.category (javaNull)
    jset this.type_ (javaNull)
    jset this.smallImage (javaNull)
    jset this.mediumImage (javaNull)
    jset this.largeImage (javaNull)
    jset this.price (javaNull)
    jset this.comment (javaNull)
    jset this.customs (javaNull)
    jset this.downloads ("")
    jset this.groups (javaNull)
    jset this.options (javaNull)
    jset this.permissions (javaNull)
    jset this.specials (javaNull)
    jset this.downloadable (False)
    jset this.timeEntered (javaNull)
    jset this.lastModified (javaNull)
    pure ()

new_1 :: HashMap.HashMap -> IO BasicItem
new_1 itemHashMap = do
    this <- newRecord_
    init_1 this itemHashMap
    pure this

init_1 :: BasicItem -> HashMap.HashMap -> IO ()
init_1 this itemHashMap = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "Constructor(HashMap)")
        jset (this).itemId ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).iD))) :: String))
        jset (this).number ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).nUMBER))) :: String))
        jset (this).inBaskets ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).iNBASKETS))) :: String))
        jset (this).weight ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).wEIGHT))) :: String))
        jset (this).enabled ((javaCast (jio (HashMap.get itemHashMap (jget ((jio (EntryData.getInstance))).eNABLE))) :: String))
        jset (this).newOrUsed ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).nEWORUSED))) :: String))
        jset (this).summary ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).sUMMARY))) :: String))
        jset (this).distributor ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).dISTRIBUTOR))) :: String))
        jset (this).idUsedByDistributor ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).iDUSEDBYDISTRIBUTOR))) :: String))
        jset (this).producedBy ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).pRODUCEDBY))) :: String))
        jset (this).productionDate ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).pRODUCTIONDATE))) :: String))
        jset (this).startProductionDate ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).sTARTPRODUCTIONDATE))) :: String))
        jset (this).description ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).dESCRIPTION))) :: String))
        jset (this).keywords ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).kEYWORDS))) :: String))
        jset (this).category ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).cATEGORY))) :: String))
        jset (this).type_ ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).tYPE))) :: String))
        jset (this).smallImage ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).sMALLIMAGE))) :: String))
        jset (this).mediumImage ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).mEDIUMIMAGE))) :: String))
        jset (this).largeImage ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).lARGEIMAGE))) :: String))
        jset (this).timeEntered ((javaCast (jio (HashMap.get itemHashMap (jget ((jio (EntryData.getInstance))).tIMECREATED))) :: String))
        jset (this).lastModified ((javaCast (jio (HashMap.get itemHashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED))) :: String))
        assignedValue <- (Money.new_1 (javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).pRICE))) :: String))
        jset (this).price (assignedValue)
        jset (this).comment ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).cOMMENT))) :: String))
        jset (this).customs ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).cUSTOMS))) :: String))
        Control.Monad.void (BasicItem.setDownloads this (javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).dOWNLOADS))) :: String))
        jset (this).groups ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).gROUPS))) :: String))
        jset (this).options ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).oPTIONS))) :: String))
        jset (this).permissions ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).pERMISSIONS))) :: String))
        jset (this).specials ((javaCast (jio (HashMap.get itemHashMap (jget ((jget this.basicItemData)).sPECIALS))) :: String))
        pure ()

new_ :: IO BasicItem
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicItem -> IO ()
init_ this = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        let eMPTY = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        assignedValue <- (ProductIdGenerator.getNext ((jio (ProductIdGenerator.new_))))
        jset (this).itemId (assignedValue)
        jset (this).number ((jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        jset (this).inBaskets (eMPTY)
        jset (this).weight (eMPTY)
        jset (this).enabled (eMPTY)
        jset (this).newOrUsed (eMPTY)
        jset (this).summary (eMPTY)
        jset (this).distributor (eMPTY)
        jset (this).idUsedByDistributor (eMPTY)
        jset (this).producedBy (eMPTY)
        jset (this).productionDate (eMPTY)
        jset (this).startProductionDate (eMPTY)
        jset (this).description (eMPTY)
        jset (this).keywords (eMPTY)
        jset (this).category (eMPTY)
        jset (this).type_ (eMPTY)
        jset (this).smallImage (eMPTY)
        jset (this).mediumImage (eMPTY)
        jset (this).largeImage (eMPTY)
        jset (this).timeEntered (eMPTY)
        jset (this).lastModified (eMPTY)
        assignedValue <- (Money.new_)
        jset (this).price (assignedValue)
        jset (this).comment (eMPTY)
        jset (this).customs (eMPTY)
        Control.Monad.void (BasicItem.setDownloads this eMPTY)
        jset (this).groups (eMPTY)
        jset (this).options (eMPTY)
        jset (this).permissions (eMPTY)
        jset (this).specials (eMPTY)
        pure ()


setId :: (JavaObjectClass this_) => this_ -> String -> IO (())
setId object_ a1 = jmethod object_ "setId" (\() -> (setId_impl (javaCast object_ :: BasicItem))) () a1

setId_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setId_super object_ a1 = (setId_impl (javaCast object_ :: BasicItem)) a1

setId_impl :: BasicItem -> String -> IO (())
setId_impl this itemId = do
        jset (this).itemId (itemId)
        pure ()


setNumber :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNumber object_ a1 = jmethod object_ "setNumber" (\() -> (setNumber_impl (javaCast object_ :: BasicItem))) () a1

setNumber_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNumber_super object_ a1 = (setNumber_impl (javaCast object_ :: BasicItem)) a1

setNumber_impl :: BasicItem -> String -> IO (())
setNumber_impl this number = do
        jset (this).number (number)
        pure ()


setInBaskets :: (JavaObjectClass this_) => this_ -> String -> IO (())
setInBaskets object_ a1 = jmethod object_ "setInBaskets" (\() -> (setInBaskets_impl (javaCast object_ :: BasicItem))) () a1

setInBaskets_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setInBaskets_super object_ a1 = (setInBaskets_impl (javaCast object_ :: BasicItem)) a1

setInBaskets_impl :: BasicItem -> String -> IO (())
setInBaskets_impl this value = do
        jset (this).inBaskets (value)
        pure ()


setWeight :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWeight object_ a1 = jmethod object_ "setWeight" (\() -> (setWeight_impl (javaCast object_ :: BasicItem))) () a1

setWeight_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWeight_super object_ a1 = (setWeight_impl (javaCast object_ :: BasicItem)) a1

setWeight_impl :: BasicItem -> String -> IO (())
setWeight_impl this value = do
        jset (this).weight (value)
        pure ()


setNewOrUsed :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNewOrUsed object_ a1 = jmethod object_ "setNewOrUsed" (\() -> (setNewOrUsed_impl (javaCast object_ :: BasicItem))) () a1

setNewOrUsed_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setNewOrUsed_super object_ a1 = (setNewOrUsed_impl (javaCast object_ :: BasicItem)) a1

setNewOrUsed_impl :: BasicItem -> String -> IO (())
setNewOrUsed_impl this value = do
        jset (this).newOrUsed (value)
        pure ()


setSummary :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSummary object_ a1 = jmethod object_ "setSummary" (\() -> (setSummary_impl (javaCast object_ :: BasicItem))) () a1

setSummary_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSummary_super object_ a1 = (setSummary_impl (javaCast object_ :: BasicItem)) a1

setSummary_impl :: BasicItem -> String -> IO (())
setSummary_impl this value = do
        jset (this).summary (value)
        pure ()


setDistributor :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDistributor object_ a1 = jmethod object_ "setDistributor" (\() -> (setDistributor_impl (javaCast object_ :: BasicItem))) () a1

setDistributor_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDistributor_super object_ a1 = (setDistributor_impl (javaCast object_ :: BasicItem)) a1

setDistributor_impl :: BasicItem -> String -> IO (())
setDistributor_impl this value = do
        jset (this).distributor (value)
        pure ()


setIdUsedByDistributor :: (JavaObjectClass this_) => this_ -> String -> IO (())
setIdUsedByDistributor object_ a1 = jmethod object_ "setIdUsedByDistributor" (\() -> (setIdUsedByDistributor_impl (javaCast object_ :: BasicItem))) () a1

setIdUsedByDistributor_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setIdUsedByDistributor_super object_ a1 = (setIdUsedByDistributor_impl (javaCast object_ :: BasicItem)) a1

setIdUsedByDistributor_impl :: BasicItem -> String -> IO (())
setIdUsedByDistributor_impl this value = do
        jset (this).idUsedByDistributor (value)
        pure ()


setProducedBy :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProducedBy object_ a1 = jmethod object_ "setProducedBy" (\() -> (setProducedBy_impl (javaCast object_ :: BasicItem))) () a1

setProducedBy_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProducedBy_super object_ a1 = (setProducedBy_impl (javaCast object_ :: BasicItem)) a1

setProducedBy_impl :: BasicItem -> String -> IO (())
setProducedBy_impl this value = do
        jset (this).producedBy (value)
        pure ()


setProductionDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProductionDate object_ a1 = jmethod object_ "setProductionDate" (\() -> (setProductionDate_impl (javaCast object_ :: BasicItem))) () a1

setProductionDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProductionDate_super object_ a1 = (setProductionDate_impl (javaCast object_ :: BasicItem)) a1

setProductionDate_impl :: BasicItem -> String -> IO (())
setProductionDate_impl this value = do
        jset (this).productionDate (value)
        pure ()


setStartProductionDate :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStartProductionDate object_ a1 = jmethod object_ "setStartProductionDate" (\() -> (setStartProductionDate_impl (javaCast object_ :: BasicItem))) () a1

setStartProductionDate_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStartProductionDate_super object_ a1 = (setStartProductionDate_impl (javaCast object_ :: BasicItem)) a1

setStartProductionDate_impl :: BasicItem -> String -> IO (())
setStartProductionDate_impl this value = do
        jset (this).startProductionDate (value)
        pure ()


setDescription :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription object_ a1 = jmethod object_ "setDescription" (\() -> (setDescription_impl (javaCast object_ :: BasicItem))) () a1

setDescription_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription_super object_ a1 = (setDescription_impl (javaCast object_ :: BasicItem)) a1

setDescription_impl :: BasicItem -> String -> IO (())
setDescription_impl this value = do
        jset (this).description (value)
        pure ()


setKeywords :: (JavaObjectClass this_) => this_ -> String -> IO (())
setKeywords object_ a1 = jmethod object_ "setKeywords" (\() -> (setKeywords_impl (javaCast object_ :: BasicItem))) () a1

setKeywords_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setKeywords_super object_ a1 = (setKeywords_impl (javaCast object_ :: BasicItem)) a1

setKeywords_impl :: BasicItem -> String -> IO (())
setKeywords_impl this value = do
        jset (this).keywords (value)
        pure ()


setCategory :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCategory object_ a1 = jmethod object_ "setCategory" (\() -> (setCategory_impl (javaCast object_ :: BasicItem))) () a1

setCategory_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCategory_super object_ a1 = (setCategory_impl (javaCast object_ :: BasicItem)) a1

setCategory_impl :: BasicItem -> String -> IO (())
setCategory_impl this value = do
        jset (this).category (value)
        pure ()


setType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType object_ a1 = jmethod object_ "setType" (\() -> (setType_impl (javaCast object_ :: BasicItem))) () a1

setType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setType_super object_ a1 = (setType_impl (javaCast object_ :: BasicItem)) a1

setType_impl :: BasicItem -> String -> IO (())
setType_impl this value = do
        jset (this).type_ (value)
        pure ()


setSmallImage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSmallImage object_ a1 = jmethod object_ "setSmallImage" (\() -> (setSmallImage_impl (javaCast object_ :: BasicItem))) () a1

setSmallImage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSmallImage_super object_ a1 = (setSmallImage_impl (javaCast object_ :: BasicItem)) a1

setSmallImage_impl :: BasicItem -> String -> IO (())
setSmallImage_impl this value = do
        jset (this).smallImage (value)
        pure ()


setMediumImage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMediumImage object_ a1 = jmethod object_ "setMediumImage" (\() -> (setMediumImage_impl (javaCast object_ :: BasicItem))) () a1

setMediumImage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMediumImage_super object_ a1 = (setMediumImage_impl (javaCast object_ :: BasicItem)) a1

setMediumImage_impl :: BasicItem -> String -> IO (())
setMediumImage_impl this value = do
        jset (this).mediumImage (value)
        pure ()


setLargeImage :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLargeImage object_ a1 = jmethod object_ "setLargeImage" (\() -> (setLargeImage_impl (javaCast object_ :: BasicItem))) () a1

setLargeImage_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLargeImage_super object_ a1 = (setLargeImage_impl (javaCast object_ :: BasicItem)) a1

setLargeImage_impl :: BasicItem -> String -> IO (())
setLargeImage_impl this value = do
        jset (this).largeImage (value)
        pure ()


setTimeEntered :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeEntered object_ a1 = jmethod object_ "setTimeEntered" (\() -> (setTimeEntered_impl (javaCast object_ :: BasicItem))) () a1

setTimeEntered_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeEntered_super object_ a1 = (setTimeEntered_impl (javaCast object_ :: BasicItem)) a1

setTimeEntered_impl :: BasicItem -> String -> IO (())
setTimeEntered_impl this value = do
        jset (this).timeEntered (value)
        pure ()


setLastModified :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified object_ a1 = jmethod object_ "setLastModified" (\() -> (setLastModified_impl (javaCast object_ :: BasicItem))) () a1

setLastModified_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLastModified_super object_ a1 = (setLastModified_impl (javaCast object_ :: BasicItem)) a1

setLastModified_impl :: BasicItem -> String -> IO (())
setLastModified_impl this value = do
        jset (this).lastModified (value)
        pure ()


setPrice :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setPrice object_ a1 = jmethod object_ "setPrice" (\() -> (setPrice_impl (javaCast object_ :: BasicItem))) () a1

setPrice_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setPrice_super object_ a1 = (setPrice_impl (javaCast object_ :: BasicItem)) a1

setPrice_impl :: BasicItem -> Money.Money -> IO (())
setPrice_impl this value = do
        jset (this).price (value)
        pure ()


setComment :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComment object_ a1 = jmethod object_ "setComment" (\() -> (setComment_impl (javaCast object_ :: BasicItem))) () a1

setComment_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComment_super object_ a1 = (setComment_impl (javaCast object_ :: BasicItem)) a1

setComment_impl :: BasicItem -> String -> IO (())
setComment_impl this value = do
        jset (this).comment (value)
        pure ()


setCustoms :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCustoms object_ a1 = jmethod object_ "setCustoms" (\() -> (setCustoms_impl (javaCast object_ :: BasicItem))) () a1

setCustoms_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCustoms_super object_ a1 = (setCustoms_impl (javaCast object_ :: BasicItem)) a1

setCustoms_impl :: BasicItem -> String -> IO (())
setCustoms_impl this value = do
        jset (this).customs (value)
        pure ()


setDownloads :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDownloads object_ a1 = jmethod object_ "setDownloads" (\() -> (setDownloads_impl (javaCast object_ :: BasicItem))) () a1

setDownloads_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDownloads_super object_ a1 = (setDownloads_impl (javaCast object_ :: BasicItem)) a1

setDownloads_impl :: BasicItem -> String -> IO (())
setDownloads_impl this value = do
        jset (this).downloads (value)
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).downloads)))) $ do
            let downloadInteger = (javaToString (jget (this).downloads))
            when (downloadInteger /= 0) $ do
                Control.Monad.void (BasicItem.setDownloadable this True)
        pure ()


setGroups :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGroups object_ a1 = jmethod object_ "setGroups" (\() -> (setGroups_impl (javaCast object_ :: BasicItem))) () a1

setGroups_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGroups_super object_ a1 = (setGroups_impl (javaCast object_ :: BasicItem)) a1

setGroups_impl :: BasicItem -> String -> IO (())
setGroups_impl this value = do
        jset (this).groups (value)
        pure ()


setOptions :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOptions object_ a1 = jmethod object_ "setOptions" (\() -> (setOptions_impl (javaCast object_ :: BasicItem))) () a1

setOptions_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setOptions_super object_ a1 = (setOptions_impl (javaCast object_ :: BasicItem)) a1

setOptions_impl :: BasicItem -> String -> IO (())
setOptions_impl this value = do
        jset (this).options (value)
        pure ()


setPermissions :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPermissions object_ a1 = jmethod object_ "setPermissions" (\() -> (setPermissions_impl (javaCast object_ :: BasicItem))) () a1

setPermissions_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPermissions_super object_ a1 = (setPermissions_impl (javaCast object_ :: BasicItem)) a1

setPermissions_impl :: BasicItem -> String -> IO (())
setPermissions_impl this value = do
        jset (this).permissions (value)
        pure ()


setSpecials :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecials object_ a1 = jmethod object_ "setSpecials" (\() -> (setSpecials_impl (javaCast object_ :: BasicItem))) () a1

setSpecials_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecials_super object_ a1 = (setSpecials_impl (javaCast object_ :: BasicItem)) a1

setSpecials_impl :: BasicItem -> String -> IO (())
setSpecials_impl this value = do
        jset (this).specials (value)
        pure ()


setEnabled :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnabled object_ a1 = jmethod object_ "setEnabled" (\() -> (setEnabled_impl (javaCast object_ :: BasicItem))) () a1

setEnabled_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setEnabled_super object_ a1 = (setEnabled_impl (javaCast object_ :: BasicItem)) a1

setEnabled_impl :: BasicItem -> String -> IO (())
setEnabled_impl this value = do
        jset (this).enabled (value)
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: BasicItem))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: BasicItem))

getId_impl :: BasicItem -> IO (String)
getId_impl this = do
        pure ((jget (this).itemId))


getNumber :: (JavaObjectClass this_) => this_ -> IO (String)
getNumber object_ = jmethod object_ "getNumber" (\() -> (getNumber_impl (javaCast object_ :: BasicItem))) ()

getNumber_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNumber_super object_ = (getNumber_impl (javaCast object_ :: BasicItem))

getNumber_impl :: BasicItem -> IO (String)
getNumber_impl this = do
        pure ((jget (this).number))


getInBaskets :: (JavaObjectClass this_) => this_ -> IO (String)
getInBaskets object_ = jmethod object_ "getInBaskets" (\() -> (getInBaskets_impl (javaCast object_ :: BasicItem))) ()

getInBaskets_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInBaskets_super object_ = (getInBaskets_impl (javaCast object_ :: BasicItem))

getInBaskets_impl :: BasicItem -> IO (String)
getInBaskets_impl this = do
        pure ((jget (this).inBaskets))


getWeight :: (JavaObjectClass this_) => this_ -> IO (String)
getWeight object_ = jmethod object_ "getWeight" (\() -> (getWeight_impl (javaCast object_ :: BasicItem))) ()

getWeight_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWeight_super object_ = (getWeight_impl (javaCast object_ :: BasicItem))

getWeight_impl :: BasicItem -> IO (String)
getWeight_impl this = do
        pure ((jget (this).weight))


getNewOrUsed :: (JavaObjectClass this_) => this_ -> IO (String)
getNewOrUsed object_ = jmethod object_ "getNewOrUsed" (\() -> (getNewOrUsed_impl (javaCast object_ :: BasicItem))) ()

getNewOrUsed_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNewOrUsed_super object_ = (getNewOrUsed_impl (javaCast object_ :: BasicItem))

getNewOrUsed_impl :: BasicItem -> IO (String)
getNewOrUsed_impl this = do
        pure ((jget (this).newOrUsed))


getSummary :: (JavaObjectClass this_) => this_ -> IO (String)
getSummary object_ = jmethod object_ "getSummary" (\() -> (getSummary_impl (javaCast object_ :: BasicItem))) ()

getSummary_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSummary_super object_ = (getSummary_impl (javaCast object_ :: BasicItem))

getSummary_impl :: BasicItem -> IO (String)
getSummary_impl this = do
        pure ((jget (this).summary))


getDistributor :: (JavaObjectClass this_) => this_ -> IO (String)
getDistributor object_ = jmethod object_ "getDistributor" (\() -> (getDistributor_impl (javaCast object_ :: BasicItem))) ()

getDistributor_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDistributor_super object_ = (getDistributor_impl (javaCast object_ :: BasicItem))

getDistributor_impl :: BasicItem -> IO (String)
getDistributor_impl this = do
        pure ((jget (this).distributor))


getIdUsedByDistributor :: (JavaObjectClass this_) => this_ -> IO (String)
getIdUsedByDistributor object_ = jmethod object_ "getIdUsedByDistributor" (\() -> (getIdUsedByDistributor_impl (javaCast object_ :: BasicItem))) ()

getIdUsedByDistributor_super :: (JavaObjectClass this_) => this_ -> IO (String)
getIdUsedByDistributor_super object_ = (getIdUsedByDistributor_impl (javaCast object_ :: BasicItem))

getIdUsedByDistributor_impl :: BasicItem -> IO (String)
getIdUsedByDistributor_impl this = do
        pure ((jget (this).idUsedByDistributor))


getProducedBy :: (JavaObjectClass this_) => this_ -> IO (String)
getProducedBy object_ = jmethod object_ "getProducedBy" (\() -> (getProducedBy_impl (javaCast object_ :: BasicItem))) ()

getProducedBy_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProducedBy_super object_ = (getProducedBy_impl (javaCast object_ :: BasicItem))

getProducedBy_impl :: BasicItem -> IO (String)
getProducedBy_impl this = do
        pure ((jget (this).producedBy))


getProductionDate :: (JavaObjectClass this_) => this_ -> IO (String)
getProductionDate object_ = jmethod object_ "getProductionDate" (\() -> (getProductionDate_impl (javaCast object_ :: BasicItem))) ()

getProductionDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProductionDate_super object_ = (getProductionDate_impl (javaCast object_ :: BasicItem))

getProductionDate_impl :: BasicItem -> IO (String)
getProductionDate_impl this = do
        pure ((jget (this).productionDate))


getStartProductionDate :: (JavaObjectClass this_) => this_ -> IO (String)
getStartProductionDate object_ = jmethod object_ "getStartProductionDate" (\() -> (getStartProductionDate_impl (javaCast object_ :: BasicItem))) ()

getStartProductionDate_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStartProductionDate_super object_ = (getStartProductionDate_impl (javaCast object_ :: BasicItem))

getStartProductionDate_impl :: BasicItem -> IO (String)
getStartProductionDate_impl this = do
        pure ((jget (this).startProductionDate))


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: BasicItem))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: BasicItem))

getDescription_impl :: BasicItem -> IO (String)
getDescription_impl this = do
        pure ((jget (this).description))


getKeywords :: (JavaObjectClass this_) => this_ -> IO (String)
getKeywords object_ = jmethod object_ "getKeywords" (\() -> (getKeywords_impl (javaCast object_ :: BasicItem))) ()

getKeywords_super :: (JavaObjectClass this_) => this_ -> IO (String)
getKeywords_super object_ = (getKeywords_impl (javaCast object_ :: BasicItem))

getKeywords_impl :: BasicItem -> IO (String)
getKeywords_impl this = do
        pure ((jget (this).keywords))


getCategory :: (JavaObjectClass this_) => this_ -> IO (String)
getCategory object_ = jmethod object_ "getCategory" (\() -> (getCategory_impl (javaCast object_ :: BasicItem))) ()

getCategory_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCategory_super object_ = (getCategory_impl (javaCast object_ :: BasicItem))

getCategory_impl :: BasicItem -> IO (String)
getCategory_impl this = do
        pure ((jget (this).category))


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: BasicItem))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: BasicItem))

getType_impl :: BasicItem -> IO (String)
getType_impl this = do
        pure ((jget (this).type_))


getSmallImage :: (JavaObjectClass this_) => this_ -> IO (String)
getSmallImage object_ = jmethod object_ "getSmallImage" (\() -> (getSmallImage_impl (javaCast object_ :: BasicItem))) ()

getSmallImage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSmallImage_super object_ = (getSmallImage_impl (javaCast object_ :: BasicItem))

getSmallImage_impl :: BasicItem -> IO (String)
getSmallImage_impl this = do
        pure ((jget (this).smallImage))


getMediumImage :: (JavaObjectClass this_) => this_ -> IO (String)
getMediumImage object_ = jmethod object_ "getMediumImage" (\() -> (getMediumImage_impl (javaCast object_ :: BasicItem))) ()

getMediumImage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMediumImage_super object_ = (getMediumImage_impl (javaCast object_ :: BasicItem))

getMediumImage_impl :: BasicItem -> IO (String)
getMediumImage_impl this = do
        pure ((jget (this).mediumImage))


getLargeImage :: (JavaObjectClass this_) => this_ -> IO (String)
getLargeImage object_ = jmethod object_ "getLargeImage" (\() -> (getLargeImage_impl (javaCast object_ :: BasicItem))) ()

getLargeImage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLargeImage_super object_ = (getLargeImage_impl (javaCast object_ :: BasicItem))

getLargeImage_impl :: BasicItem -> IO (String)
getLargeImage_impl this = do
        pure ((jget (this).largeImage))


getTimeEntered :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeEntered object_ = jmethod object_ "getTimeEntered" (\() -> (getTimeEntered_impl (javaCast object_ :: BasicItem))) ()

getTimeEntered_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeEntered_super object_ = (getTimeEntered_impl (javaCast object_ :: BasicItem))

getTimeEntered_impl :: BasicItem -> IO (String)
getTimeEntered_impl this = do
        pure ((jget (this).timeEntered))


getLastModified :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified object_ = jmethod object_ "getLastModified" (\() -> (getLastModified_impl (javaCast object_ :: BasicItem))) ()

getLastModified_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified_super object_ = (getLastModified_impl (javaCast object_ :: BasicItem))

getLastModified_impl :: BasicItem -> IO (String)
getLastModified_impl this = do
        pure ((jget (this).lastModified))


getPrice :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getPrice object_ = jmethod object_ "getPrice" (\() -> (getPrice_impl (javaCast object_ :: BasicItem))) ()

getPrice_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getPrice_super object_ = (getPrice_impl (javaCast object_ :: BasicItem))

getPrice_impl :: BasicItem -> IO (Money.Money)
getPrice_impl this = do
        pure ((jget (this).price))


getComment :: (JavaObjectClass this_) => this_ -> IO (String)
getComment object_ = jmethod object_ "getComment" (\() -> (getComment_impl (javaCast object_ :: BasicItem))) ()

getComment_super :: (JavaObjectClass this_) => this_ -> IO (String)
getComment_super object_ = (getComment_impl (javaCast object_ :: BasicItem))

getComment_impl :: BasicItem -> IO (String)
getComment_impl this = do
        pure ((jget (this).comment))


getCustoms :: (JavaObjectClass this_) => this_ -> IO (String)
getCustoms object_ = jmethod object_ "getCustoms" (\() -> (getCustoms_impl (javaCast object_ :: BasicItem))) ()

getCustoms_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCustoms_super object_ = (getCustoms_impl (javaCast object_ :: BasicItem))

getCustoms_impl :: BasicItem -> IO (String)
getCustoms_impl this = do
        pure ((jget (this).customs))


getDownloads :: (JavaObjectClass this_) => this_ -> IO (String)
getDownloads object_ = jmethod object_ "getDownloads" (\() -> (getDownloads_impl (javaCast object_ :: BasicItem))) ()

getDownloads_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDownloads_super object_ = (getDownloads_impl (javaCast object_ :: BasicItem))

getDownloads_impl :: BasicItem -> IO (String)
getDownloads_impl this = do
        pure ((jget (this).downloads))


getGroups :: (JavaObjectClass this_) => this_ -> IO (String)
getGroups object_ = jmethod object_ "getGroups" (\() -> (getGroups_impl (javaCast object_ :: BasicItem))) ()

getGroups_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGroups_super object_ = (getGroups_impl (javaCast object_ :: BasicItem))

getGroups_impl :: BasicItem -> IO (String)
getGroups_impl this = do
        pure ((jget (this).groups))


getOptions :: (JavaObjectClass this_) => this_ -> IO (String)
getOptions object_ = jmethod object_ "getOptions" (\() -> (getOptions_impl (javaCast object_ :: BasicItem))) ()

getOptions_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOptions_super object_ = (getOptions_impl (javaCast object_ :: BasicItem))

getOptions_impl :: BasicItem -> IO (String)
getOptions_impl this = do
        pure ((jget (this).options))


getPermissions :: (JavaObjectClass this_) => this_ -> IO (String)
getPermissions object_ = jmethod object_ "getPermissions" (\() -> (getPermissions_impl (javaCast object_ :: BasicItem))) ()

getPermissions_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPermissions_super object_ = (getPermissions_impl (javaCast object_ :: BasicItem))

getPermissions_impl :: BasicItem -> IO (String)
getPermissions_impl this = do
        pure ((jget (this).permissions))


getSpecials :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecials object_ = jmethod object_ "getSpecials" (\() -> (getSpecials_impl (javaCast object_ :: BasicItem))) ()

getSpecials_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecials_super object_ = (getSpecials_impl (javaCast object_ :: BasicItem))

getSpecials_impl :: BasicItem -> IO (String)
getSpecials_impl this = do
        pure ((jget (this).specials))


setDownloadable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDownloadable object_ a1 = jmethod object_ "setDownloadable" (\() -> (setDownloadable_impl (javaCast object_ :: BasicItem))) () a1

setDownloadable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDownloadable_super object_ a1 = (setDownloadable_impl (javaCast object_ :: BasicItem)) a1

setDownloadable_impl :: BasicItem -> Bool -> IO (())
setDownloadable_impl this downloadable = do
        jset (this).downloadable (downloadable)
        pure ()


isDownloadable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDownloadable object_ = jmethod object_ "isDownloadable" (\() -> (isDownloadable_impl (javaCast object_ :: BasicItem))) ()

isDownloadable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDownloadable_super object_ = (isDownloadable_impl (javaCast object_ :: BasicItem))

isDownloadable_impl :: BasicItem -> IO (Bool)
isDownloadable_impl this = do
        pure ((jget (this).downloadable))


getEnabled :: (JavaObjectClass this_) => this_ -> IO (String)
getEnabled object_ = jmethod object_ "getEnabled" (\() -> (getEnabled_impl (javaCast object_ :: BasicItem))) ()

getEnabled_super :: (JavaObjectClass this_) => this_ -> IO (String)
getEnabled_super object_ = (getEnabled_impl (javaCast object_ :: BasicItem))

getEnabled_impl :: BasicItem -> IO (String)
getEnabled_impl this = do
        pure ((jget (this).enabled))


getTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: BasicItem))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: BasicItem))

getTotal_impl :: BasicItem -> IO (Money.Money)
getTotal_impl this = do
        itemTotal <- (Money.new_1 (jget (this).price))
        Control.Monad.void (Money.multiply itemTotal (Prelude.fromIntegral ((jget (this).number)) :: Int))
        pure (itemTotal)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: BasicItem))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: BasicItem))

toHashMap_impl :: BasicItem -> IO (HashMap.HashMap)
toHashMap_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "toHashMap")
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).iD) (jget (this).itemId))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).nUMBER) (jget (this).number))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).iNBASKETS) (jget (this).inBaskets))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).wEIGHT) (jget (this).weight))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).eNABLE) (jget (this).enabled))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).nEWORUSED) (jget (this).newOrUsed))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).sUMMARY) (jget (this).summary))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).dISTRIBUTOR) (jget (this).distributor))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).iDUSEDBYDISTRIBUTOR) (jget (this).idUsedByDistributor))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).pRODUCEDBY) (jget (this).producedBy))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).pRODUCTIONDATE) (jget (this).productionDate))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).sTARTPRODUCTIONDATE) (jget (this).startProductionDate))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).dESCRIPTION) (jget (this).description))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).kEYWORDS) (jget (this).keywords))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).cATEGORY) (jget (this).category))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).tYPE) (jget (this).type_))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).sMALLIMAGE) (jget (this).smallImage))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).mEDIUMIMAGE) (jget (this).mediumImage))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).lARGEIMAGE) (jget (this).largeImage))
        calendar <- (Calendar.getInstance)
        let time = (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED) time)
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).pRICE) (jio (Money.toString ((jget (this).price)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).cOMMENT) (jget (this).comment))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).cUSTOMS) (jget (this).customs))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).dOWNLOADS) (jio (BasicItem.getDownloads this)))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).gROUPS) (jget (this).groups))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).oPTIONS) (jget (this).options))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).pERMISSIONS) (jget (this).permissions))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).sPECIALS) (jget (this).specials))
        pure (hashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: BasicItem))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: BasicItem))

toVector_impl :: BasicItem -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "toVector")
        values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add values (jget (this).itemId))
        Control.Monad.void (BasicArrayList.add values (jget (this).number))
        Control.Monad.void (BasicArrayList.add values (jget (this).inBaskets))
        Control.Monad.void (BasicArrayList.add values (jget (this).weight))
        Control.Monad.void (BasicArrayList.add values (jget (this).enabled))
        Control.Monad.void (BasicArrayList.add values (jget (this).newOrUsed))
        Control.Monad.void (BasicArrayList.add values (jget (this).summary))
        Control.Monad.void (BasicArrayList.add values (jget (this).distributor))
        Control.Monad.void (BasicArrayList.add values (jget (this).idUsedByDistributor))
        Control.Monad.void (BasicArrayList.add values (jget (this).producedBy))
        Control.Monad.void (BasicArrayList.add values (jget (this).productionDate))
        Control.Monad.void (BasicArrayList.add values (jget (this).startProductionDate))
        Control.Monad.void (BasicArrayList.add values (jget (this).description))
        Control.Monad.void (BasicArrayList.add values (jget (this).keywords))
        Control.Monad.void (BasicArrayList.add values (jget (this).category))
        Control.Monad.void (BasicArrayList.add values (jget (this).type_))
        Control.Monad.void (BasicArrayList.add values (jio (BasicItem.getSmallImage this)))
        Control.Monad.void (BasicArrayList.add values (jio (BasicItem.getMediumImage this)))
        Control.Monad.void (BasicArrayList.add values (jio (BasicItem.getLargeImage this)))
        calendar <- (Calendar.getInstance)
        let time = (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64))
        Control.Monad.void (BasicArrayList.add values time)
        Control.Monad.void (BasicArrayList.add values time)
        Control.Monad.void (BasicArrayList.add values (jio (Money.toString ((jget (this).price)))))
        Control.Monad.void (BasicArrayList.add values (jget (this).comment))
        Control.Monad.void (BasicArrayList.add values (jget (this).customs))
        Control.Monad.void (BasicArrayList.add values (jio (BasicItem.getDownloads this)))
        Control.Monad.void (BasicArrayList.add values (jget (this).groups))
        Control.Monad.void (BasicArrayList.add values (jget (this).options))
        Control.Monad.void (BasicArrayList.add values (jget (this).permissions))
        Control.Monad.void (BasicArrayList.add values (jget (this).specials))
        pure (values)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: BasicItem))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: BasicItem))

getKey_impl :: BasicItem -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (BasicItem.getId this)) :: Any.Any)))


