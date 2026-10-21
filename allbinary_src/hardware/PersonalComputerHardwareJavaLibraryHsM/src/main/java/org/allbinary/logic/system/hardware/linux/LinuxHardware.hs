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
-- package org.allbinary.logic.system.hardware.linux
module LinuxHardware where

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
import qualified PCComponentFactory -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified FileReader -- java.io.FileReader
import qualified LineNumberReader -- java.io.LineNumberReader
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified SubDirectory -- org.allbinary.logic.io.file.directory.SubDirectory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified HardwareInterface -- org.allbinary.logic.system.hardware.HardwareInterface
import qualified BridgeInterface -- org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface
import qualified CpuInterface -- org.allbinary.logic.system.hardware.components.interfaces.CpuInterface
import qualified EthernetInterface -- org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface
import qualified FireWireInterface -- org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface
import qualified HardDriveControllerInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface
import qualified HardDriveInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface
import qualified HardwareComponentInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
import qualified MachineAccessControlAddressInterface -- org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface
import qualified MediaInterface -- org.allbinary.logic.system.hardware.components.interfaces.MediaInterface
import qualified MonitorInterface -- org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface
import qualified UsbInterface -- org.allbinary.logic.system.hardware.components.interfaces.UsbInterface
import qualified VideoInterface -- org.allbinary.logic.system.hardware.components.interfaces.VideoInterface
import qualified Cpu -- org.allbinary.logic.system.hardware.components.linux.Cpu
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- implements HardwareInterface
data LinuxHardware = LinuxHardware
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , componentInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , videoInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , hardDriveControllerInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , cpuInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , usbInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , ethernetInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , multimediaInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , fireWireInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , bridgeInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , hardDriveInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , macInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , monitorInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , nAME :: IORef (String)
    , mINHARDWARE :: IORef (Int)
    }

instance JavaNull LinuxHardware where
    javaNull = javaNullRecord "LinuxHardware"

instance JavaEquals LinuxHardware where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LinuxHardware where
    (==) = jrecordEquals

instance JavaObjectClass LinuxHardware where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

pCIFILE = "/proc/pci"

