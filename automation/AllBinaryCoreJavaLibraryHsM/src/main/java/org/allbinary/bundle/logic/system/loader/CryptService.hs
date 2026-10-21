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
-- package org.allbinary.bundle.logic.system.loader
module CryptService where

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
import qualified Class -- same package or java.lang
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified InputStream -- java.io.InputStream
import qualified Globals -- org.allbinary.globals.Globals
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified BasicTextJDialog -- org.allbinary.gui.dialog.BasicTextJDialog
import qualified ExitCloseListener -- org.allbinary.gui.dialog.ExitCloseListener
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbCryptUtil -- org.allbinary.logic.system.security.AbCryptUtil
import qualified AbKeys -- org.allbinary.logic.system.security.AbKeys
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified AbeLicenseInterface -- org.allbinary.logic.system.security.licensing.AbeLicenseInterface
import qualified AbeLicenseInterfaceFactory -- org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory
import qualified AbeNoLicense -- org.allbinary.logic.system.security.licensing.AbeNoLicense
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data CryptService = CryptService
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , abCryptUtil :: IORef (AbCryptUtil.AbCryptUtil)
    }

instance JavaNull CryptService where
    javaNull = javaNullRecord "CryptService"

instance JavaEquals CryptService where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CryptService where
    (==) = jrecordEquals

instance JavaObjectClass CryptService where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CryptService
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    abCryptUtil <- newIORef javaNull
    let this = CryptService header_ logUtil commonStrings abCryptUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getDecryptedInputStream" (\() -> getDecryptedInputStream_impl this)
    jregisterMethod header_ "showLicenseDialog" (\() -> showLicenseDialog_impl this)
    pure this

initFields_ :: CryptService -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.abCryptUtil =<< (AbCryptUtil.getInstance)
    pure ()

new_ :: IO CryptService
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CryptService -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (Globals.init ((jio (Globals.getInstance))) (jio (Class.getClassLoader ((jio (jobjectGetClass this))))) "./")
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Set Globals: " ++ javaToString (jio (URLGLOBALS.getWebappPath))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


getDecryptedInputStream :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> InputStream.InputStream -> IO (InputStream.InputStream)
getDecryptedInputStream object_ a1 a2 a3 = jmethod object_ "getDecryptedInputStream" (\() -> (getDecryptedInputStream_impl (javaCast object_ :: CryptService))) () a1 a2 a3

getDecryptedInputStream_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> InputStream.InputStream -> IO (InputStream.InputStream)
getDecryptedInputStream_super object_ a1 a2 a3 = (getDecryptedInputStream_impl (javaCast object_ :: CryptService)) a1 a2 a3

getDecryptedInputStream_impl :: CryptService -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> InputStream.InputStream -> IO (InputStream.InputStream)
getDecryptedInputStream_impl this abeClientInformation name inputStream = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (CryptService.showLicenseDialog this abeClientInformation e)
            ) $ do
            key <- (AbKeys.getKey ((jio (AbKeys.getInstance))) abeClientInformation name)
            decrypted <- (AbCryptUtil.decrypt ((jget (this).abCryptUtil)) inputStream key)
            (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (ByteArrayInputStream.new_1 decrypted))
        pure (javaNull)


showLicenseDialog :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> JavaException -> IO (())
showLicenseDialog object_ a1 a2 = jmethod object_ "showLicenseDialog" (\() -> (showLicenseDialog_impl (javaCast object_ :: CryptService))) () a1 a2

showLicenseDialog_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> JavaException -> IO (())
showLicenseDialog_super object_ a1 a2 = (showLicenseDialog_impl (javaCast object_ :: CryptService)) a1 a2

showLicenseDialog_impl :: CryptService -> AbeClientInformationInterface.AbeClientInformationInterface -> JavaException -> IO (())
showLicenseDialog_impl this abeClientInformation e = do
        handle (\(e3 :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e3)
            ) $ do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e)
            basicTextJDialog <- (BasicTextJDialog.new_1 (Control.Exception.displayException e))
            handle (\(e2 :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e2)
                ) $ do
                abeLicenseInterface <- (AbeLicenseInterfaceFactory.getLicenseInstance ((jio (AbeLicenseInterfaceFactory.getInstance))) abeClientInformation)
                when ((jtoObject abeLicenseInterface) /= (jtoObject (jio (AbeNoLicense.getInstance)))) $ do
                    when (jio (AbeLicenseInterface.isValid abeLicenseInterface)) $ do
                        Control.Monad.void (BasicTextJDialog.setText basicTextJDialog "Subscription Invalid")
            Control.Monad.void (BasicTextJDialog.addCloseListener basicTextJDialog (jio (ExitCloseListener.new_)))
            Control.Monad.void (BasicTextJDialog.setVisible basicTextJDialog True)
        pure ()


