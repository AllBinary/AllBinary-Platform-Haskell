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
-- package org.allbinary.media.audio
module MediaPlayerUtil where

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
import qualified Thread -- same package or java.lang
import qualified MediaPlayer -- android.media.MediaPlayer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data MediaPlayerUtil = MediaPlayerUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull MediaPlayerUtil where
    javaNull = javaNullRecord "MediaPlayerUtil"

instance JavaEquals MediaPlayerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MediaPlayerUtil where
    (==) = jrecordEquals

instance JavaObjectClass MediaPlayerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MediaPlayerUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = MediaPlayerUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "waitForMediaPlayer" (\() -> waitForMediaPlayer_impl this)
    pure this

initFields_ :: MediaPlayerUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO MediaPlayerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MediaPlayerUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MediaPlayerUtil)
getInstance = do
        pure (MediaPlayerUtil.instance_)


-- throws Exception
waitForMediaPlayer :: (JavaObjectClass this_) => this_ -> MediaPlayer.MediaPlayer -> IO (())
waitForMediaPlayer object_ a1 = jmethod object_ "waitForMediaPlayer" (\() -> (waitForMediaPlayer_impl (javaCast object_ :: MediaPlayerUtil))) () a1

waitForMediaPlayer_super :: (JavaObjectClass this_) => this_ -> MediaPlayer.MediaPlayer -> IO (())
waitForMediaPlayer_super object_ a1 = (waitForMediaPlayer_impl (javaCast object_ :: MediaPlayerUtil)) a1

waitForMediaPlayer_impl :: MediaPlayerUtil -> MediaPlayer.MediaPlayer -> IO (())
waitForMediaPlayer_impl this mediaPlayer = do
        let mESSAGE = "Not Stopped Waiting"
        let mETHOD_NAME = "wait"
        index <- newIORef (0)
        fix $ \loop -> when ((jio (MediaPlayer.isPlaying mediaPlayer)) && ((jget index) < 50)) $ javaIteration (loop) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) mESSAGE this mETHOD_NAME)
            Control.Monad.void (threadDelay (Prelude.fromIntegral 100 * 1000))
            jset index ((jget index) + 1)
        pure ()


