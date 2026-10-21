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
-- package org.allbinary.android.view
module AllBinaryRenderer where

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
import qualified Runnable -- same package or java.lang

data AllBinaryRenderer = AllBinaryRenderer
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryRenderer where
    javaNull = javaNullRecord "AllBinaryRenderer"

instance JavaEquals AllBinaryRenderer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryRenderer where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryRenderer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryRenderer
newRecord_ = do
    header_ <- newJavaHeader
    let this = AllBinaryRenderer header_
    jregisterLevel header_ this
    jregisterMethod header_ "setRunnable" (\() -> setRunnable_impl this)
    jregisterMethod header_ "clearRunnable" (\() -> clearRunnable_impl this)
    pure this

initFields_ :: AllBinaryRenderer -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryRenderer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryRenderer -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AllBinaryRenderer)
getInstance = do
        pure (AllBinaryRenderer.instance_)


setRunnable :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
setRunnable object_ a1 = jmethod object_ "setRunnable" (\() -> (setRunnable_impl (javaCast object_ :: AllBinaryRenderer))) () a1

setRunnable_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
setRunnable_super object_ a1 = (setRunnable_impl (javaCast object_ :: AllBinaryRenderer)) a1

setRunnable_impl :: AllBinaryRenderer -> Runnable.Runnable -> IO (())
setRunnable_impl this runnable = do
        pure ()


clearRunnable :: (JavaObjectClass this_) => this_ -> IO (())
clearRunnable object_ = jmethod object_ "clearRunnable" (\() -> (clearRunnable_impl (javaCast object_ :: AllBinaryRenderer))) ()

clearRunnable_super :: (JavaObjectClass this_) => this_ -> IO (())
clearRunnable_super object_ = (clearRunnable_impl (javaCast object_ :: AllBinaryRenderer))

clearRunnable_impl :: AllBinaryRenderer -> IO (())
clearRunnable_impl this = do
        pure ()


