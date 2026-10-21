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
-- package org.allbinary.logic.system.os.windows
module WindowsOperatingSystemFactory where

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
import qualified WindowsOS -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified NoOperatingSystem -- org.allbinary.logic.system.os.NoOperatingSystem
import qualified OperatingSystems -- org.allbinary.logic.system.os.OperatingSystems
import qualified SystemProperties -- org.allbinary.logic.system.os.SystemProperties
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data WindowsOperatingSystemFactory = WindowsOperatingSystemFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull WindowsOperatingSystemFactory where
    javaNull = javaNullRecord "WindowsOperatingSystemFactory"

instance JavaEquals WindowsOperatingSystemFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WindowsOperatingSystemFactory where
    (==) = jrecordEquals

instance JavaObjectClass WindowsOperatingSystemFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WindowsOperatingSystemFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = WindowsOperatingSystemFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getOperatingSystemInstance" (\() -> getOperatingSystemInstance_impl this)
    pure this

initFields_ :: WindowsOperatingSystemFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (WindowsOperatingSystemFactory)
getInstance = do
        pure (WindowsOperatingSystemFactory.instance_)

new_ :: IO WindowsOperatingSystemFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WindowsOperatingSystemFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getOperatingSystemInstance :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance object_ = jmethod object_ "getOperatingSystemInstance" (\() -> (getOperatingSystemInstance_impl (javaCast object_ :: WindowsOperatingSystemFactory))) ()

getOperatingSystemInstance_super :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance_super object_ = (getOperatingSystemInstance_impl (javaCast object_ :: WindowsOperatingSystemFactory))

getOperatingSystemInstance_impl :: WindowsOperatingSystemFactory -> IO (GenericOperatingSystem.GenericOperatingSystem)
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
            if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).wINDOWS_NT)) - 1) == 0) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (WindowsOS.new_))
                jset operatingSystemInterface (assignedValue)
            else if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).wINDOWS_10)) - 1) == 0) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (WindowsOS.new_))
                jset operatingSystemInterface (assignedValue)
            else if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).wINDOWS_11)) - 1) == 0) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (WindowsOS.new_))
                jset operatingSystemInterface (assignedValue)
            else if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).wINDOWS2000)) - 1) == 0) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (WindowsOS.new_))
                jset operatingSystemInterface (assignedValue)
            else if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).wINDOWS_XP)) - 1) == 0) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (WindowsOS.new_))
                jset operatingSystemInterface (assignedValue)
            else if ((Prelude.fromEnum (Prelude.compare osName (jget (operatingSystems).wINDOWS_VISTA)) - 1) == 0) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (WindowsOS.new_))
                jset operatingSystemInterface (assignedValue)
            else do
                if (jio (OperatingSystems.isUnknownSpecificOSAllowed operatingSystems)) then do
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (WindowsOS.new_))
                    jset operatingSystemInterface (assignedValue)
                else do
                    javaThrow ((JavaException "Exception" ("Specific Windows OS Not Supported: " ++ osName)))
            pure ((jget operatingSystemInterface))


