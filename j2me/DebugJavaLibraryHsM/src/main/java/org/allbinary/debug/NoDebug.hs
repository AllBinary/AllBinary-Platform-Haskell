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
-- package org.allbinary.debug
module NoDebug where

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
import qualified DebugInterface

-- implements DebugInterface
data NoDebug = NoDebug
    { header_ :: JavaHeader
    }

instance JavaNull NoDebug where
    javaNull = javaNullRecord "NoDebug"

instance JavaEquals NoDebug where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoDebug where
    (==) = jrecordEquals

instance JavaObjectClass NoDebug where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: DebugInterface.DebugInterface) (new_)) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NoDebug
newRecord_ = do
    header_ <- newJavaHeader
    let this = NoDebug header_
    jregisterLevel header_ this
    DebugInterface.registerInterface_ header_
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "getMaxTime" (\() -> getMaxTime_impl this)
    jregisterMethod header_ "getStartTime" (\() -> getStartTime_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    pure this

initFields_ :: NoDebug -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoDebug
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoDebug -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DebugInterface.DebugInterface)
getInstance = do
        pure ((jget NoDebug.sINGLETON))


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: NoDebug))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: NoDebug))

start_impl :: NoDebug -> IO (())
start_impl this = do
        pure ()


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: NoDebug))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: NoDebug))

stop_impl :: NoDebug -> IO (())
stop_impl this = do
        pure ()


getMaxTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxTime object_ = jmethod object_ "getMaxTime" (\() -> (getMaxTime_impl (javaCast object_ :: NoDebug))) ()

getMaxTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMaxTime_super object_ = (getMaxTime_impl (javaCast object_ :: NoDebug))

getMaxTime_impl :: NoDebug -> IO (Int64)
getMaxTime_impl this = do
        pure (10000)


getStartTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getStartTime object_ = jmethod object_ "getStartTime" (\() -> (getStartTime_impl (javaCast object_ :: NoDebug))) ()

getStartTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getStartTime_super object_ = (getStartTime_impl (javaCast object_ :: NoDebug))

getStartTime_impl :: NoDebug -> IO (Int64)
getStartTime_impl this = do
        pure (0)


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: NoDebug))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: NoDebug))

isRunning_impl :: NoDebug -> IO (Bool)
isRunning_impl this = do
        pure (False)


