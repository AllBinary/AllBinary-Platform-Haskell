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
-- package org.allbinary.graphics
module ResizableEmptyListener where

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
import qualified ResizableListenerInterface

-- implements ResizableListenerInterface
data ResizableEmptyListener = ResizableEmptyListener
    { header_ :: JavaHeader
    }

instance JavaNull ResizableEmptyListener where
    javaNull = javaNullRecord "ResizableEmptyListener"

instance JavaEquals ResizableEmptyListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResizableEmptyListener where
    (==) = jrecordEquals

instance JavaObjectClass ResizableEmptyListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ResizableEmptyListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = ResizableEmptyListener header_
    jregisterLevel header_ this
    ResizableListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onResizable" (\() -> onResizable_impl this)
    pure this

initFields_ :: ResizableEmptyListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ResizableEmptyListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ResizableEmptyListener -> IO ()
init_ this = do
    initFields_ this


onResizable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
onResizable object_ a1 = jmethod object_ "onResizable" (\() -> (onResizable_impl (javaCast object_ :: ResizableEmptyListener))) () a1

onResizable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
onResizable_super object_ a1 = (onResizable_impl (javaCast object_ :: ResizableEmptyListener)) a1

onResizable_impl :: ResizableEmptyListener -> Bool -> IO (())
onResizable_impl this isResizable = do
        pure ()