newRecord_ :: IO LinuxHardware
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    componentInterfaceVector <- newIORef javaNull
    videoInterfaceVector <- newIORef javaNull
    hardDriveControllerInterfaceVector <- newIORef javaNull
    cpuInterfaceVector <- newIORef javaNull
    usbInterfaceVector <- newIORef javaNull
    ethernetInterfaceVector <- newIORef javaNull
    multimediaInterfaceVector <- newIORef javaNull
    fireWireInterfaceVector <- newIORef javaNull
    bridgeInterfaceVector <- newIORef javaNull
    hardDriveInterfaceVector <- newIORef javaNull
    macInterfaceVector <- newIORef javaNull
    monitorInterfaceVector <- newIORef javaNull
    nAME <- newIORef ""
    mINHARDWARE <- newIORef 0
    let this = LinuxHardware header_ logUtil commonStrings componentInterfaceVector videoInterfaceVector hardDriveControllerInterfaceVector cpuInterfaceVector usbInterfaceVector ethernetInterfaceVector multimediaInterfaceVector fireWireInterfaceVector bridgeInterfaceVector hardDriveInterfaceVector macInterfaceVector monitorInterfaceVector nAME mINHARDWARE
    jregisterLevel header_ this
    HardwareInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getMultimedia" (\() -> getMultimedia_impl this)
    jregisterMethod header_ "getBridge" (\() -> getBridge_impl this)
    jregisterMethod header_ "getCpu" (\() -> getCpu_impl this)
    jregisterMethod header_ "getEthernet" (\() -> getEthernet_impl this)
    jregisterMethod header_ "getFireWire" (\() -> getFireWire_impl this)
    jregisterMethod header_ "getHardDriveController" (\() -> getHardDriveController_impl this)
    jregisterMethod header_ "getHardDrive" (\() -> getHardDrive_impl this)
    jregisterMethod header_ "getMachineAccessControlAddress" (\() -> getMachineAccessControlAddress_impl this)
    jregisterMethod header_ "getMonitor" (\() -> getMonitor_impl this)
    jregisterMethod header_ "getUsb" (\() -> getUsb_impl this)
    jregisterMethod header_ "getVideo" (\() -> getVideo_impl this)
    jregisterMethod header_ "getComponent" (\() -> getComponent_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "difference" (\() -> difference_impl this)
    jregisterMethod header_ "isNextHardware" (\() -> isNextHardware_impl this)
    pure this

initFields_ :: LinuxHardware -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.componentInterfaceVector (javaNull)
    jset this.videoInterfaceVector (javaNull)
    jset this.hardDriveControllerInterfaceVector (javaNull)
    jset this.cpuInterfaceVector (javaNull)
    jset this.usbInterfaceVector (javaNull)
    jset this.ethernetInterfaceVector (javaNull)
    jset this.multimediaInterfaceVector (javaNull)
    jset this.fireWireInterfaceVector (javaNull)
    jset this.bridgeInterfaceVector (javaNull)
    jset this.hardDriveInterfaceVector (javaNull)
    jset this.macInterfaceVector (javaNull)
    jset this.monitorInterfaceVector (javaNull)
    jset this.nAME ("Linux Hardware Profile")
    jset this.mINHARDWARE (5)
    pure ()

new_1 :: String -> IO LinuxHardware
new_1 path = do
    this <- newRecord_
    init_1 this path
    pure this

init_1 :: LinuxHardware -> String -> IO ()
init_1 this path = do
        initFields_ this
        Control.Monad.void (LinuxHardware.init this path)
        pure ()

new_ :: IO LinuxHardware
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LinuxHardware -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (LinuxHardware.init this pCIFILE)
        when ((jio (BasicArrayList.size ((jget (this).componentInterfaceVector)))) < (jget (this).mINHARDWARE)) $ do
            javaThrow ((JavaException "Exception" "Not Enough Data For A Valid License On Linux"))
        cpu <- (Cpu.new_)
        when (cpu /= javaNull) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).cpuInterfaceVector)) cpu)
            Control.Monad.void (BasicArrayList.add ((jget (this).componentInterfaceVector)) cpu)
        when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).oS))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Hardware Data: " ++ (jio (LinuxHardware.toString this))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> String -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: LinuxHardware))) () a1

init_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: LinuxHardware)) a1

init_impl :: LinuxHardware -> String -> IO (())
init_impl this filePath = do
        let lineNumberReader = javaNull
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).oS))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Hardware Data: " ++ (jio (LinuxHardware.toString this))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (LinuxHardware.init this lineNumberReader filePath)
        pure ()


-- throws Exception
-- Java overload of init with a different parameter count: give it a different name
init :: (JavaObjectClass this_) => this_ -> LineNumberReader.LineNumberReader -> String -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: LinuxHardware))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> LineNumberReader.LineNumberReader -> String -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: LinuxHardware)) a1 a2

