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
module GameInitializationInterfaceFactoryInterface where

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
import qualified GameInitializationInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data GameInitializationInterfaceFactoryInterface = GameInitializationInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull GameInitializationInterfaceFactoryInterface where
    javaNull = javaNullRecord "GameInitializationInterfaceFactoryInterface"

instance JavaEquals GameInitializationInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInitializationInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass GameInitializationInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameInitializationInterfaceFactoryInterface
fromHeader_ header = GameInitializationInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameInitializationInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (GameInitializationInterface.GameInitializationInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: GameInitializationInterfaceFactoryInterface))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (GameInitializationInterface.GameInitializationInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: GameInitializationInterfaceFactoryInterface))

getInstance_impl :: GameInitializationInterfaceFactoryInterface -> IO (GameInitializationInterface.GameInitializationInterface)
getInstance_impl this = javaAbstractMethod "getInstance"


