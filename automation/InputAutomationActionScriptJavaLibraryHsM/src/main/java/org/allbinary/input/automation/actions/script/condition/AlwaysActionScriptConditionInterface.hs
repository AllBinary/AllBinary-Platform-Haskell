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
module AlwaysActionScriptConditionInterface where

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

-- Java interface: the classes that implement it have these functions
data AlwaysActionScriptConditionInterface = AlwaysActionScriptConditionInterface
    { header_ :: JavaHeader
    }

instance JavaNull AlwaysActionScriptConditionInterface where
    javaNull = javaNullRecord "AlwaysActionScriptConditionInterface"

instance JavaEquals AlwaysActionScriptConditionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AlwaysActionScriptConditionInterface where
    (==) = jrecordEquals

instance JavaObjectClass AlwaysActionScriptConditionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AlwaysActionScriptConditionInterface
fromHeader_ header = AlwaysActionScriptConditionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AlwaysActionScriptConditionInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setIsOn :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setIsOn object_ a1 = jmethod object_ "setIsOn" (\() -> (setIsOn_impl (javaCast object_ :: AlwaysActionScriptConditionInterface))) () a1

setIsOn_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setIsOn_super object_ a1 = (setIsOn_impl (javaCast object_ :: AlwaysActionScriptConditionInterface)) a1

setIsOn_impl :: AlwaysActionScriptConditionInterface -> Bool -> IO (())
setIsOn_impl this isOn = javaAbstractMethod "setIsOn"


isIsOn :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIsOn object_ = jmethod object_ "isIsOn" (\() -> (isIsOn_impl (javaCast object_ :: AlwaysActionScriptConditionInterface))) ()

isIsOn_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIsOn_super object_ = (isIsOn_impl (javaCast object_ :: AlwaysActionScriptConditionInterface))

isIsOn_impl :: AlwaysActionScriptConditionInterface -> IO (Bool)
isIsOn_impl this = javaAbstractMethod "isIsOn"


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: AlwaysActionScriptConditionInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: AlwaysActionScriptConditionInterface))

log_impl :: AlwaysActionScriptConditionInterface -> IO (())
log_impl this = javaAbstractMethod "log"


