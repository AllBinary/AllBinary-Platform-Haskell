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
module GameStrings where

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

data GameStrings = GameStrings
    { header_ :: JavaHeader
    , pROCESS_TICK :: IORef (String)
    , oN_GAME_INITIALIZED :: IORef (String)
    , uPDATESURFACE :: IORef (String)
    , oN_SET_DISPLAYABLE :: IORef (String)
    , uNPAUSE :: IORef (String)
    , tOGGLE_MENU :: IORef (String)
    , sET_GAME_OVER :: IORef (String)
    , gAME_STATE :: IORef (String)
    , sET_GAME_STATE :: IORef (String)
    , sTOP_GAME_CANVAS_RUNNABLE_INTERFACE :: IORef (String)
    }

instance JavaNull GameStrings where
    javaNull = javaNullRecord "GameStrings"

instance JavaEquals GameStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameStrings where
    (==) = jrecordEquals

instance JavaObjectClass GameStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameStrings
newRecord_ = do
    header_ <- newJavaHeader
    pROCESS_TICK <- newIORef ""
    oN_GAME_INITIALIZED <- newIORef ""
    uPDATESURFACE <- newIORef ""
    oN_SET_DISPLAYABLE <- newIORef ""
    uNPAUSE <- newIORef ""
    tOGGLE_MENU <- newIORef ""
    sET_GAME_OVER <- newIORef ""
    gAME_STATE <- newIORef ""
    sET_GAME_STATE <- newIORef ""
    sTOP_GAME_CANVAS_RUNNABLE_INTERFACE <- newIORef ""
    let this = GameStrings header_ pROCESS_TICK oN_GAME_INITIALIZED uPDATESURFACE oN_SET_DISPLAYABLE uNPAUSE tOGGLE_MENU sET_GAME_OVER gAME_STATE sET_GAME_STATE sTOP_GAME_CANVAS_RUNNABLE_INTERFACE
    jregisterLevel header_ this
    pure this

initFields_ :: GameStrings -> IO ()
initFields_ this = do
    jset this.pROCESS_TICK ("processTick")
    jset this.oN_GAME_INITIALIZED ("onGameInitialized")
    jset this.uPDATESURFACE ("updateSurface")
    jset this.oN_SET_DISPLAYABLE ("onSetDisplayable")
    jset this.uNPAUSE ("unPause")
    jset this.tOGGLE_MENU ("toggleMenu")
    jset this.sET_GAME_OVER ("setGameOver")
    jset this.gAME_STATE ("Game State: ")
    jset this.sET_GAME_STATE ("setGameState")
    jset this.sTOP_GAME_CANVAS_RUNNABLE_INTERFACE ("stopGameCanvasRunnableInterface")
    pure ()

new_ :: IO GameStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameStrings)
getInstance = do
        pure (GameStrings.instance_)


