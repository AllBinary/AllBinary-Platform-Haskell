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
module AdvertisementCampaigns where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified AdvertisementInterface -- org.allbinary.business.advertisement.AdvertisementInterface
import qualified AdvertisementsInterface -- org.allbinary.business.advertisement.AdvertisementsInterface
import qualified AdvertisementSearchInterface -- org.allbinary.business.advertisement.search.AdvertisementSearchInterface
import qualified AdvertisementCampaignsInterface

-- implements AdvertisementCampaignsInterface
data AdvertisementCampaigns = AdvertisementCampaigns
    { header_ :: JavaHeader
    , advertisementsVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AdvertisementCampaigns where
    javaNull = javaNullRecord "AdvertisementCampaigns"

instance JavaEquals AdvertisementCampaigns where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementCampaigns where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementCampaigns where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvertisementCampaigns
newRecord_ = do
    header_ <- newJavaHeader
    advertisementsVector <- newIORef javaNull
    let this = AdvertisementCampaigns header_ advertisementsVector
    jregisterLevel header_ this
    AdvertisementCampaignsInterface.registerInterface_ header_
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "isEnabled" (\() -> isEnabled_impl this)
    jregisterMethod header_ "search" (\() -> search_impl this)
    pure this

initFields_ :: AdvertisementCampaigns -> IO ()
initFields_ this = do
    jset this.advertisementsVector (javaNull)
    pure ()

new_1 :: BasicArrayList.BasicArrayList -> IO AdvertisementCampaigns
new_1 vector = do
    this <- newRecord_
    init_1 this vector
    pure this

init_1 :: AdvertisementCampaigns -> BasicArrayList.BasicArrayList -> IO ()
init_1 this vector = do
        initFields_ this
        jset (this).advertisementsVector ((jget (this).advertisementsVector))
        pure ()


add :: (JavaObjectClass this_) => this_ -> AdvertisementInterface.AdvertisementInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: AdvertisementCampaigns))) () a1

add_super :: (JavaObjectClass this_) => this_ -> AdvertisementInterface.AdvertisementInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: AdvertisementCampaigns)) a1

add_impl :: AdvertisementCampaigns -> AdvertisementInterface.AdvertisementInterface -> IO (())
add_impl this advertisementInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).advertisementsVector)) advertisementInterface)
        pure ()


get :: (JavaObjectClass this_) => this_ -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AdvertisementCampaigns))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get_super object_ a1 = (get_impl (javaCast object_ :: AdvertisementCampaigns)) a1

get_impl :: AdvertisementCampaigns -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).advertisementsVector)) index)) :: AdvertisementInterface.AdvertisementInterface))


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: AdvertisementCampaigns))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: AdvertisementCampaigns))

size_impl :: AdvertisementCampaigns -> IO (Int)
size_impl this = do
        (BasicArrayList.size ((jget (this).advertisementsVector)))


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: AdvertisementCampaigns))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: AdvertisementCampaigns))

isEnabled_impl :: AdvertisementCampaigns -> IO (Bool)
isEnabled_impl this = do
        pure (True)


search :: (JavaObjectClass this_) => this_ -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search object_ a1 = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: AdvertisementCampaigns))) () a1

search_super :: (JavaObjectClass this_) => this_ -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search_super object_ a1 = (search_impl (javaCast object_ :: AdvertisementCampaigns)) a1

search_impl :: AdvertisementCampaigns -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search_impl this advertisementSearchInterface = do
        pure (javaNull)


