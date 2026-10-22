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
-- package org.allbinary.logic.system.hardware.components.linux
module Cpu where

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
import qualified CpuInfo -- same package or java.lang
import qualified FileReader -- java.io.FileReader
import qualified LineNumberReader -- java.io.LineNumberReader
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified SubDirectory -- org.allbinary.logic.io.file.directory.SubDirectory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CpuInterface -- org.allbinary.logic.system.hardware.components.interfaces.CpuInterface
import qualified HardwareComponentInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- implements CpuInterface
-- implements HardwareComponentInterface
data Cpu = Cpu
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , cPUFILE :: IORef (String)
    , cpuHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull Cpu where
    javaNull = javaNullRecord "Cpu"

instance JavaEquals Cpu where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Cpu where
    (==) = jrecordEquals

instance JavaObjectClass Cpu where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Cpu
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    cPUFILE <- newIORef ""
    cpuHashMap <- newIORef javaNull
    let this = Cpu header_ logUtil commonStrings cPUFILE cpuHashMap
    jregisterLevel header_ this
    CpuInterface.registerInterface_ header_
    HardwareComponentInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "init_2" (\() -> init_2_impl this)
    jregisterMethod header_ "getProcessor" (\() -> getProcessor_impl this)
    jregisterMethod header_ "getVendorId" (\() -> getVendorId_impl this)
    jregisterMethod header_ "getCpuFamily" (\() -> getCpuFamily_impl this)
    jregisterMethod header_ "getModel" (\() -> getModel_impl this)
    jregisterMethod header_ "getModelName" (\() -> getModelName_impl this)
    jregisterMethod header_ "getStepping" (\() -> getStepping_impl this)
    jregisterMethod header_ "getCpuSpeed" (\() -> getCpuSpeed_impl this)
    jregisterMethod header_ "getCacheSize" (\() -> getCacheSize_impl this)
    jregisterMethod header_ "compareTo_overload1" (\() -> compareTo_overload1_impl this)
    jregisterMethod header_ "compareTo_overload2" (\() -> compareTo_overload2_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Cpu -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.cPUFILE ("/proc/cpuinfo")
    jset this.cpuHashMap (javaNull)
    pure ()

new_1 :: String -> IO Cpu
new_1 filePath = do
    this <- newRecord_
    init_1 this filePath
    pure this

init_1 :: Cpu -> String -> IO ()
init_1 this filePath = do
        initFields_ this
        Control.Monad.void (Cpu.init this filePath)
        pure ()

new_ :: IO Cpu
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Cpu -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (Cpu.init this (jget (this).cPUFILE))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> String -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Cpu))) () a1

init_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: Cpu)) a1

init_impl :: Cpu -> String -> IO (())
init_impl this filePath = do
        let lineNumberReader = javaNull
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).oS))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Cpu Data: "))) (jio (Cpu.toString this))))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (Cpu.init_2 this lineNumberReader filePath)
        pure ()


-- throws Exception
init_2 :: (JavaObjectClass this_) => this_ -> LineNumberReader.LineNumberReader -> String -> IO (())
init_2 object_ a1 a2 = jmethod object_ "init_2" (\() -> (init_2_impl (javaCast object_ :: Cpu))) () a1 a2

init_2_super :: (JavaObjectClass this_) => this_ -> LineNumberReader.LineNumberReader -> String -> IO (())
init_2_super object_ a1 a2 = (init_2_impl (javaCast object_ :: Cpu)) a1 a2

