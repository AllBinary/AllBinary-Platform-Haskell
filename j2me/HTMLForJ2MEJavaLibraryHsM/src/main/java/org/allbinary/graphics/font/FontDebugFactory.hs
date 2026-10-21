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
-- package org.allbinary.graphics.font
module FontDebugFactory where

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

data FontDebugFactory = FontDebugFactory
    { header_ :: JavaHeader
    }

instance JavaNull FontDebugFactory where
    javaNull = javaNullRecord "FontDebugFactory"

instance JavaEquals FontDebugFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FontDebugFactory where
    (==) = jrecordEquals

instance JavaObjectClass FontDebugFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FontDebugFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = FontDebugFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "setFont" (\() -> setFont_impl this)
    pure this

initFields_ :: FontDebugFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FontDebugFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FontDebugFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FontDebugFactory)
getInstance = do
        pure (FontDebugFactory.instance_)


setFont :: (JavaObjectClass this_) => this_ -> Font.Font -> Graphics.Graphics -> IO (())
setFont object_ a1 a2 = jmethod object_ "setFont" (\() -> (setFont_impl (javaCast object_ :: FontDebugFactory))) () a1 a2

setFont_super :: (JavaObjectClass this_) => this_ -> Font.Font -> Graphics.Graphics -> IO (())
setFont_super object_ a1 a2 = (setFont_impl (javaCast object_ :: FontDebugFactory)) a1 a2

setFont_impl :: FontDebugFactory -> Font.Font -> Graphics.Graphics -> IO (())
setFont_impl this font graphics = do
        Control.Monad.void (Graphics.setFont graphics font)
        pure ()


