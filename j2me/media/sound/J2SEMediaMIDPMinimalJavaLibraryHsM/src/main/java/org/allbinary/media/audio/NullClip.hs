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
-- package org.allbinary.media.audio
module NullClip where

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
import qualified NullJ2SEControl -- same package or java.lang
import qualified NullAudioFormat -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified IOException -- java.io.IOException
import qualified AudioFormat -- javax.sound.sampled.AudioFormat
import qualified AudioInputStream -- javax.sound.sampled.AudioInputStream
import qualified BooleanControl -- javax.sound.sampled.BooleanControl
import qualified Clip -- javax.sound.sampled.Clip
import qualified Control -- javax.sound.sampled.Control
import qualified Type -- javax.sound.sampled.Control.Type
import qualified Info -- javax.sound.sampled.Line.Info
import qualified LineListener -- javax.sound.sampled.LineListener
import qualified LineUnavailableException -- javax.sound.sampled.LineUnavailableException

-- implements Clip
data NullClip = NullClip
    { header_ :: JavaHeader
    }

instance JavaNull NullClip where
    javaNull = javaNullRecord "NullClip"

instance JavaEquals NullClip where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullClip where
    (==) = jrecordEquals

instance JavaObjectClass NullClip where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_CONTROL #-}
nULL_CONTROL = unsafePerformIO ((NullJ2SEControl.new_1 (jget (BooleanControl.type_).mUTE)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullClip
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullClip header_
    jregisterLevel header_ this
    Clip.registerInterface_ header_
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "getFrameLength" (\() -> getFrameLength_impl this)
    jregisterMethod header_ "getMicrosecondLength" (\() -> getMicrosecondLength_impl this)
    jregisterMethod header_ "setFramePosition" (\() -> setFramePosition_impl this)
    jregisterMethod header_ "setMicrosecondPosition" (\() -> setMicrosecondPosition_impl this)
    jregisterMethod header_ "setLoopPoints" (\() -> setLoopPoints_impl this)
    jregisterMethod header_ "loop_" (\() -> loop__impl this)
    jregisterMethod header_ "drain" (\() -> drain_impl this)
    jregisterMethod header_ "flush" (\() -> flush_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "isActive" (\() -> isActive_impl this)
    jregisterMethod header_ "getFormat" (\() -> getFormat_impl this)
    jregisterMethod header_ "getBufferSize" (\() -> getBufferSize_impl this)
    jregisterMethod header_ "available" (\() -> available_impl this)
    jregisterMethod header_ "getFramePosition" (\() -> getFramePosition_impl this)
    jregisterMethod header_ "getLongFramePosition" (\() -> getLongFramePosition_impl this)
    jregisterMethod header_ "getMicrosecondPosition" (\() -> getMicrosecondPosition_impl this)
    jregisterMethod header_ "getLevel" (\() -> getLevel_impl this)
    jregisterMethod header_ "getLineInfo" (\() -> getLineInfo_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "isOpen" (\() -> isOpen_impl this)
    jregisterMethod header_ "getControls" (\() -> getControls_impl this)
    jregisterMethod header_ "isControlSupported" (\() -> isControlSupported_impl this)
    jregisterMethod header_ "getControl" (\() -> getControl_impl this)
    jregisterMethod header_ "addLineListener" (\() -> addLineListener_impl this)
    jregisterMethod header_ "removeLineListener" (\() -> removeLineListener_impl this)
    pure this

initFields_ :: NullClip -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullClip
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullClip -> IO ()
init_ this = do
    initFields_ this


-- throws LineUnavailableException
open :: (JavaObjectClass this_) => this_ -> AudioFormat.AudioFormat -> JavaArray (Int8) -> Int -> Int -> IO (())
open object_ a1 a2 a3 a4 = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: NullClip))) () a1 a2 a3 a4

open_super :: (JavaObjectClass this_) => this_ -> AudioFormat.AudioFormat -> JavaArray (Int8) -> Int -> Int -> IO (())
open_super object_ a1 a2 a3 a4 = (open_impl (javaCast object_ :: NullClip)) a1 a2 a3 a4

open_impl :: NullClip -> AudioFormat.AudioFormat -> JavaArray (Int8) -> Int -> Int -> IO (())
open_impl this format data_ offset bufferSize = do
        pure ()


-- throws LineUnavailableException, IOException
-- Java overload of open with a different parameter count: give it a different name
open :: (JavaObjectClass this_) => this_ -> AudioInputStream.AudioInputStream -> IO (())
open object_ a1 = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: NullClip))) () a1

