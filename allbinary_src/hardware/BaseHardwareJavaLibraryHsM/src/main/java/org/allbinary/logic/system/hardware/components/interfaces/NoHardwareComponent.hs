{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.logic.system.hardware.components.interfaces
module NoHardwareComponent where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified HardwareComponentInterface

-- implements HardwareComponentInterface
data NoHardwareComponent = NoHardwareComponent
    { header_ :: JavaHeader
    }

instance JavaNull NoHardwareComponent where
    javaNull = javaNullRecord "NoHardwareComponent"

instance JavaEquals NoHardwareComponent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoHardwareComponent where
    (==) = jrecordEquals

instance JavaObjectClass NoHardwareComponent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO NoHardwareComponent
newRecord_ = do
    header_ <- newJavaHeader
    let this = NoHardwareComponent header_
    jregisterLevel header_ this
    HardwareComponentInterface.registerInterface_ header_
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: NoHardwareComponent -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoHardwareComponent
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoHardwareComponent -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (NoHardwareComponent)
getInstance = do
        pure (NoHardwareComponent.instance_)


compareTo :: (JavaObjectClass this_) => this_ -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: NoHardwareComponent))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: NoHardwareComponent)) a1

compareTo_impl :: NoHardwareComponent -> HardwareComponentInterface.HardwareComponentInterface -> IO (Bool)
compareTo_impl this componentInterface = do
    javaCatchReturn $ do
        when ((jtoObject this) == (jtoObject componentInterface)) $ do
            javaReturn (True)
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: NoHardwareComponent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: NoHardwareComponent))

toString_impl :: NoHardwareComponent -> IO (String)
toString_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).nULL_STRING))


