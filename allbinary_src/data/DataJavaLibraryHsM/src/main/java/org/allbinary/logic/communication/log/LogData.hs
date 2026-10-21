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
-- package org.allbinary.logic.communication.log
module LogData where

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
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData

data LogData = LogData
    { header_ :: JavaHeader
    , mAX :: IORef (Int64)
    , extension :: IORef (String)
    , backupFileExt :: IORef (String)
    , aLLBINARY :: IORef (String)
    , nAME :: IORef (String)
    , dESCRIPTION :: IORef (String)
    }

instance JavaNull LogData where
    javaNull = javaNullRecord "LogData"

instance JavaEquals LogData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogData where
    (==) = jrecordEquals

instance JavaObjectClass LogData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogData
newRecord_ = do
    header_ <- newJavaHeader
    mAX <- newIORef 0
    extension <- newIORef ""
    backupFileExt <- newIORef ""
    aLLBINARY <- newIORef ""
    nAME <- newIORef ""
    dESCRIPTION <- newIORef ""
    let this = LogData header_ mAX extension backupFileExt aLLBINARY nAME dESCRIPTION
    jregisterLevel header_ this
    pure this

initFields_ :: LogData -> IO ()
initFields_ this = do
    jset this.mAX (5000000)
    jset this.extension ("log")
    jset this.backupFileExt ((((javaToString (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP) ++ "bak") ++ javaToString (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP)) ++ "txt"))
    jset this.aLLBINARY ("allbinary")
    jset this.nAME ("LOG_NAME")
    jset this.dESCRIPTION ("LOG_DESCRIPTION")
    pure ()

new_ :: IO LogData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogData -> IO ()
init_ this = do
    initFields_ this


