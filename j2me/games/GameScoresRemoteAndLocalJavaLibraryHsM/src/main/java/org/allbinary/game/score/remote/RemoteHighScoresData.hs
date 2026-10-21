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
-- package org.allbinary.game.score.remote
module RemoteHighScoresData where

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

data RemoteHighScoresData = RemoteHighScoresData
    { header_ :: JavaHeader
    , hIGH_SCORES :: IORef (String)
    , cUSTOMER_USER_NAME :: IORef (String)
    , dISPLAY_NAME :: IORef (String)
    , sCORE :: IORef (String)
    , gAME_INFO :: IORef (String)
    , gAME_CONFIGURATION :: IORef (String)
    }

instance JavaNull RemoteHighScoresData where
    javaNull = javaNullRecord "RemoteHighScoresData"

instance JavaEquals RemoteHighScoresData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteHighScoresData where
    (==) = jrecordEquals

instance JavaObjectClass RemoteHighScoresData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RemoteHighScoresData
newRecord_ = do
    header_ <- newJavaHeader
    hIGH_SCORES <- newIORef ""
    cUSTOMER_USER_NAME <- newIORef ""
    dISPLAY_NAME <- newIORef ""
    sCORE <- newIORef ""
    gAME_INFO <- newIORef ""
    gAME_CONFIGURATION <- newIORef ""
    let this = RemoteHighScoresData header_ hIGH_SCORES cUSTOMER_USER_NAME dISPLAY_NAME sCORE gAME_INFO gAME_CONFIGURATION
    jregisterLevel header_ this
    pure this

initFields_ :: RemoteHighScoresData -> IO ()
initFields_ this = do
    jset this.hIGH_SCORES ("HIGH_SCORES")
    jset this.cUSTOMER_USER_NAME ("CUSTOMER_USER_NAME")
    jset this.dISPLAY_NAME ("DISPLAY_NAME")
    jset this.sCORE ("SCORE")
    jset this.gAME_INFO ("GAME_INFO")
    jset this.gAME_CONFIGURATION ("GAME_CONFIGURATION")
    pure ()

new_ :: IO RemoteHighScoresData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RemoteHighScoresData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RemoteHighScoresData)
getInstance = do
        pure (RemoteHighScoresData.sINGLETON)


