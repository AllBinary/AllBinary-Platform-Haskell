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
-- package org.allbinary.logic.system.security.licensing
module LicenseUtil where

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
import qualified CommandListener -- javax.microedition.lcdui.CommandListener

data LicenseUtil = LicenseUtil
    { header_ :: JavaHeader
    }

instance JavaNull LicenseUtil where
    javaNull = javaNullRecord "LicenseUtil"

instance JavaEquals LicenseUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseUtil where
    (==) = jrecordEquals

instance JavaObjectClass LicenseUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LicenseUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "shouldWait" (\() -> shouldWait_impl this)
    pure this

initFields_ :: LicenseUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LicenseUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LicenseUtil)
getInstance = do
        pure (LicenseUtil.instance_)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: LicenseUtil))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: LicenseUtil))

init_impl :: LicenseUtil -> IO (())
init_impl this = do
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: LicenseUtil))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: LicenseUtil))

isRunning_impl :: LicenseUtil -> IO (Bool)
isRunning_impl this = do
        pure (False)


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: LicenseUtil))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: LicenseUtil)) a1

setRunning_impl :: LicenseUtil -> Bool -> IO (())
setRunning_impl this running = do
        pure ()


shouldWait :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (Bool)
shouldWait object_ a1 = jmethod object_ "shouldWait" (\() -> (shouldWait_impl (javaCast object_ :: LicenseUtil))) () a1

shouldWait_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (Bool)
shouldWait_super object_ a1 = (shouldWait_impl (javaCast object_ :: LicenseUtil)) a1

shouldWait_impl :: LicenseUtil -> CommandListener.CommandListener -> IO (Bool)
shouldWait_impl this commandListener = do
        (LicenseUtil.isRunning this)


