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
-- package org.allbinary.logic.system.security.licensing
module AbeLicenseInterfaceFactory where

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
import qualified AbeLicenseInterface -- same package or java.lang
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified AbeNoLicense -- same package or java.lang
import qualified AbeClientInformationData -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified IOException -- java.io.IOException
import qualified Calendar -- java.util.Calendar
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeLicenseClient -- org.allbinary.logic.system.security.licensing.client.AbeLicenseClient
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AbeLicenseInterfaceFactory = AbeLicenseInterfaceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , time :: IORef (Int64)
    , check :: IORef (Bool)
    , checkPeriod :: IORef (Int)
    , abeLicenseInterface :: IORef (AbeLicenseInterface.AbeLicenseInterface)
    }

instance JavaNull AbeLicenseInterfaceFactory where
    javaNull = javaNullRecord "AbeLicenseInterfaceFactory"

instance JavaEquals AbeLicenseInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeLicenseInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass AbeLicenseInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbeLicenseInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    time <- newIORef 0
    check <- newIORef False
    checkPeriod <- newIORef 0
    abeLicenseInterface <- newIORef javaNull
    let this = AbeLicenseInterfaceFactory header_ logUtil commonStrings time check checkPeriod abeLicenseInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getLicenseInstance" (\() -> getLicenseInstance_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "isTimeToGetKey" (\() -> isTimeToGetKey_impl this)
    jregisterMethod header_ "setCheck" (\() -> setCheck_impl this)
    jregisterMethod header_ "isCheck" (\() -> isCheck_impl this)
    pure this

initFields_ :: AbeLicenseInterfaceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.time (0)
    jset this.check (False)
    jset this.checkPeriod (36000000)
    jset this.abeLicenseInterface (javaNull)
    pure ()


getInstance :: IO (AbeLicenseInterfaceFactory)
getInstance = do
        pure (AbeLicenseInterfaceFactory.sINGLETON)

new_ :: IO AbeLicenseInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbeLicenseInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws LicensingException
getLicenseInstance :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
getLicenseInstance object_ a1 = jmethod object_ "getLicenseInstance" (\() -> (getLicenseInstance_impl (javaCast object_ :: AbeLicenseInterfaceFactory))) () a1

getLicenseInstance_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
getLicenseInstance_super object_ a1 = (getLicenseInstance_impl (javaCast object_ :: AbeLicenseInterfaceFactory)) a1

getLicenseInstance_impl :: AbeLicenseInterfaceFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
getLicenseInstance_impl this abeClientInformation = do
    javaCatchReturn $ do
        if (jio (AbeLicenseInterfaceFactory.isTimeToGetKey this)) then do
            javaReturn =<< (AbeLicenseInterfaceFactory.get this abeClientInformation)
        else do
            javaReturn ((jget (this).abeLicenseInterface))


-- throws LicensingException
get :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AbeLicenseInterfaceFactory))) () a1

get_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
get_super object_ a1 = (get_impl (javaCast object_ :: AbeLicenseInterfaceFactory)) a1

get_impl :: AbeLicenseInterfaceFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (AbeLicenseInterface.AbeLicenseInterface)
get_impl this abeClientInformation = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Licensing IO Error" this (jget ((jget (this).commonStrings)).gET) e)
            javaThrow ((JavaException "LicensingException" "License Server Connection Error"))
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Getting Keys" this (jget ((jget (this).commonStrings)).gET))
            assignedValue <- (AbeNoLicense.getInstance)
            jset (this).abeLicenseInterface (assignedValue)
            licenseClient <- (AbeLicenseClient.new_)
            assignedValue <- (AbeLicenseClient.get licenseClient abeClientInformation)
            jset (this).abeLicenseInterface (assignedValue)
            when ((jget (this).abeLicenseInterface) /= javaNull) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Default Key: " ++ javaToString (jio (AbeLicenseInterface.getKey ((jget (this).abeLicenseInterface)) (jget ((jio (AbeClientInformationData.getInstance))).kEY)))) this (jget ((jget (this).commonStrings)).gET))
            pure ((jget (this).abeLicenseInterface))


isTimeToGetKey :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTimeToGetKey object_ = jmethod object_ "isTimeToGetKey" (\() -> (isTimeToGetKey_impl (javaCast object_ :: AbeLicenseInterfaceFactory))) ()

isTimeToGetKey_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTimeToGetKey_super object_ = (isTimeToGetKey_impl (javaCast object_ :: AbeLicenseInterfaceFactory))

isTimeToGetKey_impl :: AbeLicenseInterfaceFactory -> IO (Bool)
isTimeToGetKey_impl this = do
    javaCatchReturn $ do
        calendar <- (Calendar.getInstance)
        currentTime <- (Calendar.getTimeInMillis calendar)
        if ((((((jget (this).abeLicenseInterface) == javaNull) || ((jtoObject (jget (this).abeLicenseInterface)) == (jtoObject (jio (AbeNoLicense.getInstance))))) || (Prelude.not (jio (AbeLicenseInterface.hasKey ((jget (this).abeLicenseInterface)))))) || (jio (AbeLicenseInterfaceFactory.isCheck this))) || ((currentTime - (Prelude.fromIntegral (jget this.checkPeriod))) > (jget this.time))) then do
            jset (this).abeLicenseInterface (javaNull)
            jset (this).time (currentTime)
            javaReturn (True)
        else do
            pure (False)


setCheck :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setCheck object_ a1 = jmethod object_ "setCheck" (\() -> (setCheck_impl (javaCast object_ :: AbeLicenseInterfaceFactory))) () a1

setCheck_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setCheck_super object_ a1 = (setCheck_impl (javaCast object_ :: AbeLicenseInterfaceFactory)) a1

setCheck_impl :: AbeLicenseInterfaceFactory -> Bool -> IO (())
setCheck_impl this check = do
        jset (this).check (check)
        pure ()


isCheck :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCheck object_ = jmethod object_ "isCheck" (\() -> (isCheck_impl (javaCast object_ :: AbeLicenseInterfaceFactory))) ()

isCheck_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCheck_super object_ = (isCheck_impl (javaCast object_ :: AbeLicenseInterfaceFactory))

isCheck_impl :: AbeLicenseInterfaceFactory -> IO (Bool)
isCheck_impl this = do
        pure ((jget (this).check))


