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
-- package org.allbinary.business.advertisement.area
module AdvertisementArea where

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
import qualified AdvertisementAreaConstraintsInterface -- same package or java.lang
import qualified AdvertisementAreaData -- same package or java.lang
import qualified AdvertisementAreaConstraints -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified AdvertisementCampaignData -- org.allbinary.business.advertisement.campaign.AdvertisementCampaignData
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified Document -- org.w3c.dom.Document
import qualified AdvertisementAreaInterface

-- implements AdvertisementAreaInterface
data AdvertisementArea = AdvertisementArea
    { header_ :: JavaHeader
    , name :: IORef (String)
    , storeName :: IORef (String)
    , description :: IORef (String)
    , advertisementAreaConstraintsInterface :: IORef (AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface)
    , campaign :: IORef (String)
    }

instance JavaNull AdvertisementArea where
    javaNull = javaNullRecord "AdvertisementArea"

instance JavaEquals AdvertisementArea where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementArea where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementArea where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvertisementArea
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    storeName <- newIORef ""
    description <- newIORef ""
    advertisementAreaConstraintsInterface <- newIORef javaNull
    campaign <- newIORef ""
    let this = AdvertisementArea header_ name storeName description advertisementAreaConstraintsInterface campaign
    jregisterLevel header_ this
    AdvertisementAreaInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "getDescription" (\() -> getDescription_impl this)
    jregisterMethod header_ "getConstraints" (\() -> getConstraints_impl this)
    jregisterMethod header_ "getCampaign" (\() -> getCampaign_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "setDescription" (\() -> setDescription_impl this)
    jregisterMethod header_ "setConstraints" (\() -> setConstraints_impl this)
    jregisterMethod header_ "setCampaign" (\() -> setCampaign_impl this)
    pure this

initFields_ :: AdvertisementArea -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.storeName (javaNull)
    jset this.description (javaNull)
    jset this.advertisementAreaConstraintsInterface (javaNull)
    jset this.campaign (javaNull)
    pure ()

new_1 :: HashMap.HashMap -> IO AdvertisementArea
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: AdvertisementArea -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).name ((javaCast (jio (HashMap.get hashMap (jget ((jio (AdvertisementAreaData.getInstance))).nAME))) :: String))
        jset (this).storeName ((javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))
        jset (this).description ((javaCast (jio (HashMap.get hashMap (jget ((jio (AdvertisementAreaData.getInstance))).dESCRIPTION))) :: String))
        let constraintsDomString = (javaCast (jio (HashMap.get hashMap (jget ((jio (AdvertisementAreaData.getInstance))).cONSTRAINTS))) :: String)
        document <- (DomDocumentHelper.create constraintsDomString)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface) (AdvertisementAreaConstraints.new_1 document))
        jset (this).advertisementAreaConstraintsInterface (assignedValue)
        jset (this).campaign ((javaCast (jio (HashMap.get hashMap (jget ((jio (AdvertisementCampaignData.getInstance))).nAME))) :: String))
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AdvertisementArea))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AdvertisementArea))

getName_impl :: AdvertisementArea -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: AdvertisementArea))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: AdvertisementArea))

getStoreName_impl :: AdvertisementArea -> IO (String)
getStoreName_impl this = do
        pure ((jget (this).storeName))


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: AdvertisementArea))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: AdvertisementArea))

getDescription_impl :: AdvertisementArea -> IO (String)
getDescription_impl this = do
        pure ((jget (this).description))


getConstraints :: (JavaObjectClass this_) => this_ -> IO (AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface)
getConstraints object_ = jmethod object_ "getConstraints" (\() -> (getConstraints_impl (javaCast object_ :: AdvertisementArea))) ()

getConstraints_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface)
getConstraints_super object_ = (getConstraints_impl (javaCast object_ :: AdvertisementArea))

getConstraints_impl :: AdvertisementArea -> IO (AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface)
getConstraints_impl this = do
        pure ((jget (this).advertisementAreaConstraintsInterface))


getCampaign :: (JavaObjectClass this_) => this_ -> IO (String)
getCampaign object_ = jmethod object_ "getCampaign" (\() -> (getCampaign_impl (javaCast object_ :: AdvertisementArea))) ()

getCampaign_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCampaign_super object_ = (getCampaign_impl (javaCast object_ :: AdvertisementArea))

getCampaign_impl :: AdvertisementArea -> IO (String)
getCampaign_impl this = do
        pure ((jget (this).campaign))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: AdvertisementArea))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: AdvertisementArea)) a1

setName_impl :: AdvertisementArea -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: AdvertisementArea))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: AdvertisementArea)) a1

setStoreName_impl :: AdvertisementArea -> String -> IO (())
setStoreName_impl this storeName = do
        jset (this).storeName (storeName)
        pure ()


setDescription :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription object_ a1 = jmethod object_ "setDescription" (\() -> (setDescription_impl (javaCast object_ :: AdvertisementArea))) () a1

setDescription_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription_super object_ a1 = (setDescription_impl (javaCast object_ :: AdvertisementArea)) a1

setDescription_impl :: AdvertisementArea -> String -> IO (())
setDescription_impl this description = do
        jset (this).description (description)
        pure ()


setConstraints :: (JavaObjectClass this_) => this_ -> AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface -> IO (())
setConstraints object_ a1 = jmethod object_ "setConstraints" (\() -> (setConstraints_impl (javaCast object_ :: AdvertisementArea))) () a1

setConstraints_super :: (JavaObjectClass this_) => this_ -> AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface -> IO (())
setConstraints_super object_ a1 = (setConstraints_impl (javaCast object_ :: AdvertisementArea)) a1

setConstraints_impl :: AdvertisementArea -> AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface -> IO (())
setConstraints_impl this advertisementConstraintsInterface = do
        jset (this).advertisementAreaConstraintsInterface ((jget (this).advertisementAreaConstraintsInterface))
        pure ()


setCampaign :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCampaign object_ a1 = jmethod object_ "setCampaign" (\() -> (setCampaign_impl (javaCast object_ :: AdvertisementArea))) () a1

setCampaign_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCampaign_super object_ a1 = (setCampaign_impl (javaCast object_ :: AdvertisementArea)) a1

setCampaign_impl :: AdvertisementArea -> String -> IO (())
setCampaign_impl this campaign = do
        jset (this).campaign (campaign)
        pure ()


