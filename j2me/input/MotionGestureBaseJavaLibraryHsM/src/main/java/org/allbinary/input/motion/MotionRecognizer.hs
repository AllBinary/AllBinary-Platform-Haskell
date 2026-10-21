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
module MotionRecognizer where

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

data MotionRecognizer = MotionRecognizer
    { header_ :: JavaHeader
    }

instance JavaNull MotionRecognizer where
    javaNull = javaNullRecord "MotionRecognizer"

instance JavaEquals MotionRecognizer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRecognizer where
    (==) = jrecordEquals

instance JavaObjectClass MotionRecognizer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionRecognizer
newRecord_ = do
    header_ <- newJavaHeader
    let this = MotionRecognizer header_
    jregisterLevel header_ this
    jregisterMethod header_ "processStartMotionEvent" (\() -> processStartMotionEvent_impl this)
    jregisterMethod header_ "processEndMotionEvent" (\() -> processEndMotionEvent_impl this)
    jregisterMethod header_ "processDraggedMotionEvent" (\() -> processDraggedMotionEvent_impl this)
    pure this

initFields_ :: MotionRecognizer -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MotionRecognizer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionRecognizer -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
processStartMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processStartMotionEvent" (\() -> (processStartMotionEvent_impl (javaCast object_ :: MotionRecognizer))) () a1 a2 a3 a4

processStartMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent_super object_ a1 a2 a3 a4 = (processStartMotionEvent_impl (javaCast object_ :: MotionRecognizer)) a1 a2 a3 a4

processStartMotionEvent_impl :: MotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processStartMotionEvent_impl this x y deviceId modifiers = do
        pure ()


-- throws Exception
processEndMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processEndMotionEvent" (\() -> (processEndMotionEvent_impl (javaCast object_ :: MotionRecognizer))) () a1 a2 a3 a4

processEndMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent_super object_ a1 a2 a3 a4 = (processEndMotionEvent_impl (javaCast object_ :: MotionRecognizer)) a1 a2 a3 a4

processEndMotionEvent_impl :: MotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processEndMotionEvent_impl this x y deviceId modifiers = do
        pure ()


-- throws Exception
processDraggedMotionEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent object_ a1 a2 a3 a4 = jmethod object_ "processDraggedMotionEvent" (\() -> (processDraggedMotionEvent_impl (javaCast object_ :: MotionRecognizer))) () a1 a2 a3 a4

processDraggedMotionEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent_super object_ a1 a2 a3 a4 = (processDraggedMotionEvent_impl (javaCast object_ :: MotionRecognizer)) a1 a2 a3 a4

processDraggedMotionEvent_impl :: MotionRecognizer -> Int -> Int -> Int -> Int -> IO (())
processDraggedMotionEvent_impl this x y deviceId modifiers = do
        pure ()


