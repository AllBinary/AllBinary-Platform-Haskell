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
module AdvertisementCampaignInterface where

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
import qualified AdvertisementsInterface -- org.allbinary.business.advertisement.AdvertisementsInterface
import qualified AdvertisementSearchInterface -- org.allbinary.business.advertisement.search.AdvertisementSearchInterface

-- Java interface: the classes that implement it have these functions
data AdvertisementCampaignInterface = AdvertisementCampaignInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementCampaignInterface where
    javaNull = javaNullRecord "AdvertisementCampaignInterface"

instance JavaEquals AdvertisementCampaignInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementCampaignInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementCampaignInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementCampaignInterface
fromHeader_ header = AdvertisementCampaignInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementCampaignInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AdvertisementCampaignInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AdvertisementCampaignInterface))

getName_impl :: AdvertisementCampaignInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getComponent :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getComponent object_ = jmethod object_ "getComponent" (\() -> (getComponent_impl (javaCast object_ :: AdvertisementCampaignInterface))) ()

getComponent_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getComponent_super object_ = (getComponent_impl (javaCast object_ :: AdvertisementCampaignInterface))

getComponent_impl :: AdvertisementCampaignInterface -> IO (Any.Any)
getComponent_impl this = javaAbstractMethod "getComponent"


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: AdvertisementCampaignInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: AdvertisementCampaignInterface)) a1

setName_impl :: AdvertisementCampaignInterface -> String -> IO (())
setName_impl this name = javaAbstractMethod "setName"


setComponentName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComponentName object_ a1 = jmethod object_ "setComponentName" (\() -> (setComponentName_impl (javaCast object_ :: AdvertisementCampaignInterface))) () a1

setComponentName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComponentName_super object_ a1 = (setComponentName_impl (javaCast object_ :: AdvertisementCampaignInterface)) a1

setComponentName_impl :: AdvertisementCampaignInterface -> String -> IO (())
setComponentName_impl this name = javaAbstractMethod "setComponentName"


search :: (JavaObjectClass this_) => this_ -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search object_ a1 = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: AdvertisementCampaignInterface))) () a1

search_super :: (JavaObjectClass this_) => this_ -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search_super object_ a1 = (search_impl (javaCast object_ :: AdvertisementCampaignInterface)) a1

search_impl :: AdvertisementCampaignInterface -> AdvertisementSearchInterface.AdvertisementSearchInterface -> IO (AdvertisementsInterface.AdvertisementsInterface)
search_impl this advertisementSearchInterface = javaAbstractMethod "search"


