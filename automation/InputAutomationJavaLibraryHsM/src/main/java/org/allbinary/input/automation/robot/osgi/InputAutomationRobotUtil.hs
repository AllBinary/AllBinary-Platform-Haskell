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
-- package org.allbinary.input.automation.robot.osgi
module InputAutomationRobotUtil where

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
import qualified InputAutomationRobotInterfaceWrapper -- same package or java.lang
import qualified InputAutomationRobotChangeEvent -- same package or java.lang
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface

data InputAutomationRobotUtil = InputAutomationRobotUtil
    { header_ :: JavaHeader
    }

instance JavaNull InputAutomationRobotUtil where
    javaNull = javaNullRecord "InputAutomationRobotUtil"

instance JavaEquals InputAutomationRobotUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationRobotUtil where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationRobotUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationRobotUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = InputAutomationRobotUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: InputAutomationRobotUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InputAutomationRobotUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationRobotUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getChangeEvent :: InputRobotInterface.InputRobotInterface -> IO (InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent)
getChangeEvent inputRobotInterface = do
        inputAutomationRobotInterfaceWrapper <- (InputAutomationRobotInterfaceWrapper.new_1 inputRobotInterface)
        inputAutomationRobotChangeEvent <- (InputAutomationRobotChangeEvent.new_1 inputAutomationRobotInterfaceWrapper)
        pure (inputAutomationRobotChangeEvent)


