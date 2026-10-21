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
import qualified TsUtil -- org.allbinary.TsUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AndroidHardware -- org.allbinary.logic.system.hardware.android.AndroidHardware
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified OperatingSystems -- org.allbinary.logic.system.os.OperatingSystems
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data HardwareFactory = HardwareFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , tsUtil :: IORef (TsUtil.TsUtil)
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
    logUtil <- newIORef javaNull
    tsUtil <- newIORef javaNull
    let this = HardwareFactory header_ logUtil tsUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: HardwareFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
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
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> GenericOperatingSystem.GenericOperatingSystem -> IO (HardwareInterface.HardwareInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: HardwareFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> GenericOperatingSystem.GenericOperatingSystem -> IO (HardwareInterface.HardwareInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: HardwareFactory)) a1

getInstance_impl :: HardwareFactory -> GenericOperatingSystem.GenericOperatingSystem -> IO (HardwareInterface.HardwareInterface)
getInstance_impl this os = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Ignoring Exception Returning NoHardware" this (jget (commonStrings).gET_INSTANCE) e)
            (fmap (\value_ -> javaCast value_ :: HardwareInterface.HardwareInterface) (NoHardware.new_))
            ) $ do
            operatingSystems <- (OperatingSystems.getInstance)
            if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) (jio (GenericOperatingSystem.getName os)) (jget (operatingSystems).aNDROID))) == 0) then do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: HardwareInterface.HardwareInterface) (AndroidHardware.new_))
            else when ((jio (TsUtil.compareTo ((jget (this).tsUtil)) (jio (GenericOperatingSystem.getName os)) (jget (operatingSystems).hARMONY))) == 0) $ do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: HardwareInterface.HardwareInterface) (AndroidHardware.new_))
            javaThrow ((JavaException "Exception" ("No Hardware Imp for: " ++ (jio (GenericOperatingSystem.getName os)))))


