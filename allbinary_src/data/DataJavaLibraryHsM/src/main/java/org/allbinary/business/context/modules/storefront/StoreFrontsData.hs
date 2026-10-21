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
-- package org.allbinary.business.context.modules.storefront
module StoreFrontsData where

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

data StoreFrontsData = StoreFrontsData
    { header_ :: JavaHeader
    , tYPE :: IORef (String)
    , rETAIL :: IORef (String)
    , sUBSCRIPTION :: IORef (String)
    , aUCTION :: IORef (String)
    , nEWS :: IORef (String)
    , bLOG :: IORef (String)
    , fORUM :: IORef (String)
    }

instance JavaNull StoreFrontsData where
    javaNull = javaNullRecord "StoreFrontsData"

instance JavaEquals StoreFrontsData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontsData where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontsData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontsData
newRecord_ = do
    header_ <- newJavaHeader
    tYPE <- newIORef ""
    rETAIL <- newIORef ""
    sUBSCRIPTION <- newIORef ""
    aUCTION <- newIORef ""
    nEWS <- newIORef ""
    bLOG <- newIORef ""
    fORUM <- newIORef ""
    let this = StoreFrontsData header_ tYPE rETAIL sUBSCRIPTION aUCTION nEWS bLOG fORUM
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontsData -> IO ()
initFields_ this = do
    jset this.tYPE ("STOREFRONTS_TYPE")
    jset this.rETAIL ("STOREFRONTS_RETAIL")
    jset this.sUBSCRIPTION ("STOREFRONTS_SUBSCRIPTION")
    jset this.aUCTION ("STOREFRONTS_AUCTION")
    jset this.nEWS ("STOREFRONTS_NEWS")
    jset this.bLOG ("STOREFRONTS_BLOG")
    jset this.fORUM ("STOREFRONTS_FORUM")
    pure ()

new_ :: IO StoreFrontsData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontsData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (StoreFrontsData)
getInstance = do
        pure (StoreFrontsData.instance_)