open_super :: (JavaObjectClass this_) => this_ -> AudioInputStream.AudioInputStream -> IO (())
open_super object_ a1 = (open_impl (javaCast object_ :: NullClip)) a1

open_impl :: NullClip -> AudioInputStream.AudioInputStream -> IO (())
open_impl this stream = do
        pure ()


getFrameLength :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrameLength object_ = jmethod object_ "getFrameLength" (\() -> (getFrameLength_impl (javaCast object_ :: NullClip))) ()

getFrameLength_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrameLength_super object_ = (getFrameLength_impl (javaCast object_ :: NullClip))

getFrameLength_impl :: NullClip -> IO (Int)
getFrameLength_impl this = do
        pure (0)


getMicrosecondLength :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMicrosecondLength object_ = jmethod object_ "getMicrosecondLength" (\() -> (getMicrosecondLength_impl (javaCast object_ :: NullClip))) ()

getMicrosecondLength_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMicrosecondLength_super object_ = (getMicrosecondLength_impl (javaCast object_ :: NullClip))

getMicrosecondLength_impl :: NullClip -> IO (Int64)
getMicrosecondLength_impl this = do
        pure (0)


setFramePosition :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFramePosition object_ a1 = jmethod object_ "setFramePosition" (\() -> (setFramePosition_impl (javaCast object_ :: NullClip))) () a1

setFramePosition_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFramePosition_super object_ a1 = (setFramePosition_impl (javaCast object_ :: NullClip)) a1

setFramePosition_impl :: NullClip -> Int -> IO (())
setFramePosition_impl this frames = do
        pure ()


setMicrosecondPosition :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setMicrosecondPosition object_ a1 = jmethod object_ "setMicrosecondPosition" (\() -> (setMicrosecondPosition_impl (javaCast object_ :: NullClip))) () a1

setMicrosecondPosition_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setMicrosecondPosition_super object_ a1 = (setMicrosecondPosition_impl (javaCast object_ :: NullClip)) a1

setMicrosecondPosition_impl :: NullClip -> Int64 -> IO (())
setMicrosecondPosition_impl this microseconds = do
        pure ()


setLoopPoints :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setLoopPoints object_ a1 a2 = jmethod object_ "setLoopPoints" (\() -> (setLoopPoints_impl (javaCast object_ :: NullClip))) () a1 a2

setLoopPoints_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setLoopPoints_super object_ a1 a2 = (setLoopPoints_impl (javaCast object_ :: NullClip)) a1 a2

setLoopPoints_impl :: NullClip -> Int -> Int -> IO (())
setLoopPoints_impl this start end = do
        pure ()


loop_ :: (JavaObjectClass this_) => this_ -> Int -> IO (())
loop_ object_ a1 = jmethod object_ "loop_" (\() -> (loop__impl (javaCast object_ :: NullClip))) () a1

loop__super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
loop__super object_ a1 = (loop__impl (javaCast object_ :: NullClip)) a1

loop__impl :: NullClip -> Int -> IO (())
loop__impl this count = do
        pure ()


drain :: (JavaObjectClass this_) => this_ -> IO (())
drain object_ = jmethod object_ "drain" (\() -> (drain_impl (javaCast object_ :: NullClip))) ()

drain_super :: (JavaObjectClass this_) => this_ -> IO (())
drain_super object_ = (drain_impl (javaCast object_ :: NullClip))

drain_impl :: NullClip -> IO (())
drain_impl this = do
        pure ()


flush :: (JavaObjectClass this_) => this_ -> IO (())
flush object_ = jmethod object_ "flush" (\() -> (flush_impl (javaCast object_ :: NullClip))) ()

