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
-- package org.allbinary.game.displayable.canvas
module GameCanvasRunnableInterface (module GameCanvasRunnableInterface, module RunnableInterface, module PaintableInterface, module ItemStateListener, module GameStateCompositeInterface) where

import RunnableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTitle, getTitle_super, getTitle_impl, isInitialized, isInitialized_super, isInitialized_impl, isPaused, isPaused_super, isPaused_impl, unPause, unPause_super, unPause_impl, pause, pause_super, pause_impl, isHighScoreSubmitted, isHighScoreSubmitted_super, isHighScoreSubmitted_impl, setHighScoreSubmitted, setHighScoreSubmitted_super, setHighScoreSubmitted_impl, processGameOver, processGameOver_super, processGameOver_impl, isGameOver, isGameOver_super, isGameOver_impl, initCommands, initCommands_super, initCommands_impl, getCurrentStateHashtable, getCurrentStateHashtable_super, getCurrentStateHashtable_impl, getLoadStateHashtable, getLoadStateHashtable_super, getLoadStateHashtable_impl, setLoadStateHashtable, setLoadStateHashtable_super, setLoadStateHashtable_impl, getType, getType_super, getType_impl, toString)
import PaintableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTitle, getTitle_super, getTitle_impl, isInitialized, isInitialized_super, isInitialized_impl, isPaused, isPaused_super, isPaused_impl, unPause, unPause_super, unPause_impl, pause, pause_super, pause_impl, isHighScoreSubmitted, isHighScoreSubmitted_super, isHighScoreSubmitted_impl, setHighScoreSubmitted, setHighScoreSubmitted_super, setHighScoreSubmitted_impl, processGameOver, processGameOver_super, processGameOver_impl, isGameOver, isGameOver_super, isGameOver_impl, initCommands, initCommands_super, initCommands_impl, getCurrentStateHashtable, getCurrentStateHashtable_super, getCurrentStateHashtable_impl, getLoadStateHashtable, getLoadStateHashtable_super, getLoadStateHashtable_impl, setLoadStateHashtable, setLoadStateHashtable_super, setLoadStateHashtable_impl, getType, getType_super, getType_impl, toString)
import ItemStateListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTitle, getTitle_super, getTitle_impl, isInitialized, isInitialized_super, isInitialized_impl, isPaused, isPaused_super, isPaused_impl, unPause, unPause_super, unPause_impl, pause, pause_super, pause_impl, isHighScoreSubmitted, isHighScoreSubmitted_super, isHighScoreSubmitted_impl, setHighScoreSubmitted, setHighScoreSubmitted_super, setHighScoreSubmitted_impl, processGameOver, processGameOver_super, processGameOver_impl, isGameOver, isGameOver_super, isGameOver_impl, initCommands, initCommands_super, initCommands_impl, getCurrentStateHashtable, getCurrentStateHashtable_super, getCurrentStateHashtable_impl, getLoadStateHashtable, getLoadStateHashtable_super, getLoadStateHashtable_impl, setLoadStateHashtable, setLoadStateHashtable_super, setLoadStateHashtable_impl, getType, getType_super, getType_impl, toString)
import GameStateCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTitle, getTitle_super, getTitle_impl, isInitialized, isInitialized_super, isInitialized_impl, isPaused, isPaused_super, isPaused_impl, unPause, unPause_super, unPause_impl, pause, pause_super, pause_impl, isHighScoreSubmitted, isHighScoreSubmitted_super, isHighScoreSubmitted_impl, setHighScoreSubmitted, setHighScoreSubmitted_super, setHighScoreSubmitted_impl, processGameOver, processGameOver_super, processGameOver_impl, isGameOver, isGameOver_super, isGameOver_impl, initCommands, initCommands_super, initCommands_impl, getCurrentStateHashtable, getCurrentStateHashtable_super, getCurrentStateHashtable_impl, getLoadStateHashtable, getLoadStateHashtable_super, getLoadStateHashtable_impl, setLoadStateHashtable, setLoadStateHashtable_super, setLoadStateHashtable_impl, getType, getType_super, getType_impl, toString)
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
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified ItemStateListener -- javax.microedition.lcdui.ItemStateListener
import qualified GameStateCompositeInterface -- org.allbinary.game.state.GameStateCompositeInterface
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- Java interface: the classes that implement it have these functions
data GameCanvasRunnableInterface = GameCanvasRunnableInterface
    { header_ :: JavaHeader
    }

instance JavaNull GameCanvasRunnableInterface where
    javaNull = javaNullRecord "GameCanvasRunnableInterface"

instance JavaEquals GameCanvasRunnableInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameCanvasRunnableInterface where
    (==) = jrecordEquals

instance JavaObjectClass GameCanvasRunnableInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameCanvasRunnableInterface
fromHeader_ header = GameCanvasRunnableInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameCanvasRunnableInterface header)
    RunnableInterface.registerInterface_ header
    PaintableInterface.registerInterface_ header
    ItemStateListener.registerInterface_ header
    GameStateCompositeInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getTitle :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle object_ = jmethod object_ "getTitle" (\() -> (getTitle_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

getTitle_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle_super object_ = (getTitle_impl (javaCast object_ :: GameCanvasRunnableInterface))

getTitle_impl :: GameCanvasRunnableInterface -> IO (String)
getTitle_impl this = javaAbstractMethod "getTitle"


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: GameCanvasRunnableInterface))

