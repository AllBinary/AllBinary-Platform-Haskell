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
-- package org.allbinary.game.score.displayable
module HighScoreTextBox (module HighScoreTextBox, module CustomTextBox) where

import CustomTextBox hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initCommands, initCommands_super, initCommands_impl, open, open_super, open_impl, close, close_super, close_impl, update, update_super, update_impl, paint, paint_super, paint_impl, saveHighScore, saveHighScore_super, saveHighScore_impl, submit, submit_super, submit_impl, virtualKeyboardEventHandler, highScoreUtil, pleaseWait, paintable, submitted)
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
import qualified HighScoreUtil -- same package or java.lang
import qualified RepaintBehavior -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified TextField -- javax.microedition.lcdui.TextField
import qualified PostGameCommandFactory -- org.allbinary.PostGameCommandFactory
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified HighScore -- org.allbinary.game.score.HighScore
import qualified HighScoresHelperBaseInterface -- org.allbinary.game.score.HighScoresHelperBaseInterface
import qualified HighScoresFactoryInterface -- org.allbinary.game.score.HighScoresFactoryInterface
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified CustomTextBox -- org.allbinary.graphics.form.item.CustomTextBox
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified SimpleTextPaintable -- org.allbinary.graphics.paint.SimpleTextPaintable
import qualified VirtualKeyboardEventHandler -- org.allbinary.input.event.VirtualKeyboardEventHandler
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified InApplicationPurchaseFactory -- org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory

data HighScoreTextBox = HighScoreTextBox
    { header_ :: JavaHeader
    , base :: CustomTextBox.CustomTextBox
    , virtualKeyboardEventHandler :: IORef (VirtualKeyboardEventHandler.VirtualKeyboardEventHandler)
    , highScoreUtil :: IORef (HighScoreUtil.HighScoreUtil)
    , pleaseWait :: IORef (Paintable.Paintable)
    , paintable :: IORef (Paintable.Paintable)
    , submitted :: IORef (Bool)
    }

instance JavaNull HighScoreTextBox where
    javaNull = javaNullRecord "HighScoreTextBox"

instance JavaEquals HighScoreTextBox where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoreTextBox where
    (==) = jrecordEquals

instance JavaObjectClass HighScoreTextBox where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScoreTextBox
newRecord_ = do
    base <- CustomTextBox.newRecord_
    let header_ = base.header_
    virtualKeyboardEventHandler <- newIORef javaNull
    highScoreUtil <- newIORef javaNull
    pleaseWait <- newIORef javaNull
    paintable <- newIORef javaNull
    submitted <- newIORef False
    let this = HighScoreTextBox header_ base virtualKeyboardEventHandler highScoreUtil pleaseWait paintable submitted
    jregisterLevel header_ this
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "saveHighScore" (\() -> saveHighScore_impl this)
    jregisterMethod header_ "submit" (\() -> submit_impl this)
    pure this

initFields_ :: HighScoreTextBox -> IO ()
initFields_ this = do
    jset this.virtualKeyboardEventHandler =<< (VirtualKeyboardEventHandler.getInstance)
    jset this.highScoreUtil (javaNull)
    jset this.pleaseWait =<< (fmap (\value_ -> javaCast value_ :: Paintable.Paintable) (SimpleTextPaintable.new_2 (jget ((jget (this).base.base.base.commonStrings)).pLEASE_WAIT) (jget ((jio (BasicColorFactory.getInstance))).wHITE)))
    jset this.paintable =<< (NullPaintable.getInstance)
    jset this.submitted (False)
    pure ()

new_9 :: HighScoresFactoryInterface.HighScoresFactoryInterface -> HighScoresHelperBaseInterface.HighScoresHelperBaseInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> CommandListener.CommandListener -> String -> HighScore.HighScore -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO HighScoreTextBox
new_9 highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore backgrounBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_9 this highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore backgrounBasicColor foregroundBasicColor
    pure this

