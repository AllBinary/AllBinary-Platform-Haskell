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
module InGameOptionsForm (module InGameOptionsForm, module CommandForm) where

import CommandForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initCommands, initCommands_super, initCommands_impl, dISPLAY, sAVE, dEFAULT)
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
import qualified Choice -- javax.microedition.lcdui.Choice
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified GameFeatureFormUtil -- org.allbinary.game.configuration.feature.GameFeatureFormUtil
import qualified InGameFeatureChoiceGroups -- org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data InGameOptionsForm = InGameOptionsForm
    { header_ :: JavaHeader
    , base :: CommandForm.CommandForm
    }

instance JavaNull InGameOptionsForm where
    javaNull = javaNullRecord "InGameOptionsForm"

instance JavaEquals InGameOptionsForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InGameOptionsForm where
    (==) = jrecordEquals

instance JavaObjectClass InGameOptionsForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE dISPLAY #-}
dISPLAY = unsafePerformIO ((Command.new_4 "Options In Game" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1))

{-# NOINLINE sAVE #-}
sAVE = unsafePerformIO ((Command.new_4 "Save" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1))

{-# NOINLINE dEFAULT #-}
dEFAULT = unsafePerformIO ((Command.new_4 "Default" (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Command.sCREEN) 1))

newRecord_ :: IO InGameOptionsForm
newRecord_ = do
    base <- CommandForm.newRecord_
    let header_ = base.header_
    let this = InGameOptionsForm header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    pure this

initFields_ :: InGameOptionsForm -> IO ()
initFields_ this = do
    pure ()

new_4 :: CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO InGameOptionsForm
new_4 commandListener title backgrounBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_4 this commandListener title backgrounBasicColor foregroundBasicColor
    pure this

init_4 :: InGameOptionsForm -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_4 this commandListener title backgrounBasicColor foregroundBasicColor = do
        CommandForm.init_4 this.base (commandListener) (title) (backgrounBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        gameFeatureFormUtil <- (GameFeatureFormUtil.getInstance)
        Control.Monad.void (GameFeatureFormUtil.addChoiceGroup gameFeatureFormUtil (javaCast this) (jio (InGameFeatureChoiceGroups.get ((jio (InGameFeatureChoiceGroups.getExclusiveInstance))))) (Choice.eXCLUSIVE))
        Control.Monad.void (GameFeatureFormUtil.addChoiceGroup gameFeatureFormUtil (javaCast this) (jio (InGameFeatureChoiceGroups.get ((jio (InGameFeatureChoiceGroups.getMultipleInstance))))) (Choice.mULTIPLE))
        Control.Monad.void (InGameOptionsForm.initCommands this commandListener)
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: InGameOptionsForm))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: InGameOptionsForm)) a1

initCommands_impl :: InGameOptionsForm -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (CommandForm.removeAllCommands this)
        Control.Monad.void (CommandForm.addCommand this (jget ((jio (GameCommandsFactory.getInstance))).cLOSE_AND_SHOW_GAME_CANVAS))
        Control.Monad.void (CommandForm.addCommand this (InGameOptionsForm.dEFAULT))
        Control.Monad.void (CommandForm.setCommandListener this cmdListener)
        pure ()


