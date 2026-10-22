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
import qualified TsUtil -- org.allbinary.TsUtil
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbDataInputStream -- org.allbinary.logic.io.AbDataInputStream
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified AbFileInputStream -- org.allbinary.logic.io.AbFileInputStream
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified FileStreamFactory -- org.allbinary.logic.io.FileStreamFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified DatabaseEncoder -- org.allbinary.logic.system.security.crypt.DatabaseEncoder
import qualified WeakCrypt -- org.allbinary.logic.system.security.crypt.WeakCrypt
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data LicenseInitInfoUtil = LicenseInitInfoUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , iNITFILENAME :: IORef (String)
    , aBOUT :: IORef (String)
    , pRIVACY_POLICY :: IORef (String)
    , filePath :: IORef (String)
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
    logUtil <- newIORef javaNull
    stringUtil <- newIORef javaNull
    iNITFILENAME <- newIORef ""
    aBOUT <- newIORef ""
    pRIVACY_POLICY <- newIORef ""
    filePath <- newIORef ""
    let this = LicenseInitInfoUtil header_ logUtil stringUtil iNITFILENAME aBOUT pRIVACY_POLICY filePath
    jregisterLevel header_ this
    jregisterMethod header_ "setFilePath" (\() -> setFilePath_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "readAgain" (\() -> readAgain_impl this)
    jregisterMethod header_ "getFilePath" (\() -> getFilePath_impl this)
    pure this

initFields_ :: LicenseInitInfoUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.iNITFILENAME ("licenseinitdata.dat")
    jset this.aBOUT ("about")
    jset this.pRIVACY_POLICY ("privacy_policy")
    jset this.filePath ((jget ((jget (this).stringUtil)).eMPTY_STRING))
    pure ()

new_ :: IO LicenseInitInfoUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseInitInfoUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LicenseInitInfoUtil)
getInstance = do
        pure (LicenseInitInfoUtil.instance_)


setFilePath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFilePath object_ a1 = jmethod object_ "setFilePath" (\() -> (setFilePath_impl (javaCast object_ :: LicenseInitInfoUtil))) () a1

setFilePath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFilePath_super object_ a1 = (setFilePath_impl (javaCast object_ :: LicenseInitInfoUtil)) a1

setFilePath_impl :: LicenseInitInfoUtil -> String -> IO (())
setFilePath_impl this filePath = do
        jset (this).filePath (filePath)
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> LicenseInitInfo.LicenseInitInfo -> IO (())
write object_ a1 = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: LicenseInitInfoUtil))) () a1

write_super :: (JavaObjectClass this_) => this_ -> LicenseInitInfo.LicenseInitInfo -> IO (())
write_super object_ a1 = (write_impl (javaCast object_ :: LicenseInitInfoUtil)) a1

write_impl :: LicenseInitInfoUtil -> LicenseInitInfo.LicenseInitInfo -> IO (())
write_impl this initData = do
        when ((jget (this).filePath) == (jget ((jget (this).stringUtil)).eMPTY_STRING)) $ do
            jset (this).filePath (((jio (URLGLOBALS.getMainPath)) + (jget ((jio (PATH_GLOBALS.getInstance))).iNIT_PATH)))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Command Failed: " ++ (jget (this).iNITFILENAME)) this "write" e)
            Control.Monad.void (FileStreamFactory.delete ((jio (FileStreamFactory.getInstance))) (jget (this).filePath) (jget (this).iNITFILENAME))
            javaThrow (e)
            ) $ do
            tsUtil <- (TsUtil.getInstance)
            dataOutputStream <- (fmap (\value_ -> javaCast value_ :: AbDataOutputStream.AbDataOutputStream) (DataOutputStreamFactory.getInstance_2 ((jio (DataOutputStreamFactory.getInstance))) (jget (this).filePath) (jget (this).iNITFILENAME)))
            licenseIdCrypted <- (TsUtil.getByteArray tsUtil (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 1))) (jio (LicenseInitInfo.getLicenseId initData)))))
            Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode licenseIdCrypted)))
            numberOfLicenseServers <- (LicenseInitInfo.getNumberOfServers initData)
            Control.Monad.void (AbDataOutputStream.writeInt dataOutputStream numberOfLicenseServers)
            licenseServerCrypted <- newIORef (javaNull)
            forM_ [0 .. numberOfLicenseServers - 1] $ \index -> javaIteration (pure ()) $ do
                assignedValue <- (TsUtil.getByteArray tsUtil (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 3))) (jio (LicenseInitInfo.getServer initData index)))))
                jset licenseServerCrypted (assignedValue)
                Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode (jget licenseServerCrypted))))
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
    javaCatchReturn $ do
        let mETHOD_NAME = "readAgain"
        when ((jget (this).filePath) == (jget ((jget (this).stringUtil)).eMPTY_STRING)) $ do
            jset (this).filePath (((jio (URLGLOBALS.getMainPath)) + (jget ((jio (PATH_GLOBALS.getInstance))).iNIT_PATH)))
        handle (\(e :: JavaException) -> do
            handle (\(e2 :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("LicenseInitInfo Read Retry: " ++ (jget (this).iNITFILENAME)) this "readAgain()" e2)
                ) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Command Failed: " ++ (jget (this).iNITFILENAME)) this mETHOD_NAME e)
            javaThrow ((JavaException "Exception" ("LicenseInitInfo Read Error: " ++ (jget (this).iNITFILENAME))))
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("LicenseInitInfo File: " ++ (jget (this).iNITFILENAME)) this mETHOD_NAME)
            fileStreamFactory <- (FileStreamFactory.getInstance)
            iFile <- (FileStreamFactory.getFileInputStreamInstance fileStreamFactory (jget (this).filePath) (jget (this).iNITFILENAME))
            if (iFile /= javaNull) then do
                iData <- (AbDataInputStream.new_1 iFile)
                initInfo <- (LicenseInitInfo.new_)
                decodedByteArray <- newIORef =<< (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))
                licenseIdDecoded <- (jnewString (jget decodedByteArray))
                Control.Monad.void (LicenseInitInfo.setLicenseId initInfo (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 1))) licenseIdDecoded)))
                numberOfLicenseServers <- (AbDataInputStream.readInt iData)
                nEXT_FILE <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).nEXT)))) " License Server From File: "))))
                licenseServerDecoded <- newIORef ("")
                forM_ [0 .. numberOfLicenseServers - 1] $ \index -> javaIteration (pure ()) $ do
                    assignedValue <- (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))
                    jset decodedByteArray (assignedValue)
                    assignedValue <- (jnewString (jget decodedByteArray))
                    jset licenseServerDecoded (assignedValue)
                    Control.Monad.void (LicenseInitInfo.setServer initInfo (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 3))) (jget licenseServerDecoded))) index)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (nEXT_FILE ++ javaToString (jio (LicenseInitInfo.getServer initInfo index))) this mETHOD_NAME)
                javaReturn (initInfo)
            else do
                javaThrow ((JavaException "Exception" ("Could Not Load License InitInfo: " ++ (jget (this).iNITFILENAME))))


getFilePath :: (JavaObjectClass this_) => this_ -> IO (String)
getFilePath object_ = jmethod object_ "getFilePath" (\() -> (getFilePath_impl (javaCast object_ :: LicenseInitInfoUtil))) ()

getFilePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFilePath_super object_ = (getFilePath_impl (javaCast object_ :: LicenseInitInfoUtil))

getFilePath_impl :: LicenseInitInfoUtil -> IO (String)
getFilePath_impl this = do
        pure ((jget (this).filePath))


