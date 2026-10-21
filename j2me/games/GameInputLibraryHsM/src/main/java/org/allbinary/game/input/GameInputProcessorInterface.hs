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
-- package org.allbinary.game.input
module GameInputProcessorInterface where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data GameInputProcessorInterface = GameInputProcessorInterface
    { header_ :: JavaHeader
    }

instance JavaNull GameInputProcessorInterface where
    javaNull = javaNullRecord "GameInputProcessorInterface"

instance JavaEquals GameInputProcessorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputProcessorInterface where
    (==) = jrecordEquals

instance JavaObjectClass GameInputProcessorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameInputProcessorInterface
fromHeader_ header = GameInputProcessorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameInputProcessorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
onInput :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onInput object_ a1 = jmethod object_ "onInput" (\() -> (onInput_impl (javaCast object_ :: GameInputProcessorInterface))) () a1

onInput_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onInput_super object_ a1 = (onInput_impl (javaCast object_ :: GameInputProcessorInterface)) a1

onInput_impl :: GameInputProcessorInterface -> BasicArrayList.BasicArrayList -> IO (())
onInput_impl this list = javaAbstractMethod "onInput"


