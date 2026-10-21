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
-- package org.allbinary.game.input
module GameInputStrings where

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

data GameInputStrings = GameInputStrings
    { header_ :: JavaHeader
    , pROCESS_INPUT :: IORef (String)
    , kEY_PRESSED :: IORef (String)
    , kEY_RELEASED :: IORef (String)
    , kEY_REPEATED :: IORef (String)
    , oN_PRESS_GAME_KEY :: IORef (String)
    , oN_DOWN_GAME_KEY :: IORef (String)
    , oN_UP_GAME_KEY :: IORef (String)
    , nO_KEY :: IORef (String)
    , aDD_KEY_EVENT :: IORef (String)
    , rEMOVE_KEY_EVENT :: IORef (String)
    , sTRAFE_LEFT :: IORef (String)
    , sTRAFE_RIGHT :: IORef (String)
    , pROCESS_MOTION_INPUT :: IORef (String)
    , uDPATE_CURRENT_TOUCH_INPUT_FACTORY :: IORef (String)
    , eNABLE_PLAYER_GAME_INPUTS :: IORef (String)
    , eNABLE_PLAYER_GAME_INPUT :: IORef (String)
    }

instance JavaNull GameInputStrings where
    javaNull = javaNullRecord "GameInputStrings"

instance JavaEquals GameInputStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputStrings where
    (==) = jrecordEquals

instance JavaObjectClass GameInputStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInputStrings
newRecord_ = do
    header_ <- newJavaHeader
    pROCESS_INPUT <- newIORef ""
    kEY_PRESSED <- newIORef ""
    kEY_RELEASED <- newIORef ""
    kEY_REPEATED <- newIORef ""
    oN_PRESS_GAME_KEY <- newIORef ""
    oN_DOWN_GAME_KEY <- newIORef ""
    oN_UP_GAME_KEY <- newIORef ""
    nO_KEY <- newIORef ""
    aDD_KEY_EVENT <- newIORef ""
    rEMOVE_KEY_EVENT <- newIORef ""
    sTRAFE_LEFT <- newIORef ""
    sTRAFE_RIGHT <- newIORef ""
    pROCESS_MOTION_INPUT <- newIORef ""
    uDPATE_CURRENT_TOUCH_INPUT_FACTORY <- newIORef ""
    eNABLE_PLAYER_GAME_INPUTS <- newIORef ""
    eNABLE_PLAYER_GAME_INPUT <- newIORef ""
    let this = GameInputStrings header_ pROCESS_INPUT kEY_PRESSED kEY_RELEASED kEY_REPEATED oN_PRESS_GAME_KEY oN_DOWN_GAME_KEY oN_UP_GAME_KEY nO_KEY aDD_KEY_EVENT rEMOVE_KEY_EVENT sTRAFE_LEFT sTRAFE_RIGHT pROCESS_MOTION_INPUT uDPATE_CURRENT_TOUCH_INPUT_FACTORY eNABLE_PLAYER_GAME_INPUTS eNABLE_PLAYER_GAME_INPUT
    jregisterLevel header_ this
    pure this

initFields_ :: GameInputStrings -> IO ()
initFields_ this = do
    jset this.pROCESS_INPUT ("processInput")
    jset this.kEY_PRESSED ("keyPressed")
    jset this.kEY_RELEASED ("keyReleased")
    jset this.kEY_REPEATED ("keyRepeated")
    jset this.oN_PRESS_GAME_KEY ("onPressGameKeyEvent")
    jset this.oN_DOWN_GAME_KEY ("onDownGameKeyEvent")
    jset this.oN_UP_GAME_KEY ("onUpGameKeyEvent")
    jset this.nO_KEY ("Key Code Not Mapped For Game: ")
    jset this.aDD_KEY_EVENT ("addGameKeyEvent")
    jset this.rEMOVE_KEY_EVENT ("removeGameKeyEvent")
    jset this.sTRAFE_LEFT ("strafeLeft")
    jset this.sTRAFE_RIGHT ("strafeRight")
    jset this.pROCESS_MOTION_INPUT ("processMotionInput")
    jset this.uDPATE_CURRENT_TOUCH_INPUT_FACTORY ("updateCurrentTouchInputFactory")
    jset this.eNABLE_PLAYER_GAME_INPUTS ("Enabling PlayerGameInputs: ")
    jset this.eNABLE_PLAYER_GAME_INPUT ("Enabling PlayerGameInput: ")
    pure ()

new_ :: IO GameInputStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInputStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameInputStrings)
getInstance = do
        pure (GameInputStrings.instance_)


