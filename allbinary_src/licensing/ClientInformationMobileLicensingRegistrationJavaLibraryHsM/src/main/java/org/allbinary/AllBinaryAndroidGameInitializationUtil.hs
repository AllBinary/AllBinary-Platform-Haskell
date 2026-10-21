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
-- package org.allbinary
module AllBinaryAndroidGameInitializationUtil where

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
import qualified AndroidResources -- same package or java.lang
import qualified LicenseInitInfoUtil -- org.allbinary.business.init.LicenseInitInfoUtil
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified PartnerIdentifierFileUtil -- org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil

data AllBinaryAndroidGameInitializationUtil = AllBinaryAndroidGameInitializationUtil
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryAndroidGameInitializationUtil where
    javaNull = javaNullRecord "AllBinaryAndroidGameInitializationUtil"

instance JavaEquals AllBinaryAndroidGameInitializationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryAndroidGameInitializationUtil where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryAndroidGameInitializationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryAndroidGameInitializationUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = AllBinaryAndroidGameInitializationUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: AllBinaryAndroidGameInitializationUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryAndroidGameInitializationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryAndroidGameInitializationUtil -> IO ()
init_ this = do
    initFields_ this


init :: IO (())
init = do
        resourceUtil <- (ResourceUtil.getInstance)
        androidResources <- (AndroidResources.getInstance)
        licenseInitInfoUtil <- (LicenseInitInfoUtil.getInstance)
        Control.Monad.void (ResourceUtil.addResource resourceUtil (jget (licenseInitInfoUtil).iNITFILENAME) (javaToString (jget ((jget (androidResources).raw)).licenseinitdata)))
        Control.Monad.void (ResourceUtil.addResource resourceUtil (jget ((jio (PartnerIdentifierFileUtil.getInstance))).fILE_NAME) (javaToString (jget ((jget (androidResources).raw)).partner)))
        pure ()


