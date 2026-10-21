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
-- package org.allbinary.graphics.form
module ItemPaintable where

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

data ItemPaintable = ItemPaintable
    { header_ :: JavaHeader
    }

instance JavaNull ItemPaintable where
    javaNull = javaNullRecord "ItemPaintable"

instance JavaEquals ItemPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemPaintable where
    (==) = jrecordEquals

instance JavaObjectClass ItemPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ItemPaintable
newRecord_ = do
    header_ <- newJavaHeader
    let this = ItemPaintable header_
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ItemPaintable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ItemPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ItemPaintable -> IO ()
init_ this = do
    initFields_ this


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint object_ a1 a2 a3 a4 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ItemPaintable))) () a1 a2 a3 a4

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint_super object_ a1 a2 a3 a4 = (paint_impl (javaCast object_ :: ItemPaintable)) a1 a2 a3 a4

paint_impl :: ItemPaintable -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint_impl this graphics currentIndex x y = do
        pure ()


