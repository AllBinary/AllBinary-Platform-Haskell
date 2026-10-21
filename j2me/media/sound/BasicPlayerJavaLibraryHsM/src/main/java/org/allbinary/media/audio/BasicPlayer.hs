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
module BasicPlayer where

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
import qualified NullControl -- same package or java.lang
import qualified Control -- javax.microedition.media.Control
import qualified MediaException -- javax.microedition.media.MediaException
import qualified Player -- javax.microedition.media.Player
import qualified PlayerListener -- javax.microedition.media.PlayerListener
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Controllable2

-- implements Player
-- implements Controllable2
data BasicPlayer = BasicPlayer
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , listenersList :: IORef (BasicArrayList.BasicArrayList)
    , stateP :: IORef (Int)
    , loopCountP :: IORef (Int)
    }

instance JavaNull BasicPlayer where
    javaNull = javaNullRecord "BasicPlayer"

instance JavaEquals BasicPlayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicPlayer where
    (==) = jrecordEquals

instance JavaObjectClass BasicPlayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE cONTROL_TYPE #-}
cONTROL_TYPE = unsafePerformIO (newIORef ("ToneControl"))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicPlayer
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    listenersList <- newIORef javaNull
    stateP <- newIORef 0
    loopCountP <- newIORef 0
    let this = BasicPlayer header_ commonStrings listenersList stateP loopCountP
    jregisterLevel header_ this
    Player.registerInterface_ header_
    Controllable2.registerInterface_ header_
    jregisterMethod header_ "getContentType" (\() -> getContentType_impl this)
    jregisterMethod header_ "getControl" (\() -> getControl_impl this)
    jregisterMethod header_ "getControls" (\() -> getControls_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "addPlayerListener" (\() -> addPlayerListener_impl this)
    jregisterMethod header_ "removePlayerListener" (\() -> removePlayerListener_impl this)
    jregisterMethod header_ "getState" (\() -> getState_impl this)
    jregisterMethod header_ "setState" (\() -> setState_impl this)
    jregisterMethod header_ "getDuration" (\() -> getDuration_impl this)
    jregisterMethod header_ "getMediaTime" (\() -> getMediaTime_impl this)
    jregisterMethod header_ "deallocate" (\() -> deallocate_impl this)
    jregisterMethod header_ "prefetch" (\() -> prefetch_impl this)
    jregisterMethod header_ "realize" (\() -> realize_impl this)
    jregisterMethod header_ "setLoopCount" (\() -> setLoopCount_impl this)
    jregisterMethod header_ "getLoopCount" (\() -> getLoopCount_impl this)
    jregisterMethod header_ "setMediaTime" (\() -> setMediaTime_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "setVolume" (\() -> setVolume_impl this)
    pure this

initFields_ :: BasicPlayer -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.listenersList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.stateP (0)
    jset this.loopCountP (0)
    pure ()

new_ :: IO BasicPlayer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicPlayer -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (BasicPlayer.setLoopCount this 0)
        Control.Monad.void (BasicPlayer.setState this (Player.uNREALIZED))
        pure ()


getContentType :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType object_ = jmethod object_ "getContentType" (\() -> (getContentType_impl (javaCast object_ :: BasicPlayer))) ()

getContentType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType_super object_ = (getContentType_impl (javaCast object_ :: BasicPlayer))

getContentType_impl :: BasicPlayer -> IO (String)
getContentType_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


getControl :: (JavaObjectClass this_) => this_ -> String -> IO (Control.Control)
getControl object_ a1 = jmethod object_ "getControl" (\() -> (getControl_impl (javaCast object_ :: BasicPlayer))) () a1

getControl_super :: (JavaObjectClass this_) => this_ -> String -> IO (Control.Control)
getControl_super object_ a1 = (getControl_impl (javaCast object_ :: BasicPlayer)) a1

getControl_impl :: BasicPlayer -> String -> IO (Control.Control)
getControl_impl this controlType = do
        (fmap (\value_ -> javaCast value_ :: Control.Control) (NullControl.new_))


getControls :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls object_ = jmethod object_ "getControls" (\() -> (getControls_impl (javaCast object_ :: BasicPlayer))) ()

getControls_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls_super object_ = (getControls_impl (javaCast object_ :: BasicPlayer))

getControls_impl :: BasicPlayer -> IO (JavaArray (Control.Control))
getControls_impl this = do
        pure ((jnewArray (0) javaNull))


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: BasicPlayer))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: BasicPlayer))

close_impl :: BasicPlayer -> IO (())
close_impl this = do
        pure ()


addPlayerListener :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
addPlayerListener object_ a1 = jmethod object_ "addPlayerListener" (\() -> (addPlayerListener_impl (javaCast object_ :: BasicPlayer))) () a1

addPlayerListener_super :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
addPlayerListener_super object_ a1 = (addPlayerListener_impl (javaCast object_ :: BasicPlayer)) a1

addPlayerListener_impl :: BasicPlayer -> PlayerListener.PlayerListener -> IO (())
addPlayerListener_impl this playerListener = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).listenersList)) playerListener))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).listenersList)) playerListener)
        pure ()


removePlayerListener :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
removePlayerListener object_ a1 = jmethod object_ "removePlayerListener" (\() -> (removePlayerListener_impl (javaCast object_ :: BasicPlayer))) () a1

removePlayerListener_super :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
removePlayerListener_super object_ a1 = (removePlayerListener_impl (javaCast object_ :: BasicPlayer)) a1

