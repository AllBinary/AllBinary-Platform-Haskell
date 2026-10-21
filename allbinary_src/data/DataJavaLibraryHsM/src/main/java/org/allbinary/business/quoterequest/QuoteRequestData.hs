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
-- package org.allbinary.business.quoterequest
module QuoteRequestData where

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

data QuoteRequestData = QuoteRequestData
    { header_ :: JavaHeader
    , iD :: IORef (String)
    , pROJECT_INFO :: IORef (String)
    , cUSTOMER_COMMENTS :: IORef (String)
    , bUDGET :: IORef (String)
    , tIMEFRAME :: IORef (String)
    , cOMMENTS :: IORef (String)
    }

instance JavaNull QuoteRequestData where
    javaNull = javaNullRecord "QuoteRequestData"

instance JavaEquals QuoteRequestData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq QuoteRequestData where
    (==) = jrecordEquals

instance JavaObjectClass QuoteRequestData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO QuoteRequestData
newRecord_ = do
    header_ <- newJavaHeader
    iD <- newIORef ""
    pROJECT_INFO <- newIORef ""
    cUSTOMER_COMMENTS <- newIORef ""
    bUDGET <- newIORef ""
    tIMEFRAME <- newIORef ""
    cOMMENTS <- newIORef ""
    let this = QuoteRequestData header_ iD pROJECT_INFO cUSTOMER_COMMENTS bUDGET tIMEFRAME cOMMENTS
    jregisterLevel header_ this
    pure this

initFields_ :: QuoteRequestData -> IO ()
initFields_ this = do
    jset this.iD ("QUOTEREQUEST_ID")
    jset this.pROJECT_INFO ("QUOTEREQUEST_PROJECT_INFO")
    jset this.cUSTOMER_COMMENTS ("QUOTEREQUEST_CUSTOMER_COMMENTS")
    jset this.bUDGET ("QUOTEREQUEST_BUDGET")
    jset this.tIMEFRAME ("QUOTEREQUEST_TIMEFRAME")
    jset this.cOMMENTS ("QUOTEREQUEST_COMMENTS")
    pure ()


getInstance :: IO (QuoteRequestData)
getInstance = do
        pure (QuoteRequestData.instance_)

new_ :: IO QuoteRequestData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: QuoteRequestData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


