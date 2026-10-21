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
-- package org.allbinary.logic.system.hardware.windows
module WindowsHardware where

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
import qualified Any -- same package or java.lang
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
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
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- implements HardwareInterface
data WindowsHardware = WindowsHardware
    { header_ :: JavaHeader
    }

instance JavaNull WindowsHardware where
    javaNull = javaNullRecord "WindowsHardware"

instance JavaEquals WindowsHardware where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WindowsHardware where
    (==) = jrecordEquals

instance JavaObjectClass WindowsHardware where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WindowsHardware
newRecord_ = do
    header_ <- newJavaHeader
    let this = WindowsHardware header_
    jregisterLevel header_ this
    HardwareInterface.registerInterface_ header_
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
    pure this

initFields_ :: WindowsHardware -> IO ()
initFields_ this = do
    pure ()

new_ :: IO WindowsHardware
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WindowsHardware -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getMultimedia :: (JavaObjectClass this_) => this_ -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia object_ a1 = jmethod object_ "getMultimedia" (\() -> (getMultimedia_impl (javaCast object_ :: WindowsHardware))) () a1

getMultimedia_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia_super object_ a1 = (getMultimedia_impl (javaCast object_ :: WindowsHardware)) a1

getMultimedia_impl :: WindowsHardware -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getBridge :: (JavaObjectClass this_) => this_ -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge object_ a1 = jmethod object_ "getBridge" (\() -> (getBridge_impl (javaCast object_ :: WindowsHardware))) () a1

getBridge_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge_super object_ a1 = (getBridge_impl (javaCast object_ :: WindowsHardware)) a1

getBridge_impl :: WindowsHardware -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getCpu :: (JavaObjectClass this_) => this_ -> Int -> IO (CpuInterface.CpuInterface)
getCpu object_ a1 = jmethod object_ "getCpu" (\() -> (getCpu_impl (javaCast object_ :: WindowsHardware))) () a1

getCpu_super :: (JavaObjectClass this_) => this_ -> Int -> IO (CpuInterface.CpuInterface)
getCpu_super object_ a1 = (getCpu_impl (javaCast object_ :: WindowsHardware)) a1

getCpu_impl :: WindowsHardware -> Int -> IO (CpuInterface.CpuInterface)
getCpu_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getEthernet :: (JavaObjectClass this_) => this_ -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet object_ a1 = jmethod object_ "getEthernet" (\() -> (getEthernet_impl (javaCast object_ :: WindowsHardware))) () a1

getEthernet_super :: (JavaObjectClass this_) => this_ -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet_super object_ a1 = (getEthernet_impl (javaCast object_ :: WindowsHardware)) a1

getEthernet_impl :: WindowsHardware -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getFireWire :: (JavaObjectClass this_) => this_ -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire object_ a1 = jmethod object_ "getFireWire" (\() -> (getFireWire_impl (javaCast object_ :: WindowsHardware))) () a1

getFireWire_super :: (JavaObjectClass this_) => this_ -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire_super object_ a1 = (getFireWire_impl (javaCast object_ :: WindowsHardware)) a1

getFireWire_impl :: WindowsHardware -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getHardDriveController :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController object_ a1 = jmethod object_ "getHardDriveController" (\() -> (getHardDriveController_impl (javaCast object_ :: WindowsHardware))) () a1

getHardDriveController_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController_super object_ a1 = (getHardDriveController_impl (javaCast object_ :: WindowsHardware)) a1

getHardDriveController_impl :: WindowsHardware -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getHardDrive :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive object_ a1 = jmethod object_ "getHardDrive" (\() -> (getHardDrive_impl (javaCast object_ :: WindowsHardware))) () a1

getHardDrive_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive_super object_ a1 = (getHardDrive_impl (javaCast object_ :: WindowsHardware)) a1

getHardDrive_impl :: WindowsHardware -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getMachineAccessControlAddress :: (JavaObjectClass this_) => this_ -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress object_ a1 = jmethod object_ "getMachineAccessControlAddress" (\() -> (getMachineAccessControlAddress_impl (javaCast object_ :: WindowsHardware))) () a1

getMachineAccessControlAddress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress_super object_ a1 = (getMachineAccessControlAddress_impl (javaCast object_ :: WindowsHardware)) a1

getMachineAccessControlAddress_impl :: WindowsHardware -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getMonitor :: (JavaObjectClass this_) => this_ -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor object_ a1 = jmethod object_ "getMonitor" (\() -> (getMonitor_impl (javaCast object_ :: WindowsHardware))) () a1

getMonitor_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor_super object_ a1 = (getMonitor_impl (javaCast object_ :: WindowsHardware)) a1

getMonitor_impl :: WindowsHardware -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getUsb :: (JavaObjectClass this_) => this_ -> Int -> IO (UsbInterface.UsbInterface)
getUsb object_ a1 = jmethod object_ "getUsb" (\() -> (getUsb_impl (javaCast object_ :: WindowsHardware))) () a1

getUsb_super :: (JavaObjectClass this_) => this_ -> Int -> IO (UsbInterface.UsbInterface)
getUsb_super object_ a1 = (getUsb_impl (javaCast object_ :: WindowsHardware)) a1

getUsb_impl :: WindowsHardware -> Int -> IO (UsbInterface.UsbInterface)
getUsb_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getVideo :: (JavaObjectClass this_) => this_ -> Int -> IO (VideoInterface.VideoInterface)
getVideo object_ a1 = jmethod object_ "getVideo" (\() -> (getVideo_impl (javaCast object_ :: WindowsHardware))) () a1

getVideo_super :: (JavaObjectClass this_) => this_ -> Int -> IO (VideoInterface.VideoInterface)
getVideo_super object_ a1 = (getVideo_impl (javaCast object_ :: WindowsHardware)) a1

getVideo_impl :: WindowsHardware -> Int -> IO (VideoInterface.VideoInterface)
getVideo_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


getComponent :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent object_ a1 = jmethod object_ "getComponent" (\() -> (getComponent_impl (javaCast object_ :: WindowsHardware))) () a1

getComponent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_super object_ a1 = (getComponent_impl (javaCast object_ :: WindowsHardware)) a1

getComponent_impl :: WindowsHardware -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_impl this index = do
        javaThrow ((JavaException "RuntimeException" ""))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: WindowsHardware))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: WindowsHardware))

toString_impl :: WindowsHardware -> IO (String)
toString_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


compareTo :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: WindowsHardware))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: WindowsHardware)) a1

compareTo_impl :: WindowsHardware -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo_impl this hardwareInterface = do
        pure (True)


difference :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference object_ a1 = jmethod object_ "difference" (\() -> (difference_impl (javaCast object_ :: WindowsHardware))) () a1

difference_super :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_super object_ a1 = (difference_impl (javaCast object_ :: WindowsHardware)) a1

difference_impl :: WindowsHardware -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_impl this hardwareInterface = do
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


