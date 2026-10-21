{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.graphics.canvas.transition.progress
module ProgressEndListener where

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

data ProgressEndListener = ProgressEndListener
    { header_ :: JavaHeader
    }

instance JavaNull ProgressEndListener where
    javaNull = javaNullRecord "ProgressEndListener"

instance JavaEquals ProgressEndListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProgressEndListener where
    (==) = jrecordEquals

instance JavaObjectClass ProgressEndListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ProgressEndListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = ProgressEndListener header_
    jregisterLevel header_ this
    jregisterMethod header_ "onEndEvent" (\() -> onEndEvent_impl this)
    pure this

initFields_ :: ProgressEndListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ProgressEndListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ProgressEndListener -> IO ()
init_ this = do
    initFields_ this


onEndEvent :: (JavaObjectClass this_) => this_ -> IO (())
onEndEvent object_ = jmethod object_ "onEndEvent" (\() -> (onEndEvent_impl (javaCast object_ :: ProgressEndListener))) ()

onEndEvent_super :: (JavaObjectClass this_) => this_ -> IO (())
onEndEvent_super object_ = (onEndEvent_impl (javaCast object_ :: ProgressEndListener))

onEndEvent_impl :: ProgressEndListener -> IO (())
onEndEvent_impl this = do
        pure ()