flush_super :: (JavaObjectClass this_) => this_ -> IO (())
flush_super object_ = (flush_impl (javaCast object_ :: NullClip))

flush_impl :: NullClip -> IO (())
flush_impl this = do
        pure ()


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: NullClip))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: NullClip))

start_impl :: NullClip -> IO (())
start_impl this = do
        pure ()


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: NullClip))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: NullClip))

stop_impl :: NullClip -> IO (())
stop_impl this = do
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: NullClip))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: NullClip))

isRunning_impl :: NullClip -> IO (Bool)
isRunning_impl this = do
        pure (False)


isActive :: (JavaObjectClass this_) => this_ -> IO (Bool)
isActive object_ = jmethod object_ "isActive" (\() -> (isActive_impl (javaCast object_ :: NullClip))) ()

isActive_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isActive_super object_ = (isActive_impl (javaCast object_ :: NullClip))

isActive_impl :: NullClip -> IO (Bool)
isActive_impl this = do
        pure (False)


getFormat :: (JavaObjectClass this_) => this_ -> IO (AudioFormat.AudioFormat)
getFormat object_ = jmethod object_ "getFormat" (\() -> (getFormat_impl (javaCast object_ :: NullClip))) ()

getFormat_super :: (JavaObjectClass this_) => this_ -> IO (AudioFormat.AudioFormat)
getFormat_super object_ = (getFormat_impl (javaCast object_ :: NullClip))

getFormat_impl :: NullClip -> IO (AudioFormat.AudioFormat)
getFormat_impl this = do
        pure (NullAudioFormat.nULL_AUDIO_FORMAT)


getBufferSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getBufferSize object_ = jmethod object_ "getBufferSize" (\() -> (getBufferSize_impl (javaCast object_ :: NullClip))) ()

getBufferSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getBufferSize_super object_ = (getBufferSize_impl (javaCast object_ :: NullClip))

getBufferSize_impl :: NullClip -> IO (Int)
getBufferSize_impl this = do
        pure (0)


available :: (JavaObjectClass this_) => this_ -> IO (Int)
available object_ = jmethod object_ "available" (\() -> (available_impl (javaCast object_ :: NullClip))) ()

available_super :: (JavaObjectClass this_) => this_ -> IO (Int)
available_super object_ = (available_impl (javaCast object_ :: NullClip))

available_impl :: NullClip -> IO (Int)
available_impl this = do
        pure (0)


getFramePosition :: (JavaObjectClass this_) => this_ -> IO (Int)
getFramePosition object_ = jmethod object_ "getFramePosition" (\() -> (getFramePosition_impl (javaCast object_ :: NullClip))) ()

getFramePosition_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFramePosition_super object_ = (getFramePosition_impl (javaCast object_ :: NullClip))

getFramePosition_impl :: NullClip -> IO (Int)
getFramePosition_impl this = do
        pure (0)


getLongFramePosition :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLongFramePosition object_ = jmethod object_ "getLongFramePosition" (\() -> (getLongFramePosition_impl (javaCast object_ :: NullClip))) ()

getLongFramePosition_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLongFramePosition_super object_ = (getLongFramePosition_impl (javaCast object_ :: NullClip))

getLongFramePosition_impl :: NullClip -> IO (Int64)
getLongFramePosition_impl this = do
        pure (0)


getMicrosecondPosition :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMicrosecondPosition object_ = jmethod object_ "getMicrosecondPosition" (\() -> (getMicrosecondPosition_impl (javaCast object_ :: NullClip))) ()

getMicrosecondPosition_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMicrosecondPosition_super object_ = (getMicrosecondPosition_impl (javaCast object_ :: NullClip))

getMicrosecondPosition_impl :: NullClip -> IO (Int64)
getMicrosecondPosition_impl this = do
        pure (0)


getLevel :: (JavaObjectClass this_) => this_ -> IO (Float)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: NullClip))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: NullClip))

getLevel_impl :: NullClip -> IO (Float)
getLevel_impl this = do
        pure (0.0)