init_impl :: LinuxHardware -> LineNumberReader.LineNumberReader -> String -> IO (())
init_impl this lineNumberReader filePath = do
        lineNumberReader <- newIORef lineNumberReader
        flip finally (do
            when ((jget lineNumberReader) /= javaNull) $ do
                Control.Monad.void (jio (LineNumberReader.close ((jget lineNumberReader))))
            ) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).componentInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).videoInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).hardDriveControllerInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).cpuInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).usbInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).ethernetInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).multimediaInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).fireWireInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).bridgeInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).hardDriveInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).macInterfaceVector (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset (this).monitorInterfaceVector (assignedValue)
            pciFile <- (FileReader.new_1 filePath)
            assignedValue <- (LineNumberReader.new_1 pciFile)
            jset lineNumberReader (assignedValue)
            when ((jget lineNumberReader) == javaNull) $ do
                fileVector <- (SubDirectory.search ((jio (SubDirectory.getInstance))) filePath (jio (AbFile.createAbFile (jget ((jio (FilePathData.getInstance))).pATH_START))))
                when (Prelude.not (jio (BasicArrayList.isEmpty fileVector))) $ do
                    let file = (javaCast (jio (BasicArrayList.get fileVector 0)) :: AbFile.AbFile)
                    assignedValue <- (LineNumberReader.new_1 (jio (FileReader.new_1 (jio (AbFile.getPath file)))))
                    jset lineNumberReader (assignedValue)
                when ((jget lineNumberReader) == javaNull) $ do
                    javaThrow ((JavaException "Exception" "No Linux File Data"))
            if ((jget lineNumberReader) /= javaNull) then do
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).oS))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "PCI File Found" this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
                nextLine <- newIORef =<< (LineNumberReader.readLine ((jget lineNumberReader)))
                fix $ \loop -> when (((jget lineNumberReader) /= javaNull) && ((jget nextLine) /= javaNull)) $ javaIteration (loop) $ do
                    when (jio (LinuxHardware.isNextHardware this (jget nextLine))) $ do
                        throwIO JavaBreak
                    assignedValue <- (LineNumberReader.readLine ((jget lineNumberReader)))
                    jset nextLine (assignedValue)
                fix $ \loop -> when (jio (LinuxHardware.isNextHardware this (jget nextLine))) $ javaIteration (loop) $ do
                    componentData <- (StringMaker.new_)
                    when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).oS))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Found Hardware Device: " ++ javaToString (jio (BasicArrayList.size ((jget (this).componentInterfaceVector))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
                    Control.Monad.void (StringMaker.append componentData (jget nextLine))
                    Control.Monad.void (StringMaker.append componentData (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
                    assignedValue <- (LineNumberReader.readLine ((jget lineNumberReader)))
                    jset nextLine (assignedValue)
                    componentType <- (PCComponentFactory.getComponentType ((jio (PCComponentFactory.getInstance))) (jget nextLine))
                    fix $ \loop -> when ((jget lineNumberReader) /= javaNull) $ javaIteration (loop) $ do
                        Control.Monad.void (StringMaker.append componentData (jget nextLine))
                        Control.Monad.void (StringMaker.append componentData (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
                        assignedValue <- (LineNumberReader.readLine ((jget lineNumberReader)))
                        jset nextLine (assignedValue)
                        when (((jget nextLine) == javaNull) || (jio (LinuxHardware.isNextHardware this (jget nextLine)))) $ do
                            throwIO JavaBreak
                    componentInterface <- (fmap (\value_ -> javaCast value_ :: HardwareComponentInterface.HardwareComponentInterface) (PCComponentFactory.getInstance ((jio (PCComponentFactory.getInstance))) componentType (jio (StringMaker.toString componentData))))
                    when (componentInterface /= javaNull) $ do
                        Control.Monad.void (BasicArrayList.add ((jget (this).componentInterfaceVector)) componentInterface)
            else do
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).oS))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Could not load PCI File" this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            Control.Monad.void (LineNumberReader.close ((jget lineNumberReader)))
        pure ()


getMultimedia :: (JavaObjectClass this_) => this_ -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia object_ a1 = jmethod object_ "getMultimedia" (\() -> (getMultimedia_impl (javaCast object_ :: LinuxHardware))) () a1

getMultimedia_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia_super object_ a1 = (getMultimedia_impl (javaCast object_ :: LinuxHardware)) a1

getMultimedia_impl :: LinuxHardware -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).multimediaInterfaceVector)) index)) :: MediaInterface.MediaInterface))


getBridge :: (JavaObjectClass this_) => this_ -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge object_ a1 = jmethod object_ "getBridge" (\() -> (getBridge_impl (javaCast object_ :: LinuxHardware))) () a1

