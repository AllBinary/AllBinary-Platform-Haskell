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
-- package org.allbinary.game.state
module GameStateFactory where

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
import qualified GameState -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil

data GameStateFactory = GameStateFactory
    { header_ :: JavaHeader
    , index :: IORef (Int)
    , nO_GAME_STATE :: IORef (GameState.GameState)
    , pLAYING_GAME_STATE :: IORef (GameState.GameState)
    , sHOW_END_RESULT_GAME_STATE :: IORef (GameState.GameState)
    , sHOW_HIGH_SCORE_GAME_STATE :: IORef (GameState.GameState)
    }

instance JavaNull GameStateFactory where
    javaNull = javaNullRecord "GameStateFactory"

instance JavaEquals GameStateFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameStateFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameStateFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameStateFactory
newRecord_ = do
    header_ <- newJavaHeader
    index <- newIORef 0
    nO_GAME_STATE <- newIORef javaNull
    pLAYING_GAME_STATE <- newIORef javaNull
    sHOW_END_RESULT_GAME_STATE <- newIORef javaNull
    sHOW_HIGH_SCORE_GAME_STATE <- newIORef javaNull
    let this = GameStateFactory header_ index nO_GAME_STATE pLAYING_GAME_STATE sHOW_END_RESULT_GAME_STATE sHOW_HIGH_SCORE_GAME_STATE
    jregisterLevel header_ this
    jregisterMethod header_ "createGameState" (\() -> createGameState_impl this)
    pure this

initFields_ :: GameStateFactory -> IO ()
initFields_ this = do
    jset this.index (0)
    jset this.nO_GAME_STATE =<< (GameStateFactory.createGameState this "NO_GAME_STATE")
    jset this.pLAYING_GAME_STATE =<< (GameStateFactory.createGameState this "PLAYING_GAME_STATE")
    jset this.sHOW_END_RESULT_GAME_STATE =<< (GameStateFactory.createGameState this "SHOW_END_RESULT_GAME_STATE")
    jset this.sHOW_HIGH_SCORE_GAME_STATE =<< (GameStateFactory.createGameState this "SHOW_HIGH_SCORE_GAME_STATE")
    pure ()


getInstance :: IO (GameStateFactory)
getInstance = do
        when ((jget GameStateFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameStateFactory.instance_ (assignedValue)
        pure ((javaCast (jget GameStateFactory.instance_) :: GameStateFactory))

new_ :: IO GameStateFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameStateFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


createGameState :: (JavaObjectClass this_) => this_ -> String -> IO (GameState.GameState)
createGameState object_ a1 = jmethod object_ "createGameState" (\() -> (createGameState_impl (javaCast object_ :: GameStateFactory))) () a1

createGameState_super :: (JavaObjectClass this_) => this_ -> String -> IO (GameState.GameState)
createGameState_super object_ a1 = (createGameState_impl (javaCast object_ :: GameStateFactory)) a1

createGameState_impl :: GameStateFactory -> String -> IO (GameState.GameState)
createGameState_impl this name = do
        (GameState.new_2 name (jpostIncrement (this).index (+ 1)))


