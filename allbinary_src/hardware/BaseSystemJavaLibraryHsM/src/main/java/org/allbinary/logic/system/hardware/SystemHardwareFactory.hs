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
module SystemHardwareFactory where

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
import qualified HardwareFactory -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data SystemHardwareFactory = SystemHardwareFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , hardwareInterface :: IORef (HardwareInterface.HardwareInterface)
    }

instance JavaNull SystemHardwareFactory where
    javaNull = javaNullRecord "SystemHardwareFactory"

instance JavaEquals SystemHardwareFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SystemHardwareFactory where
    (==) = jrecordEquals

instance JavaObjectClass SystemHardwareFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SystemHardwareFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    hardwareInterface <- newIORef javaNull
    let this = SystemHardwareFactory header_ logUtil commonStrings hardwareInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: SystemHardwareFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.hardwareInterface =<< (NoHardware.getInstance)
    pure ()


getInstance :: IO (SystemHardwareFactory)
getInstance = do
        pure (SystemHardwareFactory.instance_)

new_ :: IO SystemHardwareFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SystemHardwareFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> GenericOperatingSystem.GenericOperatingSystem -> IO (HardwareInterface.HardwareInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: SystemHardwareFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> GenericOperatingSystem.GenericOperatingSystem -> IO (HardwareInterface.HardwareInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: SystemHardwareFactory)) a1

getInstance_impl :: SystemHardwareFactory -> GenericOperatingSystem.GenericOperatingSystem -> IO (HardwareInterface.HardwareInterface)
getInstance_impl this operatingSystemInterface = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            ) $ do
            when ((jget (this).hardwareInterface) == (jio (NoHardware.getInstance))) $ do
                assignedValue <- (HardwareFactory.getInstance ((jio (HardwareFactory.getInstance))) operatingSystemInterface)
                jset (this).hardwareInterface (assignedValue)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Found Hardware" this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ((jget (this).hardwareInterface))


static_toString :: IO (String)
static_toString = do
        systemHardwareFactory <- (SystemHardwareFactory.getInstance)
        osBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append osBuffer "Hardware Info: \n")
        if ((jget (systemHardwareFactory).hardwareInterface) /= javaNull) then do
            Control.Monad.void (StringMaker.append osBuffer (jio (toString ((jget (systemHardwareFactory).hardwareInterface)))))
        else do
            Control.Monad.void (StringMaker.append osBuffer (jget ((jio (StringUtil.getInstance))).nULL_STRING))
        (StringMaker.toString osBuffer)


