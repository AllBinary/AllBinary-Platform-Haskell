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
-- package org.allbinary.game.configuration
module SaveGameForm (module SaveGameForm, module CommandForm) where

import CommandForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createForm, createForm_super, createForm_impl, getInstance, getInstance_super, getInstance_impl, initCommands, initCommands_super, initCommands_impl, fORM, meUtil)
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
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified TextField -- javax.microedition.lcdui.TextField
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper
import qualified MEUtil -- org.allbinary.logic.MEUtil

data SaveGameForm = SaveGameForm
    { header_ :: JavaHeader
    , base :: CommandForm.CommandForm
    , meUtil :: IORef (MEUtil.MEUtil)
    }

instance JavaNull SaveGameForm where
    javaNull = javaNullRecord "SaveGameForm"

instance JavaEquals SaveGameForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SaveGameForm where
    (==) = jrecordEquals

instance JavaObjectClass SaveGameForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE fORM #-}
fORM = unsafePerformIO ((CommandForm.getNullCommandForm) >>= newIORef)

newRecord_ :: IO SaveGameForm
newRecord_ = do
    base <- CommandForm.newRecord_
    let header_ = base.header_
    meUtil <- newIORef javaNull
    let this = SaveGameForm header_ base meUtil
    jregisterLevel header_ this
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    pure this

initFields_ :: SaveGameForm -> IO ()
initFields_ this = do
    jset this.meUtil =<< (MEUtil.getInstance)
    pure ()


-- throws Exception
createForm :: CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (CommandForm.CommandForm)
createForm commandListener title backgrounBasicColor foregroundBasicColor = do
        assignedValue <- (new_4 commandListener title backgrounBasicColor foregroundBasicColor)
        jset SaveGameForm.fORM (assignedValue)
        pure ((jget SaveGameForm.fORM))


getInstance :: IO (CommandForm.CommandForm)
getInstance = do
        pure ((jget SaveGameForm.fORM))

new_4 :: CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO SaveGameForm
new_4 commandListener title backgrounBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_4 this commandListener title backgrounBasicColor foregroundBasicColor
    pure this

init_4 :: SaveGameForm -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_4 this commandListener title backgrounBasicColor foregroundBasicColor = do
        CommandForm.init_4 this.base (commandListener) (title) (backgrounBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        let timeString = (javaToString (jio (ABSystemWrapper.currentTimeMillis ((jio (ABSystemWrapper.getInstance))))))
        Control.Monad.void (MEUtil.appendItem ((jget (this).meUtil)) (javaCast this) (javaCast (jio (TextField.new_4 "Name: " timeString 30 (TextField.aNY)))))
        Control.Monad.void (SaveGameForm.initCommands this commandListener)
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: SaveGameForm))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: SaveGameForm)) a1

initCommands_impl :: SaveGameForm -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        Control.Monad.void (CommandForm.removeAllCommands this)
        Control.Monad.void (CommandForm.addCommand this (jget (gameCommandsFactory).sAVE))
        Control.Monad.void (CommandForm.addCommand this (jget (gameCommandsFactory).cLOSE_AND_SHOW_GAME_CANVAS))
        Control.Monad.void (CommandForm.setCommandListener this cmdListener)
        pure ()