init_2_impl :: Cpu -> LineNumberReader.LineNumberReader -> String -> IO (())
init_2_impl this lineNumberReader filePath = do
        lineNumberReader <- newIORef lineNumberReader
        flip finally (do
            when ((jget lineNumberReader) /= javaNull) $ do
                Control.Monad.void (jio (LineNumberReader.close ((jget lineNumberReader))))
            ) $ do
            fileReader <- (FileReader.new_1 filePath)
            assignedValue <- (LineNumberReader.new_1 fileReader)
            jset lineNumberReader (assignedValue)
            assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            jset (this).cpuHashMap (assignedValue)
            when ((jget lineNumberReader) == javaNull) $ do
                fileVector <- (SubDirectory.search ((jio (SubDirectory.getInstance))) filePath (jio (AbFile.createAbFile (jget ((jio (FilePathData.getInstance))).pATH_START))))
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).oS))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Cpu File BasicArrayList Size: "))) (jio (BasicArrayList.size fileVector))))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
                when (Prelude.not (jio (BasicArrayList.isEmpty fileVector))) $ do
                    let file = (javaCast (jio (BasicArrayList.get fileVector 0)) :: AbFile.AbFile)
                    assignedValue <- (LineNumberReader.new_1 (jio (FileReader.new_1 (jio (AbFile.getPath file)))))
                    jset lineNumberReader (assignedValue)
            when ((jget lineNumberReader) /= javaNull) $ do
                nextLine <- newIORef =<< (LineNumberReader.readLine ((jget lineNumberReader)))
                fix $ \loop -> when (((jget lineNumberReader) /= javaNull) && ((jget nextLine) /= javaNull)) $ javaIteration (loop) $ do
                    let index = (jstringIndexOf (jget nextLine) ':' 0)
                    when (index >= 0) $ do
                        let key = (Prelude.take ((index) - (0)) (Prelude.drop (0) (jget nextLine)))
                        let valueIndex = (index + 1)
                        let value = (Prelude.take (((Prelude.length (jget nextLine))) - (valueIndex)) (Prelude.drop (valueIndex) (jget nextLine)))
                        when ((jstringIndexOf key (jio (CpuInfo.toString CpuInfo.pROCESSOR)) 0) >= 0) $ do
                            Control.Monad.void (jio (HashMap.put ((jget (this).cpuHashMap)) (CpuInfo.pROCESSOR) value))
                        when ((jstringIndexOf key (jio (CpuInfo.toString CpuInfo.vENDORID)) 0) >= 0) $ do
                            Control.Monad.void (jio (HashMap.put ((jget (this).cpuHashMap)) (CpuInfo.vENDORID) value))
                        when ((jstringIndexOf key (jio (CpuInfo.toString CpuInfo.cPUFAMILY)) 0) >= 0) $ do
                            Control.Monad.void (jio (HashMap.put ((jget (this).cpuHashMap)) (CpuInfo.cPUFAMILY) value))
                        when ((jstringIndexOf key (jio (CpuInfo.toString CpuInfo.mODEL)) 0) >= 0) $ do
                            Control.Monad.void (jio (HashMap.put ((jget (this).cpuHashMap)) (CpuInfo.mODEL) value))
                        when ((jstringIndexOf key (jio (CpuInfo.toString CpuInfo.mODELNAME)) 0) >= 0) $ do
                            Control.Monad.void (jio (HashMap.put ((jget (this).cpuHashMap)) (CpuInfo.mODELNAME) value))
                        when ((jstringIndexOf key (jio (CpuInfo.toString CpuInfo.sTEPPING)) 0) >= 0) $ do
                            Control.Monad.void (jio (HashMap.put ((jget (this).cpuHashMap)) (CpuInfo.sTEPPING) value))
                        when ((jstringIndexOf key (jio (CpuInfo.toString CpuInfo.cPUMHZ)) 0) >= 0) $ do
                            Control.Monad.void (jio (HashMap.put ((jget (this).cpuHashMap)) (CpuInfo.cPUMHZ) value))
                        when ((jstringIndexOf key (jio (CpuInfo.toString CpuInfo.cACHESIZE)) 0) >= 0) $ do
                            Control.Monad.void (jio (HashMap.put ((jget (this).cpuHashMap)) (CpuInfo.cACHESIZE) value))
                    assignedValue <- (LineNumberReader.readLine ((jget lineNumberReader)))
                    jset nextLine (assignedValue)
        pure ()


