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
-- package org.allbinary.logic.system.hardware
module HardwareFactory where

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
import qualified NoHardware -- same package or java.lang
import qualified HardwareInterface -- same package or java.lang
import qualified OperatingSystemInterface -- org.allbinary.logic.system.os.OperatingSystemInterface

data HardwareFactory = HardwareFactory
    { header_ :: JavaHeader
    , sINGLETON :: IORef (HardwareInterface.HardwareInterface)
    }

instance JavaNull HardwareFactory where
    javaNull = javaNullRecord "HardwareFactory"

instance JavaEquals HardwareFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HardwareFactory where
    (==) = jrecordEquals

instance JavaObjectClass HardwareFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HardwareFactory
newRecord_ = do
    header_ <- newJavaHeader
    sINGLETON <- newIORef javaNull
    let this = HardwareFactory header_ sINGLETON
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    pure this

initFields_ :: HardwareFactory -> IO ()
initFields_ this = do
    jset this.sINGLETON =<< (NoHardware.getInstance)
    pure ()


getInstance :: IO (HardwareFactory)
getInstance = do
        pure (HardwareFactory.instance_)

new_ :: IO HardwareFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HardwareFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance_1 :: (JavaObjectClass this_) => this_ -> OperatingSystemInterface.OperatingSystemInterface -> IO (HardwareInterface.HardwareInterface)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: HardwareFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> OperatingSystemInterface.OperatingSystemInterface -> IO (HardwareInterface.HardwareInterface)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: HardwareFactory)) a1

getInstance_1_impl :: HardwareFactory -> OperatingSystemInterface.OperatingSystemInterface -> IO (HardwareInterface.HardwareInterface)
getInstance_1_impl this os = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            pure ((jget (this).sINGLETON))


