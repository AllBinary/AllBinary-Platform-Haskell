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
-- package org.allbinary.business.user.commerce.inventory.item.download
module DownloadItemData where

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

data DownloadItemData = DownloadItemData
    { header_ :: JavaHeader
    }

instance JavaNull DownloadItemData where
    javaNull = javaNullRecord "DownloadItemData"

instance JavaEquals DownloadItemData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownloadItemData where
    (==) = jrecordEquals

instance JavaObjectClass DownloadItemData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "DOWNLOADITEM_NAME"

iD = "DOWNLOADITEM_ID"

sYSTEM = "DOWNLOADITEM_SYSTEM"

pLATFORM = "DOWNLOADITEM_PLATFORM"

sPECIAL_NAME = "DOWNLOADITEM_SPECIAL_NAME"

vERSION = "DOWNLOADITEM_VERSION"

cHANGES = "DOWNLOADITEM_CHANGES"

lICENSE_FILE = "DOWNLOADITEM_LICENSE_FILE"

fILE = "DOWNLOADITEM_FILE"

eXTRA_FILES = "DOWNLOADITEM_EXTRA_FILES"

sIZE = "DOWNLOADITEM_SIZE"

vALID_TIME = "DOWNLOADITEM_VALID_TIME"

vALID_TIME_YEARS = "DOWNLOADITEM_VALID_TIME_YEAR"

vALID_TIME_MONTHS = "DOWNLOADITEM_VALID_TIME_MONTH"

vALID_TIME_DAYS = "DOWNLOADITEM_VALID_TIME_DAY"

vALID_TIME_HOURS = "DOWNLOADITEM_VALID_TIME_HOUR"

vALID_TIME_MINUTES = "DOWNLOADITEM_VALID_TIME_MINUTES"

vALID_TIME_SECONDS = "DOWNLOADITEM_VALID_TIME_SECONDS"

rETRIES = "DOWNLOADITEM_RETRIES"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DownloadItemData
newRecord_ = do
    header_ <- newJavaHeader
    let this = DownloadItemData header_
    jregisterLevel header_ this
    pure this

initFields_ :: DownloadItemData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DownloadItemData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DownloadItemData -> IO ()
init_ this = do
    initFields_ this


