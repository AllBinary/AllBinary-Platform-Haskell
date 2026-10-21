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
module PlayerComposite where

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
import qualified Controllable2 -- same package or java.lang
import qualified Control -- javax.microedition.media.Control
import qualified Controllable -- javax.microedition.media.Controllable
import qualified Player -- javax.microedition.media.Player
import qualified PlayerListener -- javax.microedition.media.PlayerListener
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- implements Controllable
-- implements Player
data PlayerComposite = PlayerComposite
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , player :: IORef (Player.Player)
    , timeElapsedHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    }

instance JavaNull PlayerComposite where
    javaNull = javaNullRecord "PlayerComposite"

instance JavaEquals PlayerComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerComposite where
    (==) = jrecordEquals

instance JavaObjectClass PlayerComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlayerComposite
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    player <- newIORef javaNull
    timeElapsedHelper <- newIORef javaNull
    gameTickTimeDelayHelper <- newIORef javaNull
    let this = PlayerComposite header_ logUtil commonStrings player timeElapsedHelper gameTickTimeDelayHelper
    jregisterLevel header_ this
    Controllable.registerInterface_ header_
    Player.registerInterface_ header_
    jregisterMethod header_ "addPlayerListener" (\() -> addPlayerListener_impl this)
    jregisterMethod header_ "removePlayerListener" (\() -> removePlayerListener_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "deallocate" (\() -> deallocate_impl this)
    jregisterMethod header_ "getContentType" (\() -> getContentType_impl this)
    jregisterMethod header_ "getDuration" (\() -> getDuration_impl this)
    jregisterMethod header_ "getMediaTime" (\() -> getMediaTime_impl this)
    jregisterMethod header_ "prefetch" (\() -> prefetch_impl this)
    jregisterMethod header_ "realize" (\() -> realize_impl this)
    jregisterMethod header_ "getState" (\() -> getState_impl this)
    jregisterMethod header_ "setLoopCount" (\() -> setLoopCount_impl this)
    jregisterMethod header_ "setMediaTime" (\() -> setMediaTime_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "getControl" (\() -> getControl_impl this)
    jregisterMethod header_ "getControls" (\() -> getControls_impl this)
    jregisterMethod header_ "setVolume" (\() -> setVolume_impl this)
    jregisterMethod header_ "getPlayerP" (\() -> getPlayerP_impl this)
    pure this

initFields_ :: PlayerComposite -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.player (javaNull)
    jset this.timeElapsedHelper =<< (TimeDelayHelper.new_1 0)
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    pure ()

new_2 :: Player.Player -> Int -> IO PlayerComposite
new_2 player repeatTime = do
    this <- newRecord_
    init_2 this player repeatTime
    pure this

init_2 :: PlayerComposite -> Player.Player -> Int -> IO ()
init_2 this player repeatTime = do
        initFields_ this
        jset (this).player (player)
        jset ((jget (this).timeElapsedHelper)).delay (repeatTime)
        pure ()


addPlayerListener :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
addPlayerListener object_ a1 = jmethod object_ "addPlayerListener" (\() -> (addPlayerListener_impl (javaCast object_ :: PlayerComposite))) () a1

addPlayerListener_super :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
addPlayerListener_super object_ a1 = (addPlayerListener_impl (javaCast object_ :: PlayerComposite)) a1

addPlayerListener_impl :: PlayerComposite -> PlayerListener.PlayerListener -> IO (())
addPlayerListener_impl this playerListener = do
        Control.Monad.void (Player.addPlayerListener ((jget (this).player)) playerListener)
        pure ()


removePlayerListener :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
removePlayerListener object_ a1 = jmethod object_ "removePlayerListener" (\() -> (removePlayerListener_impl (javaCast object_ :: PlayerComposite))) () a1

removePlayerListener_super :: (JavaObjectClass this_) => this_ -> PlayerListener.PlayerListener -> IO (())
removePlayerListener_super object_ a1 = (removePlayerListener_impl (javaCast object_ :: PlayerComposite)) a1

removePlayerListener_impl :: PlayerComposite -> PlayerListener.PlayerListener -> IO (())
removePlayerListener_impl this playerListener = do
        Control.Monad.void (Player.removePlayerListener ((jget (this).player)) playerListener)
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: PlayerComposite))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: PlayerComposite))

