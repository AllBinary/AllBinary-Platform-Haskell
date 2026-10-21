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
-- package org.allbinary.game.displayable.canvas
module NullGameCanvasRunnable where

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
import qualified Thread -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Item -- javax.microedition.lcdui.Item
import qualified GameState -- org.allbinary.game.state.GameState
import qualified GameStateFactory -- org.allbinary.game.state.GameStateFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified GameCanvasRunnableInterface

-- implements GameCanvasRunnableInterface
data NullGameCanvasRunnable = NullGameCanvasRunnable
    { header_ :: JavaHeader
    , gameStateFactory :: IORef (GameStateFactory.GameStateFactory)
    }

instance JavaNull NullGameCanvasRunnable where
    javaNull = javaNullRecord "NullGameCanvasRunnable"

instance JavaEquals NullGameCanvasRunnable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullGameCanvasRunnable where
    (==) = jrecordEquals

instance JavaObjectClass NullGameCanvasRunnable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GAME_CANVAS_RUNNABLE #-}
nULL_GAME_CANVAS_RUNNABLE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullGameCanvasRunnable
newRecord_ = do
    header_ <- newJavaHeader
    gameStateFactory <- newIORef javaNull
    let this = NullGameCanvasRunnable header_ gameStateFactory
    jregisterLevel header_ this
    GameCanvasRunnableInterface.registerInterface_ header_
    jregisterMethod header_ "getTitle" (\() -> getTitle_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    jregisterMethod header_ "isPaused" (\() -> isPaused_impl this)
    jregisterMethod header_ "unPause" (\() -> unPause_impl this)
    jregisterMethod header_ "pause" (\() -> pause_impl this)
    jregisterMethod header_ "isHighScoreSubmitted" (\() -> isHighScoreSubmitted_impl this)
    jregisterMethod header_ "setHighScoreSubmitted" (\() -> setHighScoreSubmitted_impl this)
    jregisterMethod header_ "processGameOver" (\() -> processGameOver_impl this)
    jregisterMethod header_ "isGameOver" (\() -> isGameOver_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "getCurrentStateHashtable" (\() -> getCurrentStateHashtable_impl this)
    jregisterMethod header_ "getLoadStateHashtable" (\() -> getLoadStateHashtable_impl this)
    jregisterMethod header_ "setLoadStateHashtable" (\() -> setLoadStateHashtable_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "setGameState" (\() -> setGameState_impl this)
    jregisterMethod header_ "getGameState" (\() -> getGameState_impl this)
    jregisterMethod header_ "itemStateChanged" (\() -> itemStateChanged_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "setThread" (\() -> setThread_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: NullGameCanvasRunnable -> IO ()
initFields_ this = do
    jset this.gameStateFactory =<< (GameStateFactory.getInstance)
    pure ()

new_ :: IO NullGameCanvasRunnable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullGameCanvasRunnable -> IO ()
init_ this = do
    initFields_ this


getTitle :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle object_ = jmethod object_ "getTitle" (\() -> (getTitle_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

getTitle_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle_super object_ = (getTitle_impl (javaCast object_ :: NullGameCanvasRunnable))

getTitle_impl :: NullGameCanvasRunnable -> IO (String)
getTitle_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: NullGameCanvasRunnable))

isInitialized_impl :: NullGameCanvasRunnable -> IO (Bool)
isInitialized_impl this = do
        pure (False)


isPaused :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPaused object_ = jmethod object_ "isPaused" (\() -> (isPaused_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

isPaused_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPaused_super object_ = (isPaused_impl (javaCast object_ :: NullGameCanvasRunnable))

isPaused_impl :: NullGameCanvasRunnable -> IO (Bool)
isPaused_impl this = do
        pure (False)


unPause :: (JavaObjectClass this_) => this_ -> IO (())
unPause object_ = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

unPause_super :: (JavaObjectClass this_) => this_ -> IO (())
unPause_super object_ = (unPause_impl (javaCast object_ :: NullGameCanvasRunnable))

unPause_impl :: NullGameCanvasRunnable -> IO (())
unPause_impl this = do
        pure ()


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: NullGameCanvasRunnable))

pause_impl :: NullGameCanvasRunnable -> IO (())
pause_impl this = do
        pure ()


isHighScoreSubmitted :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHighScoreSubmitted object_ = jmethod object_ "isHighScoreSubmitted" (\() -> (isHighScoreSubmitted_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

isHighScoreSubmitted_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHighScoreSubmitted_super object_ = (isHighScoreSubmitted_impl (javaCast object_ :: NullGameCanvasRunnable))

isHighScoreSubmitted_impl :: NullGameCanvasRunnable -> IO (Bool)
isHighScoreSubmitted_impl this = do
        pure (False)


-- throws Exception
setHighScoreSubmitted :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHighScoreSubmitted object_ a1 = jmethod object_ "setHighScoreSubmitted" (\() -> (setHighScoreSubmitted_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

setHighScoreSubmitted_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHighScoreSubmitted_super object_ a1 = (setHighScoreSubmitted_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

setHighScoreSubmitted_impl :: NullGameCanvasRunnable -> Bool -> IO (())
setHighScoreSubmitted_impl this highScoreSubmitted = do
        pure ()


-- throws Exception
processGameOver :: (JavaObjectClass this_) => this_ -> IO (())
processGameOver object_ = jmethod object_ "processGameOver" (\() -> (processGameOver_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

processGameOver_super :: (JavaObjectClass this_) => this_ -> IO (())
processGameOver_super object_ = (processGameOver_impl (javaCast object_ :: NullGameCanvasRunnable))

processGameOver_impl :: NullGameCanvasRunnable -> IO (())
processGameOver_impl this = do
        pure ()


isGameOver :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver object_ = jmethod object_ "isGameOver" (\() -> (isGameOver_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

isGameOver_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver_super object_ = (isGameOver_impl (javaCast object_ :: NullGameCanvasRunnable))

isGameOver_impl :: NullGameCanvasRunnable -> IO (Bool)
isGameOver_impl this = do
        pure (False)


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

initCommands_impl :: NullGameCanvasRunnable -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        pure ()


-- throws Exception
getCurrentStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable object_ = jmethod object_ "getCurrentStateHashtable" (\() -> (getCurrentStateHashtable_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

getCurrentStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_super object_ = (getCurrentStateHashtable_impl (javaCast object_ :: NullGameCanvasRunnable))

getCurrentStateHashtable_impl :: NullGameCanvasRunnable -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_impl this = do
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


-- throws Exception
getLoadStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable object_ = jmethod object_ "getLoadStateHashtable" (\() -> (getLoadStateHashtable_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

getLoadStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable_super object_ = (getLoadStateHashtable_impl (javaCast object_ :: NullGameCanvasRunnable))

getLoadStateHashtable_impl :: NullGameCanvasRunnable -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable_impl this = do
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


-- throws Exception
setLoadStateHashtable :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable object_ a1 = jmethod object_ "setLoadStateHashtable" (\() -> (setLoadStateHashtable_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

setLoadStateHashtable_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable_super object_ a1 = (setLoadStateHashtable_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

setLoadStateHashtable_impl :: NullGameCanvasRunnable -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable_impl this hashtable = do
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: NullGameCanvasRunnable))

getType_impl :: NullGameCanvasRunnable -> IO (Int)
getType_impl this = do
        pure ((Prelude.negate 1))


-- throws Exception
setGameState :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setGameState object_ a1 = jmethod object_ "setGameState" (\() -> (setGameState_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

setGameState_super :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setGameState_super object_ a1 = (setGameState_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

setGameState_impl :: NullGameCanvasRunnable -> GameState.GameState -> IO (())
setGameState_impl this gameState = do
        pure ()


getGameState :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getGameState object_ = jmethod object_ "getGameState" (\() -> (getGameState_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

getGameState_super :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getGameState_super object_ = (getGameState_impl (javaCast object_ :: NullGameCanvasRunnable))

getGameState_impl :: NullGameCanvasRunnable -> IO (GameState.GameState)
getGameState_impl this = do
        pure ((jget ((jget (this).gameStateFactory)).nO_GAME_STATE))


itemStateChanged :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
itemStateChanged object_ a1 = jmethod object_ "itemStateChanged" (\() -> (itemStateChanged_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

itemStateChanged_super :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
itemStateChanged_super object_ a1 = (itemStateChanged_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

itemStateChanged_impl :: NullGameCanvasRunnable -> Item.Item -> IO (())
itemStateChanged_impl this item = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

paint_impl :: NullGameCanvasRunnable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

paintThreed_impl :: NullGameCanvasRunnable -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: NullGameCanvasRunnable))

isRunning_impl :: NullGameCanvasRunnable -> IO (Bool)
isRunning_impl this = do
        pure (False)


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

setRunning_impl :: NullGameCanvasRunnable -> Bool -> IO (())
setRunning_impl this isRunning = do
        pure ()


-- throws Exception
setThread :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread object_ a1 = jmethod object_ "setThread" (\() -> (setThread_impl (javaCast object_ :: NullGameCanvasRunnable))) () a1

setThread_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread_super object_ a1 = (setThread_impl (javaCast object_ :: NullGameCanvasRunnable)) a1

setThread_impl :: NullGameCanvasRunnable -> Thread.Thread -> IO (())
setThread_impl this thread = do
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: NullGameCanvasRunnable))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: NullGameCanvasRunnable))

run_impl :: NullGameCanvasRunnable -> IO (())
run_impl this = do
        pure ()