isInitialized_impl :: GameCanvasRunnableInterface -> IO (Bool)
isInitialized_impl this = javaAbstractMethod "isInitialized"


isPaused :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPaused object_ = jmethod object_ "isPaused" (\() -> (isPaused_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

isPaused_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPaused_super object_ = (isPaused_impl (javaCast object_ :: GameCanvasRunnableInterface))

isPaused_impl :: GameCanvasRunnableInterface -> IO (Bool)
isPaused_impl this = javaAbstractMethod "isPaused"


unPause :: (JavaObjectClass this_) => this_ -> IO (())
unPause object_ = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

unPause_super :: (JavaObjectClass this_) => this_ -> IO (())
unPause_super object_ = (unPause_impl (javaCast object_ :: GameCanvasRunnableInterface))

unPause_impl :: GameCanvasRunnableInterface -> IO (())
unPause_impl this = javaAbstractMethod "unPause"


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: GameCanvasRunnableInterface))

pause_impl :: GameCanvasRunnableInterface -> IO (())
pause_impl this = javaAbstractMethod "pause"


isHighScoreSubmitted :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHighScoreSubmitted object_ = jmethod object_ "isHighScoreSubmitted" (\() -> (isHighScoreSubmitted_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

isHighScoreSubmitted_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isHighScoreSubmitted_super object_ = (isHighScoreSubmitted_impl (javaCast object_ :: GameCanvasRunnableInterface))

isHighScoreSubmitted_impl :: GameCanvasRunnableInterface -> IO (Bool)
isHighScoreSubmitted_impl this = javaAbstractMethod "isHighScoreSubmitted"


-- throws Exception
setHighScoreSubmitted :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHighScoreSubmitted object_ a1 = jmethod object_ "setHighScoreSubmitted" (\() -> (setHighScoreSubmitted_impl (javaCast object_ :: GameCanvasRunnableInterface))) () a1

setHighScoreSubmitted_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHighScoreSubmitted_super object_ a1 = (setHighScoreSubmitted_impl (javaCast object_ :: GameCanvasRunnableInterface)) a1

setHighScoreSubmitted_impl :: GameCanvasRunnableInterface -> Bool -> IO (())
setHighScoreSubmitted_impl this highScoreSubmitted = javaAbstractMethod "setHighScoreSubmitted"


-- throws Exception
processGameOver :: (JavaObjectClass this_) => this_ -> IO (())
processGameOver object_ = jmethod object_ "processGameOver" (\() -> (processGameOver_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

processGameOver_super :: (JavaObjectClass this_) => this_ -> IO (())
processGameOver_super object_ = (processGameOver_impl (javaCast object_ :: GameCanvasRunnableInterface))

processGameOver_impl :: GameCanvasRunnableInterface -> IO (())
processGameOver_impl this = javaAbstractMethod "processGameOver"


isGameOver :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver object_ = jmethod object_ "isGameOver" (\() -> (isGameOver_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

isGameOver_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver_super object_ = (isGameOver_impl (javaCast object_ :: GameCanvasRunnableInterface))

isGameOver_impl :: GameCanvasRunnableInterface -> IO (Bool)
isGameOver_impl this = javaAbstractMethod "isGameOver"


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: GameCanvasRunnableInterface))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: GameCanvasRunnableInterface)) a1

initCommands_impl :: GameCanvasRunnableInterface -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = javaAbstractMethod "initCommands"


-- throws Exception
getCurrentStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable object_ = jmethod object_ "getCurrentStateHashtable" (\() -> (getCurrentStateHashtable_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

getCurrentStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_super object_ = (getCurrentStateHashtable_impl (javaCast object_ :: GameCanvasRunnableInterface))

getCurrentStateHashtable_impl :: GameCanvasRunnableInterface -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_impl this = javaAbstractMethod "getCurrentStateHashtable"


-- throws Exception
getLoadStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable object_ = jmethod object_ "getLoadStateHashtable" (\() -> (getLoadStateHashtable_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

getLoadStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable_super object_ = (getLoadStateHashtable_impl (javaCast object_ :: GameCanvasRunnableInterface))

getLoadStateHashtable_impl :: GameCanvasRunnableInterface -> IO (ABHashtable.ABHashtable)
getLoadStateHashtable_impl this = javaAbstractMethod "getLoadStateHashtable"


-- throws Exception
setLoadStateHashtable :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable object_ a1 = jmethod object_ "setLoadStateHashtable" (\() -> (setLoadStateHashtable_impl (javaCast object_ :: GameCanvasRunnableInterface))) () a1

setLoadStateHashtable_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable_super object_ a1 = (setLoadStateHashtable_impl (javaCast object_ :: GameCanvasRunnableInterface)) a1

setLoadStateHashtable_impl :: GameCanvasRunnableInterface -> ABHashtable.ABHashtable -> IO (())
setLoadStateHashtable_impl this hashtable = javaAbstractMethod "setLoadStateHashtable"


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: GameCanvasRunnableInterface))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: GameCanvasRunnableInterface))

getType_impl :: GameCanvasRunnableInterface -> IO (Int)
getType_impl this = javaAbstractMethod "getType"


