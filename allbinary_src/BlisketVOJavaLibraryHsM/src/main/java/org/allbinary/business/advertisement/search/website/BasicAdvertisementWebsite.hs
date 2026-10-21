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
-- package org.allbinary.business.advertisement.search.website
module BasicAdvertisementWebsite where

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
import qualified AdvertisementWebsiteInterface

-- implements AdvertisementWebsiteInterface
data BasicAdvertisementWebsite = BasicAdvertisementWebsite
    { header_ :: JavaHeader
    , websiteId :: IORef (String)
    }

instance JavaNull BasicAdvertisementWebsite where
    javaNull = javaNullRecord "BasicAdvertisementWebsite"

instance JavaEquals BasicAdvertisementWebsite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicAdvertisementWebsite where
    (==) = jrecordEquals

instance JavaObjectClass BasicAdvertisementWebsite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicAdvertisementWebsite
newRecord_ = do
    header_ <- newJavaHeader
    websiteId <- newIORef ""
    let this = BasicAdvertisementWebsite header_ websiteId
    jregisterLevel header_ this
    AdvertisementWebsiteInterface.registerInterface_ header_
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicAdvertisementWebsite -> IO ()
initFields_ this = do
    jset this.websiteId (javaNull)
    pure ()

new_1 :: String -> IO BasicAdvertisementWebsite
new_1 websiteId = do
    this <- newRecord_
    init_1 this websiteId
    pure this

init_1 :: BasicAdvertisementWebsite -> String -> IO ()
init_1 this websiteId = do
        initFields_ this
        jset (this).websiteId (websiteId)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicAdvertisementWebsite))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicAdvertisementWebsite))

toString_impl :: BasicAdvertisementWebsite -> IO (String)
toString_impl this = do
        pure ((jget (this).websiteId))


