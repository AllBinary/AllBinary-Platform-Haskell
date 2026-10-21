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
module GameStateCompositeInterface where

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
import qualified GameState -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data GameStateCompositeInterface = GameStateCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull GameStateCompositeInterface where
    javaNull = javaNullRecord "GameStateCompositeInterface"

instance JavaEquals GameStateCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameStateCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass GameStateCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameStateCompositeInterface
fromHeader_ header = GameStateCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameStateCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
setGameState :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setGameState object_ a1 = jmethod object_ "setGameState" (\() -> (setGameState_impl (javaCast object_ :: GameStateCompositeInterface))) () a1

setGameState_super :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setGameState_super object_ a1 = (setGameState_impl (javaCast object_ :: GameStateCompositeInterface)) a1

setGameState_impl :: GameStateCompositeInterface -> GameState.GameState -> IO (())
setGameState_impl this gameState = javaAbstractMethod "setGameState"


getGameState :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getGameState object_ = jmethod object_ "getGameState" (\() -> (getGameState_impl (javaCast object_ :: GameStateCompositeInterface))) ()

getGameState_super :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getGameState_super object_ = (getGameState_impl (javaCast object_ :: GameStateCompositeInterface))

getGameState_impl :: GameStateCompositeInterface -> IO (GameState.GameState)
getGameState_impl this = javaAbstractMethod "getGameState"


