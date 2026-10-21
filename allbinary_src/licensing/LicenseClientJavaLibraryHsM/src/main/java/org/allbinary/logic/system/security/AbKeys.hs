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
-- package org.allbinary.logic.system.security
module AbKeys where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified AbeLicenseInterfaceFactory -- org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException

data AbKeys = AbKeys
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull AbKeys where
    javaNull = javaNullRecord "AbKeys"

instance JavaEquals AbKeys where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbKeys where
    (==) = jrecordEquals

instance JavaObjectClass AbKeys where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbKeys
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = AbKeys header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    pure this

initFields_ :: AbKeys -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (AbKeys)
getInstance = do
        pure (AbKeys.instance_)

new_ :: IO AbKeys
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbKeys -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws LicensingException
getKey :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (String)
getKey object_ a1 a2 = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: AbKeys))) () a1 a2

getKey_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (String)
getKey_super object_ a1 a2 = (getKey_impl (javaCast object_ :: AbKeys)) a1 a2

getKey_impl :: AbKeys -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (String)
getKey_impl this abeClientInformation keyName = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Getting Key: " ++ keyName) this "getKey")
            when (((((Prelude.fromEnum (Prelude.compare keyName "DirectX 8") - 1) == 0) || ((Prelude.fromEnum (Prelude.compare keyName "DirectX") - 1) == 0)) || ((Prelude.fromEnum (Prelude.compare keyName "Low Level") - 1) == 0)) || ((Prelude.fromEnum (Prelude.compare keyName "System Drivers") - 1) == 0)) $ do
                javaReturn ("Temp For Input Library")
            (AbeLicenseInterface.getKey ((jio (AbeLicenseInterfaceFactory.getLicenseInstance ((jio (AbeLicenseInterfaceFactory.getInstance))) abeClientInformation))) keyName)


