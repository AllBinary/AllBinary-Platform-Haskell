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
-- package org.allbinary.logic.system.hardware
module HardwareFactory where

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
import qualified HardwareInterface -- same package or java.lang
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified OperatingSystems -- org.allbinary.logic.system.os.OperatingSystems
import qualified LinuxHardware -- org.allbinary.logic.system.hardware.linux.LinuxHardware
import qualified WindowsHardware -- org.allbinary.logic.system.hardware.windows.WindowsHardware

data HardwareFactory = HardwareFactory
    { header_ :: JavaHeader
    }

instance JavaNull HardwareFactory where
    javaNull = javaNullRecord "HardwareFactory"

instance JavaEquals HardwareFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HardwareFactory where
    (==) = jrecordEquals

instance JavaObjectClass HardwareFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HardwareFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = HardwareFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: HardwareFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (HardwareFactory)
getInstance = do
        pure (HardwareFactory.instance_)

new_ :: IO HardwareFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HardwareFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance_1 :: GenericOperatingSystem.GenericOperatingSystem -> IO (HardwareInterface.HardwareInterface)
getInstance_1 os = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            operatingSystems <- (OperatingSystems.getInstance)
            if ((Prelude.fromEnum (Prelude.compare (jio (GenericOperatingSystem.getName os)) (jget (operatingSystems).lINUX)) - 1) == 0) then do
                javaReturn ((javaCast (jio (LinuxHardware.new_)) :: HardwareInterface.HardwareInterface))
            else when ((jstringIndexOf (jio (GenericOperatingSystem.getName os)) (jget (operatingSystems).wINDOWS) 0) >= 0) $ do
                javaReturn ((javaCast (jio (WindowsHardware.new_)) :: HardwareInterface.HardwareInterface))
            javaThrow ((JavaException "Exception" ("No Hardware Imp for: " ++ (jio (GenericOperatingSystem.getName os)))))


