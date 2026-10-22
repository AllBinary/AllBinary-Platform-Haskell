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
module PCComponentFactory where

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
import qualified Component -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified ComponentFactory -- org.allbinary.logic.system.hardware.components.ComponentFactory
import qualified HardwareComponentInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
import qualified Bridge -- org.allbinary.logic.system.hardware.components.linux.Bridge
import qualified Ethernet -- org.allbinary.logic.system.hardware.components.linux.Ethernet
import qualified HardDriveController -- org.allbinary.logic.system.hardware.components.linux.HardDriveController
import qualified Media -- org.allbinary.logic.system.hardware.components.linux.Media
import qualified PCI -- org.allbinary.logic.system.hardware.components.linux.PCI
import qualified Unknown -- org.allbinary.logic.system.hardware.components.linux.Unknown
import qualified Usb -- org.allbinary.logic.system.hardware.components.linux.Usb
import qualified Video -- org.allbinary.logic.system.hardware.components.linux.Video
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PCComponentFactory = PCComponentFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , componentFactory :: IORef (ComponentFactory.ComponentFactory)
    }

instance JavaNull PCComponentFactory where
    javaNull = javaNullRecord "PCComponentFactory"

instance JavaEquals PCComponentFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PCComponentFactory where
    (==) = jrecordEquals

instance JavaObjectClass PCComponentFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PCComponentFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    componentFactory <- newIORef javaNull
    let this = PCComponentFactory header_ logUtil componentFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    jregisterMethod header_ "getComponentType" (\() -> getComponentType_impl this)
    pure this

initFields_ :: PCComponentFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.componentFactory =<< (ComponentFactory.getInstance)
    pure ()


getInstance :: IO (PCComponentFactory)
getInstance = do
        pure (PCComponentFactory.instance_)

new_ :: IO PCComponentFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PCComponentFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance_2 :: (JavaObjectClass this_) => this_ -> String -> String -> IO (HardwareComponentInterface.HardwareComponentInterface)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: PCComponentFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (HardwareComponentInterface.HardwareComponentInterface)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: PCComponentFactory)) a1 a2

getInstance_2_impl :: PCComponentFactory -> String -> String -> IO (HardwareComponentInterface.HardwareComponentInterface)
getInstance_2_impl this component componentData = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).fACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            (fmap (\value_ -> javaCast value_ :: HardwareComponentInterface.HardwareComponentInterface) (Unknown.new_1 (jget (commonStrings).eXCEPTION)))
            ) $ do
            when (component /= javaNull) $ do
                if ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).eTHERNET))))) - 1) == 0) then do
                    javaReturn ((javaCast (jio (Ethernet.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))
                else if ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).bRIDGE))))) - 1) == 0) then do
                    javaReturn ((javaCast (jio (Bridge.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))
                else if ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).iDE))))) - 1) == 0) then do
                    javaReturn ((javaCast (jio (HardDriveController.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))
                else if ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).mULTIMEDIA))))) - 1) == 0) then do
                    javaReturn ((javaCast (jio (Media.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))
                else if ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).sCSI))))) - 1) == 0) then do
                    javaReturn ((javaCast (jio (HardDriveController.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))
                else if ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).uSB))))) - 1) == 0) then do
                    javaReturn ((javaCast (jio (Usb.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))
                else if ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).vGA))))) - 1) == 0) then do
                    javaReturn ((javaCast (jio (Video.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))
                else when ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).pCI))))) - 1) == 0) $ do
                    javaReturn ((javaCast (jio (PCI.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))
            pure ((javaCast (jio (Unknown.new_1 componentData)) :: HardwareComponentInterface.HardwareComponentInterface))


getComponentType :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getComponentType object_ a1 = jmethod object_ "getComponentType" (\() -> (getComponentType_impl (javaCast object_ :: PCComponentFactory))) () a1

getComponentType_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getComponentType_super object_ a1 = (getComponentType_impl (javaCast object_ :: PCComponentFactory)) a1

getComponentType_impl :: PCComponentFactory -> String -> IO (String)
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
        else when ((Prelude.fromEnum (Prelude.compare component (jio (Component.toString ((jget ((jget (this).componentFactory)).pCI))))) - 1) == 0) $ do
            javaReturn =<< (Component.toString ((jget ((jget (this).componentFactory)).pCI)))
        (Component.toString ((jget ((jget (this).componentFactory)).uNKNOWN)))


