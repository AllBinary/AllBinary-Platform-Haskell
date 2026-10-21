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
-- package org.allbinary.thread
module ThreadUtil where

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
import qualified Thread -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data ThreadUtil = ThreadUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , jOIN :: IORef (String)
    }

instance JavaNull ThreadUtil where
    javaNull = javaNullRecord "ThreadUtil"

instance JavaEquals ThreadUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThreadUtil where
    (==) = jrecordEquals

instance JavaObjectClass ThreadUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThreadUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    jOIN <- newIORef ""
    let this = ThreadUtil header_ logUtil jOIN
    jregisterLevel header_ this
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "join" (\() -> join_impl this)
    pure this

initFields_ :: ThreadUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.jOIN ("join")
    pure ()

new_ :: IO ThreadUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThreadUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ThreadUtil)
getInstance = do
        pure (ThreadUtil.instance_)


isRunning :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (Bool)
isRunning object_ a1 = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: ThreadUtil))) () a1

isRunning_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (Bool)
isRunning_super object_ a1 = (isRunning_impl (javaCast object_ :: ThreadUtil)) a1

isRunning_impl :: ThreadUtil -> Thread.Thread -> IO (Bool)
isRunning_impl this thread = do
    javaCatchReturn $ do
        if ((thread /= javaNull) && (jio (Thread.isAlive thread))) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
join :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
join object_ a1 = jmethod object_ "join" (\() -> (join_impl (javaCast object_ :: ThreadUtil))) () a1

join_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
join_super object_ a1 = (join_impl (javaCast object_ :: ThreadUtil)) a1

join_impl :: ThreadUtil -> Thread.Thread -> IO (())
join_impl this thread = do
        when (jio (ThreadUtil.isRunning ((jio (ThreadUtil.getInstance))) thread)) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Waiting for Thread To Join/End" this (jget (this).jOIN))
            Control.Monad.void (Thread.join thread)
        pure ()


