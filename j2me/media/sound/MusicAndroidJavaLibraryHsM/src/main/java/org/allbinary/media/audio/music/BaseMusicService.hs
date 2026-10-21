{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.media.audio.music
module BaseMusicService (module BaseMusicService, module Service) where

import Service hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onBind, onBind_super, onBind_impl, onCreate, onCreate_super, onCreate_impl, onDestroy, onDestroy_super, onDestroy_impl, pause, pause_super, pause_impl, resume, resume_super, resume_impl, start, start_super, start_impl, onStart, onStart_super, onStart_impl, onStartCommand, onStartCommand_super, onStartCommand_impl, onStartCommandIntent, onStartCommandIntent_super, onStartCommandIntent_impl, logUtil, commonStrings, commonStateStrings, aLREADY_PLAYING, wAITING_FOR_MUSIC_TO_END, player, songId, leftVolume, rightVolume)
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
import qualified MusicStrings -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified Service -- android.app.Service
import qualified Intent -- android.content.Intent
import qualified MediaPlayer -- android.media.MediaPlayer
import qualified IBinder -- android.os.IBinder
import qualified NullAndroidCanvas -- org.allbinary.android.NullAndroidCanvas
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStateStrings -- org.allbinary.string.CommonStateStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ARunnable -- org.allbinary.thread.ARunnable

data BaseMusicService = BaseMusicService
    { header_ :: JavaHeader
    , base :: Service.Service
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonStateStrings :: IORef (CommonStateStrings.CommonStateStrings)
    , aLREADY_PLAYING :: IORef (String)
    , wAITING_FOR_MUSIC_TO_END :: IORef (String)
    , player :: IORef (MediaPlayer.MediaPlayer)
    , songId :: IORef (Int)
    , leftVolume :: IORef (Int)
    , rightVolume :: IORef (Int)
    }

instance JavaNull BaseMusicService where
    javaNull = javaNullRecord "BaseMusicService"

instance JavaEquals BaseMusicService where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseMusicService where
    (==) = jrecordEquals

instance JavaObjectClass BaseMusicService where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BaseMusicService
newRecord_ = do
    base <- Service.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonStateStrings <- newIORef javaNull
    aLREADY_PLAYING <- newIORef ""
    wAITING_FOR_MUSIC_TO_END <- newIORef ""
    player <- newIORef javaNull
    songId <- newIORef 0
    leftVolume <- newIORef 0
    rightVolume <- newIORef 0
    let this = BaseMusicService header_ base logUtil commonStrings commonStateStrings aLREADY_PLAYING wAITING_FOR_MUSIC_TO_END player songId leftVolume rightVolume
    jregisterLevel header_ this
    jregisterMethod header_ "onBind" (\() -> onBind_impl this)
    jregisterMethod header_ "onCreate" (\() -> onCreate_impl this)
    jregisterMethod header_ "onDestroy" (\() -> onDestroy_impl this)
    jregisterMethod header_ "pause" (\() -> pause_impl this)
    jregisterMethod header_ "resume" (\() -> resume_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "onStart" (\() -> onStart_impl this)
    jregisterMethod header_ "onStartCommand" (\() -> onStartCommand_impl this)
    jregisterMethod header_ "onStartCommandIntent" (\() -> onStartCommandIntent_impl this)
    pure this

initFields_ :: BaseMusicService -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonStateStrings =<< (CommonStateStrings.getInstance)
    jset this.aLREADY_PLAYING ("This is one song per music service")
    jset this.wAITING_FOR_MUSIC_TO_END ("Waiting for music to end")
    jset this.player (NullAndroidCanvas.nULL_MEDIA_PLAYER)
    jset this.songId ((Prelude.negate 1))
    jset this.leftVolume ((Prelude.negate 1))
    jset this.rightVolume ((Prelude.negate 1))
    pure ()

new_ :: IO BaseMusicService
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseMusicService -> IO ()
init_ this = do
    Service.init_ this.base
    initFields_ this


onBind :: (JavaObjectClass this_) => this_ -> Intent.Intent -> IO (IBinder.IBinder)
onBind object_ a1 = jmethod object_ "onBind" (\() -> (onBind_impl (javaCast object_ :: BaseMusicService))) () a1

onBind_super :: (JavaObjectClass this_) => this_ -> Intent.Intent -> IO (IBinder.IBinder)
onBind_super object_ a1 = (onBind_impl (javaCast object_ :: BaseMusicService)) a1

onBind_impl :: BaseMusicService -> Intent.Intent -> IO (IBinder.IBinder)
onBind_impl this intent = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStateStrings)).bIND))
        pure (javaNull)


