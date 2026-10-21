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
module AbeClientInformation (module AbeClientInformation, module ClientInformation) where

import ClientInformation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, logUtil)
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
import qualified LicenseInitInfo -- org.allbinary.business.init.LicenseInitInfo
import qualified LicenseInitInfoUtil -- org.allbinary.business.init.LicenseInitInfoUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ClientInformation

data AbeClientInformation = AbeClientInformation
    { header_ :: JavaHeader
    , base :: ClientInformation.ClientInformation
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull AbeClientInformation where
    javaNull = javaNullRecord "AbeClientInformation"

instance JavaEquals AbeClientInformation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeClientInformation where
    (==) = jrecordEquals

instance JavaObjectClass AbeClientInformation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbeClientInformation
newRecord_ = do
    base <- ClientInformation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = AbeClientInformation header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: AbeClientInformation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_4 :: String -> String -> String -> String -> IO AbeClientInformation
new_4 name version specialName shortName = do
    this <- newRecord_
    init_4 this name version specialName shortName
    pure this

init_4 :: AbeClientInformation -> String -> String -> String -> String -> IO ()
init_4 this name version specialName shortName = do
        ClientInformation.init_4 this.base (name) (version) (specialName) (shortName)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AbeClientInformation))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AbeClientInformation))

init_impl :: AbeClientInformation -> IO (())
init_impl this = do
        handle (\(e :: JavaException) -> do
            logUtil <- (LogUtil.getInstance)
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            Control.Monad.void (ClientInformation.setOperatingSystemInterface this (jio (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance))))))
            licenseInitInfo <- (LicenseInitInfoUtil.read ((jio (LicenseInitInfoUtil.getInstance))))
            Control.Monad.void (ClientInformation.setLicenseId this (jio (LicenseInitInfo.getLicenseId licenseInitInfo)))
            Control.Monad.void (ClientInformation.setLicenseServers this (jio (LicenseInitInfo.getServerList licenseInitInfo)))
            stringValidationUtil <- (StringValidationUtil.getInstance)
            when (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (ClientInformation.getLicenseId this)))) $ do
                let nONE = "No License Id"
                Control.Monad.void (ClientInformation.setLicenseId this nONE)
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Special Name: "))) (jio (ClientInformation.getSpecialName this))))))) this (jget (commonStrings).cONSTRUCTOR))
        pure ()


