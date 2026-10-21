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
-- package org.allbinary.game.init
module GameInitializationInterface where

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
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

-- Java interface: the classes that implement it have these functions
data GameInitializationInterface = GameInitializationInterface
    { header_ :: JavaHeader
    }

instance JavaNull GameInitializationInterface where
    javaNull = javaNullRecord "GameInitializationInterface"

instance JavaEquals GameInitializationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInitializationInterface where
    (==) = jrecordEquals

instance JavaObjectClass GameInitializationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameInitializationInterface
fromHeader_ header = GameInitializationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameInitializationInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GameInitializationInterface))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: GameInitializationInterface)) a1 a2 a3

init_impl :: GameInitializationInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init_impl this abeClientInformation commandListener level = javaAbstractMethod "init"


