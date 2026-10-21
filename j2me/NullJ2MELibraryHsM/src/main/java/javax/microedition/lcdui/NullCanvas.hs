{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package javax.microedition.lcdui
module NullCanvas (module NullCanvas, module Canvas) where

import Canvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setFullScreenMode, setFullScreenMode_super, setFullScreenMode_impl, sizeChanged, sizeChanged_super, sizeChanged_impl, getCommandStack, getCommandStack_super, getCommandStack_impl, isCommand, isCommand_super, isCommand_impl, addCommand, addCommand_super, addCommand_impl, removeCommand, removeCommand_super, removeCommand_impl, removeAllCommands, removeAllCommands_super, removeAllCommands_impl, setCommandListener, setCommandListener_super, setCommandListener_impl, getCustomCommandListener, getCustomCommandListener_super, getCustomCommandListener_impl, isPaused, isPaused_super, isPaused_impl, removePauseCommand, removePauseCommand_super, removePauseCommand_impl, pause, pause_super, pause_impl, unPause, unPause_super, unPause_impl, process, process_super, process_impl, paint, paint_super, paint_impl, destroy, destroy_super, destroy_impl, setPaused, setPaused_super, setPaused_impl, pointerDragged, pointerDragged_super, pointerDragged_impl, pointerPressed, pointerPressed_super, pointerPressed_impl, pointerReleased, pointerReleased_super, pointerReleased_impl, nULL_CANVAS)
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
import qualified Command -- same package or java.lang
import qualified CommandListener -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified Stack -- java.util.Stack
import qualified Canvas

data NullCanvas = NullCanvas
    { header_ :: JavaHeader
    , base :: Canvas.Canvas
    }

instance JavaNull NullCanvas where
    javaNull = javaNullRecord "NullCanvas"

instance JavaEquals NullCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullCanvas where
    (==) = jrecordEquals

instance JavaObjectClass NullCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_CANVAS #-}
nULL_CANVAS = unsafePerformIO ((new_))

newRecord_ :: IO NullCanvas
newRecord_ = do
    base <- Canvas.newRecord_
    let header_ = base.header_
    let this = NullCanvas header_ base
    jregisterLevel header_ this
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
    jregisterMethod header_ "destroy" (\() -> destroy_impl this)
    jregisterMethod header_ "setPaused" (\() -> setPaused_impl this)
    jregisterMethod header_ "pointerDragged" (\() -> pointerDragged_impl this)
    jregisterMethod header_ "pointerPressed" (\() -> pointerPressed_impl this)
    jregisterMethod header_ "pointerReleased" (\() -> pointerReleased_impl this)
    pure this

initFields_ :: NullCanvas -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullCanvas
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullCanvas -> IO ()
init_ this = do
        Canvas.init_ this.base
        initFields_ this
        pure ()
        pure ()


setFullScreenMode :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFullScreenMode object_ a1 = jmethod object_ "setFullScreenMode" (\() -> (setFullScreenMode_impl (javaCast object_ :: NullCanvas))) () a1

setFullScreenMode_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFullScreenMode_super object_ a1 = (setFullScreenMode_impl (javaCast object_ :: NullCanvas)) a1

setFullScreenMode_impl :: NullCanvas -> Bool -> IO (())
setFullScreenMode_impl this mode = do
        pure ()


sizeChanged :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
sizeChanged object_ a1 a2 = jmethod object_ "sizeChanged" (\() -> (sizeChanged_impl (javaCast object_ :: NullCanvas))) () a1 a2

sizeChanged_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
sizeChanged_super object_ a1 a2 = (sizeChanged_impl (javaCast object_ :: NullCanvas)) a1 a2

sizeChanged_impl :: NullCanvas -> Int -> Int -> IO (())
sizeChanged_impl this w h = do
        pure ()


getCommandStack :: (JavaObjectClass this_) => this_ -> IO (Stack.Stack)
getCommandStack object_ = jmethod object_ "getCommandStack" (\() -> (getCommandStack_impl (javaCast object_ :: NullCanvas))) ()

getCommandStack_super :: (JavaObjectClass this_) => this_ -> IO (Stack.Stack)
getCommandStack_super object_ = (getCommandStack_impl (javaCast object_ :: NullCanvas))

getCommandStack_impl :: NullCanvas -> IO (Stack.Stack)
getCommandStack_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Bool)
isCommand object_ a1 = jmethod object_ "isCommand" (\() -> (isCommand_impl (javaCast object_ :: NullCanvas))) () a1

isCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (Bool)
isCommand_super object_ a1 = (isCommand_impl (javaCast object_ :: NullCanvas)) a1

isCommand_impl :: NullCanvas -> Command.Command -> IO (Bool)
isCommand_impl this command = do
        javaThrow ((JavaException "RuntimeException" ""))


addCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand object_ a1 = jmethod object_ "addCommand" (\() -> (addCommand_impl (javaCast object_ :: NullCanvas))) () a1

addCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand_super object_ a1 = (addCommand_impl (javaCast object_ :: NullCanvas)) a1

addCommand_impl :: NullCanvas -> Command.Command -> IO (())
addCommand_impl this command = do
        pure ()


removeCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
removeCommand object_ a1 = jmethod object_ "removeCommand" (\() -> (removeCommand_impl (javaCast object_ :: NullCanvas))) () a1

removeCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
removeCommand_super object_ a1 = (removeCommand_impl (javaCast object_ :: NullCanvas)) a1

