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
-- package org.allbinary.logic.control.workflow
module WorkFlowData where

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

data WorkFlowData = WorkFlowData
    { header_ :: JavaHeader
    , wORKFLOWS :: IORef (String)
    , wORKFLOW :: IORef (String)
    , nAME :: IORef (String)
    , dATA :: IORef (String)
    }

instance JavaNull WorkFlowData where
    javaNull = javaNullRecord "WorkFlowData"

instance JavaEquals WorkFlowData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkFlowData where
    (==) = jrecordEquals

instance JavaObjectClass WorkFlowData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WorkFlowData
newRecord_ = do
    header_ <- newJavaHeader
    wORKFLOWS <- newIORef ""
    wORKFLOW <- newIORef ""
    nAME <- newIORef ""
    dATA <- newIORef ""
    let this = WorkFlowData header_ wORKFLOWS wORKFLOW nAME dATA
    jregisterLevel header_ this
    pure this

initFields_ :: WorkFlowData -> IO ()
initFields_ this = do
    jset this.wORKFLOWS ("WORKFLOWS")
    jset this.wORKFLOW ("WORKFLOW")
    jset this.nAME ("WORKFLOW_NAME")
    jset this.dATA ("WORKFLOW_DATA")
    pure ()


getInstance :: IO (WorkFlowData)
getInstance = do
        pure (WorkFlowData.instance_)

new_ :: IO WorkFlowData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WorkFlowData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


