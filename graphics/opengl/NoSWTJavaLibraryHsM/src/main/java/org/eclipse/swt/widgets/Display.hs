{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.eclipse.swt.widgets
module Display where

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

data Display = Display
    { header_ :: JavaHeader
    }

instance JavaNull Display where
    javaNull = javaNullRecord "Display"

instance JavaEquals Display where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Display where
    (==) = jrecordEquals

instance JavaObjectClass Display where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Display
newRecord_ = do
    header_ <- newJavaHeader
    let this = Display header_
    jregisterLevel header_ this
    jregisterMethod header_ "sleep" (\() -> sleep_impl this)
    pure this

initFields_ :: Display -> IO ()
initFields_ this = do
    pure ()

new_ :: IO Display
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Display -> IO ()
init_ this = do
    initFields_ this


sleep :: (JavaObjectClass this_) => this_ -> IO (())
sleep object_ = jmethod object_ "sleep" (\() -> (sleep_impl (javaCast object_ :: Display))) ()

sleep_super :: (JavaObjectClass this_) => this_ -> IO (())
sleep_super object_ = (sleep_impl (javaCast object_ :: Display))

sleep_impl :: Display -> IO (())
sleep_impl this = do
        pure ()


