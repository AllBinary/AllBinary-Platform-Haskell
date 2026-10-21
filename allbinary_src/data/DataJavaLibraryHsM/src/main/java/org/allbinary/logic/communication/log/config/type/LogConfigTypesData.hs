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
-- package org.allbinary.logic.communication.log.config.type
module LogConfigTypesData where

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

data LogConfigTypesData = LogConfigTypesData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , dESCRIPTION :: IORef (String)
    }

instance JavaNull LogConfigTypesData where
    javaNull = javaNullRecord "LogConfigTypesData"

instance JavaEquals LogConfigTypesData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogConfigTypesData where
    (==) = jrecordEquals

instance JavaObjectClass LogConfigTypesData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogConfigTypesData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    dESCRIPTION <- newIORef ""
    let this = LogConfigTypesData header_ nAME dESCRIPTION
    jregisterLevel header_ this
    pure this

initFields_ :: LogConfigTypesData -> IO ()
initFields_ this = do
    jset this.nAME ("LOG_CONFIG_TYPES_NAME")
    jset this.dESCRIPTION ("LOG_CONFIG_TYPES_DESCRIPTION")
    pure ()

new_ :: IO LogConfigTypesData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogConfigTypesData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LogConfigTypesData)
getInstance = do
        pure (LogConfigTypesData.instance_)