close_impl :: PlayerComposite -> IO (())
close_impl this = do
        Control.Monad.void (Player.close ((jget (this).player)))
        pure ()


deallocate :: (JavaObjectClass this_) => this_ -> IO (())
deallocate object_ = jmethod object_ "deallocate" (\() -> (deallocate_impl (javaCast object_ :: PlayerComposite))) ()

deallocate_super :: (JavaObjectClass this_) => this_ -> IO (())
deallocate_super object_ = (deallocate_impl (javaCast object_ :: PlayerComposite))

deallocate_impl :: PlayerComposite -> IO (())
deallocate_impl this = do
        Control.Monad.void (Player.deallocate ((jget (this).player)))
        pure ()


getContentType :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType object_ = jmethod object_ "getContentType" (\() -> (getContentType_impl (javaCast object_ :: PlayerComposite))) ()

getContentType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getContentType_super object_ = (getContentType_impl (javaCast object_ :: PlayerComposite))

getContentType_impl :: PlayerComposite -> IO (String)
getContentType_impl this = do
        (Player.getContentType ((jget (this).player)))


getDuration :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDuration object_ = jmethod object_ "getDuration" (\() -> (getDuration_impl (javaCast object_ :: PlayerComposite))) ()

getDuration_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getDuration_super object_ = (getDuration_impl (javaCast object_ :: PlayerComposite))

getDuration_impl :: PlayerComposite -> IO (Int64)
getDuration_impl this = do
        (Player.getDuration ((jget (this).player)))


getMediaTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMediaTime object_ = jmethod object_ "getMediaTime" (\() -> (getMediaTime_impl (javaCast object_ :: PlayerComposite))) ()

getMediaTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getMediaTime_super object_ = (getMediaTime_impl (javaCast object_ :: PlayerComposite))

getMediaTime_impl :: PlayerComposite -> IO (Int64)
getMediaTime_impl this = do
        (Player.getMediaTime ((jget (this).player)))


prefetch :: (JavaObjectClass this_) => this_ -> IO (())
prefetch object_ = jmethod object_ "prefetch" (\() -> (prefetch_impl (javaCast object_ :: PlayerComposite))) ()

prefetch_super :: (JavaObjectClass this_) => this_ -> IO (())
prefetch_super object_ = (prefetch_impl (javaCast object_ :: PlayerComposite))

prefetch_impl :: PlayerComposite -> IO (())
prefetch_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "prefetch" e)
            ) $ do
            Control.Monad.void (Player.prefetch ((jget (this).player)))
        pure ()


realize :: (JavaObjectClass this_) => this_ -> IO (())
realize object_ = jmethod object_ "realize" (\() -> (realize_impl (javaCast object_ :: PlayerComposite))) ()

realize_super :: (JavaObjectClass this_) => this_ -> IO (())
realize_super object_ = (realize_impl (javaCast object_ :: PlayerComposite))

realize_impl :: PlayerComposite -> IO (())
realize_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "realize" e)
            ) $ do
            Control.Monad.void (Player.realize ((jget (this).player)))
        pure ()


getState :: (JavaObjectClass this_) => this_ -> IO (Int)
getState object_ = jmethod object_ "getState" (\() -> (getState_impl (javaCast object_ :: PlayerComposite))) ()

getState_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getState_super object_ = (getState_impl (javaCast object_ :: PlayerComposite))

getState_impl :: PlayerComposite -> IO (Int)
getState_impl this = do
        (Player.getState ((jget (this).player)))


