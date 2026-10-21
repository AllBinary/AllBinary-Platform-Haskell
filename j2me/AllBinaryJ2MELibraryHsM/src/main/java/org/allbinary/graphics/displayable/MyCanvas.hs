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
-- package org.allbinary.graphics.displayable
module MyCanvas (module MyCanvas, module Canvas) where

import Canvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setFullScreenMode, setFullScreenMode_super, setFullScreenMode_impl, sizeChanged, sizeChanged_super, sizeChanged_impl, getCommandStack, getCommandStack_super, getCommandStack_impl, isCommand, isCommand_super, isCommand_impl, addCommand, addCommand_super, addCommand_impl, removeCommand, removeCommand_super, removeCommand_impl, removeAllCommands, removeAllCommands_super, removeAllCommands_impl, setCommandListener, setCommandListener_super, setCommandListener_impl, getCustomCommandListener, getCustomCommandListener_super, getCustomCommandListener_impl, isPaused, isPaused_super, isPaused_impl, removePauseCommand, removePauseCommand_super, removePauseCommand_impl, pause, pause_super, pause_impl, unPause, unPause_super, unPause_impl, process, process_super, process_impl, paint, paint_super, paint_impl, draw, draw_super, draw_impl, hasChild, hasChild_super, hasChild_impl, destroy, destroy_super, destroy_impl, setPaused, setPaused_super, setPaused_impl, keyPressedByDevice, keyPressedByDevice_super, keyPressedByDevice_impl, keyRepeatedByDevice, keyRepeatedByDevice_super, keyRepeatedByDevice_impl, keyReleasedByDevice, keyReleasedByDevice_super, keyReleasedByDevice_impl, pointerDragged, pointerDragged_super, pointerDragged_impl, pointerPressed, pointerPressed_super, pointerPressed_impl, pointerReleased, pointerReleased_super, pointerReleased_impl, nextSong, nextSong_super, nextSong_impl, logUtil, commonStrings, canvasStrings, stringUtil, displayInfo, name, childNameList, commandStack, commandListener, paused, touchME)
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
import qualified CanvasStrings -- same package or java.lang
import qualified DisplayInfoSingleton -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullCommandListener -- javax.microedition.lcdui.NullCommandListener
import qualified MyCommandInterface -- org.allbinary.graphics.displayable.command.MyCommandInterface
import qualified MyCommandsFactory -- org.allbinary.graphics.displayable.command.MyCommandsFactory
import qualified TouchJ2ME -- org.allbinary.input.TouchJ2ME
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABStack -- org.allbinary.util.ABStack
import qualified DisplayableInterface

-- implements DisplayableInterface
-- implements MyCommandInterface
data MyCanvas = MyCanvas
    { header_ :: JavaHeader
    , base :: Canvas.Canvas
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , canvasStrings :: IORef (CanvasStrings.CanvasStrings)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , displayInfo :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , name :: IORef (String)
    , childNameList :: IORef (BasicArrayList.BasicArrayList)
    , commandStack :: IORef (ABStack.ABStack)
    , commandListener :: IORef (CommandListener.CommandListener)
    , paused :: IORef (Bool)
    , touchME :: IORef (TouchJ2ME.TouchJ2ME)
    }

instance JavaNull MyCanvas where
    javaNull = javaNullRecord "MyCanvas"

instance JavaEquals MyCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyCanvas where
    (==) = jrecordEquals

