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
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified Player -- javax.microedition.media.Player
import qualified PlayerListener -- javax.microedition.media.PlayerListener
import qualified AvianUtil -- org.allbinary.AvianUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified NoSound -- org.allbinary.media.audio.NoSound
import qualified PlayerStateUtil -- org.allbinary.media.audio.PlayerStateUtil
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data MusicManager = MusicManager
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    , playerStateUtil :: IORef (PlayerStateUtil.PlayerStateUtil)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , playerListener :: IORef (PlayerListener.PlayerListener)
    , pLAY :: IORef (String)
    , sONG :: IORef (String)
    , nEXT_SONG :: IORef (String)
    , sTOPPING :: IORef (String)
    , eNDING :: IORef (String)
    , wAITING_FOR_MEDIA_TO_END :: IORef (String)
    , aLREADY_PLAYING :: IORef (String)
    , aLREADY_ENDED :: IORef (String)
    , songList :: IORef (BasicArrayList.BasicArrayList)
    , currentSongSound :: IORef (Sound.Sound)
    , nextSongSound :: IORef (Sound.Sound)
    , reset :: IORef (Bool)
    , noDuration :: IORef (Bool)
    , stopped :: IORef (Bool)
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
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    gameTickTimeDelayHelper <- newIORef javaNull
    playerStateUtil <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    playerListener <- newIORef javaNull
    pLAY <- newIORef ""
    sONG <- newIORef ""
    nEXT_SONG <- newIORef ""
    sTOPPING <- newIORef ""
    eNDING <- newIORef ""
    wAITING_FOR_MEDIA_TO_END <- newIORef ""
    aLREADY_PLAYING <- newIORef ""
    aLREADY_ENDED <- newIORef ""
    songList <- newIORef javaNull
    currentSongSound <- newIORef javaNull
    nextSongSound <- newIORef javaNull
    reset <- newIORef False
    noDuration <- newIORef False
    stopped <- newIORef False
    let this = MusicManager header_ commonStrings commonSeps basicArrayListUtil gameTickTimeDelayHelper playerStateUtil timeDelayHelper playerListener pLAY sONG nEXT_SONG sTOPPING eNDING wAITING_FOR_MEDIA_TO_END aLREADY_PLAYING aLREADY_ENDED songList currentSongSound nextSongSound reset noDuration stopped
    jregisterLevel header_ this
    jregisterMethod header_ "startNewSong" (\() -> startNewSong_impl this)
    jregisterMethod header_ "nextSong" (\() -> nextSong_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "waitForStateChange" (\() -> waitForStateChange_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    pure this

initFields_ :: MusicManager -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    jset this.playerStateUtil =<< (PlayerStateUtil.getInstance)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 0)
    jset this.playerListener =<< (fmap (\value_ -> javaCast value_ :: PlayerListener.PlayerListener) (MusicManagerPlayerListener.new_))
    jset this.pLAY ("Play ")
    jset this.sONG (" for: ")
    jset this.nEXT_SONG ((javaToString (jget ((jio (CommonLabels.getInstance))).nEXT) ++ " Song: "))
    jset this.sTOPPING ("Stopping Current Song: ")
    jset this.eNDING ("Ending Current Song: ")
    jset this.wAITING_FOR_MEDIA_TO_END ("Waiting for media to end")
    jset this.aLREADY_PLAYING ("Already Playing: ")
    jset this.aLREADY_ENDED ("Last Song already ended: ")
    jset this.songList (javaNull)
    jset this.currentSongSound =<< (fmap (\value_ -> javaCast value_ :: Sound.Sound) (NoSound.getInstance))
    jset this.nextSongSound =<< (fmap (\value_ -> javaCast value_ :: Sound.Sound) (NoSound.getInstance))
    jset this.reset (False)
    jset this.noDuration (False)
    jset this.stopped (True)
    pure ()

new_2 :: Class.Class -> BasicArrayList.BasicArrayList -> IO MusicManager
new_2 musicServiceClass songList = do
    this <- newRecord_
    init_2 this musicServiceClass songList
    pure this

init_2 :: MusicManager -> Class.Class -> BasicArrayList.BasicArrayList -> IO ()
init_2 this musicServiceClass songList = do
        initFields_ this
        jset (this).songList (songList)
        pure ()


startNewSong :: (JavaObjectClass this_) => this_ -> IO (())
startNewSong object_ = jmethod object_ "startNewSong" (\() -> (startNewSong_impl (javaCast object_ :: MusicManager))) ()

startNewSong_super :: (JavaObjectClass this_) => this_ -> IO (())
startNewSong_super object_ = (startNewSong_impl (javaCast object_ :: MusicManager))

startNewSong_impl :: MusicManager -> IO (())
startNewSong_impl this = do
        when ((jtoObject (jget (this).nextSongSound)) == (jtoObject (jio (NoSound.getInstance)))) $ do
            let randomSongSound = (javaCast (jio (BasicArrayListUtil.getRandom ((jget (this).basicArrayListUtil)) (jget (this).songList))) :: Sound.Sound)
            Control.Monad.void (MusicManager.nextSong this randomSongSound 0 0)
        Control.Monad.void (MusicManager.process this)
        pure ()


nextSong :: (JavaObjectClass this_) => this_ -> Sound.Sound -> Int -> Int -> IO (())
nextSong object_ a1 a2 a3 = jmethod object_ "nextSong" (\() -> (nextSong_impl (javaCast object_ :: MusicManager))) () a1 a2 a3

nextSong_super :: (JavaObjectClass this_) => this_ -> Sound.Sound -> Int -> Int -> IO (())
nextSong_super object_ a1 a2 a3 = (nextSong_impl (javaCast object_ :: MusicManager)) a1 a2 a3

nextSong_impl :: MusicManager -> Sound.Sound -> Int -> Int -> IO (())
nextSong_impl this nextSongSound leftVolume rightVolume = do
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget this.nEXT_SONG)))) (jio (Sound.getResource nextSongSound))))))) this (jget ((jget (this).commonStrings)).pROCESS))
        jset (this).nextSongSound (nextSongSound)
        Control.Monad.void (MusicManager.reset this)
        jset (this).stopped (False)
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: MusicManager))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: MusicManager))

