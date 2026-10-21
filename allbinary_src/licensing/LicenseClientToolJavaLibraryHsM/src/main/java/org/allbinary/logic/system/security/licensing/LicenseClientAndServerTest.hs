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
module LicenseClientAndServerTest where

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
import qualified BasicArrayListD -- same package or java.lang
import qualified PrintLicenseInitInfo -- same package or java.lang
import qualified AbeClientInformationInterfaceFactory -- same package or java.lang
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified AbeLicenseInterface -- same package or java.lang
import qualified File -- java.io.File
import qualified FileReader -- java.io.FileReader
import qualified LineNumberReader -- java.io.LineNumberReader
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LicenseInitInfo -- org.allbinary.business.init.LicenseInitInfo
import qualified LicenseInitInfoUtil -- org.allbinary.business.init.LicenseInitInfoUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified XmlRpcAbeLicenseRetrievalClient -- org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data LicenseClientAndServerTest = LicenseClientAndServerTest
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , vector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull LicenseClientAndServerTest where
    javaNull = javaNullRecord "LicenseClientAndServerTest"

instance JavaEquals LicenseClientAndServerTest where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseClientAndServerTest where
    (==) = jrecordEquals

instance JavaObjectClass LicenseClientAndServerTest where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseClientAndServerTest
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    vector <- newIORef javaNull
    let this = LicenseClientAndServerTest header_ logUtil vector
    jregisterLevel header_ this
    jregisterMethod header_ "test" (\() -> test_impl this)
    pure this

initFields_ :: LicenseClientAndServerTest -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.vector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_1 :: JavaArray (String) -> IO LicenseClientAndServerTest
new_1 options = do
    this <- newRecord_
    init_1 this options
    pure this

init_1 :: LicenseClientAndServerTest -> JavaArray (String) -> IO ()
init_1 this options = do
        initFields_ this
        Control.Monad.void (LicenseInitInfoUtil.setFilePath ((jio (LicenseInitInfoUtil.getInstance))) (PrintLicenseInitInfo.pATH + (jget ((jio (PATH_GLOBALS.getInstance))).iNIT_PATH)))
        forM_ [1 .. (jlength options) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).vector)) (jindex options (index)))
        when ((jlength options) < 2) $ do
            file <- (File.new_1 (javaToString PrintLicenseInitInfo.pATH ++ "testlicenseservers.txt"))
            reader <- (FileReader.new_1 file)
            lineNumberReader <- (LineNumberReader.new_1 reader)
            fix $ \loop -> when True $ javaIteration (loop) $ do
                line <- (LineNumberReader.readLine lineNumberReader)
                if (line /= javaNull) then do
                    Control.Monad.void (BasicArrayList.add ((jget (this).vector)) line)
                else do
                    throwIO JavaBreak
        pure ()


test :: (JavaObjectClass this_) => this_ -> IO (())
test object_ = jmethod object_ "test" (\() -> (test_impl (javaCast object_ :: LicenseClientAndServerTest))) ()

test_super :: (JavaObjectClass this_) => this_ -> IO (())
test_super object_ = (test_impl (javaCast object_ :: LicenseClientAndServerTest))

test_impl :: LicenseClientAndServerTest -> IO (())
test_impl this = do
        stringBuffer <- (StringMaker.new_)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Test Error: " ++ (jio (StringMaker.toString stringBuffer))) this "test" e)
            ) $ do
            list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            let tESTING = "Testing with new licence:<br/>"
            let pROCESSING = "Processing: <br/>"
            let eND = "<br/>End<br/>"
            let rESULT = "Test Result: "
            size <- (BasicArrayList.size ((jget (this).vector)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer tESTING)
                let serverName = (javaCast (jio (BasicArrayList.get ((jget (this).vector)) index)) :: String)
                handle (\(e :: JavaException) -> do
                    Control.Monad.void (BasicArrayList.add list serverName)
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Test Error: " ++ (jio (StringMaker.toString stringBuffer))) this "test" e)
                    ) $ do
                    licenseInitInfo <- (LicenseInitInfo.new_)
                    Control.Monad.void (LicenseInitInfo.addServer licenseInitInfo serverName)
                    Control.Monad.void (LicenseInitInfoUtil.write ((jio (LicenseInitInfoUtil.getInstance))) licenseInitInfo)
                    abeClientInformation <- (AbeClientInformationInterfaceFactory.getInstance)
                    xmlRpcAbeLicenseClient <- (XmlRpcAbeLicenseRetrievalClient.new_1 abeClientInformation)
                    let abeLicenseInterface = (javaCast (jio (XmlRpcAbeLicenseRetrievalClient.get xmlRpcAbeLicenseClient javaNull)) :: AbeLicenseInterface.AbeLicenseInterface)
                    when (abeLicenseInterface /= javaNull) $ do
                        Control.Monad.void (StringMaker.append stringBuffer pROCESSING)
                        Control.Monad.void (StringMaker.append stringBuffer (jio (AbeLicenseInterface.toString abeLicenseInterface)))
                    Control.Monad.void (StringMaker.append stringBuffer eND)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (rESULT ++ (jio (StringMaker.toString stringBuffer))) this "test")
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Total Servers Failed: " ++ javaToString (jio (BasicArrayList.size list))) ++ " Failed Servers: ") ++ (jio (BasicArrayList.toString list))) this "test")
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        handle (\(e :: JavaException) -> do
            logUtil <- (LogUtil.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) "main()" "main()" e)
            ) $ do
            licensingTest <- (new_1 args)
            Control.Monad.void (LicenseClientAndServerTest.test licensingTest)
        pure ()


