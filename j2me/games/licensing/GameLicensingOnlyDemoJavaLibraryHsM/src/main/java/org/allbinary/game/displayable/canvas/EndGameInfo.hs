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
-- package org.allbinary.game.displayable.canvas
module EndGameInfo where

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
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data EndGameInfo = EndGameInfo
    { header_ :: JavaHeader
    , nORMAL_GAME_OVER_WIN :: IORef (String)
    , tEASER_DEMO_GAME_END_LAST_LEVEL :: IORef (String)
    , tEASER_DEMO_GAME_END :: IORef (String)
    , gameOverStr :: IORef (String)
    , winStr :: IORef (String)
    }

instance JavaNull EndGameInfo where
    javaNull = javaNullRecord "EndGameInfo"

instance JavaEquals EndGameInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EndGameInfo where
    (==) = jrecordEquals

instance JavaObjectClass EndGameInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EndGameInfo
newRecord_ = do
    header_ <- newJavaHeader
    nORMAL_GAME_OVER_WIN <- newIORef ""
    tEASER_DEMO_GAME_END_LAST_LEVEL <- newIORef ""
    tEASER_DEMO_GAME_END <- newIORef ""
    gameOverStr <- newIORef ""
    winStr <- newIORef ""
    let this = EndGameInfo header_ nORMAL_GAME_OVER_WIN tEASER_DEMO_GAME_END_LAST_LEVEL tEASER_DEMO_GAME_END gameOverStr winStr
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getGameOverStr" (\() -> getGameOverStr_impl this)
    jregisterMethod header_ "setGameOverStr" (\() -> setGameOverStr_impl this)
    jregisterMethod header_ "getWinStr" (\() -> getWinStr_impl this)
    jregisterMethod header_ "setWinStr" (\() -> setWinStr_impl this)
    pure this

initFields_ :: EndGameInfo -> IO ()
initFields_ this = do
    jset this.nORMAL_GAME_OVER_WIN ("You Won")
    jset this.tEASER_DEMO_GAME_END_LAST_LEVEL ("End of Demo.")
    jset this.tEASER_DEMO_GAME_END ("Demo Game Over.")
    jset this.gameOverStr ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.winStr ((jget (this).gameOverStr))
    pure ()

new_ :: IO EndGameInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EndGameInfo -> IO ()
init_ this = do
    initFields_ this


update :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> MyCanvas.MyCanvas -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: EndGameInfo))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> MyCanvas.MyCanvas -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: EndGameInfo)) a1 a2

update_impl :: EndGameInfo -> GameInfo.GameInfo -> MyCanvas.MyCanvas -> IO (())
update_impl this gameInfo myCanvas = do
        if (jio (GameInfo.isLastLevel gameInfo)) then do
            Control.Monad.void (EndGameInfo.setWinStr this (jget (this).tEASER_DEMO_GAME_END_LAST_LEVEL))
            Control.Monad.void (EndGameInfo.setGameOverStr this (jget (this).tEASER_DEMO_GAME_END_LAST_LEVEL))
        else do
            Control.Monad.void (EndGameInfo.setWinStr this (jget (this).nORMAL_GAME_OVER_WIN))
            Control.Monad.void (EndGameInfo.setGameOverStr this (jget (this).tEASER_DEMO_GAME_END))
        pure ()


getGameOverStr :: (JavaObjectClass this_) => this_ -> IO (String)
getGameOverStr object_ = jmethod object_ "getGameOverStr" (\() -> (getGameOverStr_impl (javaCast object_ :: EndGameInfo))) ()

getGameOverStr_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGameOverStr_super object_ = (getGameOverStr_impl (javaCast object_ :: EndGameInfo))

getGameOverStr_impl :: EndGameInfo -> IO (String)
getGameOverStr_impl this = do
        pure ((jget (this).gameOverStr))


setGameOverStr :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGameOverStr object_ a1 = jmethod object_ "setGameOverStr" (\() -> (setGameOverStr_impl (javaCast object_ :: EndGameInfo))) () a1

setGameOverStr_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGameOverStr_super object_ a1 = (setGameOverStr_impl (javaCast object_ :: EndGameInfo)) a1

setGameOverStr_impl :: EndGameInfo -> String -> IO (())
setGameOverStr_impl this gameOverStr = do
        jset (this).gameOverStr (gameOverStr)
        pure ()


getWinStr :: (JavaObjectClass this_) => this_ -> IO (String)
getWinStr object_ = jmethod object_ "getWinStr" (\() -> (getWinStr_impl (javaCast object_ :: EndGameInfo))) ()

getWinStr_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWinStr_super object_ = (getWinStr_impl (javaCast object_ :: EndGameInfo))

getWinStr_impl :: EndGameInfo -> IO (String)
getWinStr_impl this = do
        pure ((jget (this).winStr))


setWinStr :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWinStr object_ a1 = jmethod object_ "setWinStr" (\() -> (setWinStr_impl (javaCast object_ :: EndGameInfo))) () a1

setWinStr_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setWinStr_super object_ a1 = (setWinStr_impl (javaCast object_ :: EndGameInfo)) a1

setWinStr_impl :: EndGameInfo -> String -> IO (())
setWinStr_impl this winStr = do
        jset (this).winStr (winStr)
        pure ()


