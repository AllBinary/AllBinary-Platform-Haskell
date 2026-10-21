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
module AdvertisementAreaInterface where

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

-- Java interface: the classes that implement it have these functions
data AdvertisementAreaInterface = AdvertisementAreaInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementAreaInterface where
    javaNull = javaNullRecord "AdvertisementAreaInterface"

instance JavaEquals AdvertisementAreaInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementAreaInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementAreaInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementAreaInterface
fromHeader_ header = AdvertisementAreaInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementAreaInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: AdvertisementAreaInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: AdvertisementAreaInterface))

getName_impl :: AdvertisementAreaInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: AdvertisementAreaInterface))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: AdvertisementAreaInterface))

getStoreName_impl :: AdvertisementAreaInterface -> IO (String)
getStoreName_impl this = javaAbstractMethod "getStoreName"


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: AdvertisementAreaInterface))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: AdvertisementAreaInterface))

getDescription_impl :: AdvertisementAreaInterface -> IO (String)
getDescription_impl this = javaAbstractMethod "getDescription"


getConstraints :: (JavaObjectClass this_) => this_ -> IO (AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface)
getConstraints object_ = jmethod object_ "getConstraints" (\() -> (getConstraints_impl (javaCast object_ :: AdvertisementAreaInterface))) ()

getConstraints_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface)
getConstraints_super object_ = (getConstraints_impl (javaCast object_ :: AdvertisementAreaInterface))

getConstraints_impl :: AdvertisementAreaInterface -> IO (AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface)
getConstraints_impl this = javaAbstractMethod "getConstraints"


getCampaign :: (JavaObjectClass this_) => this_ -> IO (String)
getCampaign object_ = jmethod object_ "getCampaign" (\() -> (getCampaign_impl (javaCast object_ :: AdvertisementAreaInterface))) ()

getCampaign_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCampaign_super object_ = (getCampaign_impl (javaCast object_ :: AdvertisementAreaInterface))

getCampaign_impl :: AdvertisementAreaInterface -> IO (String)
getCampaign_impl this = javaAbstractMethod "getCampaign"


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: AdvertisementAreaInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: AdvertisementAreaInterface)) a1

setName_impl :: AdvertisementAreaInterface -> String -> IO (())
setName_impl this name = javaAbstractMethod "setName"


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: AdvertisementAreaInterface))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: AdvertisementAreaInterface)) a1

setStoreName_impl :: AdvertisementAreaInterface -> String -> IO (())
setStoreName_impl this storeName = javaAbstractMethod "setStoreName"


setDescription :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription object_ a1 = jmethod object_ "setDescription" (\() -> (setDescription_impl (javaCast object_ :: AdvertisementAreaInterface))) () a1

setDescription_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDescription_super object_ a1 = (setDescription_impl (javaCast object_ :: AdvertisementAreaInterface)) a1

setDescription_impl :: AdvertisementAreaInterface -> String -> IO (())
setDescription_impl this description = javaAbstractMethod "setDescription"


setConstraints :: (JavaObjectClass this_) => this_ -> AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface -> IO (())
setConstraints object_ a1 = jmethod object_ "setConstraints" (\() -> (setConstraints_impl (javaCast object_ :: AdvertisementAreaInterface))) () a1

setConstraints_super :: (JavaObjectClass this_) => this_ -> AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface -> IO (())
setConstraints_super object_ a1 = (setConstraints_impl (javaCast object_ :: AdvertisementAreaInterface)) a1

setConstraints_impl :: AdvertisementAreaInterface -> AdvertisementAreaConstraintsInterface.AdvertisementAreaConstraintsInterface -> IO (())
setConstraints_impl this advertisementConstraintsInterface = javaAbstractMethod "setConstraints"


setCampaign :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCampaign object_ a1 = jmethod object_ "setCampaign" (\() -> (setCampaign_impl (javaCast object_ :: AdvertisementAreaInterface))) () a1

setCampaign_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCampaign_super object_ a1 = (setCampaign_impl (javaCast object_ :: AdvertisementAreaInterface)) a1

setCampaign_impl :: AdvertisementAreaInterface -> String -> IO (())
setCampaign_impl this campaign = javaAbstractMethod "setCampaign"