reset_impl :: MusicManager -> IO (())
reset_impl this = do
        jset (this).reset (True)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MusicManager))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: MusicManager))

process_impl :: MusicManager -> IO (())
process_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            resource <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when ((jtoObject (jget (this).currentSongSound)) /= (jtoObject (jio (NoSound.getInstance)))) $ do
                assignedValue <- (Sound.getResource ((jget (this).currentSongSound)))
                jset resource (assignedValue)
            Control.Monad.void (PreLogUtil.putOE (javaToString (jget ((jget (this).commonStrings)).eXCEPTION_LABEL) ++ (jget resource)) this (jget ((jget (this).commonStrings)).pROCESS) e)
            ) $ do
            when (jget (this).stopped) $ do
                javaReturn (())
            when ((jio (BasicArrayList.size ((jget (this).songList)))) == 0) $ do
                javaReturn (())
            when ((((jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) && (Prelude.not (jget (this).noDuration)))) || (jget (this).reset)) $ do
                jset (this).reset (False)
                jset (this).noDuration (False)
                let endingCurrentSongSound = (jget (this).currentSongSound)
                let nextSongSound = (jget (this).nextSongSound)
                assignedValue <- (NoSound.getInstance)
                jset (this).nextSongSound (assignedValue)
                if ((jtoObject nextSongSound) == (jtoObject (jio (NoSound.getInstance)))) then do
                    jset (this).currentSongSound ((javaCast (jio (BasicArrayListUtil.getRandom ((jio (BasicArrayListUtil.getInstance))) (jget (this).songList))) :: Sound.Sound))
                else do
                    jset (this).currentSongSound (nextSongSound)
                let startingCurrentSongSound = (jget (this).currentSongSound)
                let duration = (Prelude.fromIntegral (jio (Sound.getDuration ((jget (this).currentSongSound)))))
                jset ((jget (this).timeDelayHelper)).delay ((Prelude.fromIntegral duration))
                when (duration <= 0) $ do
                    let nO_DURATION_FOR = "No Duration for: "
                    Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) nO_DURATION_FOR))) (jio (Sound.getResource ((jget (this).currentSongSound))))))))) this (jget ((jget (this).commonStrings)).pROCESS))
                    Control.Monad.void (Player.addPlayerListener ((jio (Sound.getPlayerP ((jget (this).currentSongSound))))) (jget this.playerListener))
                    jset (this).noDuration (True)
                if ((jtoObject endingCurrentSongSound) /= (jtoObject (jio (NoSound.getInstance)))) then do
                    if ((endingCurrentSongSound == startingCurrentSongSound) && ((jio (Player.getState ((jio (Sound.getPlayerP endingCurrentSongSound))))) == Player.sTARTED)) then do
                        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).aLREADY_PLAYING)))) (jio (Sound.getResource endingCurrentSongSound))))))) this (jget ((jget (this).commonStrings)).pROCESS))
                        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).sTOPPING)))) (jio (Sound.getResource endingCurrentSongSound))))) (jget (this).sONG)))) duration))))) this (jget ((jget (this).commonStrings)).pROCESS))
                        Control.Monad.void (Player.stop ((jio (Sound.getPlayerP endingCurrentSongSound))))
                        Control.Monad.void (MusicManager.waitForStateChange this endingCurrentSongSound startingCurrentSongSound)
                    else do
                        if ((jio (Player.getState ((jio (Sound.getPlayerP endingCurrentSongSound))))) == Player.sTARTED) then do
                            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).sTOPPING)))) (jio (Sound.getResource endingCurrentSongSound))))) (jget (this).sONG)))) duration))))) this (jget ((jget (this).commonStrings)).pROCESS))
                            Control.Monad.void (Player.stop ((jio (Sound.getPlayerP endingCurrentSongSound))))
                            Control.Monad.void (MusicManager.waitForStateChange this endingCurrentSongSound startingCurrentSongSound)
                        else do
                            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).aLREADY_ENDED)))) (jget (this).pLAY)))) (jio (Sound.getResource startingCurrentSongSound))))))) this (jget ((jget (this).commonStrings)).pROCESS))
                            when (jio (AvianUtil.isAvian)) $ do
                                Control.Monad.void (Player.stop ((jio (Sound.getPlayerP endingCurrentSongSound))))
                                Control.Monad.void (Player.stop ((jio (Sound.getPlayerP startingCurrentSongSound))))
                            Control.Monad.void (Player.start ((jio (Sound.getPlayerP startingCurrentSongSound))))
                else do
                    Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).pLAY)))) (jio (Sound.getResource ((jget (this).currentSongSound))))))) (jget (this).sONG)))) duration))))) this (jget ((jget (this).commonStrings)).pROCESS))
                    Control.Monad.void (Player.start ((jio (Sound.getPlayerP ((jget (this).currentSongSound))))))
    pure ()


