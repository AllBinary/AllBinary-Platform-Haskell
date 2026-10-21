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
module NullGameCanvas (module NullGameCanvas, module AllBinaryGameCanvas) where

import AllBinaryGameCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createNull, createNull_super, createNull_impl, getInstance, getInstance_super, getInstance_impl, createCanvas, createCanvas_super, createCanvas_impl, isGameOver, isGameOver_super, isGameOver_impl, setRunning, setRunning_super, setRunning_impl, isRunning, isRunning_super, isRunning_impl, pause, pause_super, pause_impl, unPause, unPause_super, unPause_impl, initCommands, initCommands_super, initCommands_impl, buildGameInit, buildGameInit_super, buildGameInit_impl, draw, draw_super, draw_impl, run, run_super, run_impl, getType, getType_super, getType_impl, instance_, nO_GAME, runningNull, tYPE)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullCommandListener -- javax.microedition.lcdui.NullCommandListener
import qualified BasicBuildGameInitializerFactory -- org.allbinary.game.init.BasicBuildGameInitializerFactory
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified NoHighScoresFactory -- org.allbinary.game.score.NoHighScoresFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified AllBinaryGameCanvas

data NullGameCanvas = NullGameCanvas
    { header_ :: JavaHeader
    , base :: AllBinaryGameCanvas.AllBinaryGameCanvas
    , runningNull :: IORef (Bool)
    }

instance JavaNull NullGameCanvas where
    javaNull = javaNullRecord "NullGameCanvas"

instance JavaEquals NullGameCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullGameCanvas where
    (==) = jrecordEquals

instance JavaObjectClass NullGameCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

nO_GAME = "No Background Game"

tYPE = 1

newRecord_ :: IO NullGameCanvas
newRecord_ = do
    base <- AllBinaryGameCanvas.newRecord_
    let header_ = base.header_
    runningNull <- newIORef False
    let this = NullGameCanvas header_ base runningNull
    jregisterLevel header_ this
    jregisterMethod header_ "isGameOver" (\() -> isGameOver_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "pause" (\() -> pause_impl this)
    jregisterMethod header_ "unPause" (\() -> unPause_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "buildGameInit" (\() -> buildGameInit_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: NullGameCanvas -> IO ()
initFields_ this = do
    jset this.runningNull (True)
    pure ()


createNull :: IO (NullGameCanvas)
createNull = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jio (LogUtil.getInstance))) (jget ((jio (CommonStrings.getInstance))).eXCEPTION) "NullGameCanvas" (jget ((jio (CommonStrings.getInstance))).gET_INSTANCE) e)
            javaThrow ((JavaException "RuntimeException" ""))
            ) $ do
            (new_1 (jio (AllBinaryGameLayerManager.getNullInstance)))


getInstance :: IO (NullGameCanvas)
getInstance = do
        when ((jget NullGameCanvas.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (NullGameCanvas.createNull)
            jset NullGameCanvas.instance_ (assignedValue)
        pure ((javaCast (jget NullGameCanvas.instance_) :: NullGameCanvas))


-- throws Exception
createCanvas :: AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (NullGameCanvas)
createCanvas gameLayerManager = do
        nullGameCanvas <- (new_1 gameLayerManager)
        Control.Monad.void (NullGameCanvas.setInitialized nullGameCanvas True)
        Control.Monad.void (NullGameCanvas.setTitle nullGameCanvas (NullGameCanvas.nO_GAME))
        pure (nullGameCanvas)

new_1 :: AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO NullGameCanvas
new_1 gameLayerManager = do
    this <- newRecord_
    init_1 this gameLayerManager
    pure this

init_1 :: NullGameCanvas -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO ()
init_1 this gameLayerManager = do
        AllBinaryGameCanvas.init_5 this.base (NullCommandListener.nULL_COMMAND_LISTENER) (gameLayerManager) (jio (NoHighScoresFactory.getInstance)) (jget BasicBuildGameInitializerFactory.nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY) (False)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AllBinaryGameCanvas.setWait_super this.base 1200)
        pure ()


isGameOver :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver object_ = jmethod object_ "isGameOver" (\() -> (isGameOver_impl (javaCast object_ :: NullGameCanvas))) ()

isGameOver_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameOver_super object_ = (isGameOver_impl (javaCast object_ :: NullGameCanvas))

isGameOver_impl :: NullGameCanvas -> IO (Bool)
isGameOver_impl this = do
        pure (False)


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: NullGameCanvas))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: NullGameCanvas)) a1

setRunning_impl :: NullGameCanvas -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).runningNull (running)
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: NullGameCanvas))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: NullGameCanvas))

isRunning_impl :: NullGameCanvas -> IO (Bool)
isRunning_impl this = do
        pure ((jget (this).runningNull))


pause :: (JavaObjectClass this_) => this_ -> IO (())
pause object_ = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: NullGameCanvas))) ()

pause_super :: (JavaObjectClass this_) => this_ -> IO (())
pause_super object_ = (pause_impl (javaCast object_ :: NullGameCanvas))

pause_impl :: NullGameCanvas -> IO (())
pause_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.setPaused this True)
        pure ()


unPause :: (JavaObjectClass this_) => this_ -> IO (())
unPause object_ = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: NullGameCanvas))) ()

unPause_super :: (JavaObjectClass this_) => this_ -> IO (())
unPause_super object_ = (unPause_impl (javaCast object_ :: NullGameCanvas))

unPause_impl :: NullGameCanvas -> IO (())
unPause_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.setPaused this False)
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: NullGameCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: NullGameCanvas)) a1

initCommands_impl :: NullGameCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (AllBinaryGameCanvas.removeAllCommands this)
        Control.Monad.void (AllBinaryGameCanvas.setCommandListener this cmdListener)
        pure ()


-- throws Exception
buildGameInit :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
buildGameInit object_ a1 = jmethod object_ "buildGameInit" (\() -> (buildGameInit_impl (javaCast object_ :: NullGameCanvas))) () a1

buildGameInit_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
buildGameInit_super object_ a1 = (buildGameInit_impl (javaCast object_ :: NullGameCanvas)) a1

buildGameInit_impl :: NullGameCanvas -> Bool -> IO (())
buildGameInit_impl this isProgress = do
        pure ()


draw :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
draw object_ a1 = jmethod object_ "draw" (\() -> (draw_impl (javaCast object_ :: NullGameCanvas))) () a1

draw_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
draw_super object_ a1 = (draw_impl (javaCast object_ :: NullGameCanvas)) a1

draw_impl :: NullGameCanvas -> Graphics.Graphics -> IO (())
draw_impl this graphics = do
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: NullGameCanvas))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: NullGameCanvas))

run_impl :: NullGameCanvas -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.commonStrings)).rUN) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART_RUNNABLE) this (jget ((jget (this).base.base.base.commonStrings)).rUN))
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eND_RUNNABLE) this (jget ((jget (this).base.base.base.commonStrings)).rUN))
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: NullGameCanvas))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: NullGameCanvas))

getType_impl :: NullGameCanvas -> IO (Int)
getType_impl this = do
        pure (NullGameCanvas.tYPE)