setLoopCount :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoopCount object_ a1 = jmethod object_ "setLoopCount" (\() -> (setLoopCount_impl (javaCast object_ :: PlayerComposite))) () a1

setLoopCount_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLoopCount_super object_ a1 = (setLoopCount_impl (javaCast object_ :: PlayerComposite)) a1

setLoopCount_impl :: PlayerComposite -> Int -> IO (())
setLoopCount_impl this count = do
        Control.Monad.void (Player.setLoopCount ((jget (this).player)) count)
        pure ()


setMediaTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
setMediaTime object_ a1 = jmethod object_ "setMediaTime" (\() -> (setMediaTime_impl (javaCast object_ :: PlayerComposite))) () a1

setMediaTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Int64)
setMediaTime_super object_ a1 = (setMediaTime_impl (javaCast object_ :: PlayerComposite)) a1

setMediaTime_impl :: PlayerComposite -> Int64 -> IO (Int64)
setMediaTime_impl this now = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "setMediaTime" e)
            pure ((Prelude.fromIntegral ((Prelude.negate 1) :: Int)))
            ) $ do
            (Player.setMediaTime ((jget (this).player)) now)


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: PlayerComposite))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: PlayerComposite))

start_impl :: PlayerComposite -> IO (())
start_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).sTART_METHOD_NAME) e)
            ) $ do
            when (jio (TimeDelayHelper.isTime ((jget (this).timeElapsedHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
                Control.Monad.void (Player.start ((jget (this).player)))
        pure ()


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: PlayerComposite))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: PlayerComposite))

stop_impl :: PlayerComposite -> IO (())
stop_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "stop" e)
            ) $ do
            Control.Monad.void (Player.stop ((jget (this).player)))
        pure ()


getControl :: (JavaObjectClass this_) => this_ -> String -> IO (Control.Control)
getControl object_ a1 = jmethod object_ "getControl" (\() -> (getControl_impl (javaCast object_ :: PlayerComposite))) () a1

getControl_super :: (JavaObjectClass this_) => this_ -> String -> IO (Control.Control)
getControl_super object_ a1 = (getControl_impl (javaCast object_ :: PlayerComposite)) a1

getControl_impl :: PlayerComposite -> String -> IO (Control.Control)
getControl_impl this controlType = do
        (Player.getControl ((jget (this).player)) controlType)


getControls :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls object_ = jmethod object_ "getControls" (\() -> (getControls_impl (javaCast object_ :: PlayerComposite))) ()

getControls_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Control.Control))
getControls_super object_ = (getControls_impl (javaCast object_ :: PlayerComposite))

getControls_impl :: PlayerComposite -> IO (JavaArray (Control.Control))
getControls_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setVolume :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume object_ a1 a2 = jmethod object_ "setVolume" (\() -> (setVolume_impl (javaCast object_ :: PlayerComposite))) () a1 a2

setVolume_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setVolume_super object_ a1 a2 = (setVolume_impl (javaCast object_ :: PlayerComposite)) a1 a2

setVolume_impl :: PlayerComposite -> Int -> Int -> IO (())
setVolume_impl this leftVolume rightVolume = do
        let controllable2 = ((javaCast (jget (this).player) :: Controllable2.Controllable2))
        Control.Monad.void (Controllable2.setVolume controllable2 leftVolume rightVolume)
        pure ()


getPlayerP :: (JavaObjectClass this_) => this_ -> IO (Player.Player)
getPlayerP object_ = jmethod object_ "getPlayerP" (\() -> (getPlayerP_impl (javaCast object_ :: PlayerComposite))) ()

getPlayerP_super :: (JavaObjectClass this_) => this_ -> IO (Player.Player)
getPlayerP_super object_ = (getPlayerP_impl (javaCast object_ :: PlayerComposite))

getPlayerP_impl :: PlayerComposite -> IO (Player.Player)
getPlayerP_impl this = do
        pure ((jget (this).player))