getBridge_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge_super object_ a1 = (getBridge_impl (javaCast object_ :: LinuxHardware)) a1

getBridge_impl :: LinuxHardware -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).bridgeInterfaceVector)) index)) :: BridgeInterface.BridgeInterface))


getCpu :: (JavaObjectClass this_) => this_ -> Int -> IO (CpuInterface.CpuInterface)
getCpu object_ a1 = jmethod object_ "getCpu" (\() -> (getCpu_impl (javaCast object_ :: LinuxHardware))) () a1

getCpu_super :: (JavaObjectClass this_) => this_ -> Int -> IO (CpuInterface.CpuInterface)
getCpu_super object_ a1 = (getCpu_impl (javaCast object_ :: LinuxHardware)) a1

getCpu_impl :: LinuxHardware -> Int -> IO (CpuInterface.CpuInterface)
getCpu_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).cpuInterfaceVector)) index)) :: CpuInterface.CpuInterface))


getEthernet :: (JavaObjectClass this_) => this_ -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet object_ a1 = jmethod object_ "getEthernet" (\() -> (getEthernet_impl (javaCast object_ :: LinuxHardware))) () a1

getEthernet_super :: (JavaObjectClass this_) => this_ -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet_super object_ a1 = (getEthernet_impl (javaCast object_ :: LinuxHardware)) a1

getEthernet_impl :: LinuxHardware -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).ethernetInterfaceVector)) index)) :: EthernetInterface.EthernetInterface))


getFireWire :: (JavaObjectClass this_) => this_ -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire object_ a1 = jmethod object_ "getFireWire" (\() -> (getFireWire_impl (javaCast object_ :: LinuxHardware))) () a1

getFireWire_super :: (JavaObjectClass this_) => this_ -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire_super object_ a1 = (getFireWire_impl (javaCast object_ :: LinuxHardware)) a1

getFireWire_impl :: LinuxHardware -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).fireWireInterfaceVector)) index)) :: FireWireInterface.FireWireInterface))


getHardDriveController :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController object_ a1 = jmethod object_ "getHardDriveController" (\() -> (getHardDriveController_impl (javaCast object_ :: LinuxHardware))) () a1

getHardDriveController_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController_super object_ a1 = (getHardDriveController_impl (javaCast object_ :: LinuxHardware)) a1

getHardDriveController_impl :: LinuxHardware -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).hardDriveControllerInterfaceVector)) index)) :: HardDriveControllerInterface.HardDriveControllerInterface))


getHardDrive :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive object_ a1 = jmethod object_ "getHardDrive" (\() -> (getHardDrive_impl (javaCast object_ :: LinuxHardware))) () a1

getHardDrive_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive_super object_ a1 = (getHardDrive_impl (javaCast object_ :: LinuxHardware)) a1

getHardDrive_impl :: LinuxHardware -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).hardDriveInterfaceVector)) index)) :: HardDriveInterface.HardDriveInterface))


getMachineAccessControlAddress :: (JavaObjectClass this_) => this_ -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress object_ a1 = jmethod object_ "getMachineAccessControlAddress" (\() -> (getMachineAccessControlAddress_impl (javaCast object_ :: LinuxHardware))) () a1

getMachineAccessControlAddress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress_super object_ a1 = (getMachineAccessControlAddress_impl (javaCast object_ :: LinuxHardware)) a1

getMachineAccessControlAddress_impl :: LinuxHardware -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).macInterfaceVector)) index)) :: MachineAccessControlAddressInterface.MachineAccessControlAddressInterface))


getMonitor :: (JavaObjectClass this_) => this_ -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor object_ a1 = jmethod object_ "getMonitor" (\() -> (getMonitor_impl (javaCast object_ :: LinuxHardware))) () a1

getMonitor_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor_super object_ a1 = (getMonitor_impl (javaCast object_ :: LinuxHardware)) a1

getMonitor_impl :: LinuxHardware -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).monitorInterfaceVector)) index)) :: MonitorInterface.MonitorInterface))


