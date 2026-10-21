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
import qualified Component -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified HardwareInterface -- org.allbinary.logic.system.hardware.HardwareInterface
import qualified ComponentFactory -- org.allbinary.logic.system.hardware.components.ComponentFactory
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
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- implements HardwareInterface
data WindowsHardware = WindowsHardware
    { header_ :: JavaHeader
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
    , componentFactory :: IORef (ComponentFactory.ComponentFactory)
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
    componentFactory <- newIORef javaNull
    let this = WindowsHardware header_ componentInterfaceVector videoInterfaceVector hardDriveControllerInterfaceVector cpuInterfaceVector usbInterfaceVector ethernetInterfaceVector multimediaInterfaceVector fireWireInterfaceVector bridgeInterfaceVector hardDriveInterfaceVector macInterfaceVector monitorInterfaceVector nAME mINHARDWARE componentFactory
    jregisterLevel header_ this
    HardwareInterface.registerInterface_ header_
    jregisterMethod header_ "getComponentType" (\() -> getComponentType_impl this)
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
    jset this.nAME ("Windows Hardware Profile")
    jset this.mINHARDWARE (0)
    jset this.componentFactory =<< (ComponentFactory.getInstance)
    pure ()

new_ :: IO WindowsHardware
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WindowsHardware -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            javaThrow (e)
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
            when ((jio (BasicArrayList.size ((jget (this).componentInterfaceVector)))) < (jget (this).mINHARDWARE)) $ do
                javaThrow ((JavaException "Exception" "Not Enough Data For A Valid License On Windows"))
        pure ()


getComponentType :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getComponentType object_ a1 = jmethod object_ "getComponentType" (\() -> (getComponentType_impl (javaCast object_ :: WindowsHardware))) () a1

getComponentType_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getComponentType_super object_ a1 = (getComponentType_impl (javaCast object_ :: WindowsHardware)) a1

getComponentType_impl :: WindowsHardware -> String -> IO (String)
getComponentType_impl this component = do
    javaCatchReturn $ do
        if ((jstringIndexOf component (jio (Component.toString ((jget ((jget (this).componentFactory)).eTHERNET)))) 0) >= 0) then do
            javaReturn =<< (Component.toString ((jget ((jget (this).componentFactory)).eTHERNET)))
        else if ((jstringIndexOf component (jio (Component.toString ((jget ((jget (this).componentFactory)).bRIDGE)))) 0) >= 0) then do
            javaReturn =<< (Component.toString ((jget ((jget (this).componentFactory)).bRIDGE)))
        else if ((jstringIndexOf component (jio (Component.toString ((jget ((jget (this).componentFactory)).iDE)))) 0) >= 0) then do
            javaReturn =<< (Component.toString ((jget ((jget (this).componentFactory)).iDE)))
        else if ((jstringIndexOf component (jio (Component.toString ((jget ((jget (this).componentFactory)).mULTIMEDIA)))) 0) >= 0) then do
            javaReturn =<< (Component.toString ((jget ((jget (this).componentFactory)).mULTIMEDIA)))
        else if ((jstringIndexOf component (jio (Component.toString ((jget ((jget (this).componentFactory)).sCSI)))) 0) >= 0) then do
            javaReturn =<< (Component.toString ((jget ((jget (this).componentFactory)).sCSI)))
        else if ((jstringIndexOf component (jio (Component.toString ((jget ((jget (this).componentFactory)).uSB)))) 0) >= 0) then do
            javaReturn =<< (Component.toString ((jget ((jget (this).componentFactory)).uSB)))
        else if ((jstringIndexOf component (jio (Component.toString ((jget ((jget (this).componentFactory)).vGA)))) 0) >= 0) then do
            javaReturn =<< (Component.toString ((jget ((jget (this).componentFactory)).vGA)))
        else do
            javaReturn (javaNull)


getMultimedia :: (JavaObjectClass this_) => this_ -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia object_ a1 = jmethod object_ "getMultimedia" (\() -> (getMultimedia_impl (javaCast object_ :: WindowsHardware))) () a1

getMultimedia_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia_super object_ a1 = (getMultimedia_impl (javaCast object_ :: WindowsHardware)) a1

getMultimedia_impl :: WindowsHardware -> Int -> IO (MediaInterface.MediaInterface)
getMultimedia_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).multimediaInterfaceVector)) index)) :: MediaInterface.MediaInterface))


