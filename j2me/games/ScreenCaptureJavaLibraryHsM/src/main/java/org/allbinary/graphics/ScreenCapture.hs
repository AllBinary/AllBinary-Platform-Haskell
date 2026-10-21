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
module ScreenCapture where

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

data ScreenCapture = ScreenCapture
    { header_ :: JavaHeader
    }

instance JavaNull ScreenCapture where
    javaNull = javaNullRecord "ScreenCapture"

instance JavaEquals ScreenCapture where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScreenCapture where
    (==) = jrecordEquals

instance JavaObjectClass ScreenCapture where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScreenCapture
newRecord_ = do
    header_ <- newJavaHeader
    let this = ScreenCapture header_
    jregisterLevel header_ this
    jregisterMethod header_ "saveFrame" (\() -> saveFrame_impl this)
    jregisterMethod header_ "startRecording" (\() -> startRecording_impl this)
    jregisterMethod header_ "endRecording" (\() -> endRecording_impl this)
    pure this

initFields_ :: ScreenCapture -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ScreenCapture
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScreenCapture -> IO ()
init_ this = do
    initFields_ this


saveFrame :: (JavaObjectClass this_) => this_ -> IO (())
saveFrame object_ = jmethod object_ "saveFrame" (\() -> (saveFrame_impl (javaCast object_ :: ScreenCapture))) ()

saveFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
saveFrame_super object_ = (saveFrame_impl (javaCast object_ :: ScreenCapture))

saveFrame_impl :: ScreenCapture -> IO (())
saveFrame_impl this = do
        pure ()


startRecording :: (JavaObjectClass this_) => this_ -> IO (())
startRecording object_ = jmethod object_ "startRecording" (\() -> (startRecording_impl (javaCast object_ :: ScreenCapture))) ()

startRecording_super :: (JavaObjectClass this_) => this_ -> IO (())
startRecording_super object_ = (startRecording_impl (javaCast object_ :: ScreenCapture))

startRecording_impl :: ScreenCapture -> IO (())
startRecording_impl this = do
        pure ()


endRecording :: (JavaObjectClass this_) => this_ -> IO (())
endRecording object_ = jmethod object_ "endRecording" (\() -> (endRecording_impl (javaCast object_ :: ScreenCapture))) ()

endRecording_super :: (JavaObjectClass this_) => this_ -> IO (())
endRecording_super object_ = (endRecording_impl (javaCast object_ :: ScreenCapture))

endRecording_impl :: ScreenCapture -> IO (())
endRecording_impl this = do
        pure ()


