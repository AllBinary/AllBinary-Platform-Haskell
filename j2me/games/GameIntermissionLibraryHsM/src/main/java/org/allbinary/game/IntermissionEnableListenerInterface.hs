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
-- package org.allbinary.game
module IntermissionEnableListenerInterface where

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
data IntermissionEnableListenerInterface = IntermissionEnableListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull IntermissionEnableListenerInterface where
    javaNull = javaNullRecord "IntermissionEnableListenerInterface"

instance JavaEquals IntermissionEnableListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IntermissionEnableListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass IntermissionEnableListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> IntermissionEnableListenerInterface
fromHeader_ header = IntermissionEnableListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (IntermissionEnableListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


notifyIntermission :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
notifyIntermission object_ a1 = jmethod object_ "notifyIntermission" (\() -> (notifyIntermission_impl (javaCast object_ :: IntermissionEnableListenerInterface))) () a1

notifyIntermission_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
notifyIntermission_super object_ a1 = (notifyIntermission_impl (javaCast object_ :: IntermissionEnableListenerInterface)) a1

notifyIntermission_impl :: IntermissionEnableListenerInterface -> Bool -> IO (())
notifyIntermission_impl this enable = javaAbstractMethod "notifyIntermission"


