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
-- package org.allbinary.physics.movement
module MovementInterface where

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
import qualified AllBinaryGameLayer -- org.allbinary.game.layer.AllBinaryGameLayer
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal

-- Java interface: the classes that implement it have these functions
data MovementInterface = MovementInterface
    { header_ :: JavaHeader
    }

instance JavaNull MovementInterface where
    javaNull = javaNullRecord "MovementInterface"

instance JavaEquals MovementInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MovementInterface where
    (==) = jrecordEquals

instance JavaObjectClass MovementInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MovementInterface
fromHeader_ header = MovementInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MovementInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


init :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: MovementInterface))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: MovementInterface)) a1 a2 a3

init_impl :: MovementInterface -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_impl this speedBasicDecimal angle otherAngle = javaAbstractMethod "init"


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MovementInterface))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: MovementInterface)) a1

process_impl :: MovementInterface -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = javaAbstractMethod "process"


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: MovementInterface))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: MovementInterface))

stop_impl :: MovementInterface -> IO (())
stop_impl this = javaAbstractMethod "stop"


