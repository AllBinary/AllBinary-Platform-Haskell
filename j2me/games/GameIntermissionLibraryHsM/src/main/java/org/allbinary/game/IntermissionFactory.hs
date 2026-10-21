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
-- package org.allbinary.game
module IntermissionFactory where

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
import qualified GameState -- org.allbinary.game.state.GameState
import qualified GameStateFactory -- org.allbinary.game.state.GameStateFactory

data IntermissionFactory = IntermissionFactory
    { header_ :: JavaHeader
    , sTART_LEVEL_INTERMISSION_GAME_STATE :: IORef (GameState.GameState)
    , wAIT_LEVEL_INTERMISSION_GAME_STATE :: IORef (GameState.GameState)
    , sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE :: IORef (GameState.GameState)
    , sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE :: IORef (GameState.GameState)
    }

instance JavaNull IntermissionFactory where
    javaNull = javaNullRecord "IntermissionFactory"

instance JavaEquals IntermissionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IntermissionFactory where
    (==) = jrecordEquals

instance JavaObjectClass IntermissionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO IntermissionFactory
newRecord_ = do
    header_ <- newJavaHeader
    sTART_LEVEL_INTERMISSION_GAME_STATE <- newIORef javaNull
    wAIT_LEVEL_INTERMISSION_GAME_STATE <- newIORef javaNull
    sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE <- newIORef javaNull
    sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE <- newIORef javaNull
    let this = IntermissionFactory header_ sTART_LEVEL_INTERMISSION_GAME_STATE wAIT_LEVEL_INTERMISSION_GAME_STATE sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE
    jregisterLevel header_ this
    pure this

initFields_ :: IntermissionFactory -> IO ()
initFields_ this = do
    jset this.sTART_LEVEL_INTERMISSION_GAME_STATE =<< (GameStateFactory.createGameState ((jio (GameStateFactory.getInstance))) "START_LEVEL_INTERMISSION_GAME_STATE")
    jset this.wAIT_LEVEL_INTERMISSION_GAME_STATE =<< (GameStateFactory.createGameState ((jio (GameStateFactory.getInstance))) "WAIT_LEVEL_INTERMISSION_GAME_STATE")
    jset this.sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE =<< (GameStateFactory.createGameState ((jio (GameStateFactory.getInstance))) "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")
    jset this.sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE =<< (GameStateFactory.createGameState ((jio (GameStateFactory.getInstance))) "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")
    pure ()

new_ :: IO IntermissionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: IntermissionFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (IntermissionFactory)
getInstance = do
        pure (IntermissionFactory.instance_)