onCreate :: (JavaObjectClass this_) => this_ -> IO (())
onCreate object_ = jmethod object_ "onCreate" (\() -> (onCreate_impl (javaCast object_ :: BaseMusicService))) ()

onCreate_super :: (JavaObjectClass this_) => this_ -> IO (())
onCreate_super object_ = (onCreate_impl (javaCast object_ :: BaseMusicService))

onCreate_impl :: BaseMusicService -> IO (())
onCreate_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStateStrings)).cREATE))
        pure ()


onDestroy :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy object_ = jmethod object_ "onDestroy" (\() -> (onDestroy_impl (javaCast object_ :: BaseMusicService))) ()

onDestroy_super :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy_super object_ = (onDestroy_impl (javaCast object_ :: BaseMusicService))

onDestroy_impl :: BaseMusicService -> IO (())
onDestroy_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStateStrings)).dESTROY))
        when ((jget (this).player) /= NullAndroidCanvas.nULL_MEDIA_PLAYER) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStateStrings)).pAUSE))
            Control.Monad.void (MediaPlayer.stop ((jget (this).player)))
            Control.Monad.void (MediaPlayer.reset ((jget (this).player)))
            Control.Monad.void (MediaPlayer.release ((jget (this).player)))
        pure ()


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: BaseMusicService))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: BaseMusicService))

pause_impl :: BaseMusicService -> IO (())
pause_impl this = do
        when ((jget (this).player) /= NullAndroidCanvas.nULL_MEDIA_PLAYER) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStateStrings)).pAUSE))
            Control.Monad.void (MediaPlayer.pause ((jget (this).player)))
        pure ()


resume :: (JavaObjectClass this_) => this_ -> IO (())
resume object_ = jmethod object_ "resume" (\() -> (resume_impl (javaCast object_ :: BaseMusicService))) ()

resume_super :: (JavaObjectClass this_) => this_ -> IO (())
resume_super object_ = (resume_impl (javaCast object_ :: BaseMusicService))

resume_impl :: BaseMusicService -> IO (())
resume_impl this = do
        when (((jget (this).player) /= NullAndroidCanvas.nULL_MEDIA_PLAYER) && (Prelude.not (jio (MediaPlayer.isPlaying ((jget (this).player)))))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStateStrings)).rESUME))
            Control.Monad.void (MediaPlayer.start ((jget (this).player)))
        pure ()


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: BaseMusicService))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: BaseMusicService))

start_impl :: BaseMusicService -> IO (())
start_impl this = do
        assignedValue <- (MediaPlayer.create this (jget (this).songId))
        jset (this).player (assignedValue)
        Control.Monad.void (MediaPlayer.setVolume ((jget (this).player)) (((Prelude.fromIntegral (jget (this).leftVolume))) / 100.0) (((Prelude.fromIntegral (jget (this).rightVolume))) / 100.0))
        Control.Monad.void (MediaPlayer.setLooping ((jget (this).player)) False)
        Control.Monad.void (MediaPlayer.start ((jget (this).player)))
        pure ()


onStart :: (JavaObjectClass this_) => this_ -> Intent.Intent -> Int -> IO (())
onStart object_ a1 a2 = jmethod object_ "onStart" (\() -> (onStart_impl (javaCast object_ :: BaseMusicService))) () a1 a2

