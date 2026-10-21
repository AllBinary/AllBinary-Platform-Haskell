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
-- package org.allbinary.business.advertisement.campaign
module AdvertisementCampaign where

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
import qualified AdvertisementCampaignData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified AdvertisementsInterface -- org.allbinary.business.advertisement.AdvertisementsInterface
import qualified AdvertisementSearchInterface -- org.allbinary.business.advertisement.search.AdvertisementSearchInterface
import qualified AdvertisementCampaignInterface

-- implements AdvertisementCampaignInterface
data AdvertisementCampaign = AdvertisementCampaign
    { header_ :: JavaHeader
    , hashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull AdvertisementCampaign where
    javaNull = javaNullRecord "AdvertisementCampaign"

instance JavaEquals AdvertisementCampaign where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementCampaign where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementCampaign where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvertisementCampaign
newRecord_ = do
    header_ <- newJavaHeader
    hashMap <- newIORef javaNull
    let this = AdvertisementCampaign header_ hashMap
    jregisterLevel header_ this
    AdvertisementCampaignInterface.registerInterface_ header_
    jregisterMethod header_ "getComponent" (\() -> getComponent_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setComponentName" (\() -> setComponentName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "search" (\() -> search_impl this)
    pure this

initFields_ :: AdvertisementCampaign -> IO ()
initFields_ this = do
    jset this.hashMap (javaNull)
    pure ()

new_1 :: HashMap.HashMap -> IO AdvertisementCampaign
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: AdvertisementCampaign -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).hashMap (hashMap)
        pure ()


getComponent :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getComponent object_ = jmethod object_ "getComponent" (\() -> (getComponent_impl (javaCast object_ :: AdvertisementCampaign))) ()

getComponent_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getComponent_super object_ = (getComponent_impl (javaCast object_ :: AdvertisementCampaign))

getComponent_impl :: AdvertisementCampaign -> IO (Any.Any)
getComponent_impl this = do
        pure (javaNull)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AdvertisementCampaign))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AdvertisementCampaign))

getName_impl :: AdvertisementCampaign -> IO (String)
getName_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).hashMap)) (jget ((jio (AdvertisementCampaignData.getInstance))).nAME))) :: String))


setComponentName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComponentName object_ a1 = jmethod object_ "setComponentName" (\() -> (setComponentName_impl (javaCast object_ :: AdvertisementCampaign))) () a1

setComponentName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComponentName_super object_ a1 = (setComponentName_impl (javaCast object_ :: AdvertisementCampaign)) a1

setComponentName_impl :: AdvertisementCampaign -> String -> IO (())
setComponentName_impl this name = do
        Control.Monad.void (HashMap.put ((jget (this).hashMap)) (DynamicObjectData.nAME) name)
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: AdvertisementCampaign))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: AdvertisementCampaign)) a1

setName_impl :: AdvertisementCampaign -> String -> IO (())
setName_impl this name = do
        Control.Monad.void (HashMap.put ((jget (this).hashMap)) (jget ((jio (AdvertisementCampaignData.getInstance))).nAME) name)
        pure ()


search :: (JavaObjectClass this_) => this_ -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search object_ a1 = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: AdvertisementCampaign))) () a1

search_super :: (JavaObjectClass this_) => this_ -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search_super object_ a1 = (search_impl (javaCast object_ :: AdvertisementCampaign)) a1

search_impl :: AdvertisementCampaign -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search_impl this advertisementSearchInterface = do
        pure (javaNull)


