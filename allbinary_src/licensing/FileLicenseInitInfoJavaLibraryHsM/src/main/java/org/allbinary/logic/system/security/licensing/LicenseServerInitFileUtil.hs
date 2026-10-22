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
module LicenseServerInitFileUtil where

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
import qualified InputStream -- java.io.InputStream
import qualified OutputStream -- java.io.OutputStream
import qualified LicenseInitInfoUtil -- org.allbinary.business.init.LicenseInitInfoUtil
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified FileStreamFactory -- org.allbinary.logic.io.FileStreamFactory
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified FileFactory -- org.allbinary.logic.io.file.FileFactory
import qualified SimpleFileUtil -- org.allbinary.logic.io.file.SimpleFileUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data LicenseServerInitFileUtil = LicenseServerInitFileUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , nULL_OUTPUT_STREAM :: IORef (OutputStream.OutputStream)
    }

instance JavaNull LicenseServerInitFileUtil where
    javaNull = javaNullRecord "LicenseServerInitFileUtil"

instance JavaEquals LicenseServerInitFileUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseServerInitFileUtil where
    (==) = jrecordEquals

instance JavaObjectClass LicenseServerInitFileUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseServerInitFileUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    nULL_OUTPUT_STREAM <- newIORef javaNull
    let this = LicenseServerInitFileUtil header_ logUtil commonStrings nULL_OUTPUT_STREAM
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    pure this

initFields_ :: LicenseServerInitFileUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.nULL_OUTPUT_STREAM =<< (SimpleFileUtil.nullOutputStream)
    pure ()

new_ :: IO LicenseServerInitFileUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseServerInitFileUtil -> IO ()
init_ this = do
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: LicenseServerInitFileUtil))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: LicenseServerInitFileUtil))

init_impl :: LicenseServerInitFileUtil -> IO (())
init_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e)
            ) $ do
            let filePath = (jget ((jio (LicenseInitInfoUtil.getInstance))).iNITFILENAME)
            Control.Monad.void (LicenseInitInfoUtil.setFilePath ((jio (LicenseInitInfoUtil.getInstance))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            if (jio (FileFactory.isFile ((jio (FileFactory.getInstance))) filePath)) then do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Using Existing License File" this (jget ((jget (this).commonStrings)).iNIT))
            else do
                Control.Monad.void (LicenseServerInitFileUtil.write this)
        pure ()


write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: LicenseServerInitFileUtil))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: LicenseServerInitFileUtil))

write_impl :: LicenseServerInitFileUtil -> IO (())
write_impl this = do
        fileOutputStream <- newIORef ((jget (this).nULL_OUTPUT_STREAM))
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast (jget fileOutputStream)))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e)
            ) $ do
            resourceUtil <- (ResourceUtil.getInstance)
            let filePath = (jget ((jio (LicenseInitInfoUtil.getInstance))).iNITFILENAME)
            inputStream <- (ResourceUtil.getResourceAsStream resourceUtil filePath)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Writing Default License File" this (jget ((jget (this).commonStrings)).iNIT))
            fileStreamFactory <- (FileStreamFactory.getInstance)
            assignedValue <- (FileStreamFactory.getFileOutputStreamInstance fileStreamFactory (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) filePath)
            jset fileOutputStream (assignedValue)
            b <- newIORef (0)
            index <- newIORef (0)
            fix $ \loop -> when True $ javaIteration (loop) $ do
                assignedValue <- (InputStream.read inputStream)
                jset b (assignedValue)
                when ((jget b) == (Prelude.negate 1)) $ do
                    throwIO JavaBreak
                Control.Monad.void (OutputStream.write ((jget fileOutputStream)) (jget b))
                jset index ((jget index) + 1)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Wrote Bytes: " ++ javaToString (jget index)) this (jget ((jget (this).commonStrings)).iNIT))
            Control.Monad.void (OutputStream.flush ((jget fileOutputStream)))
        pure ()