instance JavaObjectClass MyCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MyCanvas
newRecord_ = do
    base <- Canvas.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    canvasStrings <- newIORef javaNull
    stringUtil <- newIORef javaNull
    displayInfo <- newIORef javaNull
    name <- newIORef ""
    childNameList <- newIORef javaNull
    commandStack <- newIORef javaNull
    commandListener <- newIORef javaNull
    paused <- newIORef False
    touchME <- newIORef javaNull
    let this = MyCanvas header_ base logUtil commonStrings canvasStrings stringUtil displayInfo name childNameList commandStack commandListener paused touchME
    jregisterLevel header_ this
    DisplayableInterface.registerInterface_ header_
    MyCommandInterface.registerInterface_ header_
    jregisterMethod header_ "setFullScreenMode" (\() -> setFullScreenMode_impl this)
    jregisterMethod header_ "sizeChanged" (\() -> sizeChanged_impl this)
    jregisterMethod header_ "getCommandStack" (\() -> getCommandStack_impl this)
    jregisterMethod header_ "isCommand" (\() -> isCommand_impl this)
    jregisterMethod header_ "addCommand" (\() -> addCommand_impl this)
    jregisterMethod header_ "removeCommand" (\() -> removeCommand_impl this)
    jregisterMethod header_ "removeAllCommands" (\() -> removeAllCommands_impl this)
    jregisterMethod header_ "setCommandListener" (\() -> setCommandListener_impl this)
    jregisterMethod header_ "getCustomCommandListener" (\() -> getCustomCommandListener_impl this)
    jregisterMethod header_ "isPaused" (\() -> isPaused_impl this)
    jregisterMethod header_ "removePauseCommand" (\() -> removePauseCommand_impl this)
    jregisterMethod header_ "pause" (\() -> pause_impl this)
    jregisterMethod header_ "unPause" (\() -> unPause_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    jregisterMethod header_ "hasChild" (\() -> hasChild_impl this)
    jregisterMethod header_ "destroy" (\() -> destroy_impl this)
    jregisterMethod header_ "setPaused" (\() -> setPaused_impl this)
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "keyRepeatedByDevice" (\() -> keyRepeatedByDevice_impl this)
    jregisterMethod header_ "keyReleasedByDevice" (\() -> keyReleasedByDevice_impl this)
    jregisterMethod header_ "pointerDragged" (\() -> pointerDragged_impl this)
    jregisterMethod header_ "pointerPressed" (\() -> pointerPressed_impl this)
    jregisterMethod header_ "pointerReleased" (\() -> pointerReleased_impl this)
    jregisterMethod header_ "nextSong" (\() -> nextSong_impl this)
    pure this

initFields_ :: MyCanvas -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.canvasStrings =<< (CanvasStrings.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.displayInfo =<< (DisplayInfoSingleton.getInstance)
    jset this.name (javaNull)
    jset this.childNameList (javaNull)
    jset this.commandStack (javaNull)
    jset this.commandListener ((javaCast NullCommandListener.nULL_COMMAND_LISTENER :: CommandListener.CommandListener))
    jset this.paused (False)
    jset this.touchME =<< (TouchJ2ME.new_)
    pure ()

new_2 :: String -> BasicArrayList.BasicArrayList -> IO MyCanvas
new_2 name childNameList = do
    this <- newRecord_
    init_2 this name childNameList
    pure this

init_2 :: MyCanvas -> String -> BasicArrayList.BasicArrayList -> IO ()
init_2 this name childNameList = do
        Canvas.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).cONSTRUCTOR) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (DisplayInfoSingleton.update ((jget (this).displayInfo)) this (jget ((jget (this).canvasStrings)).cONSTRUCTOR))
        jset (this).name (name)
        jset (this).childNameList (childNameList)
        assignedValue <- (StdUtil.createStack ((jio (StdUtil.getInstance))))
        jset (this).commandStack (assignedValue)
        pure ()


setFullScreenMode :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFullScreenMode object_ a1 = jmethod object_ "setFullScreenMode" (\() -> (setFullScreenMode_impl (javaCast object_ :: MyCanvas))) () a1

setFullScreenMode_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFullScreenMode_super object_ a1 = (setFullScreenMode_impl (javaCast object_ :: MyCanvas)) a1

setFullScreenMode_impl :: MyCanvas -> Bool -> IO (())
setFullScreenMode_impl this mode = do
        Control.Monad.void (Canvas.setFullScreenMode_super this.base mode)
        Control.Monad.void (DisplayInfoSingleton.update ((jget (this).displayInfo)) this (jget ((jget (this).canvasStrings)).sET_FULL_SCREEN_MODE))
        pure ()


sizeChanged :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
sizeChanged object_ a1 a2 = jmethod object_ "sizeChanged" (\() -> (sizeChanged_impl (javaCast object_ :: MyCanvas))) () a1 a2

sizeChanged_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
sizeChanged_super object_ a1 a2 = (sizeChanged_impl (javaCast object_ :: MyCanvas)) a1 a2

