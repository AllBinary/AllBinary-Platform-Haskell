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
module Movement where

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
import qualified MovementInterface

-- implements MovementInterface
data Movement = Movement
    { header_ :: JavaHeader
    }

instance JavaNull Movement where
    javaNull = javaNullRecord "Movement"

instance JavaEquals Movement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Movement where
    (==) = jrecordEquals

instance JavaObjectClass Movement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Movement
newRecord_ = do
    header_ <- newJavaHeader
    let this = Movement header_
    jregisterLevel header_ this
    MovementInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    pure this

initFields_ :: Movement -> IO ()
initFields_ this = do
    pure ()

new_ :: IO Movement
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Movement -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Movement))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: Movement)) a1 a2 a3

init_impl :: Movement -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_impl this speedBasicDecimal angle otherAngle = do
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: Movement))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: Movement)) a1

process_impl :: Movement -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = do
        pure ()


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: Movement))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: Movement))

stop_impl :: Movement -> IO (())
stop_impl this = do
        pure ()


