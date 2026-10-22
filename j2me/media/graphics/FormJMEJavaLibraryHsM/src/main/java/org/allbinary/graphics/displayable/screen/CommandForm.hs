{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
-- package org.allbinary.graphics.displayable.screen
module CommandForm (module CommandForm, module Form) where

import Form hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNullCommandForm, getNullCommandForm_super, getNullCommandForm_impl, initCommands, initCommands_super, initCommands_impl, open, open_super, open_impl, close, close_super, close_impl, update, update_super, update_impl, getSourceId, getSourceId_super, getSourceId_impl, addCommand, addCommand_super, addCommand_impl, removeAllCommands, removeAllCommands_super, removeAllCommands_impl, nULL_COMMAND_FORM, logUtil, commonStrings, repaintProcessor, commandStack)
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
import qualified ScreenRepaintProcessorFactory -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Form -- javax.microedition.lcdui.Form
import qualified NullCommandListener -- javax.microedition.lcdui.NullCommandListener
import qualified Processor -- org.allbinary.canvas.Processor
import qualified MenuListener -- org.allbinary.game.displayable.canvas.MenuListener
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified MyCommandInterface -- org.allbinary.graphics.displayable.command.MyCommandInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABStack -- org.allbinary.util.ABStack

-- implements MyCommandInterface
-- implements MenuListener
data CommandForm = CommandForm
    { header_ :: JavaHeader
    , base :: Form.Form
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , repaintProcessor :: IORef (Processor.Processor)
    , commandStack :: IORef (ABStack.ABStack)
    }

instance JavaNull CommandForm where
    javaNull = javaNullRecord "CommandForm"

instance JavaEquals CommandForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandForm where
    (==) = jrecordEquals

instance JavaObjectClass CommandForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_COMMAND_FORM #-}
nULL_COMMAND_FORM = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO CommandForm
newRecord_ = do
    base <- Form.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    repaintProcessor <- newIORef javaNull
    commandStack <- newIORef javaNull
    let this = CommandForm header_ base logUtil commonStrings repaintProcessor commandStack
    jregisterLevel header_ this
    MyCommandInterface.registerInterface_ header_
    MenuListener.registerInterface_ header_
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    jregisterMethod header_ "addCommand" (\() -> addCommand_impl this)
    jregisterMethod header_ "removeAllCommands" (\() -> removeAllCommands_impl this)
    pure this

initFields_ :: CommandForm -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.repaintProcessor =<< (ScreenRepaintProcessorFactory.create ((jio (ScreenRepaintProcessorFactory.getInstance))) (javaCast this))
    jset this.commandStack (javaNull)
    pure ()


getNullCommandForm :: IO (CommandForm)
getNullCommandForm = do
        when ((jget CommandForm.nULL_COMMAND_FORM) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_4 (NullCommandListener.nULL_COMMAND_LISTENER) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
            jset CommandForm.nULL_COMMAND_FORM (assignedValue)
        pure ((javaCast (jget CommandForm.nULL_COMMAND_FORM) :: CommandForm))

new_4 :: CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO CommandForm
new_4 commandListener formTitle backgrounBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_4 this commandListener formTitle backgrounBasicColor foregroundBasicColor
    pure this

init_4 :: CommandForm -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_4 this commandListener formTitle backgrounBasicColor foregroundBasicColor = do
        Form.init_1 this.base (formTitle)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (StdUtil.createStack ((jio (StdUtil.getInstance))))
        jset (this).commandStack (assignedValue)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            ) $ do
            Control.Monad.void (Processor.process ((jget (this).repaintProcessor)))
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: CommandForm))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: CommandForm)) a1

initCommands_impl :: CommandForm -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: CommandForm))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: CommandForm))

open_impl :: CommandForm -> IO (())
open_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "open")
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: CommandForm))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: CommandForm))

close_impl :: CommandForm -> IO (())
close_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cLOSE))
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: CommandForm))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: CommandForm))

update_impl :: CommandForm -> IO (())
update_impl this = do
        Control.Monad.void (Processor.process ((jget (this).repaintProcessor)))
        pure ()


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: CommandForm))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: CommandForm))

getSourceId_impl :: CommandForm -> IO (Int)
getSourceId_impl this = do
        pure (0)


addCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand object_ a1 = jmethod object_ "addCommand" (\() -> (addCommand_impl (javaCast object_ :: CommandForm))) () a1

addCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand_super object_ a1 = (addCommand_impl (javaCast object_ :: CommandForm)) a1

addCommand_impl :: CommandForm -> Command.Command -> IO (())
addCommand_impl this command = do
        Control.Monad.void (ABStack.push ((jget (this).commandStack)) command)
        Control.Monad.void (Form.addCommand_super this.base command)
        pure ()


removeAllCommands :: (JavaObjectClass this_) => this_ -> IO (())
removeAllCommands object_ = jmethod object_ "removeAllCommands" (\() -> (removeAllCommands_impl (javaCast object_ :: CommandForm))) ()

removeAllCommands_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllCommands_super object_ = (removeAllCommands_impl (javaCast object_ :: CommandForm))

removeAllCommands_impl :: CommandForm -> IO (())
removeAllCommands_impl this = do
        size <- (ABStack.size ((jget (this).commandStack)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (Form.removeCommand_super this.base (javaCast (jio (ABStack.pop ((jget (this).commandStack)))) :: Command.Command))
        pure ()


