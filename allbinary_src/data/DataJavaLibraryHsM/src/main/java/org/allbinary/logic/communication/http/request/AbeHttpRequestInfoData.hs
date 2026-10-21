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
-- package org.allbinary.logic.communication.http.request
module AbeHttpRequestInfoData where

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

data AbeHttpRequestInfoData = AbeHttpRequestInfoData
    { header_ :: JavaHeader
    , hTTP_USER_AGENT :: IORef (String)
    , rEMOTE_ADDRESS :: IORef (String)
    , rEMOTE_HOST :: IORef (String)
    , rEMOTE_HOST_BY_ADDRESS :: IORef (String)
    , rEMOTE_PORT :: IORef (String)
    , rEQUEST_FILE_PATH :: IORef (String)
    }

instance JavaNull AbeHttpRequestInfoData where
    javaNull = javaNullRecord "AbeHttpRequestInfoData"

instance JavaEquals AbeHttpRequestInfoData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeHttpRequestInfoData where
    (==) = jrecordEquals

instance JavaObjectClass AbeHttpRequestInfoData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbeHttpRequestInfoData
newRecord_ = do
    header_ <- newJavaHeader
    hTTP_USER_AGENT <- newIORef ""
    rEMOTE_ADDRESS <- newIORef ""
    rEMOTE_HOST <- newIORef ""
    rEMOTE_HOST_BY_ADDRESS <- newIORef ""
    rEMOTE_PORT <- newIORef ""
    rEQUEST_FILE_PATH <- newIORef ""
    let this = AbeHttpRequestInfoData header_ hTTP_USER_AGENT rEMOTE_ADDRESS rEMOTE_HOST rEMOTE_HOST_BY_ADDRESS rEMOTE_PORT rEQUEST_FILE_PATH
    jregisterLevel header_ this
    pure this

initFields_ :: AbeHttpRequestInfoData -> IO ()
initFields_ this = do
    jset this.hTTP_USER_AGENT ("HTTP_USER_AGENT")
    jset this.rEMOTE_ADDRESS ("REMOTE_ADDRESS")
    jset this.rEMOTE_HOST ("REMOTE_HOST")
    jset this.rEMOTE_HOST_BY_ADDRESS ("REMOTE_HOST_BY_ADDRESS")
    jset this.rEMOTE_PORT ("REMOTE_PORT")
    jset this.rEQUEST_FILE_PATH ("REQUEST_FILE_PATH")
    pure ()


getInstance :: IO (AbeHttpRequestInfoData)
getInstance = do
        pure (AbeHttpRequestInfoData.instance_)

new_ :: IO AbeHttpRequestInfoData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbeHttpRequestInfoData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