getBridge :: (JavaObjectClass this_) => this_ -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge object_ a1 = jmethod object_ "getBridge" (\() -> (getBridge_impl (javaCast object_ :: WindowsHardware))) () a1

getBridge_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge_super object_ a1 = (getBridge_impl (javaCast object_ :: WindowsHardware)) a1

getBridge_impl :: WindowsHardware -> Int -> IO (BridgeInterface.BridgeInterface)
getBridge_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).bridgeInterfaceVector)) index)) :: BridgeInterface.BridgeInterface))


getCpu :: (JavaObjectClass this_) => this_ -> Int -> IO (CpuInterface.CpuInterface)
getCpu object_ a1 = jmethod object_ "getCpu" (\() -> (getCpu_impl (javaCast object_ :: WindowsHardware))) () a1

getCpu_super :: (JavaObjectClass this_) => this_ -> Int -> IO (CpuInterface.CpuInterface)
getCpu_super object_ a1 = (getCpu_impl (javaCast object_ :: WindowsHardware)) a1

getCpu_impl :: WindowsHardware -> Int -> IO (CpuInterface.CpuInterface)
getCpu_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).cpuInterfaceVector)) index)) :: CpuInterface.CpuInterface))


getEthernet :: (JavaObjectClass this_) => this_ -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet object_ a1 = jmethod object_ "getEthernet" (\() -> (getEthernet_impl (javaCast object_ :: WindowsHardware))) () a1

getEthernet_super :: (JavaObjectClass this_) => this_ -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet_super object_ a1 = (getEthernet_impl (javaCast object_ :: WindowsHardware)) a1

getEthernet_impl :: WindowsHardware -> Int -> IO (EthernetInterface.EthernetInterface)
getEthernet_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).ethernetInterfaceVector)) index)) :: EthernetInterface.EthernetInterface))


getFireWire :: (JavaObjectClass this_) => this_ -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire object_ a1 = jmethod object_ "getFireWire" (\() -> (getFireWire_impl (javaCast object_ :: WindowsHardware))) () a1

getFireWire_super :: (JavaObjectClass this_) => this_ -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire_super object_ a1 = (getFireWire_impl (javaCast object_ :: WindowsHardware)) a1

getFireWire_impl :: WindowsHardware -> Int -> IO (FireWireInterface.FireWireInterface)
getFireWire_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).fireWireInterfaceVector)) index)) :: FireWireInterface.FireWireInterface))


getHardDriveController :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController object_ a1 = jmethod object_ "getHardDriveController" (\() -> (getHardDriveController_impl (javaCast object_ :: WindowsHardware))) () a1

getHardDriveController_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController_super object_ a1 = (getHardDriveController_impl (javaCast object_ :: WindowsHardware)) a1

getHardDriveController_impl :: WindowsHardware -> Int -> IO (HardDriveControllerInterface.HardDriveControllerInterface)
getHardDriveController_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).hardDriveControllerInterfaceVector)) index)) :: HardDriveControllerInterface.HardDriveControllerInterface))


getHardDrive :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive object_ a1 = jmethod object_ "getHardDrive" (\() -> (getHardDrive_impl (javaCast object_ :: WindowsHardware))) () a1

getHardDrive_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive_super object_ a1 = (getHardDrive_impl (javaCast object_ :: WindowsHardware)) a1

getHardDrive_impl :: WindowsHardware -> Int -> IO (HardDriveInterface.HardDriveInterface)
getHardDrive_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).hardDriveInterfaceVector)) index)) :: HardDriveInterface.HardDriveInterface))


