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
-- package org.allbinary.graphics.paint
module LocationPaintable where

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
import qualified LocationPaintableInterface

-- implements LocationPaintableInterface
data LocationPaintable = LocationPaintable
    { header_ :: JavaHeader
    }

instance JavaNull LocationPaintable where
    javaNull = javaNullRecord "LocationPaintable"

instance JavaEquals LocationPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LocationPaintable where
    (==) = jrecordEquals

instance JavaObjectClass LocationPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LocationPaintable
newRecord_ = do
    header_ <- newJavaHeader
    let this = LocationPaintable header_
    jregisterLevel header_ this
    LocationPaintableInterface.registerInterface_ header_
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: LocationPaintable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LocationPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LocationPaintable -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LocationPaintable)
getInstance = do
        pure (LocationPaintable.instance_)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: LocationPaintable))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: LocationPaintable)) a1 a2 a3

paintXY_impl :: LocationPaintable -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        pure ()


