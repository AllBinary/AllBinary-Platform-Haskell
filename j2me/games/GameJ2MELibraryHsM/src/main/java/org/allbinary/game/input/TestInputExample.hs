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
module TestInputExample where

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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified TestInputInterface

-- implements TestInputInterface
data TestInputExample = TestInputExample
    { header_ :: JavaHeader
    , testValue :: IORef (Int)
    }

instance JavaNull TestInputExample where
    javaNull = javaNullRecord "TestInputExample"

instance JavaEquals TestInputExample where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TestInputExample where
    (==) = jrecordEquals

instance JavaObjectClass TestInputExample where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TestInputExample
newRecord_ = do
    header_ <- newJavaHeader
    testValue <- newIORef 0
    let this = TestInputExample header_ testValue
    jregisterLevel header_ this
    TestInputInterface.registerInterface_ header_
    jregisterMethod header_ "up" (\() -> up_impl this)
    jregisterMethod header_ "down" (\() -> down_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "right" (\() -> right_impl this)
    jregisterMethod header_ "strafeLeft" (\() -> strafeLeft_impl this)
    jregisterMethod header_ "strafeRight" (\() -> strafeRight_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: TestInputExample -> IO ()
initFields_ this = do
    jset this.testValue (0)
    pure ()

new_ :: IO TestInputExample
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TestInputExample -> IO ()
init_ this = do
    initFields_ this


up :: (JavaObjectClass this_) => this_ -> IO (())
up object_ = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: TestInputExample))) ()

up_super :: (JavaObjectClass this_) => this_ -> IO (())
up_super object_ = (up_impl (javaCast object_ :: TestInputExample))

up_impl :: TestInputExample -> IO (())
up_impl this = do
        pure ()


down :: (JavaObjectClass this_) => this_ -> IO (())
down object_ = jmethod object_ "down" (\() -> (down_impl (javaCast object_ :: TestInputExample))) ()

down_super :: (JavaObjectClass this_) => this_ -> IO (())
down_super object_ = (down_impl (javaCast object_ :: TestInputExample))

down_impl :: TestInputExample -> IO (())
down_impl this = do
        pure ()


left :: (JavaObjectClass this_) => this_ -> IO (())
left object_ = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: TestInputExample))) ()

left_super :: (JavaObjectClass this_) => this_ -> IO (())
left_super object_ = (left_impl (javaCast object_ :: TestInputExample))

left_impl :: TestInputExample -> IO (())
left_impl this = do
        jset (this).testValue ((jget (this).testValue) + 1)
        pure ()


right :: (JavaObjectClass this_) => this_ -> IO (())
right object_ = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: TestInputExample))) ()

right_super :: (JavaObjectClass this_) => this_ -> IO (())
right_super object_ = (right_impl (javaCast object_ :: TestInputExample))

right_impl :: TestInputExample -> IO (())
right_impl this = do
        jset (this).testValue ((jget (this).testValue) - 1)
        pure ()


strafeLeft :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft object_ = jmethod object_ "strafeLeft" (\() -> (strafeLeft_impl (javaCast object_ :: TestInputExample))) ()

strafeLeft_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft_super object_ = (strafeLeft_impl (javaCast object_ :: TestInputExample))

strafeLeft_impl :: TestInputExample -> IO (())
strafeLeft_impl this = do
        pure ()


strafeRight :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight object_ = jmethod object_ "strafeRight" (\() -> (strafeRight_impl (javaCast object_ :: TestInputExample))) ()

strafeRight_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight_super object_ = (strafeRight_impl (javaCast object_ :: TestInputExample))

strafeRight_impl :: TestInputExample -> IO (())
strafeRight_impl this = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: TestInputExample))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: TestInputExample)) a1

paint_impl :: TestInputExample -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: TestInputExample))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: TestInputExample)) a1

paintThreed_impl :: TestInputExample -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