getMachineAccessControlAddress :: (JavaObjectClass this_) => this_ -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress object_ a1 = jmethod object_ "getMachineAccessControlAddress" (\() -> (getMachineAccessControlAddress_impl (javaCast object_ :: WindowsHardware))) () a1

getMachineAccessControlAddress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress_super object_ a1 = (getMachineAccessControlAddress_impl (javaCast object_ :: WindowsHardware)) a1

getMachineAccessControlAddress_impl :: WindowsHardware -> Int -> IO (MachineAccessControlAddressInterface.MachineAccessControlAddressInterface)
getMachineAccessControlAddress_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).macInterfaceVector)) index)) :: MachineAccessControlAddressInterface.MachineAccessControlAddressInterface))


getMonitor :: (JavaObjectClass this_) => this_ -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor object_ a1 = jmethod object_ "getMonitor" (\() -> (getMonitor_impl (javaCast object_ :: WindowsHardware))) () a1

getMonitor_super :: (JavaObjectClass this_) => this_ -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor_super object_ a1 = (getMonitor_impl (javaCast object_ :: WindowsHardware)) a1

getMonitor_impl :: WindowsHardware -> Int -> IO (MonitorInterface.MonitorInterface)
getMonitor_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).monitorInterfaceVector)) index)) :: MonitorInterface.MonitorInterface))


getUsb :: (JavaObjectClass this_) => this_ -> Int -> IO (UsbInterface.UsbInterface)
getUsb object_ a1 = jmethod object_ "getUsb" (\() -> (getUsb_impl (javaCast object_ :: WindowsHardware))) () a1

getUsb_super :: (JavaObjectClass this_) => this_ -> Int -> IO (UsbInterface.UsbInterface)
getUsb_super object_ a1 = (getUsb_impl (javaCast object_ :: WindowsHardware)) a1

getUsb_impl :: WindowsHardware -> Int -> IO (UsbInterface.UsbInterface)
getUsb_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).usbInterfaceVector)) index)) :: UsbInterface.UsbInterface))


getVideo :: (JavaObjectClass this_) => this_ -> Int -> IO (VideoInterface.VideoInterface)
getVideo object_ a1 = jmethod object_ "getVideo" (\() -> (getVideo_impl (javaCast object_ :: WindowsHardware))) () a1

getVideo_super :: (JavaObjectClass this_) => this_ -> Int -> IO (VideoInterface.VideoInterface)
getVideo_super object_ a1 = (getVideo_impl (javaCast object_ :: WindowsHardware)) a1

getVideo_impl :: WindowsHardware -> Int -> IO (VideoInterface.VideoInterface)
getVideo_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).videoInterfaceVector)) index)) :: VideoInterface.VideoInterface))


getComponent :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent object_ a1 = jmethod object_ "getComponent" (\() -> (getComponent_impl (javaCast object_ :: WindowsHardware))) () a1

getComponent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_super object_ a1 = (getComponent_impl (javaCast object_ :: WindowsHardware)) a1

getComponent_impl :: WindowsHardware -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).componentInterfaceVector)) index)) :: HardwareComponentInterface.HardwareComponentInterface))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: WindowsHardware))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: WindowsHardware))

toString_impl :: WindowsHardware -> IO (String)
toString_impl this = do
        hardwareBuffer <- (StringMaker.new_)
        size <- (BasicArrayList.size ((jget (this).componentInterfaceVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let componentInterface = (javaCast (jio (BasicArrayList.get ((jget (this).componentInterfaceVector)) index)) :: HardwareComponentInterface.HardwareComponentInterface)
            Control.Monad.void (StringMaker.append hardwareBuffer (jio (HardwareComponentInterface.toString componentInterface)))
            Control.Monad.void (StringMaker.append hardwareBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        (StringMaker.toString hardwareBuffer)


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


