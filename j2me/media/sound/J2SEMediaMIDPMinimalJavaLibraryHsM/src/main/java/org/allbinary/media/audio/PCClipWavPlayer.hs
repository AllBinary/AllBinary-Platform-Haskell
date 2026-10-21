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
module PCClipWavPlayer (module PCClipWavPlayer, module BasicPlayer) where

import BasicPlayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, close, close_super, close_impl, close2, close2_super, close2_impl, getContentType, getContentType_super, getContentType_impl, start, start_super, start_impl, start2, start2_super, start2_impl, create, create_super, create_impl, stop, stop_super, stop_impl, stop2, stop2_super, stop2_impl, getControl, getControl_super, getControl_impl, getControls, getControls_super, getControls_impl, setVolume, setVolume_super, setVolume_impl, getVolume, getVolume_super, getVolume_impl, setVolumeF, setVolumeF_super, setVolumeF_impl, getDuration, getDuration_super, getDuration_impl, update, update_super, update_impl, logUtil, audioInputStream, clip)
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
import qualified NullAudioFormat -- same package or java.lang
import qualified NullClip -- same package or java.lang
import qualified NullControl -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified InputStream -- java.io.InputStream
import qualified Control -- javax.microedition.media.Control
import qualified MediaException -- javax.microedition.media.MediaException
import qualified PlayerListener -- javax.microedition.media.PlayerListener
import qualified AudioInputStream -- javax.sound.sampled.AudioInputStream
import qualified AudioSystem -- javax.sound.sampled.AudioSystem
import qualified Clip -- javax.sound.sampled.Clip
import qualified FloatControl -- javax.sound.sampled.FloatControl
import qualified LineEvent -- javax.sound.sampled.LineEvent
import qualified LineListener -- javax.sound.sampled.LineListener
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified MusicThreadPool -- org.allbinary.thread.MusicThreadPool
import qualified BasicPlayer

-- implements LineListener
data PCClipWavPlayer = PCClipWavPlayer
    { header_ :: JavaHeader
    , base :: BasicPlayer.BasicPlayer
    , logUtil :: IORef (LogUtil.LogUtil)
    , audioInputStream :: IORef (AudioInputStream.AudioInputStream)
    , clip :: IORef (Clip.Clip)
    }

instance JavaNull PCClipWavPlayer where
    javaNull = javaNullRecord "PCClipWavPlayer"

instance JavaEquals PCClipWavPlayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PCClipWavPlayer where
    (==) = jrecordEquals

instance JavaObjectClass PCClipWavPlayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PCClipWavPlayer
newRecord_ = do
    base <- BasicPlayer.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    audioInputStream <- newIORef javaNull
    clip <- newIORef javaNull
    let this = PCClipWavPlayer header_ base logUtil audioInputStream clip
    jregisterLevel header_ this
    LineListener.registerInterface_ header_
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "close2" (\() -> close2_impl this)
    jregisterMethod header_ "getContentType" (\() -> getContentType_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "start2" (\() -> start2_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "stop2" (\() -> stop2_impl this)
    jregisterMethod header_ "getControl" (\() -> getControl_impl this)
    jregisterMethod header_ "getControls" (\() -> getControls_impl this)
    jregisterMethod header_ "setVolume" (\() -> setVolume_impl this)
    jregisterMethod header_ "getVolume" (\() -> getVolume_impl this)
    jregisterMethod header_ "setVolumeF" (\() -> setVolumeF_impl this)
    jregisterMethod header_ "getDuration" (\() -> getDuration_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: PCClipWavPlayer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.audioInputStream (javaNull)
    jset this.clip (javaNull)
    pure ()

new_1 :: InputStream.InputStream -> IO PCClipWavPlayer
new_1 inputStream = do
    this <- newRecord_
    init_1 this inputStream
    pure this

init_1 :: PCClipWavPlayer -> InputStream.InputStream -> IO ()
init_1 this inputStream = do
        BasicPlayer.init_ this.base
        initFields_ this
        audioInputStream <- newIORef =<< (AudioInputStream.new_3 (jio (ByteArrayInputStream.new_1 (jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY))) (NullAudioFormat.nULL_AUDIO_FORMAT) 0)
        clip <- newIORef =<< (fmap (\value_ -> javaCast value_ :: Clip.Clip) (NullClip.new_))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR) e)
            ) $ do
            assignedValue <- (AudioSystem.getAudioInputStream inputStream)
            jset audioInputStream (assignedValue)
            assignedValue <- (PCClipWavPlayer.create this (jget audioInputStream))
            jset clip (assignedValue)
            when ((jget clip) == javaNull) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Clip was null" this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR) (JavaException "Exception" ""))
                javaThrow ((JavaException "RuntimeException" ""))
        jset (this).audioInputStream ((jget audioInputStream))
        jset (this).clip ((jget clip))
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: PCClipWavPlayer))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: PCClipWavPlayer))

