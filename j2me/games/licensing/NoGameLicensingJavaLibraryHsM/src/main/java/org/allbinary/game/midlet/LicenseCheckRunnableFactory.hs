{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.midlet
module LicenseCheckRunnableFactory where

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
import qualified SpecialDemoGameMidlet -- same package or java.lang
import qualified ABRunnable -- org.allbinary.thread.ABRunnable
import qualified NullABRunnable -- org.allbinary.thread.NullABRunnable

data LicenseCheckRunnableFactory = LicenseCheckRunnableFactory
    { header_ :: JavaHeader
    }

instance JavaNull LicenseCheckRunnableFactory where
    javaNull = javaNullRecord "LicenseCheckRunnableFactory"

instance JavaEquals LicenseCheckRunnableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseCheckRunnableFactory where
    (==) = jrecordEquals

instance JavaObjectClass LicenseCheckRunnableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseCheckRunnableFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = LicenseCheckRunnableFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: LicenseCheckRunnableFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LicenseCheckRunnableFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseCheckRunnableFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> SpecialDemoGameMidlet.SpecialDemoGameMidlet -> IO (ABRunnable.ABRunnable)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: LicenseCheckRunnableFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> SpecialDemoGameMidlet.SpecialDemoGameMidlet -> IO (ABRunnable.ABRunnable)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: LicenseCheckRunnableFactory)) a1

getInstance_impl :: LicenseCheckRunnableFactory -> SpecialDemoGameMidlet.SpecialDemoGameMidlet -> IO (ABRunnable.ABRunnable)
getInstance_impl this specialDemoGameMidlet = do
        (fmap (\value_ -> javaCast value_ :: ABRunnable.ABRunnable) (NullABRunnable.getInstance))


