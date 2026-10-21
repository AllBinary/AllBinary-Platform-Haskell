{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.media.audio.music
module MusicManager where

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
import qualified Class -- same package or java.lang
import qualified Activity -- android.app.Activity
import qualified Context -- android.content.Context
import qualified Intent -- android.content.Intent
import qualified AndroidServicesUtil -- org.allbinary.android.AndroidServicesUtil
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified NoSound -- org.allbinary.media.audio.NoSound
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified CommonStateStrings -- org.allbinary.string.CommonStateStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data MusicManager = MusicManager
    { header_ :: JavaHeader
    , pLAY :: IORef (String)
    , fOR :: IORef (String)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , musicStrings :: IORef (MusicStrings.MusicStrings)
    , commonStateStrings :: IORef (CommonStateStrings.CommonStateStrings)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    , resourceUtil :: IORef (ResourceUtil.ResourceUtil)
    , androidServicesUtil :: IORef (AndroidServicesUtil.AndroidServicesUtil)
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , timeDelayHelper2 :: IORef (TimeDelayHelper.TimeDelayHelper)
    , songList :: IORef (BasicArrayList.BasicArrayList)
    , currentSongSound :: IORef (Sound.Sound)
    , nextSongSound :: IORef (Sound.Sound)
    , leftVolume :: IORef (Int)
    , rightVolume :: IORef (Int)
    , musicServiceClass :: IORef (Class.Class)
    , currentIntent :: IORef (Intent.Intent)
    }

instance JavaNull MusicManager where
    javaNull = javaNullRecord "MusicManager"

instance JavaEquals MusicManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MusicManager where
    (==) = jrecordEquals

instance JavaObjectClass MusicManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MusicManager
newRecord_ = do
    header_ <- newJavaHeader
    pLAY <- newIORef ""
    fOR <- newIORef ""
    commonStrings <- newIORef javaNull
    musicStrings <- newIORef javaNull
    commonStateStrings <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    resourceUtil <- newIORef javaNull
    androidServicesUtil <- newIORef javaNull
    gameTickTimeDelayHelper <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    timeDelayHelper2 <- newIORef javaNull
    songList <- newIORef javaNull
    currentSongSound <- newIORef javaNull
    nextSongSound <- newIORef javaNull
    leftVolume <- newIORef 0
    rightVolume <- newIORef 0
    musicServiceClass <- newIORef javaNull
    currentIntent <- newIORef javaNull
    let this = MusicManager header_ pLAY fOR commonStrings musicStrings commonStateStrings basicArrayListUtil resourceUtil androidServicesUtil gameTickTimeDelayHelper timeDelayHelper timeDelayHelper2 songList currentSongSound nextSongSound leftVolume rightVolume musicServiceClass currentIntent
    jregisterLevel header_ this
    jregisterMethod header_ "nextSong" (\() -> nextSong_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "show" (\() -> show_impl this)
    jregisterMethod header_ "startNewSong" (\() -> startNewSong_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    pure this

initFields_ :: MusicManager -> IO ()
initFields_ this = do
    jset this.pLAY ("Play ")
    jset this.fOR (" for: ")
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.musicStrings =<< (MusicStrings.getInstance)
    jset this.commonStateStrings =<< (CommonStateStrings.getInstance)
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    jset this.resourceUtil =<< (ResourceUtil.getInstance)
    jset this.androidServicesUtil =<< (AndroidServicesUtil.getInstance)
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 0)
    jset this.timeDelayHelper2 =<< (TimeDelayHelper.new_1 1200)
    jset this.songList (javaNull)
    jset this.currentSongSound =<< (fmap (\value_ -> javaCast value_ :: Sound.Sound) (NoSound.getInstance))
    jset this.nextSongSound =<< (fmap (\value_ -> javaCast value_ :: Sound.Sound) (NoSound.getInstance))
    jset this.leftVolume (100)
    jset this.rightVolume (100)
    jset this.musicServiceClass (javaNull)
    jset this.currentIntent (javaNull)
    pure ()

new_2 :: Class.Class -> BasicArrayList.BasicArrayList -> IO MusicManager
new_2 musicServiceClass songList = do
    this <- newRecord_
    init_2 this musicServiceClass songList
    pure this

init_2 :: MusicManager -> Class.Class -> BasicArrayList.BasicArrayList -> IO ()
init_2 this musicServiceClass songList = do
        initFields_ this
        Control.Monad.void (PreLogUtil.put ((jget ((jget (this).commonStateStrings)).cONTEXT) + (jio (ResourceUtil.getContext ((jget (this).resourceUtil))))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        jset (this).musicServiceClass (musicServiceClass)
        assignedValue <- (Intent.new_2 (jio (ResourceUtil.getContext ((jget (this).resourceUtil)))) musicServiceClass)
        jset (this).currentIntent (assignedValue)
        jset (this).songList (songList)
        pure ()


nextSong :: (JavaObjectClass this_) => this_ -> Sound.Sound -> Int -> Int -> IO (())
nextSong object_ a1 a2 a3 = jmethod object_ "nextSong" (\() -> (nextSong_impl (javaCast object_ :: MusicManager))) () a1 a2 a3

nextSong_super :: (JavaObjectClass this_) => this_ -> Sound.Sound -> Int -> Int -> IO (())
nextSong_super object_ a1 a2 a3 = (nextSong_impl (javaCast object_ :: MusicManager)) a1 a2 a3

nextSong_impl :: MusicManager -> Sound.Sound -> Int -> Int -> IO (())
nextSong_impl this nextSongSound leftVolume rightVolume = do
        nextSongSound <- newIORef nextSongSound
        when ((jget nextSongSound) == javaNull) $ do
            assignedValue <- (NoSound.getInstance)
            jset nextSongSound (assignedValue)
        jset (this).nextSongSound ((jget nextSongSound))
        jset (this).leftVolume (leftVolume)
        jset (this).rightVolume (rightVolume)
        Control.Monad.void (MusicManager.reset this)
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: MusicManager))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: MusicManager))