init_9 :: HighScoreTextBox -> HighScoresFactoryInterface.HighScoresFactoryInterface -> HighScoresHelperBaseInterface.HighScoresHelperBaseInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> CommandListener.CommandListener -> String -> HighScore.HighScore -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_9 this highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore backgrounBasicColor foregroundBasicColor = do
        CustomTextBox.init_8 this.base (cmdListener) ("New High Score Enter Name:") (name) (12) (TextField.aNY) (jio (Font.getDefaultFont)) (backgrounBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (HighScoreUtil.new_7 highScoresFactoryInterface highScoresHelper abeClientInformation gameInfo cmdListener name highScore)
        jset (this).highScoreUtil (assignedValue)
        operatingSystemInterface <- (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance))))
        when (jio (GenericOperatingSystem.isOverScan operatingSystemInterface)) $ do
            username <- (InApplicationPurchaseFactory.getUserName ((jio (InApplicationPurchaseFactory.getInstance))))
            if (username /= javaNull) then do
                Control.Monad.void (ABTextFieldItem.setString ((jio (CustomTextBox.getTextFieldItem this))) username)
            else do
                Control.Monad.void (ABTextFieldItem.setString ((jio (CustomTextBox.getTextFieldItem this))) "NoGamerInfo")
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: HighScoreTextBox))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: HighScoreTextBox)) a1

initCommands_impl :: HighScoreTextBox -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (CustomTextBox.removeAllCommands this)
        Control.Monad.void (PostGameCommandFactory.addCommands ((jio (PostGameCommandFactory.getInstance))) this)
        Control.Monad.void (CustomTextBox.addCommand this (HighScoreUtil.sUBMIT_TEXTBOX_COMMAND))
        Control.Monad.void (CustomTextBox.setCommandListener this cmdListener)
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: HighScoreTextBox))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: HighScoreTextBox))

open_impl :: HighScoreTextBox -> IO (())
open_impl this = do
        Control.Monad.void (VirtualKeyboardEventHandler.open ((jget (this).virtualKeyboardEventHandler)))
        assignedValue <- (NullPaintable.getInstance)
        jset (this).paintable (assignedValue)
        Control.Monad.void (CustomTextBox.open_super this.base)
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: HighScoreTextBox))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: HighScoreTextBox))

close_impl :: HighScoreTextBox -> IO (())
close_impl this = do
        Control.Monad.void (VirtualKeyboardEventHandler.close ((jget (this).virtualKeyboardEventHandler)))
        jset (this).paintable ((jget (this).pleaseWait))
        Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).base.base.repaintBehavior)) this)
        Control.Monad.void (CustomTextBox.close_super this.base)
        Control.Monad.void (CustomTextBox.removeCommand this (HighScoreUtil.sUBMIT_TEXTBOX_COMMAND))
        Control.Monad.void (HighScoreTextBox.update this)
        if (jget (this).submitted) then do
            Control.Monad.void (HighScoreUtil.saveHighScore ((jget (this).highScoreUtil)))
        else do
            pure ()
        assignedValue <- (NullPaintable.getInstance)
        jset (this).paintable (assignedValue)
        Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).base.base.repaintBehavior)) this)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: HighScoreTextBox))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: HighScoreTextBox))

update_impl :: HighScoreTextBox -> IO (())
update_impl this = do
        name <- (ABTextFieldItem.getString ((jio (CustomTextBox.getTextFieldItem this))))
        Control.Monad.void (HighScoreUtil.update ((jget (this).highScoreUtil)) name)
        Control.Monad.void (CustomTextBox.update_super this.base)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HighScoreTextBox))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HighScoreTextBox)) a1

paint_impl :: HighScoreTextBox -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (CustomTextBox.paint_super this.base graphics)
        Control.Monad.void (Paintable.paint ((jget (this).paintable)) graphics)
        pure ()


saveHighScore :: (JavaObjectClass this_) => this_ -> IO (())
saveHighScore object_ = jmethod object_ "saveHighScore" (\() -> (saveHighScore_impl (javaCast object_ :: HighScoreTextBox))) ()

saveHighScore_super :: (JavaObjectClass this_) => this_ -> IO (())
saveHighScore_super object_ = (saveHighScore_impl (javaCast object_ :: HighScoreTextBox))

saveHighScore_impl :: HighScoreTextBox -> IO (())
saveHighScore_impl this = do
        Control.Monad.void (HighScoreUtil.saveHighScore ((jget (this).highScoreUtil)))
        pure ()


submit :: (JavaObjectClass this_) => this_ -> IO (())
submit object_ = jmethod object_ "submit" (\() -> (submit_impl (javaCast object_ :: HighScoreTextBox))) ()

submit_super :: (JavaObjectClass this_) => this_ -> IO (())
submit_super object_ = (submit_impl (javaCast object_ :: HighScoreTextBox))

submit_impl :: HighScoreTextBox -> IO (())
submit_impl this = do
        Control.Monad.void (HighScoreUtil.submit ((jget (this).highScoreUtil)) this)
        pure ()


