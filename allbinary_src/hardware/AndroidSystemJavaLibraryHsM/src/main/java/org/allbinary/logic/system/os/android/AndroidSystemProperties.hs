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
module AndroidSystemProperties where

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
import qualified Context -- android.content.Context
import qualified Build -- android.os.Build
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AndroidSystemProperties = AndroidSystemProperties
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull AndroidSystemProperties where
    javaNull = javaNullRecord "AndroidSystemProperties"

instance JavaEquals AndroidSystemProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidSystemProperties where
    (==) = jrecordEquals

instance JavaObjectClass AndroidSystemProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_1 (jio (ResourceUtil.getContext ((jio (ResourceUtil.getInstance)))))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidSystemProperties
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = AndroidSystemProperties header_ commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getDeviceId" (\() -> getDeviceId_impl this)
    jregisterMethod header_ "getDeviceSoftwareVersion" (\() -> getDeviceSoftwareVersion_impl this)
    jregisterMethod header_ "getLine1Number" (\() -> getLine1Number_impl this)
    jregisterMethod header_ "getNetworkCountryIso" (\() -> getNetworkCountryIso_impl this)
    jregisterMethod header_ "getNetworkOperator" (\() -> getNetworkOperator_impl this)
    jregisterMethod header_ "getNetworkOperatorName" (\() -> getNetworkOperatorName_impl this)
    jregisterMethod header_ "getSimCountryIso" (\() -> getSimCountryIso_impl this)
    jregisterMethod header_ "getSimOperator" (\() -> getSimOperator_impl this)
    jregisterMethod header_ "getSimOperatorName" (\() -> getSimOperatorName_impl this)
    jregisterMethod header_ "getSimSerialNumber" (\() -> getSimSerialNumber_impl this)
    jregisterMethod header_ "getSubscriberId" (\() -> getSubscriberId_impl this)
    jregisterMethod header_ "getVoiceMailAlphaTag" (\() -> getVoiceMailAlphaTag_impl this)
    jregisterMethod header_ "getVoiceMailNumber" (\() -> getVoiceMailNumber_impl this)
    jregisterMethod header_ "getNetworkType" (\() -> getNetworkType_impl this)
    jregisterMethod header_ "getPhoneType" (\() -> getPhoneType_impl this)
    jregisterMethod header_ "getBoard" (\() -> getBoard_impl this)
    jregisterMethod header_ "getBrand" (\() -> getBrand_impl this)
    jregisterMethod header_ "getDevice" (\() -> getDevice_impl this)
    jregisterMethod header_ "getFingerprint" (\() -> getFingerprint_impl this)
    jregisterMethod header_ "getHost" (\() -> getHost_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getModel" (\() -> getModel_impl this)
    jregisterMethod header_ "getProduct" (\() -> getProduct_impl this)
    jregisterMethod header_ "getTags" (\() -> getTags_impl this)
    jregisterMethod header_ "getTime" (\() -> getTime_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getUser" (\() -> getUser_impl this)
    pure this

initFields_ :: AndroidSystemProperties -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()


getInstance :: IO (AndroidSystemProperties)
getInstance = do
        pure (AndroidSystemProperties.sINGLETON)

new_1 :: Context.Context -> IO AndroidSystemProperties
new_1 context = do
    this <- newRecord_
    init_1 this context
    pure this

init_1 :: AndroidSystemProperties -> Context.Context -> IO ()
init_1 this context = do
        initFields_ this
        pure ()
        pure ()


getDeviceId :: (JavaObjectClass this_) => this_ -> IO (String)
getDeviceId object_ = jmethod object_ "getDeviceId" (\() -> (getDeviceId_impl (javaCast object_ :: AndroidSystemProperties))) ()

getDeviceId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDeviceId_super object_ = (getDeviceId_impl (javaCast object_ :: AndroidSystemProperties))

getDeviceId_impl :: AndroidSystemProperties -> IO (String)
getDeviceId_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getDeviceSoftwareVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getDeviceSoftwareVersion object_ = jmethod object_ "getDeviceSoftwareVersion" (\() -> (getDeviceSoftwareVersion_impl (javaCast object_ :: AndroidSystemProperties))) ()

getDeviceSoftwareVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDeviceSoftwareVersion_super object_ = (getDeviceSoftwareVersion_impl (javaCast object_ :: AndroidSystemProperties))

getDeviceSoftwareVersion_impl :: AndroidSystemProperties -> IO (String)
getDeviceSoftwareVersion_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getLine1Number :: (JavaObjectClass this_) => this_ -> IO (String)
getLine1Number object_ = jmethod object_ "getLine1Number" (\() -> (getLine1Number_impl (javaCast object_ :: AndroidSystemProperties))) ()

getLine1Number_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLine1Number_super object_ = (getLine1Number_impl (javaCast object_ :: AndroidSystemProperties))

getLine1Number_impl :: AndroidSystemProperties -> IO (String)
getLine1Number_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getNetworkCountryIso :: (JavaObjectClass this_) => this_ -> IO (String)
getNetworkCountryIso object_ = jmethod object_ "getNetworkCountryIso" (\() -> (getNetworkCountryIso_impl (javaCast object_ :: AndroidSystemProperties))) ()

getNetworkCountryIso_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNetworkCountryIso_super object_ = (getNetworkCountryIso_impl (javaCast object_ :: AndroidSystemProperties))

getNetworkCountryIso_impl :: AndroidSystemProperties -> IO (String)
getNetworkCountryIso_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getNetworkOperator :: (JavaObjectClass this_) => this_ -> IO (String)
getNetworkOperator object_ = jmethod object_ "getNetworkOperator" (\() -> (getNetworkOperator_impl (javaCast object_ :: AndroidSystemProperties))) ()

getNetworkOperator_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNetworkOperator_super object_ = (getNetworkOperator_impl (javaCast object_ :: AndroidSystemProperties))

getNetworkOperator_impl :: AndroidSystemProperties -> IO (String)
getNetworkOperator_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getNetworkOperatorName :: (JavaObjectClass this_) => this_ -> IO (String)
getNetworkOperatorName object_ = jmethod object_ "getNetworkOperatorName" (\() -> (getNetworkOperatorName_impl (javaCast object_ :: AndroidSystemProperties))) ()

getNetworkOperatorName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getNetworkOperatorName_super object_ = (getNetworkOperatorName_impl (javaCast object_ :: AndroidSystemProperties))

getNetworkOperatorName_impl :: AndroidSystemProperties -> IO (String)
getNetworkOperatorName_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getSimCountryIso :: (JavaObjectClass this_) => this_ -> IO (String)
getSimCountryIso object_ = jmethod object_ "getSimCountryIso" (\() -> (getSimCountryIso_impl (javaCast object_ :: AndroidSystemProperties))) ()

getSimCountryIso_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSimCountryIso_super object_ = (getSimCountryIso_impl (javaCast object_ :: AndroidSystemProperties))

getSimCountryIso_impl :: AndroidSystemProperties -> IO (String)
getSimCountryIso_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getSimOperator :: (JavaObjectClass this_) => this_ -> IO (String)
getSimOperator object_ = jmethod object_ "getSimOperator" (\() -> (getSimOperator_impl (javaCast object_ :: AndroidSystemProperties))) ()

getSimOperator_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSimOperator_super object_ = (getSimOperator_impl (javaCast object_ :: AndroidSystemProperties))

getSimOperator_impl :: AndroidSystemProperties -> IO (String)
getSimOperator_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getSimOperatorName :: (JavaObjectClass this_) => this_ -> IO (String)
getSimOperatorName object_ = jmethod object_ "getSimOperatorName" (\() -> (getSimOperatorName_impl (javaCast object_ :: AndroidSystemProperties))) ()

getSimOperatorName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSimOperatorName_super object_ = (getSimOperatorName_impl (javaCast object_ :: AndroidSystemProperties))

getSimOperatorName_impl :: AndroidSystemProperties -> IO (String)
getSimOperatorName_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getSimSerialNumber :: (JavaObjectClass this_) => this_ -> IO (String)
getSimSerialNumber object_ = jmethod object_ "getSimSerialNumber" (\() -> (getSimSerialNumber_impl (javaCast object_ :: AndroidSystemProperties))) ()

getSimSerialNumber_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSimSerialNumber_super object_ = (getSimSerialNumber_impl (javaCast object_ :: AndroidSystemProperties))

getSimSerialNumber_impl :: AndroidSystemProperties -> IO (String)
getSimSerialNumber_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getSubscriberId :: (JavaObjectClass this_) => this_ -> IO (String)
getSubscriberId object_ = jmethod object_ "getSubscriberId" (\() -> (getSubscriberId_impl (javaCast object_ :: AndroidSystemProperties))) ()

getSubscriberId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSubscriberId_super object_ = (getSubscriberId_impl (javaCast object_ :: AndroidSystemProperties))

getSubscriberId_impl :: AndroidSystemProperties -> IO (String)
getSubscriberId_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getVoiceMailAlphaTag :: (JavaObjectClass this_) => this_ -> IO (String)
getVoiceMailAlphaTag object_ = jmethod object_ "getVoiceMailAlphaTag" (\() -> (getVoiceMailAlphaTag_impl (javaCast object_ :: AndroidSystemProperties))) ()

getVoiceMailAlphaTag_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVoiceMailAlphaTag_super object_ = (getVoiceMailAlphaTag_impl (javaCast object_ :: AndroidSystemProperties))

getVoiceMailAlphaTag_impl :: AndroidSystemProperties -> IO (String)
getVoiceMailAlphaTag_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getVoiceMailNumber :: (JavaObjectClass this_) => this_ -> IO (String)
getVoiceMailNumber object_ = jmethod object_ "getVoiceMailNumber" (\() -> (getVoiceMailNumber_impl (javaCast object_ :: AndroidSystemProperties))) ()

getVoiceMailNumber_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVoiceMailNumber_super object_ = (getVoiceMailNumber_impl (javaCast object_ :: AndroidSystemProperties))

getVoiceMailNumber_impl :: AndroidSystemProperties -> IO (String)
getVoiceMailNumber_impl this = do
        pure ((jget ((jget (this).commonStrings)).dISABLE))


getNetworkType :: (JavaObjectClass this_) => this_ -> IO (Int)
getNetworkType object_ = jmethod object_ "getNetworkType" (\() -> (getNetworkType_impl (javaCast object_ :: AndroidSystemProperties))) ()

getNetworkType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNetworkType_super object_ = (getNetworkType_impl (javaCast object_ :: AndroidSystemProperties))

getNetworkType_impl :: AndroidSystemProperties -> IO (Int)
getNetworkType_impl this = do
        pure ((Prelude.negate 1))


getPhoneType :: (JavaObjectClass this_) => this_ -> IO (Int)
getPhoneType object_ = jmethod object_ "getPhoneType" (\() -> (getPhoneType_impl (javaCast object_ :: AndroidSystemProperties))) ()

getPhoneType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPhoneType_super object_ = (getPhoneType_impl (javaCast object_ :: AndroidSystemProperties))

getPhoneType_impl :: AndroidSystemProperties -> IO (Int)
getPhoneType_impl this = do
        pure ((Prelude.negate 1))


getBoard :: (JavaObjectClass this_) => this_ -> IO (String)
getBoard object_ = jmethod object_ "getBoard" (\() -> (getBoard_impl (javaCast object_ :: AndroidSystemProperties))) ()

getBoard_super :: (JavaObjectClass this_) => this_ -> IO (String)
getBoard_super object_ = (getBoard_impl (javaCast object_ :: AndroidSystemProperties))

getBoard_impl :: AndroidSystemProperties -> IO (String)
getBoard_impl this = do
        pure (Build.bOARD)


getBrand :: (JavaObjectClass this_) => this_ -> IO (String)
getBrand object_ = jmethod object_ "getBrand" (\() -> (getBrand_impl (javaCast object_ :: AndroidSystemProperties))) ()

getBrand_super :: (JavaObjectClass this_) => this_ -> IO (String)
getBrand_super object_ = (getBrand_impl (javaCast object_ :: AndroidSystemProperties))

getBrand_impl :: AndroidSystemProperties -> IO (String)
getBrand_impl this = do
        pure (Build.bRAND)


getDevice :: (JavaObjectClass this_) => this_ -> IO (String)
getDevice object_ = jmethod object_ "getDevice" (\() -> (getDevice_impl (javaCast object_ :: AndroidSystemProperties))) ()

getDevice_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDevice_super object_ = (getDevice_impl (javaCast object_ :: AndroidSystemProperties))

getDevice_impl :: AndroidSystemProperties -> IO (String)
getDevice_impl this = do
        pure (Build.dEVICE)


getFingerprint :: (JavaObjectClass this_) => this_ -> IO (String)
getFingerprint object_ = jmethod object_ "getFingerprint" (\() -> (getFingerprint_impl (javaCast object_ :: AndroidSystemProperties))) ()

getFingerprint_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFingerprint_super object_ = (getFingerprint_impl (javaCast object_ :: AndroidSystemProperties))

getFingerprint_impl :: AndroidSystemProperties -> IO (String)
getFingerprint_impl this = do
        pure (Build.fINGERPRINT)


getHost :: (JavaObjectClass this_) => this_ -> IO (String)
getHost object_ = jmethod object_ "getHost" (\() -> (getHost_impl (javaCast object_ :: AndroidSystemProperties))) ()

getHost_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHost_super object_ = (getHost_impl (javaCast object_ :: AndroidSystemProperties))

getHost_impl :: AndroidSystemProperties -> IO (String)
getHost_impl this = do
        pure (Build.hOST)


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: AndroidSystemProperties))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: AndroidSystemProperties))

