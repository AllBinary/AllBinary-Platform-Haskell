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
module ScreenEmptyListener where

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
import qualified ScreenListenerInterface

-- implements ScreenListenerInterface
data ScreenEmptyListener = ScreenEmptyListener
    { header_ :: JavaHeader
    }

instance JavaNull ScreenEmptyListener where
    javaNull = javaNullRecord "ScreenEmptyListener"

instance JavaEquals ScreenEmptyListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScreenEmptyListener where
    (==) = jrecordEquals

instance JavaObjectClass ScreenEmptyListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScreenEmptyListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = ScreenEmptyListener header_
    jregisterLevel header_ this
    ScreenListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onFullScreen" (\() -> onFullScreen_impl this)
    jregisterMethod header_ "onFullScreenDisplay" (\() -> onFullScreenDisplay_impl this)
    pure this

initFields_ :: ScreenEmptyListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ScreenEmptyListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScreenEmptyListener -> IO ()
init_ this = do
    initFields_ this


onFullScreen :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
onFullScreen object_ a1 = jmethod object_ "onFullScreen" (\() -> (onFullScreen_impl (javaCast object_ :: ScreenEmptyListener))) () a1

onFullScreen_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
onFullScreen_super object_ a1 = (onFullScreen_impl (javaCast object_ :: ScreenEmptyListener)) a1

onFullScreen_impl :: ScreenEmptyListener -> Bool -> IO (())
onFullScreen_impl this isFullScreen = do
        pure ()


onFullScreenDisplay :: (JavaObjectClass this_) => this_ -> IO (())
onFullScreenDisplay object_ = jmethod object_ "onFullScreenDisplay" (\() -> (onFullScreenDisplay_impl (javaCast object_ :: ScreenEmptyListener))) ()

onFullScreenDisplay_super :: (JavaObjectClass this_) => this_ -> IO (())
onFullScreenDisplay_super object_ = (onFullScreenDisplay_impl (javaCast object_ :: ScreenEmptyListener))

onFullScreenDisplay_impl :: ScreenEmptyListener -> IO (())
onFullScreenDisplay_impl this = do
        pure ()


