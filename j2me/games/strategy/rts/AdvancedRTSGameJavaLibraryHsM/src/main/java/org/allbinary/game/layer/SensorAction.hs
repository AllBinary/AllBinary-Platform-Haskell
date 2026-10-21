{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.layer
module SensorAction where

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

data SensorAction = SensorAction
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull SensorAction where
    javaNull = javaNullRecord "SensorAction"

instance JavaEquals SensorAction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SensorAction where
    (==) = jrecordEquals

instance JavaObjectClass SensorAction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SensorAction
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = SensorAction header_ name
    jregisterLevel header_ this
    pure this

initFields_ :: SensorAction -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO SensorAction
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: SensorAction -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).name (name)
        pure ()


