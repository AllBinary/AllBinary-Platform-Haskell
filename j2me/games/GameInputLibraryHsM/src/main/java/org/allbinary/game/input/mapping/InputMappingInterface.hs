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
-- package org.allbinary.game.input.mapping
module InputMappingInterface where

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
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified Input -- org.allbinary.game.input.Input

-- Java interface: the classes that implement it have these functions
data InputMappingInterface = InputMappingInterface
    { header_ :: JavaHeader
    }

instance JavaNull InputMappingInterface where
    javaNull = javaNullRecord "InputMappingInterface"

instance JavaEquals InputMappingInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputMappingInterface where
    (==) = jrecordEquals

instance JavaObjectClass InputMappingInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> InputMappingInterface
fromHeader_ header = InputMappingInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (InputMappingInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
processInputMapping :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
processInputMapping object_ a1 a2 = jmethod object_ "processInputMapping" (\() -> (processInputMapping_impl (javaCast object_ :: InputMappingInterface))) () a1 a2

processInputMapping_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> Input.Input -> IO (())
processInputMapping_super object_ a1 a2 = (processInputMapping_impl (javaCast object_ :: InputMappingInterface)) a1 a2

processInputMapping_impl :: InputMappingInterface -> GameKey.GameKey -> Input.Input -> IO (())
processInputMapping_impl this gameKey input = javaAbstractMethod "processInputMapping"


