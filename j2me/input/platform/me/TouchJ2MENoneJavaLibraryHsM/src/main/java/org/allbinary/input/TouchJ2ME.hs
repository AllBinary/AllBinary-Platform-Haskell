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
-- package org.allbinary.input
module TouchJ2ME where

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

data TouchJ2ME = TouchJ2ME
    { header_ :: JavaHeader
    }

instance JavaNull TouchJ2ME where
    javaNull = javaNullRecord "TouchJ2ME"

instance JavaEquals TouchJ2ME where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchJ2ME where
    (==) = jrecordEquals

instance JavaObjectClass TouchJ2ME where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchJ2ME
newRecord_ = do
    header_ <- newJavaHeader
    let this = TouchJ2ME header_
    jregisterLevel header_ this
    jregisterMethod header_ "pointerDragged" (\() -> pointerDragged_impl this)
    jregisterMethod header_ "pointerPressed" (\() -> pointerPressed_impl this)
    jregisterMethod header_ "pointerReleased" (\() -> pointerReleased_impl this)
    pure this

initFields_ :: TouchJ2ME -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchJ2ME
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchJ2ME -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


pointerDragged :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerDragged object_ a1 a2 = jmethod object_ "pointerDragged" (\() -> (pointerDragged_impl (javaCast object_ :: TouchJ2ME))) () a1 a2

pointerDragged_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerDragged_super object_ a1 a2 = (pointerDragged_impl (javaCast object_ :: TouchJ2ME)) a1 a2

pointerDragged_impl :: TouchJ2ME -> Int -> Int -> IO (())
pointerDragged_impl this x y = do
        pure ()


pointerPressed :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerPressed object_ a1 a2 = jmethod object_ "pointerPressed" (\() -> (pointerPressed_impl (javaCast object_ :: TouchJ2ME))) () a1 a2

pointerPressed_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerPressed_super object_ a1 a2 = (pointerPressed_impl (javaCast object_ :: TouchJ2ME)) a1 a2

pointerPressed_impl :: TouchJ2ME -> Int -> Int -> IO (())
pointerPressed_impl this x y = do
        pure ()


pointerReleased :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerReleased object_ a1 a2 = jmethod object_ "pointerReleased" (\() -> (pointerReleased_impl (javaCast object_ :: TouchJ2ME))) () a1 a2

pointerReleased_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerReleased_super object_ a1 a2 = (pointerReleased_impl (javaCast object_ :: TouchJ2ME)) a1 a2

pointerReleased_impl :: TouchJ2ME -> Int -> Int -> IO (())
pointerReleased_impl this x y = do
        pure ()