getProcessor :: (JavaObjectClass this_) => this_ -> IO (String)
getProcessor object_ = jmethod object_ "getProcessor" (\() -> (getProcessor_impl (javaCast object_ :: Cpu))) ()

getProcessor_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProcessor_super object_ = (getProcessor_impl (javaCast object_ :: Cpu))

getProcessor_impl :: Cpu -> IO (String)
getProcessor_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).cpuHashMap)) (CpuInfo.pROCESSOR))) :: String))


getVendorId :: (JavaObjectClass this_) => this_ -> IO (String)
getVendorId object_ = jmethod object_ "getVendorId" (\() -> (getVendorId_impl (javaCast object_ :: Cpu))) ()

getVendorId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getVendorId_super object_ = (getVendorId_impl (javaCast object_ :: Cpu))

getVendorId_impl :: Cpu -> IO (String)
getVendorId_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).cpuHashMap)) (CpuInfo.vENDORID))) :: String))


getCpuFamily :: (JavaObjectClass this_) => this_ -> IO (String)
getCpuFamily object_ = jmethod object_ "getCpuFamily" (\() -> (getCpuFamily_impl (javaCast object_ :: Cpu))) ()

getCpuFamily_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCpuFamily_super object_ = (getCpuFamily_impl (javaCast object_ :: Cpu))

getCpuFamily_impl :: Cpu -> IO (String)
getCpuFamily_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).cpuHashMap)) (CpuInfo.cPUFAMILY))) :: String))


getModel :: (JavaObjectClass this_) => this_ -> IO (String)
getModel object_ = jmethod object_ "getModel" (\() -> (getModel_impl (javaCast object_ :: Cpu))) ()

getModel_super :: (JavaObjectClass this_) => this_ -> IO (String)
getModel_super object_ = (getModel_impl (javaCast object_ :: Cpu))

getModel_impl :: Cpu -> IO (String)
getModel_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).cpuHashMap)) (CpuInfo.mODEL))) :: String))


getModelName :: (JavaObjectClass this_) => this_ -> IO (String)
getModelName object_ = jmethod object_ "getModelName" (\() -> (getModelName_impl (javaCast object_ :: Cpu))) ()

getModelName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getModelName_super object_ = (getModelName_impl (javaCast object_ :: Cpu))

getModelName_impl :: Cpu -> IO (String)
getModelName_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).cpuHashMap)) (CpuInfo.mODELNAME))) :: String))


getStepping :: (JavaObjectClass this_) => this_ -> IO (String)
getStepping object_ = jmethod object_ "getStepping" (\() -> (getStepping_impl (javaCast object_ :: Cpu))) ()

getStepping_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStepping_super object_ = (getStepping_impl (javaCast object_ :: Cpu))

getStepping_impl :: Cpu -> IO (String)
getStepping_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).cpuHashMap)) (CpuInfo.sTEPPING))) :: String))


getCpuSpeed :: (JavaObjectClass this_) => this_ -> IO (String)
getCpuSpeed object_ = jmethod object_ "getCpuSpeed" (\() -> (getCpuSpeed_impl (javaCast object_ :: Cpu))) ()

getCpuSpeed_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCpuSpeed_super object_ = (getCpuSpeed_impl (javaCast object_ :: Cpu))

getCpuSpeed_impl :: Cpu -> IO (String)
getCpuSpeed_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).cpuHashMap)) (CpuInfo.cPUMHZ))) :: String))


getCacheSize :: (JavaObjectClass this_) => this_ -> IO (String)
getCacheSize object_ = jmethod object_ "getCacheSize" (\() -> (getCacheSize_impl (javaCast object_ :: Cpu))) ()

getCacheSize_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCacheSize_super object_ = (getCacheSize_impl (javaCast object_ :: Cpu))

getCacheSize_impl :: Cpu -> IO (String)
getCacheSize_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).cpuHashMap)) (CpuInfo.cACHESIZE))) :: String))


