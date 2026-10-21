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
module AndroidMediaPlayerWrapper (module AndroidMediaPlayerWrapper, module BasicPlayer) where

import BasicPlayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createPlayerWrapper, createPlayerWrapper_super, createPlayerWrapper_impl, setLoopCount, setLoopCount_super, setLoopCount_impl, addPlayerListener, addPlayerListener_super, addPlayerListener_impl, removePlayerListener, removePlayerListener_super, removePlayerListener_impl, getState, getState_super, getState_impl, close, close_super, close_impl, start, start_super, start_impl, stop, stop_super, stop_impl, update, update_super, update_impl, setVolume, setVolume_super, setVolume_impl, getDuration, getDuration_super, getDuration_impl, setMediaPlayer, setMediaPlayer_super, setMediaPlayer_impl, getMediaPlayer, getMediaPlayer_super, getMediaPlayer_impl, nULL_ANDROID_MEDIA_PLAYER_WRAPPER, logUtil, mediaPlayer)
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
import qualified BasicArrayList -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified MediaException -- javax.microedition.media.MediaException
import qualified Player -- javax.microedition.media.Player
import qualified PlayerListener -- javax.microedition.media.PlayerListener
import qualified MediaPlayer -- android.media.MediaPlayer
import qualified NullAndroidCanvas -- org.allbinary.android.NullAndroidCanvas
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicPlayer

data AndroidMediaPlayerWrapper = AndroidMediaPlayerWrapper
    { header_ :: JavaHeader
    , base :: BasicPlayer.BasicPlayer
    , logUtil :: IORef (LogUtil.LogUtil)
    , mediaPlayer :: IORef (MediaPlayer.MediaPlayer)
    }

instance JavaNull AndroidMediaPlayerWrapper where
    javaNull = javaNullRecord "AndroidMediaPlayerWrapper"

instance JavaEquals AndroidMediaPlayerWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidMediaPlayerWrapper where
    (==) = jrecordEquals

instance JavaObjectClass AndroidMediaPlayerWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ANDROID_MEDIA_PLAYER_WRAPPER #-}
nULL_ANDROID_MEDIA_PLAYER_WRAPPER = unsafePerformIO ((AndroidMediaPlayerWrapper.createPlayerWrapper))

newRecord_ :: IO AndroidMediaPlayerWrapper
newRecord_ = do
    base <- BasicPlayer.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    mediaPlayer <- newIORef javaNull
    let this = AndroidMediaPlayerWrapper header_ base logUtil mediaPlayer
    jregisterLevel header_ this
    jregisterMethod header_ "setLoopCount" (\() -> setLoopCount_impl this)
    jregisterMethod header_ "addPlayerListener" (\() -> addPlayerListener_impl this)
    jregisterMethod header_ "removePlayerListener" (\() -> removePlayerListener_impl this)
    jregisterMethod header_ "getState" (\() -> getState_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setVolume" (\() -> setVolume_impl this)
    jregisterMethod header_ "getDuration" (\() -> getDuration_impl this)
    jregisterMethod header_ "setMediaPlayer" (\() -> setMediaPlayer_impl this)
    jregisterMethod header_ "getMediaPlayer" (\() -> getMediaPlayer_impl this)
    pure this

initFields_ :: AndroidMediaPlayerWrapper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.mediaPlayer (NullAndroidCanvas.nULL_MEDIA_PLAYER)
    pure ()


createPlayerWrapper :: IO (AndroidMediaPlayerWrapper)
createPlayerWrapper = do
        handle (\(e :: JavaException) -> do
            javaThrow ((JavaException "RuntimeException" ""))
            ) $ do
            (new_1 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))

new_1 :: String -> IO AndroidMediaPlayerWrapper
new_1 resource = do
    this <- newRecord_
    init_1 this resource
    pure this