sizeChanged_impl :: MyCanvas -> Int -> Int -> IO (())
sizeChanged_impl this w h = do
        Control.Monad.void (DisplayInfoSingleton.update ((jget (this).displayInfo)) this (jget ((jget (this).canvasStrings)).sIZE_CHANGED))
        pure ()


getCommandStack :: (JavaObjectClass this_) => this_ -> IO (ABStack.ABStack)
getCommandStack object_ = jmethod object_ "getCommandStack" (\() -> (getCommandStack_impl (javaCast object_ :: MyCanvas))) ()

getCommandStack_super :: (JavaObjectClass this_) => this_ -> IO (ABStack.ABStack)
getCommandStack_super object_ = (getCommandStack_impl (javaCast object_ :: MyCanvas))

getCommandStack_impl :: MyCanvas -> IO (ABStack.ABStack)
getCommandStack_impl this = do
        pure ((jget (this).commandStack))


isCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Bool)
isCommand object_ a1 = jmethod object_ "isCommand" (\() -> (isCommand_impl (javaCast object_ :: MyCanvas))) () a1

isCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Bool)
isCommand_super object_ a1 = (isCommand_impl (javaCast object_ :: MyCanvas)) a1

isCommand_impl :: MyCanvas -> Command.Command -> IO (Bool)
isCommand_impl this command = do
        (ABStack.contains ((jget (this).commandStack)) command)


addCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand object_ a1 = jmethod object_ "addCommand" (\() -> (addCommand_impl (javaCast object_ :: MyCanvas))) () a1

addCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand_super object_ a1 = (addCommand_impl (javaCast object_ :: MyCanvas)) a1

addCommand_impl :: MyCanvas -> Command.Command -> IO (())
addCommand_impl this command = do
        when (Prelude.not (jio (ABStack.contains ((jget (this).commandStack)) command))) $ do
            Control.Monad.void (ABStack.push ((jget (this).commandStack)) command)
            Control.Monad.void (Canvas.addCommand_super this.base command)
        pure ()


removeCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
removeCommand object_ a1 = jmethod object_ "removeCommand" (\() -> (removeCommand_impl (javaCast object_ :: MyCanvas))) () a1

removeCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
removeCommand_super object_ a1 = (removeCommand_impl (javaCast object_ :: MyCanvas)) a1

removeCommand_impl :: MyCanvas -> Command.Command -> IO (())
removeCommand_impl this command = do
        Control.Monad.void (ABStack.removeElement ((jget (this).commandStack)) command)
        Control.Monad.void (Canvas.removeCommand_super this.base command)
        pure ()


removeAllCommands :: (JavaObjectClass this_) => this_ -> IO (())
removeAllCommands object_ = jmethod object_ "removeAllCommands" (\() -> (removeAllCommands_impl (javaCast object_ :: MyCanvas))) ()

removeAllCommands_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllCommands_super object_ = (removeAllCommands_impl (javaCast object_ :: MyCanvas))