getLineInfo :: (JavaObjectClass this_) => this_ -> IO (Info.Info)
getLineInfo object_ = jmethod object_ "getLineInfo" (\() -> (getLineInfo_impl (javaCast object_ :: NullClip))) ()

getLineInfo_super :: (JavaObjectClass this_) => this_ -> IO (Info.Info)
getLineInfo_super object_ = (getLineInfo_impl (javaCast object_ :: NullClip))

getLineInfo_impl :: NullClip -> IO (Info.Info)
getLineInfo_impl this = do
        (Info.new_2 (jio (jobjectGetClass this)) (NullAudioFormat.nULL_AUDIO_FORMAT))


-- throws LineUnavailableException
-- Java overload of open with a different parameter count: give it a different name
open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: NullClip))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: NullClip))

open_impl :: NullClip -> IO (())
open_impl this = do
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: NullClip))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: NullClip))

close_impl :: NullClip -> IO (())
close_impl this = do
        pure ()


isOpen :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOpen object_ = jmethod object_ "isOpen" (\() -> (isOpen_impl (javaCast object_ :: NullClip))) ()

isOpen_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOpen_super object_ = (isOpen_impl (javaCast object_ :: NullClip))

isOpen_impl :: NullClip -> IO (Bool)
isOpen_impl this = do
        pure (False)


getControls :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls object_ = jmethod object_ "getControls" (\() -> (getControls_impl (javaCast object_ :: NullClip))) ()

getControls_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls_super object_ = (getControls_impl (javaCast object_ :: NullClip))

getControls_impl :: NullClip -> IO (JavaArray (Control.Control))
getControls_impl this = do
        pure ((jnewArray (0) javaNull))


isControlSupported :: (JavaObjectClass this_) => this_ -> Type.Type -> IO (Bool)
isControlSupported object_ a1 = jmethod object_ "isControlSupported" (\() -> (isControlSupported_impl (javaCast object_ :: NullClip))) () a1

isControlSupported_super :: (JavaObjectClass this_) => this_ -> Type.Type -> IO (Bool)
isControlSupported_super object_ a1 = (isControlSupported_impl (javaCast object_ :: NullClip)) a1

isControlSupported_impl :: NullClip -> Type.Type -> IO (Bool)
isControlSupported_impl this control = do
        pure (False)


getControl :: (JavaObjectClass this_) => this_ -> Type.Type -> IO (Control.Control)
getControl object_ a1 = jmethod object_ "getControl" (\() -> (getControl_impl (javaCast object_ :: NullClip))) () a1

getControl_super :: (JavaObjectClass this_) => this_ -> Type.Type -> IO (Control.Control)
getControl_super object_ a1 = (getControl_impl (javaCast object_ :: NullClip)) a1

getControl_impl :: NullClip -> Type.Type -> IO (Control.Control)
getControl_impl this control = do
        pure ((javaCast NullClip.nULL_CONTROL :: Control.Control))


addLineListener :: (JavaObjectClass this_) => this_ -> LineListener.LineListener -> IO (())
addLineListener object_ a1 = jmethod object_ "addLineListener" (\() -> (addLineListener_impl (javaCast object_ :: NullClip))) () a1

addLineListener_super :: (JavaObjectClass this_) => this_ -> LineListener.LineListener -> IO (())
addLineListener_super object_ a1 = (addLineListener_impl (javaCast object_ :: NullClip)) a1

addLineListener_impl :: NullClip -> LineListener.LineListener -> IO (())
addLineListener_impl this listener = do
        pure ()


removeLineListener :: (JavaObjectClass this_) => this_ -> LineListener.LineListener -> IO (())
removeLineListener object_ a1 = jmethod object_ "removeLineListener" (\() -> (removeLineListener_impl (javaCast object_ :: NullClip))) () a1

removeLineListener_super :: (JavaObjectClass this_) => this_ -> LineListener.LineListener -> IO (())
removeLineListener_super object_ a1 = (removeLineListener_impl (javaCast object_ :: NullClip)) a1

removeLineListener_impl :: NullClip -> LineListener.LineListener -> IO (())
removeLineListener_impl this listener = do
        pure ()


