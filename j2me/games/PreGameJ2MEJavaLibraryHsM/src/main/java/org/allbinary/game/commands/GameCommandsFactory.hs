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
-- package org.allbinary.game.commands
module GameCommandsFactory where

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
import qualified Command -- javax.microedition.lcdui.Command
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data GameCommandsFactory = GameCommandsFactory
    { header_ :: JavaHeader
    , tOGGLE_FULLSCREEN :: IORef (Command.Command)
    , tOGGLE_KEYBOARD :: IORef (Command.Command)
    , sET_MENU_DISPLAYABLE :: IORef (Command.Command)
    , aPPLICATION_UPDATE :: IORef (Command.Command)
    , dISPLAY_ABOUT :: IORef (Command.Command)
    , oPEN_WEB_URL :: IORef (Command.Command)
    , cLOSE_OPTIONS :: IORef (Command.Command)
    , dISPLAY_OPTIONS :: IORef (Command.Command)
    , sTART_TRACE :: IORef (Command.Command)
    , sTOP_TRACE :: IORef (Command.Command)
    , dEFAULT_OPTIONS :: IORef (Command.Command)
    , sHOW_GAME_CANVAS :: IORef (Command.Command)
    , cLOSE_AND_SHOW_GAME_CANVAS :: IORef (Command.Command)
    , qUIT_COMMAND :: IORef (Command.Command)
    , rESTART_COMMAND :: IORef (Command.Command)
    , dISPLAY_SAVE_FORM :: IORef (Command.Command)
    , sAVE :: IORef (Command.Command)
    , dISPLAY_LOAD_FORM :: IORef (Command.Command)
    , lOAD_FILE :: IORef (Command.Command)
    , dELETE_FILE :: IORef (Command.Command)
    , eXIT_COMMAND :: IORef (Command.Command)
    , eXIT_WITHOUT_PROGRESS_COMMAND :: IORef (Command.Command)
    , sTART_COMMAND :: IORef (Command.Command)
    , cONTINUE_COMMAND :: IORef (Command.Command)
    , sELECT_COMMAND :: IORef (Command.Command)
    , fEATURE_UPDATE :: IORef (Command.Command)
    , bUY_COMMAND :: IORef (Command.Command)
    }

instance JavaNull GameCommandsFactory where
    javaNull = javaNullRecord "GameCommandsFactory"

instance JavaEquals GameCommandsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameCommandsFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameCommandsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameCommandsFactory
newRecord_ = do
    header_ <- newJavaHeader
    tOGGLE_FULLSCREEN <- newIORef javaNull
    tOGGLE_KEYBOARD <- newIORef javaNull
    sET_MENU_DISPLAYABLE <- newIORef javaNull
    aPPLICATION_UPDATE <- newIORef javaNull
    dISPLAY_ABOUT <- newIORef javaNull
    oPEN_WEB_URL <- newIORef javaNull
    cLOSE_OPTIONS <- newIORef javaNull
    dISPLAY_OPTIONS <- newIORef javaNull
    sTART_TRACE <- newIORef javaNull
    sTOP_TRACE <- newIORef javaNull
    dEFAULT_OPTIONS <- newIORef javaNull
    sHOW_GAME_CANVAS <- newIORef javaNull
    cLOSE_AND_SHOW_GAME_CANVAS <- newIORef javaNull
    qUIT_COMMAND <- newIORef javaNull
    rESTART_COMMAND <- newIORef javaNull
    dISPLAY_SAVE_FORM <- newIORef javaNull
    sAVE <- newIORef javaNull
    dISPLAY_LOAD_FORM <- newIORef javaNull
    lOAD_FILE <- newIORef javaNull
    dELETE_FILE <- newIORef javaNull
    eXIT_COMMAND <- newIORef javaNull
    eXIT_WITHOUT_PROGRESS_COMMAND <- newIORef javaNull
    sTART_COMMAND <- newIORef javaNull
    cONTINUE_COMMAND <- newIORef javaNull
    sELECT_COMMAND <- newIORef javaNull
    fEATURE_UPDATE <- newIORef javaNull
    bUY_COMMAND <- newIORef javaNull
    let this = GameCommandsFactory header_ tOGGLE_FULLSCREEN tOGGLE_KEYBOARD sET_MENU_DISPLAYABLE aPPLICATION_UPDATE dISPLAY_ABOUT oPEN_WEB_URL cLOSE_OPTIONS dISPLAY_OPTIONS sTART_TRACE sTOP_TRACE dEFAULT_OPTIONS sHOW_GAME_CANVAS cLOSE_AND_SHOW_GAME_CANVAS qUIT_COMMAND rESTART_COMMAND dISPLAY_SAVE_FORM sAVE dISPLAY_LOAD_FORM lOAD_FILE dELETE_FILE eXIT_COMMAND eXIT_WITHOUT_PROGRESS_COMMAND sTART_COMMAND cONTINUE_COMMAND sELECT_COMMAND fEATURE_UPDATE bUY_COMMAND
    jregisterLevel header_ this
    pure this

