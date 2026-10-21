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
-- package bundle.input.automation.robot
module InputAutomationRobotChangeListener where

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
import qualified InputAutomationRobotChangeEvent -- org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent

-- Java interface: the classes that implement it have these functions
data InputAutomationRobotChangeListener = InputAutomationRobotChangeListener
    { header_ :: JavaHeader
    }

instance JavaNull InputAutomationRobotChangeListener where
    javaNull = javaNullRecord "InputAutomationRobotChangeListener"

instance JavaEquals InputAutomationRobotChangeListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationRobotChangeListener where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationRobotChangeListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> InputAutomationRobotChangeListener
fromHeader_ header = InputAutomationRobotChangeListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (InputAutomationRobotChangeListener header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onAdd :: (JavaObjectClass this_) => this_ -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onAdd object_ a1 = jmethod object_ "onAdd" (\() -> (onAdd_impl (javaCast object_ :: InputAutomationRobotChangeListener))) () a1

onAdd_super :: (JavaObjectClass this_) => this_ -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onAdd_super object_ a1 = (onAdd_impl (javaCast object_ :: InputAutomationRobotChangeListener)) a1

onAdd_impl :: InputAutomationRobotChangeListener -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onAdd_impl this inputAutomationRobotChangeEvent = javaAbstractMethod "onAdd"


onRemove :: (JavaObjectClass this_) => this_ -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onRemove object_ a1 = jmethod object_ "onRemove" (\() -> (onRemove_impl (javaCast object_ :: InputAutomationRobotChangeListener))) () a1

onRemove_super :: (JavaObjectClass this_) => this_ -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onRemove_super object_ a1 = (onRemove_impl (javaCast object_ :: InputAutomationRobotChangeListener)) a1

onRemove_impl :: InputAutomationRobotChangeListener -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onRemove_impl this inputAutomationRobotChangeEvent = javaAbstractMethod "onRemove"


