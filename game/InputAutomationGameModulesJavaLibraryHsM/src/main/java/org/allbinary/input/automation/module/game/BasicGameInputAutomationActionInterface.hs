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
-- package org.allbinary.input.automation.module.game
module BasicGameInputAutomationActionInterface (module BasicGameInputAutomationActionInterface, module InputAutomationActionInterface) where

import InputAutomationActionInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, attack, attack_super, attack_impl, target, target_super, target_impl, toString)
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
import qualified Rectangle -- same package or java.lang
import qualified InputAutomationActionInterface -- org.allbinary.input.automation.module.InputAutomationActionInterface
-- import java.awt.*

-- Java interface: the classes that implement it have these functions
data BasicGameInputAutomationActionInterface = BasicGameInputAutomationActionInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicGameInputAutomationActionInterface where
    javaNull = javaNullRecord "BasicGameInputAutomationActionInterface"

instance JavaEquals BasicGameInputAutomationActionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGameInputAutomationActionInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicGameInputAutomationActionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicGameInputAutomationActionInterface
fromHeader_ header = BasicGameInputAutomationActionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicGameInputAutomationActionInterface header)
    InputAutomationActionInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
attack :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
attack object_ a1 = jmethod object_ "attack" (\() -> (attack_impl (javaCast object_ :: BasicGameInputAutomationActionInterface))) () a1

attack_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
attack_super object_ a1 = (attack_impl (javaCast object_ :: BasicGameInputAutomationActionInterface)) a1

attack_impl :: BasicGameInputAutomationActionInterface -> Rectangle.Rectangle -> IO (())
attack_impl this rectangle = javaAbstractMethod "attack"


-- throws Exception
target :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
target object_ a1 = jmethod object_ "target" (\() -> (target_impl (javaCast object_ :: BasicGameInputAutomationActionInterface))) () a1

target_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
target_super object_ a1 = (target_impl (javaCast object_ :: BasicGameInputAutomationActionInterface)) a1

target_impl :: BasicGameInputAutomationActionInterface -> Rectangle.Rectangle -> IO (())
target_impl this rectangle = javaAbstractMethod "target"


