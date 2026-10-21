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
-- package org.allbinary.emulator
module InitEmulatorFactory where

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

data InitEmulatorFactory = InitEmulatorFactory
    { header_ :: JavaHeader
    , initEmulator :: IORef (Bool)
    }

instance JavaNull InitEmulatorFactory where
    javaNull = javaNullRecord "InitEmulatorFactory"

instance JavaEquals InitEmulatorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitEmulatorFactory where
    (==) = jrecordEquals

instance JavaObjectClass InitEmulatorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitEmulatorFactory
newRecord_ = do
    header_ <- newJavaHeader
    initEmulator <- newIORef False
    let this = InitEmulatorFactory header_ initEmulator
    jregisterLevel header_ this
    jregisterMethod header_ "setInitEmulator" (\() -> setInitEmulator_impl this)
    jregisterMethod header_ "isInitEmulator" (\() -> isInitEmulator_impl this)
    pure this

initFields_ :: InitEmulatorFactory -> IO ()
initFields_ this = do
    jset this.initEmulator (False)
    pure ()

new_ :: IO InitEmulatorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitEmulatorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InitEmulatorFactory)
getInstance = do
        pure (InitEmulatorFactory.instance_)


setInitEmulator :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitEmulator object_ a1 = jmethod object_ "setInitEmulator" (\() -> (setInitEmulator_impl (javaCast object_ :: InitEmulatorFactory))) () a1

setInitEmulator_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitEmulator_super object_ a1 = (setInitEmulator_impl (javaCast object_ :: InitEmulatorFactory)) a1

setInitEmulator_impl :: InitEmulatorFactory -> Bool -> IO (())
setInitEmulator_impl this initEmulator = do
        jset (this).initEmulator (initEmulator)
        pure ()


isInitEmulator :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitEmulator object_ = jmethod object_ "isInitEmulator" (\() -> (isInitEmulator_impl (javaCast object_ :: InitEmulatorFactory))) ()

isInitEmulator_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitEmulator_super object_ = (isInitEmulator_impl (javaCast object_ :: InitEmulatorFactory))

isInitEmulator_impl :: InitEmulatorFactory -> IO (Bool)
isInitEmulator_impl this = do
        pure ((jget (this).initEmulator))