-- Java overloads of compareTo: calls the overload for the types of the arguments
compareTo :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
compareTo this a1
    | jisInstanceOf a1 (javaNull :: CpuInterface.CpuInterface) = compareTo_overload1 this (javaCast a1 :: CpuInterface.CpuInterface)
    | jisInstanceOf a1 (javaNull :: HardwareComponentInterface.HardwareComponentInterface) = compareTo_overload2 this (javaCast a1 :: HardwareComponentInterface.HardwareComponentInterface)
    | otherwise = compareTo_overload2 this (javaCast a1 :: HardwareComponentInterface.HardwareComponentInterface)

compareTo_overload1 :: (JavaObjectClass this_) => this_ -> CpuInterface.CpuInterface -> IO (Bool)
compareTo_overload1 object_ a1 = jmethod object_ "compareTo_overload1" (\() -> (compareTo_overload1_impl (javaCast object_ :: Cpu))) () a1

compareTo_overload1_super :: (JavaObjectClass this_) => this_ -> CpuInterface.CpuInterface -> IO (Bool)
compareTo_overload1_super object_ a1 = (compareTo_overload1_impl (javaCast object_ :: Cpu)) a1

compareTo_overload1_impl :: Cpu -> CpuInterface.CpuInterface -> IO (Bool)
compareTo_overload1_impl this cpuInterface = do
        pure (True)


compareTo_overload2 :: (JavaObjectClass this_) => this_ -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_overload2 object_ a1 = jmethod object_ "compareTo_overload2" (\() -> (compareTo_overload2_impl (javaCast object_ :: Cpu))) () a1

compareTo_overload2_super :: (JavaObjectClass this_) => this_ -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_overload2_super object_ a1 = (compareTo_overload2_impl (javaCast object_ :: Cpu)) a1

compareTo_overload2_impl :: Cpu -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_overload2_impl this componentInterface = do
        pure (True)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Cpu))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Cpu))

toString_impl :: Cpu -> IO (String)
toString_impl this = do
        commonLabels <- (CommonLabels.getInstance)
        commonSeps <- (CommonSeps.getInstance)
        stringMaker <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CpuInfo.toString CpuInfo.pROCESSOR))))) (jget (commonLabels).cOLON_SEP)))) (jio (Cpu.getProcessor this)))
        Control.Monad.void (StringMaker.append stringMaker (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CpuInfo.toString CpuInfo.vENDORID))))) (jget (commonLabels).cOLON_SEP)))) (jio (Cpu.getVendorId this)))
        Control.Monad.void (StringMaker.append stringMaker (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CpuInfo.toString CpuInfo.cPUFAMILY))))) (jget (commonLabels).cOLON_SEP)))) (jio (Cpu.getCpuFamily this)))
        Control.Monad.void (StringMaker.append stringMaker (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CpuInfo.toString CpuInfo.mODEL))))) (jget (commonLabels).cOLON_SEP)))) (jio (Cpu.getModel this)))
        Control.Monad.void (StringMaker.append stringMaker (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CpuInfo.toString CpuInfo.mODELNAME))))) (jget (commonLabels).cOLON_SEP)))) (jio (Cpu.getModelName this)))
        Control.Monad.void (StringMaker.append stringMaker (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CpuInfo.toString CpuInfo.sTEPPING))))) (jget (commonLabels).cOLON_SEP)))) (jio (Cpu.getStepping this)))
        Control.Monad.void (StringMaker.append stringMaker (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CpuInfo.toString CpuInfo.cPUMHZ))))) (jget (commonLabels).cOLON_SEP)))) (jio (Cpu.getCpuSpeed this)))
        Control.Monad.void (StringMaker.append stringMaker (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CpuInfo.toString CpuInfo.cACHESIZE))))) (jget (commonLabels).cOLON_SEP)))) (jio (Cpu.getCacheSize this)))
        (StringMaker.toString stringMaker)