removeAllCommands_impl :: MyCanvas -> IO (())
removeAllCommands_impl this = do
        size <- (ABStack.size ((jget (this).commandStack)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (Canvas.removeCommand_super this.base (javaCast (jio (ABStack.pop ((jget (this).commandStack)))) :: Command.Command))
        pure ()


setCommandListener :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
setCommandListener object_ a1 = jmethod object_ "setCommandListener" (\() -> (setCommandListener_impl (javaCast object_ :: MyCanvas))) () a1

setCommandListener_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
setCommandListener_super object_ a1 = (setCommandListener_impl (javaCast object_ :: MyCanvas)) a1

setCommandListener_impl :: MyCanvas -> CommandListener.CommandListener -> IO (())
setCommandListener_impl this l = do
        Control.Monad.void (Canvas.setCommandListener_super this.base l)
        jset (this).commandListener (l)
        pure ()


getCustomCommandListener :: (JavaObjectClass this_) => this_ -> IO (CommandListener.CommandListener)
getCustomCommandListener object_ = jmethod object_ "getCustomCommandListener" (\() -> (getCustomCommandListener_impl (javaCast object_ :: MyCanvas))) ()

getCustomCommandListener_super :: (JavaObjectClass this_) => this_ -> IO (CommandListener.CommandListener)
getCustomCommandListener_super object_ = (getCustomCommandListener_impl (javaCast object_ :: MyCanvas))

getCustomCommandListener_impl :: MyCanvas -> IO (CommandListener.CommandListener)
getCustomCommandListener_impl this = do
        pure ((jget (this).commandListener))


isPaused :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPaused object_ = jmethod object_ "isPaused" (\() -> (isPaused_impl (javaCast object_ :: MyCanvas))) ()

isPaused_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPaused_super object_ = (isPaused_impl (javaCast object_ :: MyCanvas))

isPaused_impl :: MyCanvas -> IO (Bool)
isPaused_impl this = do
        pure ((jget (this).paused))


removePauseCommand :: (JavaObjectClass this_) => this_ -> IO (())
removePauseCommand object_ = jmethod object_ "removePauseCommand" (\() -> (removePauseCommand_impl (javaCast object_ :: MyCanvas))) ()

removePauseCommand_super :: (JavaObjectClass this_) => this_ -> IO (())
removePauseCommand_super object_ = (removePauseCommand_impl (javaCast object_ :: MyCanvas))

removePauseCommand_impl :: MyCanvas -> IO (())
removePauseCommand_impl this = do
        Control.Monad.void (MyCanvas.removeCommand this (jget ((jio (MyCommandsFactory.getInstance))).pAUSE_COMMAND))
        pure ()


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: MyCanvas))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: MyCanvas))

pause_impl :: MyCanvas -> IO (())
pause_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).canvasStrings)).pAUSE))
        Control.Monad.void (MyCanvas.removePauseCommand this)
        Control.Monad.void (MyCanvas.addCommand this (jget ((jio (MyCommandsFactory.getInstance))).rESUME_COMMAND))
        Control.Monad.void (MyCanvas.setPaused this True)
        pure ()


unPause :: (JavaObjectClass this_) => this_ -> IO (())
unPause object_ = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: MyCanvas))) ()

unPause_super :: (JavaObjectClass this_) => this_ -> IO (())
unPause_super object_ = (unPause_impl (javaCast object_ :: MyCanvas))

unPause_impl :: MyCanvas -> IO (())
unPause_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).canvasStrings)).uN_PAUSE))
        Control.Monad.void (MyCanvas.removeCommand this (jget ((jio (MyCommandsFactory.getInstance))).rESUME_COMMAND))
        Control.Monad.void (MyCanvas.addCommand this (jget ((jio (MyCommandsFactory.getInstance))).pAUSE_COMMAND))
        Control.Monad.void (MyCanvas.setPaused this False)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MyCanvas))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: MyCanvas))

process_impl :: MyCanvas -> IO (())
process_impl this = do
        Control.Monad.void (DisplayInfoSingleton.process ((jget (this).displayInfo)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: MyCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: MyCanvas)) a1

paint_impl :: MyCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


draw :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
draw object_ a1 = jmethod object_ "draw" (\() -> (draw_impl (javaCast object_ :: MyCanvas))) () a1

draw_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
draw_super object_ a1 = (draw_impl (javaCast object_ :: MyCanvas)) a1

draw_impl :: MyCanvas -> Graphics.Graphics -> IO (())
draw_impl this graphics = do
        pure ()


hasChild :: (JavaObjectClass this_) => this_ -> MyCanvas -> IO (Bool)
hasChild object_ a1 = jmethod object_ "hasChild" (\() -> (hasChild_impl (javaCast object_ :: MyCanvas))) () a1

hasChild_super :: (JavaObjectClass this_) => this_ -> MyCanvas -> IO (Bool)
hasChild_super object_ a1 = (hasChild_impl (javaCast object_ :: MyCanvas)) a1

hasChild_impl :: MyCanvas -> MyCanvas -> IO (Bool)
hasChild_impl this displayable = do
        (BasicArrayList.contains ((jget (this).childNameList)) (jget (displayable).name))


destroy :: (JavaObjectClass this_) => this_ -> IO (())
destroy object_ = jmethod object_ "destroy" (\() -> (destroy_impl (javaCast object_ :: MyCanvas))) ()