close_impl :: PCClipWavPlayer -> IO (())
close_impl this = do
        Control.Monad.void (ThreadPool.runTask ((jio (MusicThreadPool.getInstance))) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-}))
        pure ()


-- throws Exception
close2 :: (JavaObjectClass this_) => this_ -> IO (())
close2 object_ = jmethod object_ "close2" (\() -> (close2_impl (javaCast object_ :: PCClipWavPlayer))) ()

close2_super :: (JavaObjectClass this_) => this_ -> IO (())
close2_super object_ = (close2_impl (javaCast object_ :: PCClipWavPlayer))

close2_impl :: PCClipWavPlayer -> IO (())
close2_impl this = do
        Control.Monad.void (Clip.drain ((jget (this).clip)))
        Control.Monad.void (Clip.flush ((jget (this).clip)))
        Control.Monad.void (Clip.close ((jget (this).clip)))
        pure ()


getContentType :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType object_ = jmethod object_ "getContentType" (\() -> (getContentType_impl (javaCast object_ :: PCClipWavPlayer))) ()

getContentType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType_super object_ = (getContentType_impl (javaCast object_ :: PCClipWavPlayer))

getContentType_impl :: PCClipWavPlayer -> IO (String)
getContentType_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


-- throws MediaException
start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: PCClipWavPlayer))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: PCClipWavPlayer))

start_impl :: PCClipWavPlayer -> IO (())
start_impl this = do
        Control.Monad.void (ThreadPool.runTask ((jio (MusicThreadPool.getInstance))) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-}))
        pure ()


-- throws Exception
start2 :: (JavaObjectClass this_) => this_ -> IO (())
start2 object_ = jmethod object_ "start2" (\() -> (start2_impl (javaCast object_ :: PCClipWavPlayer))) ()

start2_super :: (JavaObjectClass this_) => this_ -> IO (())
start2_super object_ = (start2_impl (javaCast object_ :: PCClipWavPlayer))

start2_impl :: PCClipWavPlayer -> IO (())
start2_impl this = do
        Control.Monad.void (Clip.setFramePosition ((jget (this).clip)) 0)
        Control.Monad.void (Clip.loop_ ((jget (this).clip)) (jio (BasicPlayer.getLoopCount this)))
        Control.Monad.void (Clip.start ((jget (this).clip)))
        Control.Monad.void (BasicPlayer.start_super this.base)
        pure ()


-- throws Exception
create :: (JavaObjectClass this_) => this_ -> AudioInputStream.AudioInputStream -> IO (Clip.Clip)
create object_ a1 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: PCClipWavPlayer))) () a1

create_super :: (JavaObjectClass this_) => this_ -> AudioInputStream.AudioInputStream -> IO (Clip.Clip)
create_super object_ a1 = (create_impl (javaCast object_ :: PCClipWavPlayer)) a1

create_impl :: PCClipWavPlayer -> AudioInputStream.AudioInputStream -> IO (Clip.Clip)
create_impl this audioInputStream = do
        clip <- (AudioSystem.getClip)
        Control.Monad.void (Clip.addLineListener clip this)
        Control.Monad.void (Clip.open clip audioInputStream)
        pure (clip)


-- throws MediaException
stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: PCClipWavPlayer))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: PCClipWavPlayer))

stop_impl :: PCClipWavPlayer -> IO (())
stop_impl this = do
        Control.Monad.void (ThreadPool.runTask ((jio (MusicThreadPool.getInstance))) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-}))
        pure ()


-- throws Exception
stop2 :: (JavaObjectClass this_) => this_ -> IO (())
stop2 object_ = jmethod object_ "stop2" (\() -> (stop2_impl (javaCast object_ :: PCClipWavPlayer))) ()

stop2_super :: (JavaObjectClass this_) => this_ -> IO (())
stop2_super object_ = (stop2_impl (javaCast object_ :: PCClipWavPlayer))

stop2_impl :: PCClipWavPlayer -> IO (())
stop2_impl this = do
        Control.Monad.void (Clip.stop ((jget (this).clip)))
        Control.Monad.void (BasicPlayer.stop_super this.base)
        pure ()


getControl :: (JavaObjectClass this_) => this_ -> String -> IO (Control.Control)
getControl object_ a1 = jmethod object_ "getControl" (\() -> (getControl_impl (javaCast object_ :: PCClipWavPlayer))) () a1

