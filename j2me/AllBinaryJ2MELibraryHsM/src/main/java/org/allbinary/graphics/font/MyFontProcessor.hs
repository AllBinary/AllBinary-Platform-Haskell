{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.graphics.font
module MyFontProcessor where

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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics

data MyFontProcessor = MyFontProcessor
    { header_ :: JavaHeader
    }

instance JavaNull MyFontProcessor where
    javaNull = javaNullRecord "MyFontProcessor"

instance JavaEquals MyFontProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyFontProcessor where
    (==) = jrecordEquals

instance JavaObjectClass MyFontProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MyFontProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = MyFontProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: MyFontProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MyFontProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MyFontProcessor -> IO ()
init_ this = do
    initFields_ this


defaultCharWidth :: Font.Font -> IO (Int)
defaultCharWidth font = do
        (Font.charWidth font 'C')


defaultStringWidth :: Font.Font -> Int -> IO (Int)
defaultStringWidth font size = do
        pure (((jio (MyFontProcessor.defaultCharWidth font)) * size))


getInstance :: IO (MyFontProcessor)
getInstance = do
        pure (MyFontProcessor.instance_)


process :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MyFontProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: MyFontProcessor)) a1

process_impl :: MyFontProcessor -> Graphics.Graphics -> IO (())
process_impl this graphics = do
        pure ()