initFields_ :: GameCommandsFactory -> IO ()
initFields_ this = do
    jset this.tOGGLE_FULLSCREEN =<< (Command.new_4 "Toggle FullScreen" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.tOGGLE_KEYBOARD =<< (Command.new_4 "Keyboard" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.sET_MENU_DISPLAYABLE =<< (Command.new_4 "Set Menu Displayable" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.aPPLICATION_UPDATE =<< (Command.new_4 (jget ((jio (CommonStrings.getInstance))).uPDATE) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.dISPLAY_ABOUT =<< (Command.new_4 (jget ((jio (CanvasStrings.getInstance))).aBOUT) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 2)
    jset this.oPEN_WEB_URL =<< (Command.new_4 "Open Web URL" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 2)
    jset this.cLOSE_OPTIONS =<< (Command.new_4 "Back" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.dISPLAY_OPTIONS =<< (Command.new_4 (jget ((jio (CanvasStrings.getInstance))).oPTIONS) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 2)
    jset this.sTART_TRACE =<< (Command.new_4 "Start Trace" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.sTOP_TRACE =<< (Command.new_4 "Stop Trace" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.dEFAULT_OPTIONS =<< (Command.new_4 "Default" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.sHOW_GAME_CANVAS =<< (Command.new_4 "Back to Game" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.cLOSE_AND_SHOW_GAME_CANVAS =<< (Command.new_4 "Back" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.qUIT_COMMAND =<< (Command.new_4 "Quit" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sTOP) 1)
    jset this.rESTART_COMMAND =<< (Command.new_4 "Restart" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 0)
    jset this.dISPLAY_SAVE_FORM =<< (Command.new_4 "Save To" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 3)
    jset this.sAVE =<< (Command.new_4 "Save" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 3)
    jset this.dISPLAY_LOAD_FORM =<< (Command.new_4 "Load" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 3)
    jset this.lOAD_FILE =<< (Command.new_4 "Load File" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 3)
    jset this.dELETE_FILE =<< (Command.new_4 "Delete File" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.eXIT_COMMAND =<< (Command.new_4 "Exit" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.eXIT) 2)
    jset this.eXIT_WITHOUT_PROGRESS_COMMAND =<< (Command.new_4 "Exit Without Progress" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.eXIT) 2)
    jset this.sTART_COMMAND =<< (Command.new_4 (jget ((jio (CommonStrings.getInstance))).sTART) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.cONTINUE_COMMAND =<< (Command.new_4 "Continue" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.sELECT_COMMAND =<< (Command.new_4 "Select" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.fEATURE_UPDATE =<< (Command.new_4 "Feature Update" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    jset this.bUY_COMMAND =<< (Command.new_4 "BUY" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1)
    pure ()


getInstance :: IO (GameCommandsFactory)
getInstance = do
        when ((jget GameCommandsFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameCommandsFactory.instance_ (assignedValue)
        pure ((javaCast (jget GameCommandsFactory.instance_) :: GameCommandsFactory))

new_ :: IO GameCommandsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameCommandsFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