reset_impl :: MusicManager -> IO (())
reset_impl this = do
        jset ((jget (this).timeDelayHelper)).delay (0)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MusicManager))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: MusicManager))

process_impl :: MusicManager -> IO (())
process_impl this = do
    javaCatchReturn $ do
        when ((jio (BasicArrayList.size ((jget (this).songList)))) == 0) $ do
            javaReturn (())
        when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
            Control.Monad.void (MusicManager.startNewSong this)
            javaReturn (())
        when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper2)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
            if (jio (AndroidServicesUtil.isServiceRunning ((jget (this).androidServicesUtil)) (jio (Class.getName ((jget (this).musicServiceClass)))))) then do
                pure ()
            else do
                Control.Monad.void (MusicManager.startNewSong this)
    pure ()


show :: (JavaObjectClass this_) => this_ -> IO (())
show object_ = jmethod object_ "show" (\() -> (show_impl (javaCast object_ :: MusicManager))) ()

show_super :: (JavaObjectClass this_) => this_ -> IO (())
show_super object_ = (show_impl (javaCast object_ :: MusicManager))

show_impl :: MusicManager -> IO (())
show_impl this = do
        index <- newIORef =<< (BasicArrayList.size ((jget (this).songList)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            let sound = (javaCast (jio (BasicArrayList.get ((jget (this).songList)) (jget index))) :: Sound.Sound)
            let duration = (Prelude.fromIntegral (jio (Sound.getDuration sound)))
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).pLAY)))) (jio (Sound.getResource sound))))) (jget (this).fOR)))) duration))))) this (jget ((jget (this).commonStrings)).pROCESS))
        pure ()


startNewSong :: (JavaObjectClass this_) => this_ -> IO (())
startNewSong object_ = jmethod object_ "startNewSong" (\() -> (startNewSong_impl (javaCast object_ :: MusicManager))) ()

