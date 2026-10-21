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
module InputProcessor where

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
import qualified GameInputStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas

data InputProcessor = InputProcessor
    { header_ :: JavaHeader
    , gameInputStrings :: IORef (GameInputStrings.GameInputStrings)
    }

instance JavaNull InputProcessor where
    javaNull = javaNullRecord "InputProcessor"

instance JavaEquals InputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass InputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputProcessor
newRecord_ = do
    header_ <- newJavaHeader
    gameInputStrings <- newIORef javaNull
    let this = InputProcessor header_ gameInputStrings
    jregisterLevel header_ this
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "keyReleasedByDevice" (\() -> keyReleasedByDevice_impl this)
    pure this

initFields_ :: InputProcessor -> IO ()
initFields_ this = do
    jset this.gameInputStrings =<< (GameInputStrings.getInstance)
    pure ()

new_ :: IO InputProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputProcessor -> IO ()
init_ this = do
    initFields_ this


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: InputProcessor))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: InputProcessor)) a1 a2

keyPressedByDevice_impl :: InputProcessor -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        pure ()


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 a3 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: InputProcessor))) () a1 a2 a3

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 a3 = (keyReleasedByDevice_impl (javaCast object_ :: InputProcessor)) a1 a2 a3

keyReleasedByDevice_impl :: InputProcessor -> Canvas.Canvas -> Int -> Int -> IO (())
keyReleasedByDevice_impl this canvas keyCode deviceId = do
        pure ()