removeCommand_impl :: NullCanvas -> Command.Command -> IO (())
removeCommand_impl this command = do
        pure ()


removeAllCommands :: (JavaObjectClass this_) => this_ -> IO (())
removeAllCommands object_ = jmethod object_ "removeAllCommands" (\() -> (removeAllCommands_impl (javaCast object_ :: NullCanvas))) ()

removeAllCommands_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllCommands_super object_ = (removeAllCommands_impl (javaCast object_ :: NullCanvas))

removeAllCommands_impl :: NullCanvas -> IO (())
removeAllCommands_impl this = do
        pure ()


setCommandListener :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
setCommandListener object_ a1 = jmethod object_ "setCommandListener" (\() -> (setCommandListener_impl (javaCast object_ :: NullCanvas))) () a1

setCommandListener_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
setCommandListener_super object_ a1 = (setCommandListener_impl (javaCast object_ :: NullCanvas)) a1

setCommandListener_impl :: NullCanvas -> CommandListener.CommandListener -> IO (())
setCommandListener_impl this l = do
        pure ()


getCustomCommandListener :: (JavaObjectClass this_) => this_ -> IO (CommandListener.CommandListener)
getCustomCommandListener object_ = jmethod object_ "getCustomCommandListener" (\() -> (getCustomCommandListener_impl (javaCast object_ :: NullCanvas))) ()

getCustomCommandListener_super :: (JavaObjectClass this_) => this_ -> IO (CommandListener.CommandListener)
getCustomCommandListener_super object_ = (getCustomCommandListener_impl (javaCast object_ :: NullCanvas))

getCustomCommandListener_impl :: NullCanvas -> IO (CommandListener.CommandListener)
getCustomCommandListener_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isPaused :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPaused object_ = jmethod object_ "isPaused" (\() -> (isPaused_impl (javaCast object_ :: NullCanvas))) ()

isPaused_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPaused_super object_ = (isPaused_impl (javaCast object_ :: NullCanvas))

isPaused_impl :: NullCanvas -> IO (Bool)
isPaused_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


removePauseCommand :: (JavaObjectClass this_) => this_ -> IO (())
removePauseCommand object_ = jmethod object_ "removePauseCommand" (\() -> (removePauseCommand_impl (javaCast object_ :: NullCanvas))) ()

removePauseCommand_super :: (JavaObjectClass this_) => this_ -> IO (())
removePauseCommand_super object_ = (removePauseCommand_impl (javaCast object_ :: NullCanvas))

removePauseCommand_impl :: NullCanvas -> IO (())
removePauseCommand_impl this = do
        pure ()


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: NullCanvas))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: NullCanvas))

pause_impl :: NullCanvas -> IO (())
pause_impl this = do
        pure ()


unPause :: (JavaObjectClass this_) => this_ -> IO (())
unPause object_ = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: NullCanvas))) ()

unPause_super :: (JavaObjectClass this_) => this_ -> IO (())
unPause_super object_ = (unPause_impl (javaCast object_ :: NullCanvas))

unPause_impl :: NullCanvas -> IO (())
unPause_impl this = do
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: NullCanvas))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: NullCanvas))

process_impl :: NullCanvas -> IO (())
process_impl this = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: NullCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: NullCanvas)) a1

paint_impl :: NullCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


destroy :: (JavaObjectClass this_) => this_ -> IO (())
destroy object_ = jmethod object_ "destroy" (\() -> (destroy_impl (javaCast object_ :: NullCanvas))) ()

destroy_super :: (JavaObjectClass this_) => this_ -> IO (())
destroy_super object_ = (destroy_impl (javaCast object_ :: NullCanvas))

destroy_impl :: NullCanvas -> IO (())
destroy_impl this = do
        pure ()


setPaused :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPaused object_ a1 = jmethod object_ "setPaused" (\() -> (setPaused_impl (javaCast object_ :: NullCanvas))) () a1

setPaused_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPaused_super object_ a1 = (setPaused_impl (javaCast object_ :: NullCanvas)) a1

setPaused_impl :: NullCanvas -> Bool -> IO (())
setPaused_impl this isPaused = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


pointerDragged :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerDragged object_ a1 a2 = jmethod object_ "pointerDragged" (\() -> (pointerDragged_impl (javaCast object_ :: NullCanvas))) () a1 a2

pointerDragged_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerDragged_super object_ a1 a2 = (pointerDragged_impl (javaCast object_ :: NullCanvas)) a1 a2

pointerDragged_impl :: NullCanvas -> Int -> Int -> IO (())
pointerDragged_impl this x y = do
        pure ()


pointerPressed :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerPressed object_ a1 a2 = jmethod object_ "pointerPressed" (\() -> (pointerPressed_impl (javaCast object_ :: NullCanvas))) () a1 a2

pointerPressed_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerPressed_super object_ a1 a2 = (pointerPressed_impl (javaCast object_ :: NullCanvas)) a1 a2

pointerPressed_impl :: NullCanvas -> Int -> Int -> IO (())
pointerPressed_impl this x y = do
        pure ()


pointerReleased :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerReleased object_ a1 a2 = jmethod object_ "pointerReleased" (\() -> (pointerReleased_impl (javaCast object_ :: NullCanvas))) () a1 a2

pointerReleased_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
pointerReleased_super object_ a1 a2 = (pointerReleased_impl (javaCast object_ :: NullCanvas)) a1 a2

pointerReleased_impl :: NullCanvas -> Int -> Int -> IO (())
pointerReleased_impl this x y = do
        pure ()