removePlayerListener_impl :: BasicPlayer -> PlayerListener.PlayerListener -> IO (())
removePlayerListener_impl this playerListener = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).listenersList)) playerListener)
        pure ()


getState :: (JavaObjectClass this_) => this_ -> IO (Int)
getState object_ = jmethod object_ "getState" (\() -> (getState_impl (javaCast object_ :: BasicPlayer))) ()

getState_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getState_super object_ = (getState_impl (javaCast object_ :: BasicPlayer))

getState_impl :: BasicPlayer -> IO (Int)
getState_impl this = do
        pure ((jget (this).stateP))


setState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState object_ a1 = jmethod object_ "setState" (\() -> (setState_impl (javaCast object_ :: BasicPlayer))) () a1

setState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState_super object_ a1 = (setState_impl (javaCast object_ :: BasicPlayer)) a1

setState_impl :: BasicPlayer -> Int -> IO (())
setState_impl this state = do
        jset (this).stateP (state)
        pure ()


getDuration :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDuration object_ = jmethod object_ "getDuration" (\() -> (getDuration_impl (javaCast object_ :: BasicPlayer))) ()

getDuration_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDuration_super object_ = (getDuration_impl (javaCast object_ :: BasicPlayer))

getDuration_impl :: BasicPlayer -> IO (Int64)
getDuration_impl this = do
        pure (0)


getMediaTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMediaTime object_ = jmethod object_ "getMediaTime" (\() -> (getMediaTime_impl (javaCast object_ :: BasicPlayer))) ()

getMediaTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMediaTime_super object_ = (getMediaTime_impl (javaCast object_ :: BasicPlayer))

getMediaTime_impl :: BasicPlayer -> IO (Int64)
getMediaTime_impl this = do
        pure (0)


deallocate :: (JavaObjectClass this_) => this_ -> IO (())
deallocate object_ = jmethod object_ "deallocate" (\() -> (deallocate_impl (javaCast object_ :: BasicPlayer))) ()

deallocate_super :: (JavaObjectClass this_) => this_ -> IO (())
deallocate_super object_ = (deallocate_impl (javaCast object_ :: BasicPlayer))

deallocate_impl :: BasicPlayer -> IO (())
deallocate_impl this = do
        pure ()


-- throws MediaException
prefetch :: (JavaObjectClass this_) => this_ -> IO (())
prefetch object_ = jmethod object_ "prefetch" (\() -> (prefetch_impl (javaCast object_ :: BasicPlayer))) ()

prefetch_super :: (JavaObjectClass this_) => this_ -> IO (())
prefetch_super object_ = (prefetch_impl (javaCast object_ :: BasicPlayer))

prefetch_impl :: BasicPlayer -> IO (())
prefetch_impl this = do
        pure ()


-- throws MediaException
realize :: (JavaObjectClass this_) => this_ -> IO (())
realize object_ = jmethod object_ "realize" (\() -> (realize_impl (javaCast object_ :: BasicPlayer))) ()

realize_super :: (JavaObjectClass this_) => this_ -> IO (())
realize_super object_ = (realize_impl (javaCast object_ :: BasicPlayer))

realize_impl :: BasicPlayer -> IO (())
realize_impl this = do
        pure ()


setLoopCount :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoopCount object_ a1 = jmethod object_ "setLoopCount" (\() -> (setLoopCount_impl (javaCast object_ :: BasicPlayer))) () a1

setLoopCount_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoopCount_super object_ a1 = (setLoopCount_impl (javaCast object_ :: BasicPlayer)) a1

setLoopCount_impl :: BasicPlayer -> Int -> IO (())
setLoopCount_impl this count = do
        jset (this).loopCountP (count)
        pure ()


getLoopCount :: (JavaObjectClass this_) => this_ -> IO (Int)
getLoopCount object_ = jmethod object_ "getLoopCount" (\() -> (getLoopCount_impl (javaCast object_ :: BasicPlayer))) ()

getLoopCount_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLoopCount_super object_ = (getLoopCount_impl (javaCast object_ :: BasicPlayer))

getLoopCount_impl :: BasicPlayer -> IO (Int)
getLoopCount_impl this = do
        pure ((jget (this).loopCountP))


-- throws MediaException
setMediaTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
setMediaTime object_ a1 = jmethod object_ "setMediaTime" (\() -> (setMediaTime_impl (javaCast object_ :: BasicPlayer))) () a1

setMediaTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
setMediaTime_super object_ a1 = (setMediaTime_impl (javaCast object_ :: BasicPlayer)) a1

setMediaTime_impl :: BasicPlayer -> Int64 -> IO (Int64)
setMediaTime_impl this now = do
        pure (0)


-- throws MediaException
start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: BasicPlayer))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: BasicPlayer))

start_impl :: BasicPlayer -> IO (())
start_impl this = do
        Control.Monad.void (BasicPlayer.setState this (Player.sTARTED))
        pure ()


-- throws MediaException
stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: BasicPlayer))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: BasicPlayer))

stop_impl :: BasicPlayer -> IO (())
stop_impl this = do
        Control.Monad.void (BasicPlayer.setState this (Player.pREFETCHED))
        pure ()


setVolume :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume object_ a1 a2 = jmethod object_ "setVolume" (\() -> (setVolume_impl (javaCast object_ :: BasicPlayer))) () a1 a2

setVolume_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume_super object_ a1 a2 = (setVolume_impl (javaCast object_ :: BasicPlayer)) a1 a2

setVolume_impl :: BasicPlayer -> Int -> Int -> IO (())
setVolume_impl this leftVolume rightVolume = do
        pure ()


