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
-- package org.allbinary.business.context.modules.storefront.statistics.users
module StoreFrontUsersStatisticsData where

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

data StoreFrontUsersStatisticsData = StoreFrontUsersStatisticsData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , nUMBEROFUSERS :: IORef (String)
    }

instance JavaNull StoreFrontUsersStatisticsData where
    javaNull = javaNullRecord "StoreFrontUsersStatisticsData"

instance JavaEquals StoreFrontUsersStatisticsData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontUsersStatisticsData where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontUsersStatisticsData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontUsersStatisticsData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    nUMBEROFUSERS <- newIORef ""
    let this = StoreFrontUsersStatisticsData header_ nAME nUMBEROFUSERS
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontUsersStatisticsData -> IO ()
initFields_ this = do
    jset this.nAME ("STOREFRONT_USERS_STATISTICS_NAME")
    jset this.nUMBEROFUSERS ("STOREFRONT_USERS_STATISTICS_NUMBER_OF_USERS")
    pure ()

new_ :: IO StoreFrontUsersStatisticsData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontUsersStatisticsData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (StoreFrontUsersStatisticsData)
getInstance = do
        pure (StoreFrontUsersStatisticsData.instance_)


