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
-- package org.allbinary.game.state
module GameState where

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

data GameState = GameState
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull GameState where
    javaNull = javaNullRecord "GameState"

instance JavaEquals GameState where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameState where
    (==) = jrecordEquals

instance JavaObjectClass GameState where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameState
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = GameState header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GameState -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_2 :: String -> Int -> IO GameState
new_2 name state = do
    this <- newRecord_
    init_2 this name state
    pure this

init_2 :: GameState -> String -> Int -> IO ()
init_2 this name state = do
        initFields_ this
        jset (this).name (name)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameState))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameState))

toString_impl :: GameState -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