onStart_super :: (JavaObjectClass this_) => this_ -> Intent.Intent -> Int -> IO (())
onStart_super object_ a1 a2 = (onStart_impl (javaCast object_ :: BaseMusicService)) a1 a2

onStart_impl :: BaseMusicService -> Intent.Intent -> Int -> IO (())
onStart_impl this intent startid = do
        Control.Monad.void (BaseMusicService.onStartCommandIntent this intent)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStateStrings)).sTART))
        pure ()


onStartCommand :: (JavaObjectClass this_) => this_ -> Intent.Intent -> Int -> Int -> IO (Int)
onStartCommand object_ a1 a2 a3 = jmethod object_ "onStartCommand" (\() -> (onStartCommand_impl (javaCast object_ :: BaseMusicService))) () a1 a2 a3

onStartCommand_super :: (JavaObjectClass this_) => this_ -> Intent.Intent -> Int -> Int -> IO (Int)
onStartCommand_super object_ a1 a2 a3 = (onStartCommand_impl (javaCast object_ :: BaseMusicService)) a1 a2 a3

onStartCommand_impl :: BaseMusicService -> Intent.Intent -> Int -> Int -> IO (Int)
onStartCommand_impl this intent flags startId = do
        Control.Monad.void (BaseMusicService.onStartCommandIntent this intent)
        pure (Service.sTART_STICKY)


onStartCommandIntent :: (JavaObjectClass this_) => this_ -> Intent.Intent -> IO (())
onStartCommandIntent object_ a1 = jmethod object_ "onStartCommandIntent" (\() -> (onStartCommandIntent_impl (javaCast object_ :: BaseMusicService))) () a1

onStartCommandIntent_super :: (JavaObjectClass this_) => this_ -> Intent.Intent -> IO (())
onStartCommandIntent_super object_ a1 = (onStartCommandIntent_impl (javaCast object_ :: BaseMusicService)) a1

onStartCommandIntent_impl :: BaseMusicService -> Intent.Intent -> IO (())
onStartCommandIntent_impl this intent = do
    javaCatchReturn $ do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStateStrings)).oN_START_COMMAND))
        musicStrings <- (MusicStrings.getInstance)
        if (intent /= javaNull) then do
            command <- (Intent.getIntExtra intent (jget ((jget (this).commonStateStrings)).oN_START_COMMAND) (Prelude.negate 1))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).cOMMAND_LABEL) + command) this (jget ((jget (this).commonStateStrings)).oN_START_COMMAND))
            if (command == 1) then do
                Control.Monad.void (BaseMusicService.pause this)
                javaReturn (())
            else if (command == 2) then do
                Control.Monad.void (BaseMusicService.resume this)
                javaReturn (())
            else do
                assignedValue <- (Intent.getIntExtra intent (jget (musicStrings).sONG_EXTRA) (Prelude.negate 1))
                jset (this).songId (assignedValue)
                assignedValue <- (Intent.getIntExtra intent (jget (musicStrings).lEFT_VOLUME) (Prelude.negate 1))
                jset (this).leftVolume (assignedValue)
                assignedValue <- (Intent.getIntExtra intent (jget (musicStrings).rIGHT_VOLUME) (Prelude.negate 1))
                jset (this).rightVolume (assignedValue)
        else do
            javaThrow ((JavaException "RuntimeException" "Started service without intent"))
        when ((jget (this).songId) /= (Prelude.negate 1)) $ do
            Control.Monad.void (pure ())
            when (((jget (this).player) /= NullAndroidCanvas.nULL_MEDIA_PLAYER) && (jio (MediaPlayer.isPlaying ((jget (this).player))))) $ do
                let player = (jget (this).player)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).aLREADY_PLAYING) this (jget ((jget (this).commonStateStrings)).oN_START_COMMAND))
                -- Java nested class MusicRunnable: move it to its own module

                runnable <- (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (MusicRunnable.new_1 this))
                thread <- (Thread.new_1 runnable)
                Control.Monad.void (Thread.start thread)
                javaReturn (())
            Control.Monad.void (BaseMusicService.start this)
    pure ()