getControl_super :: (JavaObjectClass this_) => this_ -> String -> IO (Control.Control)
getControl_super object_ a1 = (getControl_impl (javaCast object_ :: PCClipWavPlayer)) a1

getControl_impl :: PCClipWavPlayer -> String -> IO (Control.Control)
getControl_impl this controlType = do
        (fmap (\value_ -> javaCast value_ :: Control.Control) (NullControl.new_))


getControls :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls object_ = jmethod object_ "getControls" (\() -> (getControls_impl (javaCast object_ :: PCClipWavPlayer))) ()

getControls_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls_super object_ = (getControls_impl (javaCast object_ :: PCClipWavPlayer))

getControls_impl :: PCClipWavPlayer -> IO (JavaArray (Control.Control))
getControls_impl this = do
        pure ((jnewArray (0) javaNull))


setVolume :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume object_ a1 a2 = jmethod object_ "setVolume" (\() -> (setVolume_impl (javaCast object_ :: PCClipWavPlayer))) () a1 a2

setVolume_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume_super object_ a1 a2 = (setVolume_impl (javaCast object_ :: PCClipWavPlayer)) a1 a2

setVolume_impl :: PCClipWavPlayer -> Int -> Int -> IO (())
setVolume_impl this leftVolume rightVolume = do
        Control.Monad.void (PCClipWavPlayer.setVolumeF this (((Prelude.fromIntegral leftVolume)) / 100.0))
        pure ()


getVolume :: (JavaObjectClass this_) => this_ -> IO (Float)
getVolume object_ = jmethod object_ "getVolume" (\() -> (getVolume_impl (javaCast object_ :: PCClipWavPlayer))) ()

getVolume_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getVolume_super object_ = (getVolume_impl (javaCast object_ :: PCClipWavPlayer))

getVolume_impl :: PCClipWavPlayer -> IO (Float)
getVolume_impl this = do
        let masterGainFloatControl = (javaCast (jio (Clip.getControl ((jget this.clip)) (jget (FloatControl.type_).mASTER_GAIN))) :: FloatControl.FloatControl)
        pure ((Prelude.realToFrac (jnumericDouble ((10.0) ** (((jio (FloatControl.getValue masterGainFloatControl)) / 20.0))))))


setVolumeF :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setVolumeF object_ a1 = jmethod object_ "setVolumeF" (\() -> (setVolumeF_impl (javaCast object_ :: PCClipWavPlayer))) () a1

setVolumeF_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setVolumeF_super object_ a1 = (setVolumeF_impl (javaCast object_ :: PCClipWavPlayer)) a1

setVolumeF_impl :: PCClipWavPlayer -> Float -> IO (())
setVolumeF_impl this volume = do
        when ((volume < 0.0) || (volume > 1.0)) $ do
            javaThrow ((JavaException "IllegalArgumentException" ("Volume: " ++ javaToString volume)))
        let masterGainFloatControl = (javaCast (jio (Clip.getControl ((jget (this).clip)) (jget (FloatControl.type_).mASTER_GAIN))) :: FloatControl.FloatControl)
        Control.Monad.void (FloatControl.setValue masterGainFloatControl (20.0 * (Prelude.realToFrac (jnumericDouble (jio (Math.log10 volume))))))
        pure ()


getDuration :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDuration object_ = jmethod object_ "getDuration" (\() -> (getDuration_impl (javaCast object_ :: PCClipWavPlayer))) ()

getDuration_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDuration_super object_ = (getDuration_impl (javaCast object_ :: PCClipWavPlayer))

getDuration_impl :: PCClipWavPlayer -> IO (Int64)
getDuration_impl this = do
        pure (((jio (Clip.getMicrosecondLength ((jget (this).clip)))) / 1000))


update :: (JavaObjectClass this_) => this_ -> LineEvent.LineEvent -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: PCClipWavPlayer))) () a1

update_super :: (JavaObjectClass this_) => this_ -> LineEvent.LineEvent -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: PCClipWavPlayer)) a1

update_impl :: PCClipWavPlayer -> LineEvent.LineEvent -> IO (())
update_impl this event = do
        when (jio (LineEvent.equals ((jio (LineEvent.getType event))) (jget (LineEvent.type_).sTOP))) $ do
            size <- (BasicArrayList.size ((jget (this).base.listenersList)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let listener = (javaCast (jio (BasicArrayList.get ((jget (this).base.listenersList)) size)) :: PlayerListener.PlayerListener)
                Control.Monad.void (PlayerListener.playerUpdate listener this (PlayerListener.eND_OF_MEDIA) javaNull)
        pure ()


