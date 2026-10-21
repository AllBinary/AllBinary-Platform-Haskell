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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module ProfileActionScriptInputInterface (module ProfileActionScriptInputInterface, module ProfileActionScriptProcessorInterface) where

import ProfileActionScriptProcessorInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setInputRobotInterface, setInputRobotInterface_super, setInputRobotInterface_impl, getInputRobotInterface, getInputRobotInterface_super, getInputRobotInterface_impl, getTime, getTime_super, getTime_impl, setTime, setTime_super, setTime_impl, toString)
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
import qualified ProfileActionScriptProcessorInterface -- org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface

-- Java interface: the classes that implement it have these functions
data ProfileActionScriptInputInterface = ProfileActionScriptInputInterface
    { header_ :: JavaHeader
    }

instance JavaNull ProfileActionScriptInputInterface where
    javaNull = javaNullRecord "ProfileActionScriptInputInterface"

instance JavaEquals ProfileActionScriptInputInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProfileActionScriptInputInterface where
    (==) = jrecordEquals

instance JavaObjectClass ProfileActionScriptInputInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ProfileActionScriptInputInterface
fromHeader_ header = ProfileActionScriptInputInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ProfileActionScriptInputInterface header)
    ProfileActionScriptProcessorInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setInputRobotInterface :: (JavaObjectClass this_) => this_ -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface object_ a1 = jmethod object_ "setInputRobotInterface" (\() -> (setInputRobotInterface_impl (javaCast object_ :: ProfileActionScriptInputInterface))) () a1

setInputRobotInterface_super :: (JavaObjectClass this_) => this_ -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface_super object_ a1 = (setInputRobotInterface_impl (javaCast object_ :: ProfileActionScriptInputInterface)) a1

setInputRobotInterface_impl :: ProfileActionScriptInputInterface -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface_impl this inputRobotInterface = javaAbstractMethod "setInputRobotInterface"


getInputRobotInterface :: (JavaObjectClass this_) => this_ -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface object_ = jmethod object_ "getInputRobotInterface" (\() -> (getInputRobotInterface_impl (javaCast object_ :: ProfileActionScriptInputInterface))) ()

getInputRobotInterface_super :: (JavaObjectClass this_) => this_ -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface_super object_ = (getInputRobotInterface_impl (javaCast object_ :: ProfileActionScriptInputInterface))

getInputRobotInterface_impl :: ProfileActionScriptInputInterface -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface_impl this = javaAbstractMethod "getInputRobotInterface"


getTime :: (JavaObjectClass this_) => this_ -> IO (Int)
getTime object_ = jmethod object_ "getTime" (\() -> (getTime_impl (javaCast object_ :: ProfileActionScriptInputInterface))) ()

getTime_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTime_super object_ = (getTime_impl (javaCast object_ :: ProfileActionScriptInputInterface))

getTime_impl :: ProfileActionScriptInputInterface -> IO (Int)
getTime_impl this = javaAbstractMethod "getTime"


setTime :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTime object_ a1 = jmethod object_ "setTime" (\() -> (setTime_impl (javaCast object_ :: ProfileActionScriptInputInterface))) () a1

setTime_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTime_super object_ a1 = (setTime_impl (javaCast object_ :: ProfileActionScriptInputInterface)) a1

setTime_impl :: ProfileActionScriptInputInterface -> Int -> IO (())
setTime_impl this time = javaAbstractMethod "setTime"


