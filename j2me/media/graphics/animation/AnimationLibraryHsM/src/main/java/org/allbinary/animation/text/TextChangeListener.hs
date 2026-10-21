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
-- package org.allbinary.animation.text
module TextChangeListener where

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

data TextChangeListener = TextChangeListener
    { header_ :: JavaHeader
    }

instance JavaNull TextChangeListener where
    javaNull = javaNullRecord "TextChangeListener"

instance JavaEquals TextChangeListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TextChangeListener where
    (==) = jrecordEquals

instance JavaObjectClass TextChangeListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TextChangeListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = TextChangeListener header_
    jregisterLevel header_ this
    jregisterMethod header_ "onMeasure" (\() -> onMeasure_impl this)
    pure this

initFields_ :: TextChangeListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TextChangeListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TextChangeListener -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TextChangeListener)
getInstance = do
        pure (TextChangeListener.instance_)


onMeasure :: (JavaObjectClass this_) => this_ -> IO (())
onMeasure object_ = jmethod object_ "onMeasure" (\() -> (onMeasure_impl (javaCast object_ :: TextChangeListener))) ()

onMeasure_super :: (JavaObjectClass this_) => this_ -> IO (())
onMeasure_super object_ = (onMeasure_impl (javaCast object_ :: TextChangeListener))

onMeasure_impl :: TextChangeListener -> IO (())
onMeasure_impl this = do
        pure ()


