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
-- package org.allbinary.logic.system.os
module OperatingSystemFactory where

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
import qualified NoOperatingSystem -- same package or java.lang
import qualified GenericOperatingSystem -- same package or java.lang
import qualified OperatingSystems -- same package or java.lang
import qualified SystemProperties -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified Log -- org.allbinary.logic.communication.log.Log
import qualified LogFactory -- org.allbinary.logic.communication.log.LogFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified LinuxOperatingSystemFactory -- org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory
import qualified SolarisOperatingSystemFactory -- org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory
import qualified WindowsOperatingSystemFactory -- org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data OperatingSystemFactory = OperatingSystemFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , genericOperatingSystem :: IORef (GenericOperatingSystem.GenericOperatingSystem)
    , hasDetected :: IORef (Bool)
    }

instance JavaNull OperatingSystemFactory where
    javaNull = javaNullRecord "OperatingSystemFactory"

instance JavaEquals OperatingSystemFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OperatingSystemFactory where
    (==) = jrecordEquals

instance JavaObjectClass OperatingSystemFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OperatingSystemFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    genericOperatingSystem <- newIORef javaNull
    hasDetected <- newIORef False
    let this = OperatingSystemFactory header_ logUtil commonStrings genericOperatingSystem hasDetected
    jregisterLevel header_ this
    jregisterMethod header_ "getOperatingSystemInstance" (\() -> getOperatingSystemInstance_impl this)
    pure this

initFields_ :: OperatingSystemFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.genericOperatingSystem (NoOperatingSystem.nO_OPERATING_SYSTEM)
    jset this.hasDetected (False)
    pure ()


getInstance :: IO (OperatingSystemFactory)
getInstance = do
        pure (OperatingSystemFactory.instance_)

new_ :: IO OperatingSystemFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OperatingSystemFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getOperatingSystemInstance :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance object_ = jmethod object_ "getOperatingSystemInstance" (\() -> (getOperatingSystemInstance_impl (javaCast object_ :: OperatingSystemFactory))) ()

getOperatingSystemInstance_super :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance_super object_ = (getOperatingSystemInstance_impl (javaCast object_ :: OperatingSystemFactory))

getOperatingSystemInstance_impl :: OperatingSystemFactory -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).fACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).gET_INSTANCE) e)
            pure (NoOperatingSystem.nO_OPERATING_SYSTEM)
            ) $ do
            operatingSystems <- (OperatingSystems.getInstance)
            systemProperties <- (SystemProperties.getInstance)
            osName <- (SystemProperties.getName systemProperties)
            osArch <- (SystemProperties.getArch systemProperties)
            osVersion <- (SystemProperties.getVersion systemProperties)
            when (Prelude.not (jget (this).hasDetected)) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("osName: " ++ osName) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
                jset (this).hasDetected (True)
                if ((jstringIndexOf osName (jget (operatingSystems).lINUX) 0) >= 0) then do
                    when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).fACTORYERROR))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Found a Linux OS" this (jget ((jget (this).commonStrings)).gET_INSTANCE))
                    assignedValue <- (LinuxOperatingSystemFactory.getOperatingSystemInstance ((jio (LinuxOperatingSystemFactory.getInstance))))
                    jset (this).genericOperatingSystem (assignedValue)
                else if ((jstringIndexOf osName (jget (operatingSystems).wINDOWS) 0) >= 0) then do
                    when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).fACTORYERROR))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Found a Windows OS" this (jget ((jget (this).commonStrings)).gET_INSTANCE))
                    assignedValue <- (WindowsOperatingSystemFactory.getOperatingSystemInstance ((jio (WindowsOperatingSystemFactory.getInstance))))
                    jset (this).genericOperatingSystem (assignedValue)
                else if ((jstringIndexOf osName (jget (operatingSystems).sOLARIS) 0) >= 0) then do
                    when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).fACTORYERROR))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Found a Solaris OS" this (jget ((jget (this).commonStrings)).gET_INSTANCE))
                    assignedValue <- (SolarisOperatingSystemFactory.getOperatingSystemInstance ((jio (SolarisOperatingSystemFactory.getInstance))))
                    jset (this).genericOperatingSystem (assignedValue)
                else do
                    javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "OS Not Supported: "))) osName)))))))
                log <- (LogFactory.getInstanceF (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "OperatingSystem Info: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget (this).genericOperatingSystem)))))))) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
                Control.Monad.void (putStrLn (javaToString (jio (Log.toString log))))
                Control.Monad.void (LogUtil.putL ((jget (this).logUtil)) log)
            pure ((jget (this).genericOperatingSystem))


