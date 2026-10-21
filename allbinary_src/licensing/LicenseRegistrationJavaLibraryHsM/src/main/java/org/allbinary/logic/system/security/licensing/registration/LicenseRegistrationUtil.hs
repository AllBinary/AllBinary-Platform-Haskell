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
-- package org.allbinary.logic.system.security.licensing.registration
module LicenseRegistrationUtil where

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
import qualified RegistrationConfiguration -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified XmlRpcRemoteLicenseRegistrationClient -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified SpecialMessageUtil -- org.allbinary.canvas.SpecialMessageUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data LicenseRegistrationUtil = LicenseRegistrationUtil
    { header_ :: JavaHeader
    }

instance JavaNull LicenseRegistrationUtil where
    javaNull = javaNullRecord "LicenseRegistrationUtil"

instance JavaEquals LicenseRegistrationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseRegistrationUtil where
    (==) = jrecordEquals

instance JavaObjectClass LicenseRegistrationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseRegistrationUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LicenseRegistrationUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: LicenseRegistrationUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LicenseRegistrationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseRegistrationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


process :: AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (())
process abeClientInformation registrationId = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "License Registration Exception" "LicenseRegistrationUtil" "License Registration" e)
            ) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.put (javaToString (jget ((jio (CommonLabels.getInstance))).sTART_LABEL) ++ "License Registration") "LicenseRegistrationUtil" (jget (commonStrings).pROCESS))
            registrationConfiguration <- (RegistrationConfiguration.getInstance)
            Control.Monad.void (RegistrationConfiguration.setRegistrationCode registrationConfiguration registrationId)
            Control.Monad.void (RegistrationConfiguration.write registrationConfiguration)
            hashtable <- (AbeClientInformationInterface.toHashtable abeClientInformation)
            Control.Monad.void (ABHashtable.put hashtable (jget ((jio (RegistrationConfiguration.getInstance))).nAME) registrationId)
            Control.Monad.void (ABHashtable.put hashtable "message" (jio (SpecialMessageUtil.get ((jio (SpecialMessageUtil.getInstance))))))
            Control.Monad.void (XmlRpcRemoteLicenseRegistrationClient.get ((jio (XmlRpcRemoteLicenseRegistrationClient.new_1 abeClientInformation))) hashtable)
        pure ()


