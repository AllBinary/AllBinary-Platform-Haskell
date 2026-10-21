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
-- package org.allbinary.game.displayable.screen
module LicenseRegistrationTextBox (module LicenseRegistrationTextBox, module CustomTextBox) where

import CustomTextBox hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initCommands, initCommands_super, initCommands_impl, open, open_super, open_impl, close, close_super, close_impl, paint, paint_super, paint_impl, submit, submit_super, submit_impl, logUtil, dISPLAY_COMMAND, sUBMIT_COMMAND, pleaseWaitPaintable, paintable)
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
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified TextField -- javax.microedition.lcdui.TextField
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified CustomTextBox -- org.allbinary.graphics.form.item.CustomTextBox
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified SimpleTextPaintable -- org.allbinary.graphics.paint.SimpleTextPaintable
import qualified VirtualKeyboardEventHandler -- org.allbinary.input.event.VirtualKeyboardEventHandler

data LicenseRegistrationTextBox = LicenseRegistrationTextBox
    { header_ :: JavaHeader
    , base :: CustomTextBox.CustomTextBox
    , logUtil :: IORef (LogUtil.LogUtil)
    , pleaseWaitPaintable :: IORef (Paintable.Paintable)
    , paintable :: IORef (Paintable.Paintable)
    }

instance JavaNull LicenseRegistrationTextBox where
    javaNull = javaNullRecord "LicenseRegistrationTextBox"

instance JavaEquals LicenseRegistrationTextBox where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseRegistrationTextBox where
    (==) = jrecordEquals

instance JavaObjectClass LicenseRegistrationTextBox where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE dISPLAY_COMMAND #-}
dISPLAY_COMMAND = unsafePerformIO ((Command.new_4 "Register" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 3))

{-# NOINLINE sUBMIT_COMMAND #-}
sUBMIT_COMMAND = unsafePerformIO ((Command.new_4 "Submit" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 3))

newRecord_ :: IO LicenseRegistrationTextBox
newRecord_ = do
    base <- CustomTextBox.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    pleaseWaitPaintable <- newIORef javaNull
    paintable <- newIORef javaNull
    let this = LicenseRegistrationTextBox header_ base logUtil pleaseWaitPaintable paintable
    jregisterLevel header_ this
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "submit" (\() -> submit_impl this)
    pure this

initFields_ :: LicenseRegistrationTextBox -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.pleaseWaitPaintable =<< (fmap (\value_ -> javaCast value_ :: Paintable.Paintable) (SimpleTextPaintable.new_2 (jget ((jget this.base.base.base.commonStrings)).pLEASE_WAIT) (jget ((jio (BasicColorFactory.getInstance))).wHITE)))
    jset this.paintable =<< (NullPaintable.getInstance)
    pure ()

new_3 :: CommandListener.CommandListener -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO LicenseRegistrationTextBox
new_3 cmdListener backgrounBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_3 this cmdListener backgrounBasicColor foregroundBasicColor
    pure this

init_3 :: LicenseRegistrationTextBox -> CommandListener.CommandListener -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this cmdListener backgrounBasicColor foregroundBasicColor = do
        CustomTextBox.init_8 this.base (cmdListener) ("Enter Registration Code:") (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (60) (TextField.aNY) (jio (Font.getDefaultFont)) (backgrounBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: LicenseRegistrationTextBox))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: LicenseRegistrationTextBox)) a1

initCommands_impl :: LicenseRegistrationTextBox -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (CustomTextBox.removeAllCommands this)
        Control.Monad.void (CustomTextBox.addCommand this (jget ((jio (GameCommandsFactory.getInstance))).cLOSE_AND_SHOW_GAME_CANVAS))
        Control.Monad.void (CustomTextBox.addCommand this (jget ((jio (GameCommandsFactory.getInstance))).tOGGLE_KEYBOARD))
        Control.Monad.void (CustomTextBox.addCommand this sUBMIT_COMMAND)
        Control.Monad.void (CustomTextBox.setCommandListener this cmdListener)
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: LicenseRegistrationTextBox))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: LicenseRegistrationTextBox))

open_impl :: LicenseRegistrationTextBox -> IO (())
open_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.base.base.base.commonStrings)).eXCEPTION) this "open" e)
            ) $ do
            virtualKeyboardEventHandler <- (VirtualKeyboardEventHandler.getInstance)
            Control.Monad.void (VirtualKeyboardEventHandler.fireEvent virtualKeyboardEventHandler (jget (virtualKeyboardEventHandler).sHOW_EVENT))
        Control.Monad.void (CustomTextBox.open_super this.base)
        assignedValue <- (NullPaintable.getInstance)
        jset (this).paintable (assignedValue)
        Control.Monad.void (CustomTextBox.repaint this)
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: LicenseRegistrationTextBox))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: LicenseRegistrationTextBox))

close_impl :: LicenseRegistrationTextBox -> IO (())
close_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.base.base.base.commonStrings)).eXCEPTION) this "open" e)
            ) $ do
            virtualKeyboardEventHandler <- (VirtualKeyboardEventHandler.getInstance)
            Control.Monad.void (VirtualKeyboardEventHandler.fireEvent virtualKeyboardEventHandler (jget (virtualKeyboardEventHandler).hIDE_EVENT))
        jset (this).paintable ((jget (this).pleaseWaitPaintable))
        Control.Monad.void (CustomTextBox.repaint this)
        Control.Monad.void (CustomTextBox.close_super this.base)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: LicenseRegistrationTextBox))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: LicenseRegistrationTextBox)) a1

paint_impl :: LicenseRegistrationTextBox -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (CustomTextBox.paint_super this.base graphics)
        Control.Monad.void (Paintable.paint ((jget (this).paintable)) graphics)
        pure ()


submit :: (JavaObjectClass this_) => this_ -> IO (())
submit object_ = jmethod object_ "submit" (\() -> (submit_impl (javaCast object_ :: LicenseRegistrationTextBox))) ()

submit_super :: (JavaObjectClass this_) => this_ -> IO (())
submit_super object_ = (submit_impl (javaCast object_ :: LicenseRegistrationTextBox))

submit_impl :: LicenseRegistrationTextBox -> IO (())
submit_impl this = do
        commandListener <- (CustomTextBox.getCustomCommandListener this)
        Control.Monad.void (CommandListener.commandAction commandListener sUBMIT_COMMAND this)
        pure ()