destroy_super :: (JavaObjectClass this_) => this_ -> IO (())
destroy_super object_ = (destroy_impl (javaCast object_ :: MyCanvas))

destroy_impl :: MyCanvas -> IO (())
destroy_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Destroyed MyCanvas" this "destroy")
        pure ()


setPaused :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPaused object_ a1 = jmethod object_ "setPaused" (\() -> (setPaused_impl (javaCast object_ :: MyCanvas))) () a1

setPaused_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPaused_super object_ a1 = (setPaused_impl (javaCast object_ :: MyCanvas)) a1

setPaused_impl :: MyCanvas -> Bool -> IO (())
setPaused_impl this isPaused = do
        jset (this).paused (isPaused)
        pure ()


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: MyCanvas))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: MyCanvas)) a1 a2

keyPressedByDevice_impl :: MyCanvas -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        pure ()


keyRepeatedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyRepeatedByDevice object_ a1 a2 = jmethod object_ "keyRepeatedByDevice" (\() -> (keyRepeatedByDevice_impl (javaCast object_ :: MyCanvas))) () a1 a2

keyRepeatedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyRepeatedByDevice_super object_ a1 a2 = (keyRepeatedByDevice_impl (javaCast object_ :: MyCanvas)) a1 a2

keyRepeatedByDevice_impl :: MyCanvas -> Int -> Int -> IO (())
keyRepeatedByDevice_impl this keyCode deviceId = do
        pure ()


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: MyCanvas))) () a1 a2

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 = (keyReleasedByDevice_impl (javaCast object_ :: MyCanvas)) a1 a2

keyReleasedByDevice_impl :: MyCanvas -> Int -> Int -> IO (())
keyReleasedByDevice_impl this keyCode deviceId = do
        pure ()


pointerDragged :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerDragged object_ a1 a2 = jmethod object_ "pointerDragged" (\() -> (pointerDragged_impl (javaCast object_ :: MyCanvas))) () a1 a2

pointerDragged_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerDragged_super object_ a1 a2 = (pointerDragged_impl (javaCast object_ :: MyCanvas)) a1 a2

pointerDragged_impl :: MyCanvas -> Int -> Int -> IO (())
pointerDragged_impl this x y = do
        Control.Monad.void (TouchJ2ME.pointerDragged ((jget (this).touchME)) x y)
        pure ()


pointerPressed :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerPressed object_ a1 a2 = jmethod object_ "pointerPressed" (\() -> (pointerPressed_impl (javaCast object_ :: MyCanvas))) () a1 a2

pointerPressed_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerPressed_super object_ a1 a2 = (pointerPressed_impl (javaCast object_ :: MyCanvas)) a1 a2

pointerPressed_impl :: MyCanvas -> Int -> Int -> IO (())
pointerPressed_impl this x y = do
        Control.Monad.void (TouchJ2ME.pointerPressed ((jget (this).touchME)) x y)
        pure ()


pointerReleased :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerReleased object_ a1 a2 = jmethod object_ "pointerReleased" (\() -> (pointerReleased_impl (javaCast object_ :: MyCanvas))) () a1 a2

pointerReleased_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerReleased_super object_ a1 a2 = (pointerReleased_impl (javaCast object_ :: MyCanvas)) a1 a2

pointerReleased_impl :: MyCanvas -> Int -> Int -> IO (())
pointerReleased_impl this x y = do
        Control.Monad.void (TouchJ2ME.pointerReleased ((jget (this).touchME)) x y)
        pure ()


nextSong :: (JavaObjectClass this_) => this_ -> Sound.Sound -> Int -> Int -> IO (())
nextSong object_ a1 a2 a3 = jmethod object_ "nextSong" (\() -> (nextSong_impl (javaCast object_ :: MyCanvas))) () a1 a2 a3

nextSong_super :: (JavaObjectClass this_) => this_ -> Sound.Sound -> Int -> Int -> IO (())
nextSong_super object_ a1 a2 a3 = (nextSong_impl (javaCast object_ :: MyCanvas)) a1 a2 a3

nextSong_impl :: MyCanvas -> Sound.Sound -> Int -> Int -> IO (())
nextSong_impl this nextSongSound leftVolume rightVolume = do
        pure ()