startNewSong_super :: (JavaObjectClass this_) => this_ -> IO (())
startNewSong_super object_ = (startNewSong_impl (javaCast object_ :: MusicManager))

startNewSong_impl :: MusicManager -> IO (())
startNewSong_impl this = do
        handle (\(e :: JavaException) -> do
            resource <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when ((jget (this).currentSongSound) /= javaNull) $ do
                assignedValue <- (Sound.getResource ((jget (this).currentSongSound)))
                jset resource (assignedValue)
            Control.Monad.void (PreLogUtil.putOE (javaToString (jget ((jget (this).commonStrings)).eXCEPTION_LABEL) ++ (jget resource)) this (jget ((jget (this).commonStrings)).pROCESS) e)
            ) $ do
            Control.Monad.void (Context.stopService ((jio (ResourceUtil.getContext ((jget (this).resourceUtil))))) (jget (this).currentIntent))
            if ((jtoObject (jget (this).nextSongSound)) == (jtoObject (jio (NoSound.getInstance)))) then do
                jset (this).currentSongSound ((javaCast (jio (BasicArrayListUtil.getRandom ((jget (this).basicArrayListUtil)) (jget (this).songList))) :: Sound.Sound))
            else do
                jset (this).currentSongSound ((jget (this).nextSongSound))
                assignedValue <- (NoSound.getInstance)
                jset (this).nextSongSound (assignedValue)
            let duration = (Prelude.fromIntegral (jio (Sound.getDuration ((jget (this).currentSongSound)))))
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).pLAY)))) (jio (Sound.getResource ((jget (this).currentSongSound))))))) (jget (this).fOR)))) duration))))) this (jget ((jget (this).commonStrings)).pROCESS))
            jset ((jget (this).timeDelayHelper)).delay ((Prelude.fromIntegral duration))
            Control.Monad.void (Intent.putExtra ((jget (this).currentIntent)) (jget ((jget (this).musicStrings)).sONG_EXTRA) (jio (ResourceUtil.getResourceId ((jget (this).resourceUtil)) (jio (Sound.getResource ((jget (this).currentSongSound)))))))
            Control.Monad.void (Intent.putExtra ((jget (this).currentIntent)) (jget ((jget (this).musicStrings)).lEFT_VOLUME) (jget (this).leftVolume))
            Control.Monad.void (Intent.putExtra ((jget (this).currentIntent)) (jget ((jget (this).musicStrings)).rIGHT_VOLUME) (jget (this).rightVolume))
            Control.Monad.void (Context.startService ((jio (ResourceUtil.getContext ((jget (this).resourceUtil))))) (jget (this).currentIntent))
        pure ()


-- throws Exception
stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: MusicManager))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: MusicManager))

stop_impl :: MusicManager -> IO (())
stop_impl this = do
        Control.Monad.void (Context.stopService ((jio (ResourceUtil.getContext ((jget (this).resourceUtil))))) (jget (this).currentIntent))
        pure ()


pause :: Activity.Activity -> Class.Class -> IO (())
pause activity musicServiceClass = do
        commonStateStrings <- (CommonStateStrings.getInstance)
        musicPauseIntent <- (Intent.new_2 (javaCast activity :: Context.Context) musicServiceClass)
        Control.Monad.void (Intent.putExtra musicPauseIntent (jget (commonStateStrings).oN_START_COMMAND) 1)
        Control.Monad.void (Activity.startService activity musicPauseIntent)
        pure ()


resume :: Activity.Activity -> Class.Class -> IO (())
resume activity musicServiceClass = do
        when (jio (AndroidServicesUtil.isServiceRunning ((jio (AndroidServicesUtil.getInstance))) (jio (Class.getName musicServiceClass)))) $ do
            commonStateStrings <- (CommonStateStrings.getInstance)
            musicResumeIntent <- (Intent.new_2 activity musicServiceClass)
            Control.Monad.void (Intent.putExtra musicResumeIntent (jget (commonStateStrings).oN_START_COMMAND) 2)
            Control.Monad.void (Activity.startService activity musicResumeIntent)
        pure ()


