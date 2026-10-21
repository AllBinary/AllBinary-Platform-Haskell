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
module StoreFrontAdvertisementsStatistics where

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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StoreFrontAdvertisementsStatisticsInterface

-- implements StoreFrontAdvertisementsStatisticsInterface
data StoreFrontAdvertisementsStatistics = StoreFrontAdvertisementsStatistics
    { header_ :: JavaHeader
    }

instance JavaNull StoreFrontAdvertisementsStatistics where
    javaNull = javaNullRecord "StoreFrontAdvertisementsStatistics"

instance JavaEquals StoreFrontAdvertisementsStatistics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontAdvertisementsStatistics where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontAdvertisementsStatistics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontAdvertisementsStatistics
newRecord_ = do
    header_ <- newJavaHeader
    let this = StoreFrontAdvertisementsStatistics header_
    jregisterLevel header_ this
    StoreFrontAdvertisementsStatisticsInterface.registerInterface_ header_
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    pure this

initFields_ :: StoreFrontAdvertisementsStatistics -> IO ()
initFields_ this = do
    pure ()

new_1 :: StoreFrontInterface.StoreFrontInterface -> IO StoreFrontAdvertisementsStatistics
new_1 storeFrontInterface = do
    this <- newRecord_
    init_1 this storeFrontInterface
    pure this

init_1 :: StoreFrontAdvertisementsStatistics -> StoreFrontInterface.StoreFrontInterface -> IO ()
init_1 this storeFrontInterface = do
        initFields_ this
        pure ()
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: StoreFrontAdvertisementsStatistics))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: StoreFrontAdvertisementsStatistics))

toHashMap_impl :: StoreFrontAdvertisementsStatistics -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        pure (hashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: StoreFrontAdvertisementsStatistics))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: StoreFrontAdvertisementsStatistics))

toVector_impl :: StoreFrontAdvertisementsStatistics -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        pure (javaNull)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: StoreFrontAdvertisementsStatistics))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: StoreFrontAdvertisementsStatistics))

getKey_impl :: StoreFrontAdvertisementsStatistics -> IO (Any.Any)
getKey_impl this = do
        pure (javaNull)