-- throws Exception
waitForStateChange :: (JavaObjectClass this_) => this_ -> Sound.Sound -> Sound.Sound -> IO (())
waitForStateChange object_ a1 a2 = jmethod object_ "waitForStateChange" (\() -> (waitForStateChange_impl (javaCast object_ :: MusicManager))) () a1 a2

waitForStateChange_super :: (JavaObjectClass this_) => this_ -> Sound.Sound -> Sound.Sound -> IO (())
waitForStateChange_super object_ a1 a2 = (waitForStateChange_impl (javaCast object_ :: MusicManager)) a1 a2

waitForStateChange_impl :: MusicManager -> Sound.Sound -> Sound.Sound -> IO (())
waitForStateChange_impl this endingCurrentSongSound startingCurrentSongSound = do
        fix $ \loop -> when ((jio (Player.getState ((jio (Sound.getPlayerP endingCurrentSongSound))))) == Player.sTARTED) $ javaIteration (loop) $ do
            Control.Monad.void (PreLogUtil.put (jget (this).wAITING_FOR_MEDIA_TO_END) this (jget ((jget (this).commonStrings)).pROCESS))
            Control.Monad.void (threadDelay (Prelude.fromIntegral 100 * 1000))
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PlayerStateUtil.convert ((jget (this).playerStateUtil)) (jio (Player.getState ((jio (Sound.getPlayerP endingCurrentSongSound)))))))))) (jget ((jget (this).commonSeps)).sPACE)))) (jget (this).pLAY)))) (jio (Sound.getResource startingCurrentSongSound))))))) this (jget ((jget (this).commonStrings)).pROCESS))
        Control.Monad.void (Player.start ((jio (Sound.getPlayerP startingCurrentSongSound))))
        pure ()


-- throws Exception
stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: MusicManager))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: MusicManager))

stop_impl :: MusicManager -> IO (())
stop_impl this = do
        handle (\(e :: JavaException) -> do
            resource <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when ((jtoObject currentSongSound) /= (jtoObject (jio (NoSound.getInstance)))) $ do
                assignedValue <- (Sound.getResource currentSongSound)
                jset resource (assignedValue)
            Control.Monad.void (PreLogUtil.putOE (javaToString (jget ((jget (this).commonStrings)).eXCEPTION_LABEL) ++ (jget resource)) this (jget ((jget (this).commonStrings)).eND) e)
            ) $ do
            let currentSongSound = (jget (this).currentSongSound)
            when ((jtoObject currentSongSound) /= (jtoObject (jio (NoSound.getInstance)))) $ do
                jset (this).stopped (True)
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).eNDING)))) (jio (Sound.getResource currentSongSound))))))) this (jget ((jget (this).commonStrings)).pROCESS))
                Control.Monad.void (Player.stop ((jio (Sound.getPlayerP currentSongSound))))
            Control.Monad.void (TimeDelayHelper.setStartTime ((jget (this).timeDelayHelper)) 0)
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).commonStrings)).eND)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) currentSongSound))))))) this (jget ((jget (this).commonStrings)).eND))
        pure ()

-- Java nested class MusicManagerPlayerListener: move it to its own module MusicManagerPlayerListener

