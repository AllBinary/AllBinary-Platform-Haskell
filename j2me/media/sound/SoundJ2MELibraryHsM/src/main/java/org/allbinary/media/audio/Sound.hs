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
module Sound where

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
import qualified NoPlayer -- same package or java.lang
import qualified Player -- javax.microedition.media.Player
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified SoundInterface
import qualified Runnable

-- implements SoundInterface
-- implements Runnable
data Sound = Sound
    { header_ :: JavaHeader
    , resource :: IORef (String)
    , player :: IORef (Player.Player)
    }

instance JavaNull Sound where
    javaNull = javaNullRecord "Sound"

instance JavaEquals Sound where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Sound where
    (==) = jrecordEquals

instance JavaObjectClass Sound where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Sound
newRecord_ = do
    header_ <- newJavaHeader
    resource <- newIORef ""
    player <- newIORef javaNull
    let this = Sound header_ resource player
    jregisterLevel header_ this
    SoundInterface.registerInterface_ header_
    Runnable.registerInterface_ header_
    jregisterMethod header_ "getResource" (\() -> getResource_impl this)
    jregisterMethod header_ "getPlayerP" (\() -> getPlayerP_impl this)
    jregisterMethod header_ "setPlayerP" (\() -> setPlayerP_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getDuration" (\() -> getDuration_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: Sound -> IO ()
initFields_ this = do
    jset this.resource (javaNull)
    jset this.player ((javaCast NoPlayer.nO_PLAYER :: Player.Player))
    pure ()

new_1 :: String -> IO Sound
new_1 resource = do
    this <- newRecord_
    init_1 this resource
    pure this

init_1 :: Sound -> String -> IO ()
init_1 this resource = do
        initFields_ this
        jset (this).resource (resource)
        pure ()


getResource :: (JavaObjectClass this_) => this_ -> IO (String)
getResource object_ = jmethod object_ "getResource" (\() -> (getResource_impl (javaCast object_ :: Sound))) ()

getResource_super :: (JavaObjectClass this_) => this_ -> IO (String)
getResource_super object_ = (getResource_impl (javaCast object_ :: Sound))

getResource_impl :: Sound -> IO (String)
getResource_impl this = do
        pure ((jget (this).resource))


getPlayerP :: (JavaObjectClass this_) => this_ -> IO (Player.Player)
getPlayerP object_ = jmethod object_ "getPlayerP" (\() -> (getPlayerP_impl (javaCast object_ :: Sound))) ()

getPlayerP_super :: (JavaObjectClass this_) => this_ -> IO (Player.Player)
getPlayerP_super object_ = (getPlayerP_impl (javaCast object_ :: Sound))

getPlayerP_impl :: Sound -> IO (Player.Player)
getPlayerP_impl this = do
        pure ((jget (this).player))


setPlayerP :: (JavaObjectClass this_) => this_ -> Player.Player -> IO (())
setPlayerP object_ a1 = jmethod object_ "setPlayerP" (\() -> (setPlayerP_impl (javaCast object_ :: Sound))) () a1

setPlayerP_super :: (JavaObjectClass this_) => this_ -> Player.Player -> IO (())
setPlayerP_super object_ a1 = (setPlayerP_impl (javaCast object_ :: Sound)) a1

setPlayerP_impl :: Sound -> Player.Player -> IO (())
setPlayerP_impl this player = do
        jset (this).player (player)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Sound))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: Sound))

init_impl :: Sound -> IO (())
init_impl this = do
        pure ()


getDuration :: (JavaObjectClass this_) => this_ -> IO (Int)
getDuration object_ = jmethod object_ "getDuration" (\() -> (getDuration_impl (javaCast object_ :: Sound))) ()

getDuration_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDuration_super object_ = (getDuration_impl (javaCast object_ :: Sound))

getDuration_impl :: Sound -> IO (Int)
getDuration_impl this = do
        pure ((Prelude.negate 1))


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: Sound))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: Sound))

run_impl :: Sound -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.put (jget (commonStrings).eXCEPTION) this (jget (commonStrings).rUN))
            ) $ do
            Control.Monad.void (Player.start ((jget (this).player)))
        pure ()


