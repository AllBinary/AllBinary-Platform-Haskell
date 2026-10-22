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
-- package org.allbinary.android.input.motion
module AnalogControllerConfigurationFactory where

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
import qualified AnalogControllerConfigurationEvent -- org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent
import qualified AnalogControllerConfigurationEventHandler -- org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler
import qualified ScaleFactorFactory -- org.allbinary.logic.math.ScaleFactorFactory

data AnalogControllerConfigurationFactory = AnalogControllerConfigurationFactory
    { header_ :: JavaHeader
    , sCALE_FACTOR :: IORef (Int)
    , sCALE_VALUE :: IORef (Int)
    , available :: IORef (Bool)
    , analogControllerConfigurationEvent :: IORef (AnalogControllerConfigurationEvent.AnalogControllerConfigurationEvent)
    }

instance JavaNull AnalogControllerConfigurationFactory where
    javaNull = javaNullRecord "AnalogControllerConfigurationFactory"

instance JavaEquals AnalogControllerConfigurationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnalogControllerConfigurationFactory where
    (==) = jrecordEquals

instance JavaObjectClass AnalogControllerConfigurationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnalogControllerConfigurationFactory
newRecord_ = do
    header_ <- newJavaHeader
    sCALE_FACTOR <- newIORef 0
    sCALE_VALUE <- newIORef 0
    available <- newIORef False
    analogControllerConfigurationEvent <- newIORef javaNull
    let this = AnalogControllerConfigurationFactory header_ sCALE_FACTOR sCALE_VALUE available analogControllerConfigurationEvent
    jregisterLevel header_ this
    jregisterMethod header_ "isAvailable" (\() -> isAvailable_impl this)
    jregisterMethod header_ "setAvailable" (\() -> setAvailable_impl this)
    pure this

initFields_ :: AnalogControllerConfigurationFactory -> IO ()
initFields_ this = do
    jset this.sCALE_FACTOR ((jget ((jio (ScaleFactorFactory.getInstance))).dEFAULT_SCALE_FACTOR))
    jset this.sCALE_VALUE ((jget ((jio (ScaleFactorFactory.getInstance))).dEFAULT_SCALE_VALUE))
    jset this.available (False)
    jset this.analogControllerConfigurationEvent =<< (AnalogControllerConfigurationEvent.new_1 this)
    pure ()


getInstance :: IO (AnalogControllerConfigurationFactory)
getInstance = do
        pure (AnalogControllerConfigurationFactory.instance_)

new_ :: IO AnalogControllerConfigurationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnalogControllerConfigurationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isAvailable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAvailable object_ = jmethod object_ "isAvailable" (\() -> (isAvailable_impl (javaCast object_ :: AnalogControllerConfigurationFactory))) ()

isAvailable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAvailable_super object_ = (isAvailable_impl (javaCast object_ :: AnalogControllerConfigurationFactory))

isAvailable_impl :: AnalogControllerConfigurationFactory -> IO (Bool)
isAvailable_impl this = do
        pure ((jget (this).available))


-- throws Exception
setAvailable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAvailable object_ a1 = jmethod object_ "setAvailable" (\() -> (setAvailable_impl (javaCast object_ :: AnalogControllerConfigurationFactory))) () a1

setAvailable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAvailable_super object_ a1 = (setAvailable_impl (javaCast object_ :: AnalogControllerConfigurationFactory)) a1

setAvailable_impl :: AnalogControllerConfigurationFactory -> Bool -> IO (())
setAvailable_impl this available = do
        jset (this).available (available)
        Control.Monad.void (AnalogControllerConfigurationEventHandler.fireEvent ((jio (AnalogControllerConfigurationEventHandler.getInstance))) (javaCast (jget (this).analogControllerConfigurationEvent)))
        pure ()


