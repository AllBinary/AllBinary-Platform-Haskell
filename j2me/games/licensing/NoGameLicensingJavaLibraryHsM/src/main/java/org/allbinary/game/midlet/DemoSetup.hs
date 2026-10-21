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
-- package org.allbinary.game.midlet
module DemoSetup where

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
import qualified GameMidlet -- same package or java.lang

data DemoSetup = DemoSetup
    { header_ :: JavaHeader
    }

instance JavaNull DemoSetup where
    javaNull = javaNullRecord "DemoSetup"

instance JavaEquals DemoSetup where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoSetup where
    (==) = jrecordEquals

instance JavaObjectClass DemoSetup where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DemoSetup
newRecord_ = do
    header_ <- newJavaHeader
    let this = DemoSetup header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: DemoSetup -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DemoSetup
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DemoSetup -> IO ()
init_ this = do
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> GameMidlet.GameMidlet -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: DemoSetup))) () a1

init_super :: (JavaObjectClass this_) => this_ -> GameMidlet.GameMidlet -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: DemoSetup)) a1

init_impl :: DemoSetup -> GameMidlet.GameMidlet -> IO (())
init_impl this gameMidlet = do
        pure ()