init_1 :: AndroidMediaPlayerWrapper -> String -> IO ()
init_1 this resource = do
        BasicPlayer.init_ this.base
        initFields_ this
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (javaToString (jget ((jget (this).base.commonStrings)).eXCEPTION_LABEL) ++ resource) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            if (resource == (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) then do
                pure ()
            else do
                resourceUtil <- (ResourceUtil.getInstance)
                mediaPlayer <- (MediaPlayer.create (jio (ResourceUtil.getContext resourceUtil)) (jio (ResourceUtil.getResourceId resourceUtil resource)))
                when (mediaPlayer == javaNull) $ do
                    javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Failed to create media player for: "))) resource))) " with id: "))) (javaToString (jio (ResourceUtil.getResourceId resourceUtil resource))))))))))
                Control.Monad.void (AndroidMediaPlayerWrapper.setMediaPlayer this mediaPlayer)
                Control.Monad.void (MediaPlayer.setLooping ((jget (this).mediaPlayer)) False)
        pure ()


setLoopCount :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoopCount object_ a1 = jmethod object_ "setLoopCount" (\() -> (setLoopCount_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) () a1

setLoopCount_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoopCount_super object_ a1 = (setLoopCount_impl (javaCast object_ :: AndroidMediaPlayerWrapper)) a1

setLoopCount_impl :: AndroidMediaPlayerWrapper -> Int -> IO (())
setLoopCount_impl this count = do
        Control.Monad.void (BasicPlayer.setLoopCount_super this.base count)
        when (((jget (this).mediaPlayer) /= NullAndroidCanvas.nULL_MEDIA_PLAYER) && ((jget (this).mediaPlayer) /= javaNull)) $ do
            if (count == 0) then do
                Control.Monad.void (MediaPlayer.setLooping ((jget (this).mediaPlayer)) False)
            else do
                pure ()
        pure ()


addPlayerListener :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
addPlayerListener object_ a1 = jmethod object_ "addPlayerListener" (\() -> (addPlayerListener_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) () a1

addPlayerListener_super :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
addPlayerListener_super object_ a1 = (addPlayerListener_impl (javaCast object_ :: AndroidMediaPlayerWrapper)) a1

addPlayerListener_impl :: AndroidMediaPlayerWrapper -> PlayerListener.PlayerListener -> IO (())
addPlayerListener_impl this playerListener = do
        Control.Monad.void (BasicPlayer.addPlayerListener_super this.base playerListener)
        pure ()


removePlayerListener :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
removePlayerListener object_ a1 = jmethod object_ "removePlayerListener" (\() -> (removePlayerListener_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) () a1

removePlayerListener_super :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
removePlayerListener_super object_ a1 = (removePlayerListener_impl (javaCast object_ :: AndroidMediaPlayerWrapper)) a1

removePlayerListener_impl :: AndroidMediaPlayerWrapper -> PlayerListener.PlayerListener -> IO (())
removePlayerListener_impl this playerListener = do
        Control.Monad.void (BasicPlayer.removePlayerListener_super this.base playerListener)
        pure ()


getState :: (JavaObjectClass this_) => this_ -> IO (Int)
getState object_ = jmethod object_ "getState" (\() -> (getState_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) ()

getState_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getState_super object_ = (getState_impl (javaCast object_ :: AndroidMediaPlayerWrapper))

getState_impl :: AndroidMediaPlayerWrapper -> IO (Int)
getState_impl this = do
    javaCatchReturn $ do
        if (jio (MediaPlayer.isPlaying ((jget (this).mediaPlayer)))) then do
            javaReturn (Player.sTARTED)
        else do
            javaReturn (Player.pREFETCHED)


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: AndroidMediaPlayerWrapper))

close_impl :: AndroidMediaPlayerWrapper -> IO (())
close_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).cLOSE) e)
            ) $ do
            Control.Monad.void (MediaPlayer.release ((jget (this).mediaPlayer)))
            jset (this).mediaPlayer (NullAndroidCanvas.nULL_MEDIA_PLAYER)
        pure ()


-- throws MediaException
start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: AndroidMediaPlayerWrapper))

start_impl :: AndroidMediaPlayerWrapper -> IO (())
start_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).sTART_METHOD_NAME) e)
            ) $ do
            when (jio (MediaPlayer.isPlaying ((jget (this).mediaPlayer)))) $ do
                Control.Monad.void (MediaPlayer.pause ((jget (this).mediaPlayer)))
                Control.Monad.void (MediaPlayer.seekTo ((jget (this).mediaPlayer)) 0)
            Control.Monad.void (MediaPlayer.start ((jget (this).mediaPlayer)))
            Control.Monad.void (BasicPlayer.start_super this.base)
        pure ()


