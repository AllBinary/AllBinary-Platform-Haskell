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
module AdvertisementCampaignsInterface where

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
import qualified AdvertisementInterface -- org.allbinary.business.advertisement.AdvertisementInterface

-- Java interface: the classes that implement it have these functions
data AdvertisementCampaignsInterface = AdvertisementCampaignsInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementCampaignsInterface where
    javaNull = javaNullRecord "AdvertisementCampaignsInterface"

instance JavaEquals AdvertisementCampaignsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementCampaignsInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementCampaignsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementCampaignsInterface
fromHeader_ header = AdvertisementCampaignsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementCampaignsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


add :: (JavaObjectClass this_) => this_ -> AdvertisementInterface.AdvertisementInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: AdvertisementCampaignsInterface))) () a1

add_super :: (JavaObjectClass this_) => this_ -> AdvertisementInterface.AdvertisementInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: AdvertisementCampaignsInterface)) a1

add_impl :: AdvertisementCampaignsInterface -> AdvertisementInterface.AdvertisementInterface -> IO (())
add_impl this advertisementInterface = javaAbstractMethod "add"


get :: (JavaObjectClass this_) => this_ -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AdvertisementCampaignsInterface))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get_super object_ a1 = (get_impl (javaCast object_ :: AdvertisementCampaignsInterface)) a1

get_impl :: AdvertisementCampaignsInterface -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get_impl this index = javaAbstractMethod "get"


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: AdvertisementCampaignsInterface))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: AdvertisementCampaignsInterface))

size_impl :: AdvertisementCampaignsInterface -> IO (Int)
size_impl this = javaAbstractMethod "size"


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: AdvertisementCampaignsInterface))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: AdvertisementCampaignsInterface))

isEnabled_impl :: AdvertisementCampaignsInterface -> IO (Bool)
isEnabled_impl this = javaAbstractMethod "isEnabled"


