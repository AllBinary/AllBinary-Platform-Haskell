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
module NoHardware where

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
import qualified HardwareComponentInterface -- org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
import qualified NoHardwareComponent -- org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified HardwareInterface

-- implements HardwareInterface
data NoHardware = NoHardware
    { header_ :: JavaHeader
    }

instance JavaNull NoHardware where
    javaNull = javaNullRecord "NoHardware"

instance JavaEquals NoHardware where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoHardware where
    (==) = jrecordEquals

instance JavaObjectClass NoHardware where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: HardwareInterface.HardwareInterface) (new_)))

newRecord_ :: IO NoHardware
newRecord_ = do
    header_ <- newJavaHeader
    let this = NoHardware header_
    jregisterLevel header_ this
    HardwareInterface.registerInterface_ header_
    jregisterMethod header_ "getComponent" (\() -> getComponent_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "difference" (\() -> difference_impl this)
    pure this

initFields_ :: NoHardware -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoHardware
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoHardware -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (HardwareInterface.HardwareInterface)
getInstance = do
        pure (NoHardware.instance_)


getComponent :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent object_ a1 = jmethod object_ "getComponent" (\() -> (getComponent_impl (javaCast object_ :: NoHardware))) () a1

getComponent_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_super object_ a1 = (getComponent_impl (javaCast object_ :: NoHardware)) a1

getComponent_impl :: NoHardware -> Int -> IO (HardwareComponentInterface.HardwareComponentInterface)
getComponent_impl this index = do
        (fmap (\value_ -> javaCast value_ :: HardwareComponentInterface.HardwareComponentInterface) (NoHardwareComponent.getInstance))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: NoHardware))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: NoHardware))

toString_impl :: NoHardware -> IO (String)
toString_impl this = do
        pure ("No Hardware")


compareTo :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: NoHardware))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: NoHardware)) a1

compareTo_impl :: NoHardware -> HardwareInterface.HardwareInterface -> IO (Bool)
compareTo_impl this hardwareInterface = do
        pure (True)


difference :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference object_ a1 = jmethod object_ "difference" (\() -> (difference_impl (javaCast object_ :: NoHardware))) () a1

difference_super :: (JavaObjectClass this_) => this_ -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_super object_ a1 = (difference_impl (javaCast object_ :: NoHardware)) a1

difference_impl :: NoHardware -> HardwareInterface.HardwareInterface -> IO (ABHashtable.ABHashtable)
difference_impl this hardwareInterface = do
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


