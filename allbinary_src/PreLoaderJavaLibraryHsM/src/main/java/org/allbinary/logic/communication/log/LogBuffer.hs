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
module LogBuffer where

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
import qualified LogUtil -- same package or java.lang
import qualified Log -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil

data LogBuffer = LogBuffer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , logEntryVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull LogBuffer where
    javaNull = javaNullRecord "LogBuffer"

instance JavaEquals LogBuffer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogBuffer where
    (==) = jrecordEquals

instance JavaObjectClass LogBuffer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogBuffer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    logEntryVector <- newIORef javaNull
    let this = LogBuffer header_ logUtil logEntryVector
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "logAll" (\() -> logAll_impl this)
    pure this

initFields_ :: LogBuffer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.logEntryVector (javaNull)
    pure ()

new_ :: IO LogBuffer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogBuffer -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).logEntryVector (assignedValue)
        pure ()


add :: (JavaObjectClass this_) => this_ -> Log.Log -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: LogBuffer))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Log.Log -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: LogBuffer)) a1

add_impl :: LogBuffer -> Log.Log -> IO (())
add_impl this log = do
        Control.Monad.void (BasicArrayList.add ((jget (this).logEntryVector)) log)
        pure ()


logAll :: (JavaObjectClass this_) => this_ -> IO (())
logAll object_ = jmethod object_ "logAll" (\() -> (logAll_impl (javaCast object_ :: LogBuffer))) ()

logAll_super :: (JavaObjectClass this_) => this_ -> IO (())
logAll_super object_ = (logAll_impl (javaCast object_ :: LogBuffer))

logAll_impl :: LogBuffer -> IO (())
logAll_impl this = do
        size <- (BasicArrayList.size ((jget (this).logEntryVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let log = (javaCast (jio (BasicArrayList.get ((jget (this).logEntryVector)) index)) :: Log.Log)
            Control.Monad.void (LogUtil.putL ((jget (this).logUtil)) log)
        pure ()


