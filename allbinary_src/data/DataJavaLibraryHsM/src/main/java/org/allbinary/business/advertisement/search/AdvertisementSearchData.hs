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
-- package org.allbinary.business.advertisement.search
module AdvertisementSearchData where

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

data AdvertisementSearchData = AdvertisementSearchData
    { header_ :: JavaHeader
    , tITLE :: IORef (String)
    , pRICE :: IORef (String)
    , rELEVANCY :: IORef (String)
    , pOPULARITY :: IORef (String)
    }

instance JavaNull AdvertisementSearchData where
    javaNull = javaNullRecord "AdvertisementSearchData"

instance JavaEquals AdvertisementSearchData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementSearchData where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementSearchData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvertisementSearchData
newRecord_ = do
    header_ <- newJavaHeader
    tITLE <- newIORef ""
    pRICE <- newIORef ""
    rELEVANCY <- newIORef ""
    pOPULARITY <- newIORef ""
    let this = AdvertisementSearchData header_ tITLE pRICE rELEVANCY pOPULARITY
    jregisterLevel header_ this
    pure this

initFields_ :: AdvertisementSearchData -> IO ()
initFields_ this = do
    jset this.tITLE ("AFFILIATE_TITLE")
    jset this.pRICE ("AFFILIATE_PRICE")
    jset this.rELEVANCY ("AFFILIATE_RELEVANCY")
    jset this.pOPULARITY ("AFFILIATE_POPULARITY")
    pure ()


getInstance :: IO (AdvertisementSearchData)
getInstance = do
        pure (AdvertisementSearchData.instance_)

new_ :: IO AdvertisementSearchData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdvertisementSearchData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


