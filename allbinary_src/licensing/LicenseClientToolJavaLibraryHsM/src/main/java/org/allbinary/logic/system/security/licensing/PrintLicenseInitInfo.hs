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
module PrintLicenseInitInfo where

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
import qualified FileFactory -- org.allbinary.logic.io.file.FileFactory
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data PrintLicenseInitInfo = PrintLicenseInitInfo
    { header_ :: JavaHeader
    }

instance JavaNull PrintLicenseInitInfo where
    javaNull = javaNullRecord "PrintLicenseInitInfo"

instance JavaEquals PrintLicenseInitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PrintLicenseInitInfo where
    (==) = jrecordEquals

instance JavaObjectClass PrintLicenseInitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

pATH = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PrintLicenseInitInfo
newRecord_ = do
    header_ <- newJavaHeader
    let this = PrintLicenseInitInfo header_
    jregisterLevel header_ this
    jregisterMethod header_ "getLicenseInitInfo" (\() -> getLicenseInitInfo_impl this)
    jregisterMethod header_ "printInitInfo" (\() -> printInitInfo_impl this)
    pure this

initFields_ :: PrintLicenseInitInfo -> IO ()
initFields_ this = do
    pure ()

new_1 :: JavaArray (String) -> IO PrintLicenseInitInfo
new_1 options = do
    this <- newRecord_
    init_1 this options
    pure this

init_1 :: PrintLicenseInitInfo -> JavaArray (String) -> IO ()
init_1 this options = do
        initFields_ this
        Control.Monad.void (LicenseInitInfoUtil.setFilePath ((jio (LicenseInitInfoUtil.getInstance))) (PrintLicenseInitInfo.pATH + (jget ((jio (PATH_GLOBALS.getInstance))).iNIT_PATH)))
        pure ()


-- throws Exception
getLicenseInitInfo :: (JavaObjectClass this_) => this_ -> IO (LicenseInitInfo.LicenseInitInfo)
getLicenseInitInfo object_ = jmethod object_ "getLicenseInitInfo" (\() -> (getLicenseInitInfo_impl (javaCast object_ :: PrintLicenseInitInfo))) ()

getLicenseInitInfo_super :: (JavaObjectClass this_) => this_ -> IO (LicenseInitInfo.LicenseInitInfo)
getLicenseInitInfo_super object_ = (getLicenseInitInfo_impl (javaCast object_ :: PrintLicenseInitInfo))

getLicenseInitInfo_impl :: PrintLicenseInitInfo -> IO (LicenseInitInfo.LicenseInitInfo)
getLicenseInitInfo_impl this = do
    javaCatchReturn $ do
        licenseInitInfoUtil <- (LicenseInitInfoUtil.getInstance)
        if (jio (FileFactory.isFile ((jio (FileFactory.getInstance))) (jio (LicenseInitInfoUtil.getFilePath licenseInitInfoUtil)))) then do
            javaReturn =<< (LicenseInitInfoUtil.read licenseInitInfoUtil)
        else do
            Control.Monad.void (putStrLn (javaToString ("No Licence File at: " ++ javaToString (jio (LicenseInitInfoUtil.getFilePath licenseInitInfoUtil)))))
            javaReturn =<< (LicenseInitInfo.new_)


printInitInfo :: (JavaObjectClass this_) => this_ -> IO (())
printInitInfo object_ = jmethod object_ "printInitInfo" (\() -> (printInitInfo_impl (javaCast object_ :: PrintLicenseInitInfo))) ()

printInitInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
printInitInfo_super object_ = (printInitInfo_impl (javaCast object_ :: PrintLicenseInitInfo))

printInitInfo_impl :: PrintLicenseInitInfo -> IO (())
printInitInfo_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (putStr (javaToString ("Error: " ++ javaToString e)))
            Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
            ) $ do
            licenseInitInfo <- (PrintLicenseInitInfo.getLicenseInitInfo this)
            Control.Monad.void (putStrLn (javaToString ("License ID: " ++ javaToString (jio (LicenseInitInfo.getLicenseId licenseInitInfo)))))
            list <- (LicenseInitInfo.getServerList licenseInitInfo)
            size <- (BasicArrayList.size list)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (putStrLn (javaToString ("Lic Serv: " ++ javaToString (jio (BasicArrayList.get list index)))))
        pure ()


-- throws Exception
main :: JavaArray (String) -> IO (())
main args = do
        initInfo <- (new_1 args)
        Control.Monad.void (PrintLicenseInitInfo.printInitInfo initInfo)
        pure ()