getId_impl :: AndroidSystemProperties -> IO (String)
getId_impl this = do
        pure (Build.iD)


getModel :: (JavaObjectClass this_) => this_ -> IO (String)
getModel object_ = jmethod object_ "getModel" (\() -> (getModel_impl (javaCast object_ :: AndroidSystemProperties))) ()

getModel_super :: (JavaObjectClass this_) => this_ -> IO (String)
getModel_super object_ = (getModel_impl (javaCast object_ :: AndroidSystemProperties))

getModel_impl :: AndroidSystemProperties -> IO (String)
getModel_impl this = do
        pure (Build.mODEL)


getProduct :: (JavaObjectClass this_) => this_ -> IO (String)
getProduct object_ = jmethod object_ "getProduct" (\() -> (getProduct_impl (javaCast object_ :: AndroidSystemProperties))) ()

getProduct_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProduct_super object_ = (getProduct_impl (javaCast object_ :: AndroidSystemProperties))

getProduct_impl :: AndroidSystemProperties -> IO (String)
getProduct_impl this = do
        pure (Build.pRODUCT)


getTags :: (JavaObjectClass this_) => this_ -> IO (String)
getTags object_ = jmethod object_ "getTags" (\() -> (getTags_impl (javaCast object_ :: AndroidSystemProperties))) ()

getTags_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTags_super object_ = (getTags_impl (javaCast object_ :: AndroidSystemProperties))

getTags_impl :: AndroidSystemProperties -> IO (String)
getTags_impl this = do
        pure (Build.tAGS)


getTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTime object_ = jmethod object_ "getTime" (\() -> (getTime_impl (javaCast object_ :: AndroidSystemProperties))) ()

getTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTime_super object_ = (getTime_impl (javaCast object_ :: AndroidSystemProperties))

getTime_impl :: AndroidSystemProperties -> IO (Int64)
getTime_impl this = do
        pure (Build.tIME)


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: AndroidSystemProperties))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: AndroidSystemProperties))

getType_impl :: AndroidSystemProperties -> IO (String)
getType_impl this = do
        pure (Build.tYPE)


getUser :: (JavaObjectClass this_) => this_ -> IO (String)
getUser object_ = jmethod object_ "getUser" (\() -> (getUser_impl (javaCast object_ :: AndroidSystemProperties))) ()

getUser_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUser_super object_ = (getUser_impl (javaCast object_ :: AndroidSystemProperties))

getUser_impl :: AndroidSystemProperties -> IO (String)
getUser_impl this = do
        pure (Build.uSER)


