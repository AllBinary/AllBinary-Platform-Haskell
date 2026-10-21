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
-- package org.allbinary.input.automation.actions.script.condition
module ProfileActionScriptConditionInterface (module ProfileActionScriptConditionInterface, module ProfileActionScriptNodeInterface, module CustomTreeNodeInterface, module ProfileActionScriptItemInterface) where

import ProfileActionScriptNodeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addProcessor, addProcessor_super, addProcessor_impl, removeProcessor, removeProcessor_super, removeProcessor_impl, shouldProcess, shouldProcess_super, shouldProcess_impl, toString)
import CustomTreeNodeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addProcessor, addProcessor_super, addProcessor_impl, removeProcessor, removeProcessor_super, removeProcessor_impl, shouldProcess, shouldProcess_super, shouldProcess_impl, toString)
import ProfileActionScriptItemInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addProcessor, addProcessor_super, addProcessor_impl, removeProcessor, removeProcessor_super, removeProcessor_impl, shouldProcess, shouldProcess_super, shouldProcess_impl, toString)
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
import qualified ProfileActionScriptItemInterface -- org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface
import qualified ProfileActionScriptNodeInterface -- org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface
import qualified ProfileActionScriptProcessorInterface -- org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface
import qualified CustomTreeNodeInterface

-- Java interface: the classes that implement it have these functions
data ProfileActionScriptConditionInterface = ProfileActionScriptConditionInterface
    { header_ :: JavaHeader
    }

instance JavaNull ProfileActionScriptConditionInterface where
    javaNull = javaNullRecord "ProfileActionScriptConditionInterface"

instance JavaEquals ProfileActionScriptConditionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProfileActionScriptConditionInterface where
    (==) = jrecordEquals

instance JavaObjectClass ProfileActionScriptConditionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ProfileActionScriptConditionInterface
fromHeader_ header = ProfileActionScriptConditionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ProfileActionScriptConditionInterface header)
    ProfileActionScriptNodeInterface.registerInterface_ header
    CustomTreeNodeInterface.registerInterface_ header
    ProfileActionScriptItemInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


addProcessor :: (JavaObjectClass this_) => this_ -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
addProcessor object_ a1 = jmethod object_ "addProcessor" (\() -> (addProcessor_impl (javaCast object_ :: ProfileActionScriptConditionInterface))) () a1

addProcessor_super :: (JavaObjectClass this_) => this_ -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
addProcessor_super object_ a1 = (addProcessor_impl (javaCast object_ :: ProfileActionScriptConditionInterface)) a1

addProcessor_impl :: ProfileActionScriptConditionInterface -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
addProcessor_impl this profileActionProcessorInterface = javaAbstractMethod "addProcessor"


removeProcessor :: (JavaObjectClass this_) => this_ -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
removeProcessor object_ a1 = jmethod object_ "removeProcessor" (\() -> (removeProcessor_impl (javaCast object_ :: ProfileActionScriptConditionInterface))) () a1

removeProcessor_super :: (JavaObjectClass this_) => this_ -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
removeProcessor_super object_ a1 = (removeProcessor_impl (javaCast object_ :: ProfileActionScriptConditionInterface)) a1

removeProcessor_impl :: ProfileActionScriptConditionInterface -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
removeProcessor_impl this profileActionProcessorInterface = javaAbstractMethod "removeProcessor"


-- throws Exception
shouldProcess :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess object_ a1 = jmethod object_ "shouldProcess" (\() -> (shouldProcess_impl (javaCast object_ :: ProfileActionScriptConditionInterface))) () a1

shouldProcess_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess_super object_ a1 = (shouldProcess_impl (javaCast object_ :: ProfileActionScriptConditionInterface)) a1

shouldProcess_impl :: ProfileActionScriptConditionInterface -> Int64 -> IO (Bool)
shouldProcess_impl this frame = javaAbstractMethod "shouldProcess"


