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
-- package org.allbinary.business.context.modules.storefront.statistics.advertisements
module StoreFrontAdvertisementsStatisticsData where

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

data StoreFrontAdvertisementsStatisticsData = StoreFrontAdvertisementsStatisticsData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    }

instance JavaNull StoreFrontAdvertisementsStatisticsData where
    javaNull = javaNullRecord "StoreFrontAdvertisementsStatisticsData"

instance JavaEquals StoreFrontAdvertisementsStatisticsData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontAdvertisementsStatisticsData where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontAdvertisementsStatisticsData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontAdvertisementsStatisticsData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    let this = StoreFrontAdvertisementsStatisticsData header_ nAME
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontAdvertisementsStatisticsData -> IO ()
initFields_ this = do
    jset this.nAME ("STOREFRONT_ADVERTISEMENTS_STATISTICS_NAME")
    pure ()


getInstance :: IO (StoreFrontAdvertisementsStatisticsData)
getInstance = do
        pure (StoreFrontAdvertisementsStatisticsData.instance_)

new_ :: IO StoreFrontAdvertisementsStatisticsData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontAdvertisementsStatisticsData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


