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
-- package org.allbinary.input.motion
module AllMotionRecognizer where

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

data AllMotionRecognizer = AllMotionRecognizer
    { header_ :: JavaHeader
    , id :: IORef (Int)
    }

instance JavaNull AllMotionRecognizer where
    javaNull = javaNullRecord "AllMotionRecognizer"

instance JavaEquals AllMotionRecognizer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllMotionRecognizer where
    (==) = jrecordEquals

instance JavaObjectClass AllMotionRecognizer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE index #-}
index = unsafePerformIO (newIORef (0))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllMotionRecognizer
newRecord_ = do
    header_ <- newJavaHeader
    id <- newIORef 0
    let this = AllMotionRecognizer header_ id
    jregisterLevel header_ this
    jregisterMethod header_ "processStartMotionEvent" (\() -> processStartMotionEvent_impl this)
    jregisterMethod header_ "processEndMotionEvent" (\() -> processEndMotionEvent_impl this)
    jregisterMethod header_ "processDraggedMotionEvent" (\() -> processDraggedMotionEvent_impl this)
    jregisterMethod header_ "processMovedMotionEvent" (\() -> processMovedMotionEvent_impl this)
    jregisterMethod header_ "processScrolledMotionEvent" (\() -> processScrolledMotionEvent_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    pure this

initFields_ :: AllMotionRecognizer -> IO ()
initFields_ this = do
    jset this.id (0)
    pure ()

new_ :: IO AllMotionRecognizer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllMotionRecognizer -> IO ()
init_ this = do
        initFields_ this
        jset (this).id ((jpostIncrement AllMotionRecognizer.index (+ 1)))
        pure ()


-- throws Exception
processStartMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processStartMotionEvent" (\() -> (processStartMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processStartMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent_super object_ a1 a2 a3 a4 = (processStartMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processStartMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent_impl this x y deviceId modifiers = do
        pure ()


-- throws Exception
processEndMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processEndMotionEvent" (\() -> (processEndMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processEndMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent_super object_ a1 a2 a3 a4 = (processEndMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processEndMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent_impl this x y deviceId modifiers = do
        pure ()


-- throws Exception
processDraggedMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processDraggedMotionEvent" (\() -> (processDraggedMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processDraggedMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent_super object_ a1 a2 a3 a4 = (processDraggedMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processDraggedMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent_impl this x y deviceId modifiers = do
        pure ()


-- throws Exception
processMovedMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processMovedMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processMovedMotionEvent" (\() -> (processMovedMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processMovedMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processMovedMotionEvent_super object_ a1 a2 a3 a4 = (processMovedMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processMovedMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processMovedMotionEvent_impl this x y deviceId modifiers = do
        pure ()


-- throws Exception
processScrolledMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processScrolledMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processScrolledMotionEvent" (\() -> (processScrolledMotionEvent_impl (javaCast object_ :: AllMotionRecognizer))) () a1 a2 a3 a4

processScrolledMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processScrolledMotionEvent_super object_ a1 a2 a3 a4 = (processScrolledMotionEvent_impl (javaCast object_ :: AllMotionRecognizer)) a1 a2 a3 a4

processScrolledMotionEvent_impl :: AllMotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processScrolledMotionEvent_impl this x y deviceId modifiers = do
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: AllMotionRecognizer))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: AllMotionRecognizer))

getId_impl :: AllMotionRecognizer -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


