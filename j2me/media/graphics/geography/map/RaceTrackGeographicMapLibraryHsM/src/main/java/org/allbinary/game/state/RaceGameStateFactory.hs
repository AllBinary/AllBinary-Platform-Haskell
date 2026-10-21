{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.state
module RaceGameStateFactory where

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
import qualified GameStateFactory -- same package or java.lang
import qualified GameState -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil

data RaceGameStateFactory = RaceGameStateFactory
    { header_ :: JavaHeader
    , sTART_GAME_STATE :: IORef (GameState.GameState)
    , yELLOW_LIGHT_GAME_STATE :: IORef (GameState.GameState)
    , rED_LIGHT_GAME_STATE :: IORef (GameState.GameState)
    }

instance JavaNull RaceGameStateFactory where
    javaNull = javaNullRecord "RaceGameStateFactory"

instance JavaEquals RaceGameStateFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceGameStateFactory where
    (==) = jrecordEquals

instance JavaObjectClass RaceGameStateFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RaceGameStateFactory
newRecord_ = do
    header_ <- newJavaHeader
    sTART_GAME_STATE <- newIORef javaNull
    yELLOW_LIGHT_GAME_STATE <- newIORef javaNull
    rED_LIGHT_GAME_STATE <- newIORef javaNull
    let this = RaceGameStateFactory header_ sTART_GAME_STATE yELLOW_LIGHT_GAME_STATE rED_LIGHT_GAME_STATE
    jregisterLevel header_ this
    pure this

initFields_ :: RaceGameStateFactory -> IO ()
initFields_ this = do
    jset this.sTART_GAME_STATE =<< (GameStateFactory.createGameState ((jio (GameStateFactory.getInstance))) "START_GAME_STATE")
    jset this.yELLOW_LIGHT_GAME_STATE =<< (GameStateFactory.createGameState ((jio (GameStateFactory.getInstance))) "YELLOW_LIGHT_GAME_STATE")
    jset this.rED_LIGHT_GAME_STATE =<< (GameStateFactory.createGameState ((jio (GameStateFactory.getInstance))) "RED_LIGHT_GAME_STATE")
    pure ()

new_ :: IO RaceGameStateFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceGameStateFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RaceGameStateFactory)
getInstance = do
        when ((jget RaceGameStateFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset RaceGameStateFactory.instance_ (assignedValue)
        pure ((javaCast (jget RaceGameStateFactory.instance_) :: RaceGameStateFactory))


