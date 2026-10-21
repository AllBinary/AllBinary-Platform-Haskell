{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
module AndroidMediaPlayerWrapperListener where

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
import qualified AndroidMediaPlayerWrapper -- same package or java.lang
import qualified OnBufferingUpdateListener -- same package or java.lang
import qualified OnPreparedListener -- same package or java.lang
import qualified OnErrorListener -- same package or java.lang
import qualified OnCompletionListener -- same package or java.lang
import qualified PlayerListener -- javax.microedition.media.PlayerListener
import qualified MediaPlayer -- android.media.MediaPlayer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AndroidMediaPlayerWrapperListener = AndroidMediaPlayerWrapperListener
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , androidMediaPlayerWrapper :: IORef (AndroidMediaPlayerWrapper.AndroidMediaPlayerWrapper)
    , mOnBufferingUpdateListener :: IORef (OnBufferingUpdateListener.OnBufferingUpdateListener)
    , mOnPreparedListener :: IORef (OnPreparedListener.OnPreparedListener)
    , mOnErrorListener :: IORef (OnErrorListener.OnErrorListener)
    , mOnCompletionListener :: IORef (OnCompletionListener.OnCompletionListener)
    }

instance JavaNull AndroidMediaPlayerWrapperListener where
    javaNull = javaNullRecord "AndroidMediaPlayerWrapperListener"

instance JavaEquals AndroidMediaPlayerWrapperListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidMediaPlayerWrapperListener where
    (==) = jrecordEquals

instance JavaObjectClass AndroidMediaPlayerWrapperListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidMediaPlayerWrapperListener
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    androidMediaPlayerWrapper <- newIORef javaNull
    mOnBufferingUpdateListener <- newIORef javaNull
    mOnPreparedListener <- newIORef javaNull
    mOnErrorListener <- newIORef javaNull
    mOnCompletionListener <- newIORef javaNull
    let this = AndroidMediaPlayerWrapperListener header_ logUtil commonStrings androidMediaPlayerWrapper mOnBufferingUpdateListener mOnPreparedListener mOnErrorListener mOnCompletionListener
    jregisterLevel header_ this
    pure this

initFields_ :: AndroidMediaPlayerWrapperListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.androidMediaPlayerWrapper (AndroidMediaPlayerWrapper.nULL_ANDROID_MEDIA_PLAYER_WRAPPER)
    jset this.mOnBufferingUpdateListener =<< (fmap (\value_ -> javaCast value_ :: OnBufferingUpdateListener.OnBufferingUpdateListener) (AndroidMediaPlayerOnBufferingUpdateListener.new_1 this))
    jset this.mOnPreparedListener =<< (fmap (\value_ -> javaCast value_ :: OnPreparedListener.OnPreparedListener) (AndroidMediaPlayerOnPreparedListener.new_1 this))
    jset this.mOnErrorListener =<< (fmap (\value_ -> javaCast value_ :: OnErrorListener.OnErrorListener) (AndroidMediaPlayerOnErrorListener.new_1 this))
    jset this.mOnCompletionListener =<< (fmap (\value_ -> javaCast value_ :: OnCompletionListener.OnCompletionListener) (AndroidMediaPlayerOnCompletionListener.new_1 this))
    pure ()

new_1 :: AndroidMediaPlayerWrapper.AndroidMediaPlayerWrapper -> IO AndroidMediaPlayerWrapperListener
new_1 androidMediaPlayerWrapper = do
    this <- newRecord_
    init_1 this androidMediaPlayerWrapper
    pure this

init_1 :: AndroidMediaPlayerWrapperListener -> AndroidMediaPlayerWrapper.AndroidMediaPlayerWrapper -> IO ()
init_1 this androidMediaPlayerWrapper = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            jset (this).androidMediaPlayerWrapper (androidMediaPlayerWrapper)
            mediaPlayer <- (AndroidMediaPlayerWrapper.getMediaPlayer androidMediaPlayerWrapper)
            Control.Monad.void (MediaPlayer.setOnCompletionListener mediaPlayer (jget (this).mOnCompletionListener))
            Control.Monad.void (MediaPlayer.setOnBufferingUpdateListener mediaPlayer (jget (this).mOnBufferingUpdateListener))
            Control.Monad.void (MediaPlayer.setOnPreparedListener mediaPlayer (jget (this).mOnPreparedListener))
            Control.Monad.void (MediaPlayer.setOnErrorListener mediaPlayer (jget (this).mOnErrorListener))
        pure ()

-- Java nested class MediaPlayerOnBufferingUpdateListener: move it to its own module MediaPlayerOnBufferingUpdateListener
-- Java nested class MediaPlayerOnPreparedListener: move it to its own module MediaPlayerOnPreparedListener
-- Java nested class MediaPlayerOnErrorListener: move it to its own module MediaPlayerOnErrorListener
-- Java nested class MediaPlayerOnCompletionListener: move it to its own module MediaPlayerOnCompletionListener
-- Java nested class AndroidMediaPlayerOnBufferingUpdateListener: move it to its own module AndroidMediaPlayerOnBufferingUpdateListener
-- Java nested class AndroidMediaPlayerOnPreparedListener: move it to its own module AndroidMediaPlayerOnPreparedListener
-- Java nested class AndroidMediaPlayerOnErrorListener: move it to its own module AndroidMediaPlayerOnErrorListener
-- Java nested class AndroidMediaPlayerOnCompletionListener: move it to its own module AndroidMediaPlayerOnCompletionListener