getUsb :: (JavaObjectClass this_) => this_ -> Int -> IO (UsbInterface.UsbInterface)
getUsb object_ a1 = jmethod object_ "getUsb" (\() -> (getUsb_impl (javaCast object_ :: LinuxHardware))) () a1

getUsb_super :: (JavaObjectClass this_) => this_ -> Int -> IO (UsbInterface.UsbInterface)
getUsb_super object_ a1 = (getUsb_impl (javaCast object_ :: LinuxHardware)) a1

getUsb_impl :: LinuxHardware -> Int -> IO (UsbInterface.UsbInterface)
getUsb_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).usbInterfaceVector)) index)) :: UsbInterface.UsbInterface))


getVideo :: (JavaObjectClass this_) => this_ -> Int -> IO (VideoInterface.VideoInterface)
getVideo object_ a1 = jmethod object_ "getVideo" (\() -> (getVideo_impl (javaCast object_ :: LinuxHardware))) () a1

getVideo_super :: (JavaObjectClass this_) => this_ -> Int -> IO (VideoInterface.VideoInterface)
getVideo_super object_ a1 = (getVideo_impl (javaCast object_ :: LinuxHardware)) a1

getVideo_impl :: LinuxHardware -> Int -> IO (VideoInterface.VideoInterface)
getVideo_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).videoInterfaceVector)) index)) :: VideoInterface.VideoInterface))


getComponent :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent object_ a1 = jmethod object_ "getComponent" (\() -> (getComponent_impl (javaCast object_ :: LinuxHardware))) () a1

getComponent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_super object_ a1 = (getComponent_impl (javaCast object_ :: LinuxHardware)) a1

getComponent_impl :: LinuxHardware -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).componentInterfaceVector)) index)) :: HardwareComponentInterface.HardwareComponentInterface))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: LinuxHardware))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: LinuxHardware))

toString_impl :: LinuxHardware -> IO (String)
toString_impl this = do
        hardwareBuffer <- (StringMaker.new_)
        size <- (BasicArrayList.size ((jget (this).componentInterfaceVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let componentInterface = (javaCast (jio (BasicArrayList.get ((jget (this).componentInterfaceVector)) index)) :: HardwareComponentInterface.HardwareComponentInterface)
            Control.Monad.void (StringMaker.append hardwareBuffer "Component ")
            Control.Monad.void (StringMaker.appendint hardwareBuffer index)
            Control.Monad.void (StringMaker.append hardwareBuffer ": \n")
            Control.Monad.void (StringMaker.append hardwareBuffer (jio (HardwareComponentInterface.toString componentInterface)))
            Control.Monad.void (StringMaker.append hardwareBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        (StringMaker.toString hardwareBuffer)


compareTo :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: LinuxHardware))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: LinuxHardware)) a1

compareTo_impl :: LinuxHardware -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo_impl this hardwareInterface = do
        pure (True)


difference :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference object_ a1 = jmethod object_ "difference" (\() -> (difference_impl (javaCast object_ :: LinuxHardware))) () a1

difference_super :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_super object_ a1 = (difference_impl (javaCast object_ :: LinuxHardware)) a1

difference_impl :: LinuxHardware -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_impl this hardwareInterface = do
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


isNextHardware :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isNextHardware object_ a1 = jmethod object_ "isNextHardware" (\() -> (isNextHardware_impl (javaCast object_ :: LinuxHardware))) () a1

isNextHardware_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isNextHardware_super object_ a1 = (isNextHardware_impl (javaCast object_ :: LinuxHardware)) a1

isNextHardware_impl :: LinuxHardware -> String -> IO (Bool)
isNextHardware_impl this nextLine = do
    javaCatchReturn $ do
        when (nextLine /= javaNull) $ do
            let index = (jstringIndexOf nextLine "Bus" 0)
            when ((index >= 0) && (index < 4)) $ do
                javaReturn (True)
        pure (False)


