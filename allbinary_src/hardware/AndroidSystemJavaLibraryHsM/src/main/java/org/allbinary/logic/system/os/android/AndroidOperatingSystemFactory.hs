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
-- package org.allbinary.logic.system.os.android
module AndroidOperatingSystemFactory where

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
import qualified AndroidOS -- same package or java.lang
import qualified TsUtil -- org.allbinary.TsUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified NoOperatingSystem -- org.allbinary.logic.system.os.NoOperatingSystem
import qualified OperatingSystems -- org.allbinary.logic.system.os.OperatingSystems
import qualified SystemProperties -- org.allbinary.logic.system.os.SystemProperties
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AndroidOperatingSystemFactory = AndroidOperatingSystemFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , tsUtil :: IORef (TsUtil.TsUtil)
    }

instance JavaNull AndroidOperatingSystemFactory where
    javaNull = javaNullRecord "AndroidOperatingSystemFactory"

instance JavaEquals AndroidOperatingSystemFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidOperatingSystemFactory where
    (==) = jrecordEquals

instance JavaObjectClass AndroidOperatingSystemFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidOperatingSystemFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    tsUtil <- newIORef javaNull
    let this = AndroidOperatingSystemFactory header_ logUtil tsUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getOperatingSystemInstance" (\() -> getOperatingSystemInstance_impl this)
    pure this

initFields_ :: AndroidOperatingSystemFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    pure ()


getInstance :: IO (AndroidOperatingSystemFactory)
getInstance = do
        pure (AndroidOperatingSystemFactory.instance_)

new_ :: IO AndroidOperatingSystemFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidOperatingSystemFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getOperatingSystemInstance :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance object_ = jmethod object_ "getOperatingSystemInstance" (\() -> (getOperatingSystemInstance_impl (javaCast object_ :: AndroidOperatingSystemFactory))) ()

getOperatingSystemInstance_super :: (JavaObjectClass this_) => this_ -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance_super object_ = (getOperatingSystemInstance_impl (javaCast object_ :: AndroidOperatingSystemFactory))

getOperatingSystemInstance_impl :: AndroidOperatingSystemFactory -> IO (GenericOperatingSystem.GenericOperatingSystem)
getOperatingSystemInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to get OperatingSystem returning NoOperatingSystem" this (jget (commonStrings).gET_INSTANCE) e)
            pure (NoOperatingSystem.nO_OPERATING_SYSTEM)
            ) $ do
            genericOperatingSystem <- newIORef (javaNull)
            systemProperties <- (SystemProperties.getInstance)
            osName <- (SystemProperties.getName systemProperties)
            if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) osName (jget ((jio (OperatingSystems.getInstance))).aNDROID))) == 0) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (AndroidOS.new_))
                jset genericOperatingSystem (assignedValue)
            else do
                if (jio (OperatingSystems.isUnknownSpecificOSAllowed ((jio (OperatingSystems.getInstance))))) then do
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: GenericOperatingSystem.GenericOperatingSystem) (AndroidOS.new_))
                    jset genericOperatingSystem (assignedValue)
                else do
                    javaThrow ((JavaException "Exception" ("Specific Android OS Not Supported: " ++ osName)))
            pure ((jget genericOperatingSystem))


