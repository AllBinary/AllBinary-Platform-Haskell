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
-- package org.allbinary.logic.system.loader
module SecuredNativeLibraryHelperWrapper (module SecuredNativeLibraryHelperWrapper, module NativeLibraryHelperWrapper) where

import NativeLibraryHelperWrapper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, unlock, unlock_super, unlock_impl, securedNativeLibraryInterface)
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
import qualified SecuredNativeLibraryInterface -- same package or java.lang
import qualified AbKeys -- org.allbinary.logic.system.security.AbKeys
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified NativeLibraryHelperWrapper

data SecuredNativeLibraryHelperWrapper = SecuredNativeLibraryHelperWrapper
    { header_ :: JavaHeader
    , base :: NativeLibraryHelperWrapper.NativeLibraryHelperWrapper
    , securedNativeLibraryInterface :: IORef (SecuredNativeLibraryInterface.SecuredNativeLibraryInterface)
    }

instance JavaNull SecuredNativeLibraryHelperWrapper where
    javaNull = javaNullRecord "SecuredNativeLibraryHelperWrapper"

instance JavaEquals SecuredNativeLibraryHelperWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SecuredNativeLibraryHelperWrapper where
    (==) = jrecordEquals

instance JavaObjectClass SecuredNativeLibraryHelperWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SecuredNativeLibraryHelperWrapper
newRecord_ = do
    base <- NativeLibraryHelperWrapper.newRecord_
    let header_ = base.header_
    securedNativeLibraryInterface <- newIORef javaNull
    let this = SecuredNativeLibraryHelperWrapper header_ base securedNativeLibraryInterface
    jregisterLevel header_ this
    jregisterMethod header_ "unlock" (\() -> unlock_impl this)
    pure this

initFields_ :: SecuredNativeLibraryHelperWrapper -> IO ()
initFields_ this = do
    jset this.securedNativeLibraryInterface (javaNull)
    pure ()

new_1 :: SecuredNativeLibraryInterface.SecuredNativeLibraryInterface -> IO SecuredNativeLibraryHelperWrapper
new_1 securedNativeLibraryInterface = do
    this <- newRecord_
    init_1 this securedNativeLibraryInterface
    pure this

init_1 :: SecuredNativeLibraryHelperWrapper -> SecuredNativeLibraryInterface.SecuredNativeLibraryInterface -> IO ()
init_1 this securedNativeLibraryInterface = do
        NativeLibraryHelperWrapper.init_1 this.base (jio (SecuredNativeLibraryInterface.getLibraryName securedNativeLibraryInterface))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).securedNativeLibraryInterface (securedNativeLibraryInterface)
        pure ()


-- throws LicensingException
unlock :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (Bool)
unlock object_ a1 = jmethod object_ "unlock" (\() -> (unlock_impl (javaCast object_ :: SecuredNativeLibraryHelperWrapper))) () a1

unlock_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (Bool)
unlock_super object_ a1 = (unlock_impl (javaCast object_ :: SecuredNativeLibraryHelperWrapper)) a1

unlock_impl :: SecuredNativeLibraryHelperWrapper -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (Bool)
unlock_impl this abeClientInformation = do
        (SecuredNativeLibraryInterface.unlock ((jget (this).securedNativeLibraryInterface)) (jio (AbKeys.getKey ((jio (AbKeys.getInstance))) abeClientInformation (jio (SecuredNativeLibraryInterface.getName ((jget (this).securedNativeLibraryInterface)))))))


