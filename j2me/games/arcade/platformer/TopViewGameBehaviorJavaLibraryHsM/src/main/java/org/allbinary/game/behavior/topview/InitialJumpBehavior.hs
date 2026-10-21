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
-- package org.allbinary.game.behavior.topview
module InitialJumpBehavior where

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

data InitialJumpBehavior = InitialJumpBehavior
    { header_ :: JavaHeader
    }

instance JavaNull InitialJumpBehavior where
    javaNull = javaNullRecord "InitialJumpBehavior"

instance JavaEquals InitialJumpBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitialJumpBehavior where
    (==) = jrecordEquals

instance JavaObjectClass InitialJumpBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitialJumpBehavior
newRecord_ = do
    header_ <- newJavaHeader
    let this = InitialJumpBehavior header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: InitialJumpBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InitialJumpBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitialJumpBehavior -> IO ()
init_ this = do
    initFields_ this


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: InitialJumpBehavior))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: InitialJumpBehavior))

process_impl :: InitialJumpBehavior -> IO (())
process_impl this = do
        pure ()


