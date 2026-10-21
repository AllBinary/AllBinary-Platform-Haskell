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
module AndroidOS (module AndroidOS, module GenericOperatingSystem) where

import GenericOperatingSystem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isOverScan, isOverScan_super, isOverScan_impl, getOverScanXPercent, getOverScanXPercent_super, getOverScanXPercent_impl, getOverScanYPercent, getOverScanYPercent_super, getOverScanYPercent_impl, toString, toString_super, toString_impl, stringBuffer, dEVICE_ID, dEVICE_SOFTWARE_VERSION, lINE_1_NUMBER, oUYA)
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
import qualified AndroidSystemProperties -- same package or java.lang
import qualified AndroidInfoFactory -- org.allbinary.android.AndroidInfoFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data AndroidOS = AndroidOS
    { header_ :: JavaHeader
    , base :: GenericOperatingSystem.GenericOperatingSystem
    , stringBuffer :: IORef (StringMaker.StringMaker)
    , dEVICE_ID :: IORef (String)
    , dEVICE_SOFTWARE_VERSION :: IORef (String)
    , lINE_1_NUMBER :: IORef (String)
    , oUYA :: IORef (String)
    }

instance JavaNull AndroidOS where
    javaNull = javaNullRecord "AndroidOS"

instance JavaEquals AndroidOS where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidOS where
    (==) = jrecordEquals

instance JavaObjectClass AndroidOS where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AndroidOS
newRecord_ = do
    base <- GenericOperatingSystem.newRecord_
    let header_ = base.header_
    stringBuffer <- newIORef javaNull
    dEVICE_ID <- newIORef ""
    dEVICE_SOFTWARE_VERSION <- newIORef ""
    lINE_1_NUMBER <- newIORef ""
    oUYA <- newIORef ""
    let this = AndroidOS header_ base stringBuffer dEVICE_ID dEVICE_SOFTWARE_VERSION lINE_1_NUMBER oUYA
    jregisterLevel header_ this
    jregisterMethod header_ "isOverScan" (\() -> isOverScan_impl this)
    jregisterMethod header_ "getOverScanXPercent" (\() -> getOverScanXPercent_impl this)
    jregisterMethod header_ "getOverScanYPercent" (\() -> getOverScanYPercent_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: AndroidOS -> IO ()
initFields_ this = do
    jset this.stringBuffer =<< (StringMaker.new_)
    jset this.dEVICE_ID ("DeviceId")
    jset this.dEVICE_SOFTWARE_VERSION ("DeviceSoftwareVersion")
    jset this.lINE_1_NUMBER ("Line1Number")
    jset this.oUYA ("ouya")
    pure ()

new_ :: IO AndroidOS
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidOS -> IO ()
init_ this = do
        GenericOperatingSystem.init_ this.base
        initFields_ this
        sDK_VERSION <- (AndroidInfoFactory.getVersion ((jio (AndroidInfoFactory.getInstance))))
        when (sDK_VERSION > 10) $ do
            jset (this).base.scalable (True)
        properties <- (AndroidSystemProperties.getInstance)
        commonStrings <- (CommonSeps.getInstance)
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (this).dEVICE_ID))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getDeviceId properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (this).dEVICE_SOFTWARE_VERSION))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getDeviceSoftwareVersion properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (this).lINE_1_NUMBER))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getLine1Number properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "NetworkCountryIso")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getNetworkCountryIso properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "NetworkOperator")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getNetworkOperator properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "NetworkOperatorName")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getNetworkOperatorName properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "NetworkType")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getNetworkType properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "PhoneType")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getPhoneType properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "SimCountryIso")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getSimCountryIso properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "SimOperator")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getSimOperator properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "SimOperatorName")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getSimOperatorName properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "SimSerialNumber")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getSimSerialNumber properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "SubscriberId")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getSubscriberId properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "VoiceMailAlphaTag")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getVoiceMailAlphaTag properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) "VoiceMailNumber")
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (AndroidSystemProperties.getVoiceMailNumber properties)))
        Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget (commonStrings).sPACE))
        pure ()


isOverScan :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverScan object_ = jmethod object_ "isOverScan" (\() -> (isOverScan_impl (javaCast object_ :: AndroidOS))) ()

isOverScan_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverScan_super object_ = (isOverScan_impl (javaCast object_ :: AndroidOS))

isOverScan_impl :: AndroidOS -> IO (Bool)
isOverScan_impl this = do
    javaCatchReturn $ do
        properties <- (AndroidSystemProperties.getInstance)
        when ((jstringIndexOf (Prelude.map Data.Char.toLower (jio (AndroidSystemProperties.getDevice properties))) (jget (this).oUYA) 0) >= 0) $ do
            javaReturn (True)
        pure (False)


getOverScanXPercent :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanXPercent object_ = jmethod object_ "getOverScanXPercent" (\() -> (getOverScanXPercent_impl (javaCast object_ :: AndroidOS))) ()

getOverScanXPercent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanXPercent_super object_ = (getOverScanXPercent_impl (javaCast object_ :: AndroidOS))

getOverScanXPercent_impl :: AndroidOS -> IO (Int)
getOverScanXPercent_impl this = do
        pure (90)


getOverScanYPercent :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanYPercent object_ = jmethod object_ "getOverScanYPercent" (\() -> (getOverScanYPercent_impl (javaCast object_ :: AndroidOS))) ()

getOverScanYPercent_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getOverScanYPercent_super object_ = (getOverScanYPercent_impl (javaCast object_ :: AndroidOS))

getOverScanYPercent_impl :: AndroidOS -> IO (Int)
getOverScanYPercent_impl this = do
        pure (90)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AndroidOS))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AndroidOS))

toString_impl :: AndroidOS -> IO (String)
toString_impl this = do
        osBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append osBuffer (jio (GenericOperatingSystem.toString_super this.base)))
        Control.Monad.void (StringMaker.append osBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append osBuffer "Other System Info: \n")
        Control.Monad.void (StringMaker.append osBuffer (jio (StringMaker.toString ((jget (this).stringBuffer)))))
        (StringMaker.toString osBuffer)


