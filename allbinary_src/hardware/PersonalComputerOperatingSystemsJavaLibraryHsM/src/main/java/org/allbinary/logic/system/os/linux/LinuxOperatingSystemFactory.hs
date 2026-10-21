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
-- package org.allbinary.logic.system.os.linux
module LinuxOperatingSystemFactory where

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
import qualified LinuxOS -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified NoOperatingSystem -- org.allbinary.logic.system.os.NoOperatingSystem
import qualified OperatingSystems -- org.allbinary.logic.system.os.OperatingSystems
import qualified SystemProperties -- org.allbinary.logic.system.os.SystemProperties
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data LinuxOperatingSystemFactory = LinuxOperatingSystemFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull LinuxOperatingSystemFactory where
    javaNull = javaNullRecord "LinuxOperatingSystemFactory"

instance JavaEquals LinuxOperatingSystemFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LinuxOperatingSystemFactory where
    (==) = jrecordEquals

instance JavaObjectClass LinuxOperatingSystemFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LinuxOperatingSystemFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = LinuxOperatingSystemFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getOperatingSystemInstance" (\() -> getOperatingSystemInstance_impl this)
    pure this

initFields_ :: LinuxOperatingSystemFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (LinuxOperatingSystemFactory)
getInstance = do
        pure (LinuxOperatingSystemFactory.instance_)

new_ :: IO LinuxOperatingSystemFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LinuxOperatingSystemFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getOperatingSystemInstance :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance object_ = jmethod object_ "getOperatingSystemInstance" (\() -> (getOperatingSystemInstance_impl (javaCast object_ :: LinuxOperatingSystemFactory))) ()

getOperatingSystemInstance_super :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance_super object_ = (getOperatingSystemInstance_impl (javaCast object_ :: LinuxOperatingSystemFactory))

getOperatingSystemInstance_impl :: LinuxOperatingSystemFactory -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).fACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (NoOperatingSystem.nO_OPERATING_SYSTEM)
            ) $ do
            operatingSystems <- (OperatingSystems.getInstance)
            osName <- (SystemProperties.getName ((jio (SystemProperties.getInstance))))
            operatingSystemInterface <- newIORef (javaNull)
            if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).lINUX)) - 1) == 0) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (LinuxOS.new_))
                jset operatingSystemInterface (assignedValue)
            else do
                if (jio (OperatingSystems.isUnknownSpecificOSAllowed operatingSystems)) then do
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (LinuxOS.new_))
                    jset operatingSystemInterface (assignedValue)
                else do
                    javaThrow ((JavaException "Exception" ("Specific Linux OS Not Supported: " ++ osName)))
            pure ((jget operatingSystemInterface))


