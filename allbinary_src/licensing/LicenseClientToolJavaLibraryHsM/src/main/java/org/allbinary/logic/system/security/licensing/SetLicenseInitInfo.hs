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
module SetLicenseInitInfo where

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
import qualified BufferedReader -- java.io.BufferedReader
import qualified InputStreamReader -- java.io.InputStreamReader
import qualified LicenseInitInfo -- org.allbinary.business.init.LicenseInitInfo
import qualified LicenseInitInfoUtil -- org.allbinary.business.init.LicenseInitInfoUtil
import qualified FileFactory -- org.allbinary.logic.io.file.FileFactory
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified File -- java.io.File
import qualified FileReader -- java.io.FileReader
import qualified LineNumberReader -- java.io.LineNumberReader
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data SetLicenseInitInfo = SetLicenseInitInfo
    { header_ :: JavaHeader
    , vector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull SetLicenseInitInfo where
    javaNull = javaNullRecord "SetLicenseInitInfo"

instance JavaEquals SetLicenseInitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SetLicenseInitInfo where
    (==) = jrecordEquals

instance JavaObjectClass SetLicenseInitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE stdinput #-}
stdinput = unsafePerformIO ((BufferedReader.new_1 (jio (InputStreamReader.new_1 (System.in_)))) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SetLicenseInitInfo
newRecord_ = do
    header_ <- newJavaHeader
    vector <- newIORef javaNull
    let this = SetLicenseInitInfo header_ vector
    jregisterLevel header_ this
    jregisterMethod header_ "getLicenseInitInfo" (\() -> getLicenseInitInfo_impl this)
    jregisterMethod header_ "createNewLicenseInitInfo" (\() -> createNewLicenseInitInfo_impl this)
    pure this

initFields_ :: SetLicenseInitInfo -> IO ()
initFields_ this = do
    jset this.vector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_1 :: JavaArray (String) -> IO SetLicenseInitInfo
new_1 options = do
    this <- newRecord_
    init_1 this options
    pure this

init_1 :: SetLicenseInitInfo -> JavaArray (String) -> IO ()
init_1 this options = do
        initFields_ this
        Control.Monad.void (LicenseInitInfoUtil.setFilePath ((jio (LicenseInitInfoUtil.getInstance))) (PrintLicenseInitInfo.pATH + (jget ((jio (PATH_GLOBALS.getInstance))).iNIT_PATH)))
        forM_ [1 .. (jlength options) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).vector)) (jindex options (index)))
        pure ()


-- throws Exception
getLicenseInitInfo :: (JavaObjectClass this_) => this_ -> IO (LicenseInitInfo.LicenseInitInfo)
getLicenseInitInfo object_ = jmethod object_ "getLicenseInitInfo" (\() -> (getLicenseInitInfo_impl (javaCast object_ :: SetLicenseInitInfo))) ()

getLicenseInitInfo_super :: (JavaObjectClass this_) => this_ -> IO (LicenseInitInfo.LicenseInitInfo)
getLicenseInitInfo_super object_ = (getLicenseInitInfo_impl (javaCast object_ :: SetLicenseInitInfo))

getLicenseInitInfo_impl :: SetLicenseInitInfo -> IO (LicenseInitInfo.LicenseInitInfo)
getLicenseInitInfo_impl this = do
    javaCatchReturn $ do
        licenseInitInfoUtil <- (LicenseInitInfoUtil.getInstance)
        if (jio (FileFactory.isFile ((jio (FileFactory.getInstance))) (jget (licenseInitInfoUtil).iNITFILENAME))) then do
            javaReturn =<< (LicenseInitInfoUtil.read licenseInitInfoUtil)
        else do
            javaReturn =<< (LicenseInitInfo.new_)


createNewLicenseInitInfo :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
createNewLicenseInitInfo object_ a1 = jmethod object_ "createNewLicenseInitInfo" (\() -> (createNewLicenseInitInfo_impl (javaCast object_ :: SetLicenseInitInfo))) () a1

createNewLicenseInitInfo_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
createNewLicenseInitInfo_super object_ a1 = (createNewLicenseInitInfo_impl (javaCast object_ :: SetLicenseInitInfo)) a1

createNewLicenseInitInfo_impl :: SetLicenseInitInfo -> BasicArrayList.BasicArrayList -> IO (())
createNewLicenseInitInfo_impl this licenceServerVector = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (putStr (javaToString ("Error: " ++ javaToString e)))
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            ) $ do
            when (licenceServerVector == javaNull) $ do
                javaThrow ((JavaException "Exception" "null BasicArrayList Passed - Just Make Empty if you want"))
            licenseInitInfo <- (SetLicenseInitInfo.getLicenseInitInfo this)
            Control.Monad.void (putStrLn (javaToString "License Serv Example: http://www.dartstatistics.com/LicServ/serverssl.php"))
            Control.Monad.void (LicenseInitInfo.clearServers licenseInitInfo)
            file <- (File.new_1 (javaToString PrintLicenseInitInfo.pATH ++ "licenseservers.txt"))
            reader <- (FileReader.new_1 file)
            lineNumberReader <- (LineNumberReader.new_1 reader)
            fix $ \loop -> when True $ javaIteration (loop) $ do
                line <- (LineNumberReader.readLine lineNumberReader)
                if (line /= javaNull) then do
                    Control.Monad.void (LicenseInitInfo.addServer licenseInitInfo line)
                else do
                    throwIO JavaBreak
            Control.Monad.void (LicenseInitInfoUtil.write ((jio (LicenseInitInfoUtil.getInstance))) licenseInitInfo)
            Control.Monad.void (LicenseInitInfoUtil.read ((jio (LicenseInitInfoUtil.getInstance))))
        pure ()


-- throws Exception
main :: JavaArray (String) -> IO (())
main args = do
        initInfo <- (new_1 args)
        Control.Monad.void (SetLicenseInitInfo.createNewLicenseInitInfo initInfo (javaCast (jio (BasicArrayListD.new_))))
        pure ()


