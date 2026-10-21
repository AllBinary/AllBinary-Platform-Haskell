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
-- package org.allbinary.business.advertisement
module Advertisements where

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
import qualified AdvertisementProcessorInterface -- same package or java.lang
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified LockedUtil -- org.allbinary.logic.system.security.licensing.LockedUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data Advertisements = Advertisements
    { header_ :: JavaHeader
    , bannerList :: IORef (BasicArrayList.BasicArrayList)
    , pageList :: IORef (BasicArrayList.BasicArrayList)
    , myRandomFactory :: IORef (MyRandomFactory.MyRandomFactory)
    }

instance JavaNull Advertisements where
    javaNull = javaNullRecord "Advertisements"

instance JavaEquals Advertisements where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Advertisements where
    (==) = jrecordEquals

instance JavaObjectClass Advertisements where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Advertisements
newRecord_ = do
    header_ <- newJavaHeader
    bannerList <- newIORef javaNull
    pageList <- newIORef javaNull
    myRandomFactory <- newIORef javaNull
    let this = Advertisements header_ bannerList pageList myRandomFactory
    jregisterLevel header_ this
    jregisterMethod header_ "addPage" (\() -> addPage_impl this)
    jregisterMethod header_ "startRandomPage" (\() -> startRandomPage_impl this)
    jregisterMethod header_ "processRandomPage" (\() -> processRandomPage_impl this)
    jregisterMethod header_ "stopAllPage" (\() -> stopAllPage_impl this)
    jregisterMethod header_ "addBanner" (\() -> addBanner_impl this)
    jregisterMethod header_ "startAll" (\() -> startAll_impl this)
    jregisterMethod header_ "stopAllBanner" (\() -> stopAllBanner_impl this)
    jregisterMethod header_ "getBanner" (\() -> getBanner_impl this)
    jregisterMethod header_ "stopAll" (\() -> stopAll_impl this)
    pure this

initFields_ :: Advertisements -> IO ()
initFields_ this = do
    jset this.bannerList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.pageList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.myRandomFactory =<< (MyRandomFactory.getInstance)
    pure ()

new_ :: IO Advertisements
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Advertisements -> IO ()
init_ this = do
    initFields_ this


addPage :: (JavaObjectClass this_) => this_ -> AdvertisementProcessorInterface.AdvertisementProcessorInterface -> IO (())
addPage object_ a1 = jmethod object_ "addPage" (\() -> (addPage_impl (javaCast object_ :: Advertisements))) () a1

addPage_super :: (JavaObjectClass this_) => this_ -> AdvertisementProcessorInterface.AdvertisementProcessorInterface -> IO (())
addPage_super object_ a1 = (addPage_impl (javaCast object_ :: Advertisements)) a1

addPage_impl :: Advertisements -> AdvertisementProcessorInterface.AdvertisementProcessorInterface -> IO (())
addPage_impl this advertisementProcessorInterface = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).pageList)) advertisementProcessorInterface))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).pageList)) advertisementProcessorInterface)
        pure ()


startRandomPage :: (JavaObjectClass this_) => this_ -> IO (())
startRandomPage object_ = jmethod object_ "startRandomPage" (\() -> (startRandomPage_impl (javaCast object_ :: Advertisements))) ()

startRandomPage_super :: (JavaObjectClass this_) => this_ -> IO (())
startRandomPage_super object_ = (startRandomPage_impl (javaCast object_ :: Advertisements))

startRandomPage_impl :: Advertisements -> IO (())
startRandomPage_impl this = do
        size <- (BasicArrayList.size ((jget (this).pageList)))
        when (size > 0) $ do
            random <- (MyRandomFactory.getAbsoluteNextInt ((jget (this).myRandomFactory)) size)
            let advertisementProcessorInterface = (javaCast (jindex ((jget ((jget (this).pageList)).objectArray)) (random)) :: AdvertisementProcessorInterface.AdvertisementProcessorInterface)
            Control.Monad.void (AdvertisementProcessorInterface.start advertisementProcessorInterface)
        pure ()


processRandomPage :: (JavaObjectClass this_) => this_ -> IO (())
processRandomPage object_ = jmethod object_ "processRandomPage" (\() -> (processRandomPage_impl (javaCast object_ :: Advertisements))) ()

processRandomPage_super :: (JavaObjectClass this_) => this_ -> IO (())
processRandomPage_super object_ = (processRandomPage_impl (javaCast object_ :: Advertisements))

processRandomPage_impl :: Advertisements -> IO (())
processRandomPage_impl this = do
        when (jio (LockedUtil.isLocked ((jio (LockedUtil.getInstance))))) $ do
            size <- (BasicArrayList.size ((jget (this).pageList)))
            when (size > 0) $ do
                random <- (MyRandomFactory.getAbsoluteNextInt ((jget (this).myRandomFactory)) size)
                let advertisementProcessorInterface = (javaCast (jindex ((jget ((jget (this).pageList)).objectArray)) (random)) :: AdvertisementProcessorInterface.AdvertisementProcessorInterface)
                Control.Monad.void (AdvertisementProcessorInterface.process advertisementProcessorInterface)
        pure ()


