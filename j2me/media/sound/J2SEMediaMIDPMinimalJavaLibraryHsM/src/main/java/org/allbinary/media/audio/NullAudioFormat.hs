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
module NullAudioFormat where

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
import qualified AudioFormat -- javax.sound.sampled.AudioFormat

data NullAudioFormat = NullAudioFormat
    { header_ :: JavaHeader
    }

instance JavaNull NullAudioFormat where
    javaNull = javaNullRecord "NullAudioFormat"

instance JavaEquals NullAudioFormat where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullAudioFormat where
    (==) = jrecordEquals

instance JavaObjectClass NullAudioFormat where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_AUDIO_FORMAT #-}
nULL_AUDIO_FORMAT = unsafePerformIO ((AudioFormat.new_7 (jget (AudioFormat.encoding).pCM_UNSIGNED) (0.0) 0 0 0 (0.0) False))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullAudioFormat
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullAudioFormat header_
    jregisterLevel header_ this
    pure this

initFields_ :: NullAudioFormat -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullAudioFormat
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullAudioFormat -> IO ()
init_ this = do
    initFields_ this


