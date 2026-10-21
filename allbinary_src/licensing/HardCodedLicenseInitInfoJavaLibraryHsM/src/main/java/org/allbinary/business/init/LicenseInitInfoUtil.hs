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
-- package org.allbinary.business.init
module LicenseInitInfoUtil where

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
import qualified LicenseInitInfo -- same package or java.lang

data LicenseInitInfoUtil = LicenseInitInfoUtil
    { header_ :: JavaHeader
    , iNITFILENAME :: IORef (String)
    , aBOUT :: IORef (String)
    , pRIVACY_POLICY :: IORef (String)
    , oFFICIAL_ALLBINARY_SERVICES_SERVER :: IORef (String)
    }

instance JavaNull LicenseInitInfoUtil where
    javaNull = javaNullRecord "LicenseInitInfoUtil"

instance JavaEquals LicenseInitInfoUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseInitInfoUtil where
    (==) = jrecordEquals

instance JavaObjectClass LicenseInitInfoUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseInitInfoUtil
newRecord_ = do
    header_ <- newJavaHeader
    iNITFILENAME <- newIORef ""
    aBOUT <- newIORef ""
    pRIVACY_POLICY <- newIORef ""
    oFFICIAL_ALLBINARY_SERVICES_SERVER <- newIORef ""
    let this = LicenseInitInfoUtil header_ iNITFILENAME aBOUT pRIVACY_POLICY oFFICIAL_ALLBINARY_SERVICES_SERVER
    jregisterLevel header_ this
    jregisterMethod header_ "setFilePath" (\() -> setFilePath_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "readAgain" (\() -> readAgain_impl this)
    pure this

initFields_ :: LicenseInitInfoUtil -> IO ()
initFields_ this = do
    jset this.iNITFILENAME ("licenseinitdata.dat")
    jset this.aBOUT ("about")
    jset this.pRIVACY_POLICY ("privacy_policy")
    jset this.oFFICIAL_ALLBINARY_SERVICES_SERVER ("https://services.allbinary.com/LicServ/serverssl.php")
    pure ()


getInstance :: IO (LicenseInitInfoUtil)
getInstance = do
        pure (LicenseInitInfoUtil.instance_)


setFilePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFilePath object_ a1 = jmethod object_ "setFilePath" (\() -> (setFilePath_impl (javaCast object_ :: LicenseInitInfoUtil))) () a1

setFilePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFilePath_super object_ a1 = (setFilePath_impl (javaCast object_ :: LicenseInitInfoUtil)) a1

setFilePath_impl :: LicenseInitInfoUtil -> String -> IO (())
setFilePath_impl this filePath = do
        pure ()

new_ :: IO LicenseInitInfoUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseInitInfoUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> LicenseInitInfo.LicenseInitInfo -> IO (())
write object_ a1 = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: LicenseInitInfoUtil))) () a1

write_super :: (JavaObjectClass this_) => this_ -> LicenseInitInfo.LicenseInitInfo -> IO (())
write_super object_ a1 = (write_impl (javaCast object_ :: LicenseInitInfoUtil)) a1

write_impl :: LicenseInitInfoUtil -> LicenseInitInfo.LicenseInitInfo -> IO (())
write_impl this initData = do
        pure ()


-- throws Exception
read :: (JavaObjectClass this_) => this_ -> IO (LicenseInitInfo.LicenseInitInfo)
read object_ = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: LicenseInitInfoUtil))) ()

read_super :: (JavaObjectClass this_) => this_ -> IO (LicenseInitInfo.LicenseInitInfo)
read_super object_ = (read_impl (javaCast object_ :: LicenseInitInfoUtil))

read_impl :: LicenseInitInfoUtil -> IO (LicenseInitInfo.LicenseInitInfo)
read_impl this = do
        (LicenseInitInfoUtil.readAgain this 0)


-- throws Exception
readAgain :: (JavaObjectClass this_) => this_ -> Int -> IO (LicenseInitInfo.LicenseInitInfo)
readAgain object_ a1 = jmethod object_ "readAgain" (\() -> (readAgain_impl (javaCast object_ :: LicenseInitInfoUtil))) () a1

readAgain_super :: (JavaObjectClass this_) => this_ -> Int -> IO (LicenseInitInfo.LicenseInitInfo)
readAgain_super object_ a1 = (readAgain_impl (javaCast object_ :: LicenseInitInfoUtil)) a1

readAgain_impl :: LicenseInitInfoUtil -> Int -> IO (LicenseInitInfo.LicenseInitInfo)
readAgain_impl this initializeCounter = do
        licenseInitInfo <- (LicenseInitInfo.new_)
        Control.Monad.void (LicenseInitInfo.clearServers licenseInitInfo)
        Control.Monad.void (LicenseInitInfo.addServer licenseInitInfo (jget (this).oFFICIAL_ALLBINARY_SERVICES_SERVER))
        pure (licenseInitInfo)