stopAllPage :: (JavaObjectClass this_) => this_ -> IO (())
stopAllPage object_ = jmethod object_ "stopAllPage" (\() -> (stopAllPage_impl (javaCast object_ :: Advertisements))) ()

stopAllPage_super :: (JavaObjectClass this_) => this_ -> IO (())
stopAllPage_super object_ = (stopAllPage_impl (javaCast object_ :: Advertisements))

stopAllPage_impl :: Advertisements -> IO (())
stopAllPage_impl this = do
        index <- newIORef =<< (BasicArrayList.size ((jget (this).pageList)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let advertisementProcessorInterface = (javaCast (jindex ((jget ((jget (this).pageList)).objectArray)) ((jget index))) :: AdvertisementProcessorInterface.AdvertisementProcessorInterface)
            Control.Monad.void (AdvertisementProcessorInterface.stop advertisementProcessorInterface)
        pure ()


addBanner :: (JavaObjectClass this_) => this_ -> AdvertisementProcessorInterface.AdvertisementProcessorInterface -> IO (())
addBanner object_ a1 = jmethod object_ "addBanner" (\() -> (addBanner_impl (javaCast object_ :: Advertisements))) () a1

addBanner_super :: (JavaObjectClass this_) => this_ -> AdvertisementProcessorInterface.AdvertisementProcessorInterface -> IO (())
addBanner_super object_ a1 = (addBanner_impl (javaCast object_ :: Advertisements)) a1

addBanner_impl :: Advertisements -> AdvertisementProcessorInterface.AdvertisementProcessorInterface -> IO (())
addBanner_impl this advertisementProcessorInterface = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).bannerList)) advertisementProcessorInterface))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).bannerList)) advertisementProcessorInterface)
        pure ()


startAll :: (JavaObjectClass this_) => this_ -> IO (())
startAll object_ = jmethod object_ "startAll" (\() -> (startAll_impl (javaCast object_ :: Advertisements))) ()

startAll_super :: (JavaObjectClass this_) => this_ -> IO (())
startAll_super object_ = (startAll_impl (javaCast object_ :: Advertisements))

startAll_impl :: Advertisements -> IO (())
startAll_impl this = do
        index <- newIORef =<< (BasicArrayList.size ((jget (this).bannerList)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let advertisementProcessorInterface = (javaCast (jindex ((jget ((jget (this).bannerList)).objectArray)) ((jget index))) :: AdvertisementProcessorInterface.AdvertisementProcessorInterface)
            Control.Monad.void (AdvertisementProcessorInterface.start advertisementProcessorInterface)
        pure ()


stopAllBanner :: (JavaObjectClass this_) => this_ -> IO (())
stopAllBanner object_ = jmethod object_ "stopAllBanner" (\() -> (stopAllBanner_impl (javaCast object_ :: Advertisements))) ()

stopAllBanner_super :: (JavaObjectClass this_) => this_ -> IO (())
stopAllBanner_super object_ = (stopAllBanner_impl (javaCast object_ :: Advertisements))

stopAllBanner_impl :: Advertisements -> IO (())
stopAllBanner_impl this = do
        index <- newIORef =<< (BasicArrayList.size ((jget (this).bannerList)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let advertisementProcessorInterface = (javaCast (jindex ((jget ((jget (this).bannerList)).objectArray)) ((jget index))) :: AdvertisementProcessorInterface.AdvertisementProcessorInterface)
            Control.Monad.void (AdvertisementProcessorInterface.stop advertisementProcessorInterface)
        pure ()


getBanner :: (JavaObjectClass this_) => this_ -> Int -> IO (AdvertisementProcessorInterface.AdvertisementProcessorInterface)
getBanner object_ a1 = jmethod object_ "getBanner" (\() -> (getBanner_impl (javaCast object_ :: Advertisements))) () a1

getBanner_super :: (JavaObjectClass this_) => this_ -> Int -> IO (AdvertisementProcessorInterface.AdvertisementProcessorInterface)
getBanner_super object_ a1 = (getBanner_impl (javaCast object_ :: Advertisements)) a1

getBanner_impl :: Advertisements -> Int -> IO (AdvertisementProcessorInterface.AdvertisementProcessorInterface)
getBanner_impl this index = do
        let advertisementProcessorInterface = (javaCast (jindex ((jget ((jget (this).bannerList)).objectArray)) (index)) :: AdvertisementProcessorInterface.AdvertisementProcessorInterface)
        pure (advertisementProcessorInterface)


stopAll :: (JavaObjectClass this_) => this_ -> IO (())
stopAll object_ = jmethod object_ "stopAll" (\() -> (stopAll_impl (javaCast object_ :: Advertisements))) ()

stopAll_super :: (JavaObjectClass this_) => this_ -> IO (())
stopAll_super object_ = (stopAll_impl (javaCast object_ :: Advertisements))

stopAll_impl :: Advertisements -> IO (())
stopAll_impl this = do
        Control.Monad.void (Advertisements.stopAllBanner this)
        Control.Monad.void (Advertisements.stopAllPage this)
        pure ()


