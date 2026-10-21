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
-- package org.allbinary.audio
module AudioContentTypeDataFactory where

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
import qualified AudioContentTypeData -- same package or java.lang

data AudioContentTypeDataFactory = AudioContentTypeDataFactory
    { header_ :: JavaHeader
    , mIME_AUDIO_TONE :: IORef (AudioContentTypeData.AudioContentTypeData)
    , mIME_AUDIO_AMR :: IORef (AudioContentTypeData.AudioContentTypeData)
    , mIME_AUDIO_AMR_WB :: IORef (AudioContentTypeData.AudioContentTypeData)
    , mIME_AUDIO_WAV :: IORef (AudioContentTypeData.AudioContentTypeData)
    , mIME_AUDIO_MIDI :: IORef (AudioContentTypeData.AudioContentTypeData)
    , mIME_AUDIO_SP_MIDI :: IORef (AudioContentTypeData.AudioContentTypeData)
    }

instance JavaNull AudioContentTypeDataFactory where
    javaNull = javaNullRecord "AudioContentTypeDataFactory"

instance JavaEquals AudioContentTypeDataFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AudioContentTypeDataFactory where
    (==) = jrecordEquals

instance JavaObjectClass AudioContentTypeDataFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AudioContentTypeDataFactory
newRecord_ = do
    header_ <- newJavaHeader
    mIME_AUDIO_TONE <- newIORef javaNull
    mIME_AUDIO_AMR <- newIORef javaNull
    mIME_AUDIO_AMR_WB <- newIORef javaNull
    mIME_AUDIO_WAV <- newIORef javaNull
    mIME_AUDIO_MIDI <- newIORef javaNull
    mIME_AUDIO_SP_MIDI <- newIORef javaNull
    let this = AudioContentTypeDataFactory header_ mIME_AUDIO_TONE mIME_AUDIO_AMR mIME_AUDIO_AMR_WB mIME_AUDIO_WAV mIME_AUDIO_MIDI mIME_AUDIO_SP_MIDI
    jregisterLevel header_ this
    pure this

initFields_ :: AudioContentTypeDataFactory -> IO ()
initFields_ this = do
    jset this.mIME_AUDIO_TONE =<< (AudioContentTypeData.new_1 "audio/x-tone-seq")
    jset this.mIME_AUDIO_AMR =<< (AudioContentTypeData.new_1 "audio/amr")
    jset this.mIME_AUDIO_AMR_WB =<< (AudioContentTypeData.new_1 "audio/amr-wb")
    jset this.mIME_AUDIO_WAV =<< (AudioContentTypeData.new_1 "audio/x-wav")
    jset this.mIME_AUDIO_MIDI =<< (AudioContentTypeData.new_1 "audio/midi")
    jset this.mIME_AUDIO_SP_MIDI =<< (AudioContentTypeData.new_1 "audio/sp-midi")
    pure ()


getInstance :: IO (AudioContentTypeDataFactory)
getInstance = do
        pure (AudioContentTypeDataFactory.instance_)

new_ :: IO AudioContentTypeDataFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AudioContentTypeDataFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


