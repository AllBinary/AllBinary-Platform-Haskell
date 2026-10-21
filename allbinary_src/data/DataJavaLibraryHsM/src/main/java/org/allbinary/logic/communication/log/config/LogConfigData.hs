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
-- package org.allbinary.logic.communication.log.config
module LogConfigData where

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

data LogConfigData = LogConfigData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , dESCRIPTION :: IORef (String)
    , fILE :: IORef (String)
    }

instance JavaNull LogConfigData where
    javaNull = javaNullRecord "LogConfigData"

instance JavaEquals LogConfigData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogConfigData where
    (==) = jrecordEquals

instance JavaObjectClass LogConfigData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogConfigData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    dESCRIPTION <- newIORef ""
    fILE <- newIORef ""
    let this = LogConfigData header_ nAME dESCRIPTION fILE
    jregisterLevel header_ this
    pure this

initFields_ :: LogConfigData -> IO ()
initFields_ this = do
    jset this.nAME ("LOG_CONFIG_NAME")
    jset this.dESCRIPTION ("LOG_CONFIG_DESCRIPTION")
    jset this.fILE ("LOG_CONFIG_FILE")
    pure ()


getInstance :: IO (LogConfigData)
getInstance = do
        pure (LogConfigData.instance_)

new_ :: IO LogConfigData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogConfigData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


