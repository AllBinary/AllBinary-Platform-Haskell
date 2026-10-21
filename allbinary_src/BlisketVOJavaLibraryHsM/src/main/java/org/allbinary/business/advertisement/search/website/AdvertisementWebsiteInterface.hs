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
module AdvertisementWebsiteInterface where

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

-- Java interface: the classes that implement it have these functions
data AdvertisementWebsiteInterface = AdvertisementWebsiteInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementWebsiteInterface where
    javaNull = javaNullRecord "AdvertisementWebsiteInterface"

instance JavaEquals AdvertisementWebsiteInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementWebsiteInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementWebsiteInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementWebsiteInterface
fromHeader_ header = AdvertisementWebsiteInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementWebsiteInterface header)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AdvertisementWebsiteInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AdvertisementWebsiteInterface))

toString_impl :: AdvertisementWebsiteInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