-- throws MediaException
stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: AndroidMediaPlayerWrapper))

stop_impl :: AndroidMediaPlayerWrapper -> IO (())
stop_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "stop" e)
            ) $ do
            Control.Monad.void (MediaPlayer.stop ((jget (this).mediaPlayer)))
            Control.Monad.void (MediaPlayer.prepare ((jget (this).mediaPlayer)))
            Control.Monad.void (BasicPlayer.stop_super this.base)
        pure ()


update :: (JavaObjectClass this_) => this_ -> String -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) () a1

update_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: AndroidMediaPlayerWrapper)) a1

update_impl :: AndroidMediaPlayerWrapper -> String -> IO (())
update_impl this event = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("LineEvent: " ++ event) this (jget ((jget (this).base.commonStrings)).uPDATE))
        size <- (BasicArrayList.size ((jget (this).base.listenersList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let listener = (javaCast (jindex ((jget ((jget (this).base.listenersList)).objectArray)) (index)) :: PlayerListener.PlayerListener)
            Control.Monad.void (PlayerListener.playerUpdate listener this event (jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
        pure ()


setVolume :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume object_ a1 a2 = jmethod object_ "setVolume" (\() -> (setVolume_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) () a1 a2

setVolume_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume_super object_ a1 a2 = (setVolume_impl (javaCast object_ :: AndroidMediaPlayerWrapper)) a1 a2

setVolume_impl :: AndroidMediaPlayerWrapper -> Int -> Int -> IO (())
setVolume_impl this leftVolume rightVolume = do
        Control.Monad.void (MediaPlayer.setVolume ((jget (this).mediaPlayer)) (((Prelude.fromIntegral leftVolume)) / 100.0) (((Prelude.fromIntegral rightVolume)) / 100.0))
        pure ()


getDuration :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDuration object_ = jmethod object_ "getDuration" (\() -> (getDuration_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) ()

getDuration_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDuration_super object_ = (getDuration_impl (javaCast object_ :: AndroidMediaPlayerWrapper))

getDuration_impl :: AndroidMediaPlayerWrapper -> IO (Int64)
getDuration_impl this = do
        pure ((Prelude.fromInteger (jnumericInteger (jio (MediaPlayer.getDuration ((jget (this).mediaPlayer)))))))


setMediaPlayer :: (JavaObjectClass this_) => this_ -> MediaPlayer.MediaPlayer -> IO (())
setMediaPlayer object_ a1 = jmethod object_ "setMediaPlayer" (\() -> (setMediaPlayer_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) () a1

setMediaPlayer_super :: (JavaObjectClass this_) => this_ -> MediaPlayer.MediaPlayer -> IO (())
setMediaPlayer_super object_ a1 = (setMediaPlayer_impl (javaCast object_ :: AndroidMediaPlayerWrapper)) a1

setMediaPlayer_impl :: AndroidMediaPlayerWrapper -> MediaPlayer.MediaPlayer -> IO (())
setMediaPlayer_impl this mediaPlayer = do
        jset (this).mediaPlayer (mediaPlayer)
        pure ()


getMediaPlayer :: (JavaObjectClass this_) => this_ -> IO (MediaPlayer.MediaPlayer)
getMediaPlayer object_ = jmethod object_ "getMediaPlayer" (\() -> (getMediaPlayer_impl (javaCast object_ :: AndroidMediaPlayerWrapper))) ()

getMediaPlayer_super :: (JavaObjectClass this_) => this_ -> IO (MediaPlayer.MediaPlayer)
getMediaPlayer_super object_ = (getMediaPlayer_impl (javaCast object_ :: AndroidMediaPlayerWrapper))

getMediaPlayer_impl :: AndroidMediaPlayerWrapper -> IO (MediaPlayer.MediaPlayer)
getMediaPlayer_impl this = do
        pure ((jget (this).mediaPlayer))


