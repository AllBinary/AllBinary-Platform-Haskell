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
-- package org.allbinary.canvas
module RunnableCanvas (module RunnableCanvas, module MyCanvas) where

import MyCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initCommands, initCommands_super, initCommands_impl, isMainCanvas, isMainCanvas_super, isMainCanvas_impl, setThread, setThread_super, setThread_impl, setRunning, setRunning_super, setRunning_impl, isRunning, isRunning_super, isRunning_impl, getLoopTimeHelperP, getLoopTimeHelperP_super, getLoopTimeHelperP_impl, setWait, setWait_super, setWait_impl, getWait, getWait_super, getWait_impl, setCurrentThread, setCurrentThread_super, setCurrentThread_impl, setCurrentThreadFake, setCurrentThreadFake_super, setCurrentThreadFake_impl, showNotify, showNotify_super, showNotify_impl, stopWaiting, stopWaiting_super, stopWaiting_impl, waitOnNotify, waitOnNotify_super, waitOnNotify_impl, processSleep, processSleep_super, processSleep_impl, isPausable, isPausable_super, isPausable_impl, processGameSleep, processGameSleep_super, processGameSleep_impl, processLoopSleep, processLoopSleep_super, processLoopSleep_impl, isSingleThread, isSingleThread_super, isSingleThread_impl, run, run_super, run_impl, end2, end2_super, end2_impl, getType, getType_super, getType_impl, nullUtil, stdUtil, systemWrapper, tsUtil, thread, currentThread, running, loopTimeHelper, runnableCanvasRefreshHelper, commonLabels, threadObjectUtil, sET_RUNNING, iS_RUNNING, tHREAD, nOT_EQUAL, pAUSE_SLEEP, sTART_PAUSE, eND_PAUSE, pROCESS_LOOP_SLEEP, pauseWait, notified)
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
import qualified Thread -- same package or java.lang
import qualified Processor -- same package or java.lang
import qualified RunnableCanvasRefreshHelper -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified TsUtil -- org.allbinary.TsUtil
import qualified NullWaitGameRunnable -- org.allbinary.game.displayable.canvas.NullWaitGameRunnable
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified NullThread -- org.allbinary.thread.NullThread
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface
import qualified ThreadObjectUtil -- org.allbinary.thread.ThreadObjectUtil
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- implements RunnableInterface
data RunnableCanvas = RunnableCanvas
    { header_ :: JavaHeader
    , base :: MyCanvas.MyCanvas
    , nullUtil :: IORef (NullUtil.NullUtil)
    , stdUtil :: IORef (StdUtil.StdUtil)
    , systemWrapper :: IORef (ABSystemWrapper.ABSystemWrapper)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , thread :: IORef (Thread.Thread)
    , currentThread :: IORef (Thread.Thread)
    , running :: IORef (Bool)
    , loopTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , runnableCanvasRefreshHelper :: IORef (Processor.Processor)
    , commonLabels :: IORef (CommonLabels.CommonLabels)
    , threadObjectUtil :: IORef (ThreadObjectUtil.ThreadObjectUtil)
    , sET_RUNNING :: IORef (String)
    , iS_RUNNING :: IORef (String)
    , tHREAD :: IORef (String)
    , nOT_EQUAL :: IORef (String)
    , pAUSE_SLEEP :: IORef (String)
    , sTART_PAUSE :: IORef (String)
    , eND_PAUSE :: IORef (String)
    , pROCESS_LOOP_SLEEP :: IORef (String)
    , pauseWait :: IORef (Int64)
    , notified :: IORef (Bool)
    }

instance JavaNull RunnableCanvas where
    javaNull = javaNullRecord "RunnableCanvas"

instance JavaEquals RunnableCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RunnableCanvas where
    (==) = jrecordEquals

instance JavaObjectClass RunnableCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RunnableCanvas
newRecord_ = do
    base <- MyCanvas.newRecord_
    let header_ = base.header_
    nullUtil <- newIORef javaNull
    stdUtil <- newIORef javaNull
    systemWrapper <- newIORef javaNull
    tsUtil <- newIORef javaNull
    thread <- newIORef javaNull
    currentThread <- newIORef javaNull
    running <- newIORef False
    loopTimeHelper <- newIORef javaNull
    runnableCanvasRefreshHelper <- newIORef javaNull
    commonLabels <- newIORef javaNull
    threadObjectUtil <- newIORef javaNull
    sET_RUNNING <- newIORef ""
    iS_RUNNING <- newIORef ""
    tHREAD <- newIORef ""
    nOT_EQUAL <- newIORef ""
    pAUSE_SLEEP <- newIORef ""
    sTART_PAUSE <- newIORef ""
    eND_PAUSE <- newIORef ""
    pROCESS_LOOP_SLEEP <- newIORef ""
    pauseWait <- newIORef 0
    notified <- newIORef False
    let this = RunnableCanvas header_ base nullUtil stdUtil systemWrapper tsUtil thread currentThread running loopTimeHelper runnableCanvasRefreshHelper commonLabels threadObjectUtil sET_RUNNING iS_RUNNING tHREAD nOT_EQUAL pAUSE_SLEEP sTART_PAUSE eND_PAUSE pROCESS_LOOP_SLEEP pauseWait notified
    jregisterLevel header_ this
    RunnableInterface.registerInterface_ header_
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "isMainCanvas" (\() -> isMainCanvas_impl this)
    jregisterMethod header_ "setThread" (\() -> setThread_impl this)
    jregisterMethod header_ "setRunning" (\() -> setRunning_impl this)
    jregisterMethod header_ "isRunning" (\() -> isRunning_impl this)
    jregisterMethod header_ "getLoopTimeHelperP" (\() -> getLoopTimeHelperP_impl this)
    jregisterMethod header_ "setWait" (\() -> setWait_impl this)
    jregisterMethod header_ "getWait" (\() -> getWait_impl this)
    jregisterMethod header_ "setCurrentThread" (\() -> setCurrentThread_impl this)
    jregisterMethod header_ "setCurrentThreadFake" (\() -> setCurrentThreadFake_impl this)
    jregisterMethod header_ "showNotify" (\() -> showNotify_impl this)
    jregisterMethod header_ "stopWaiting" (\() -> stopWaiting_impl this)
    jregisterMethod header_ "waitOnNotify" (\() -> waitOnNotify_impl this)
    jregisterMethod header_ "processSleep" (\() -> processSleep_impl this)
    jregisterMethod header_ "isPausable" (\() -> isPausable_impl this)
    jregisterMethod header_ "processGameSleep" (\() -> processGameSleep_impl this)
    jregisterMethod header_ "processLoopSleep" (\() -> processLoopSleep_impl this)
    jregisterMethod header_ "isSingleThread" (\() -> isSingleThread_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "end2" (\() -> end2_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    pure this

initFields_ :: RunnableCanvas -> IO ()
initFields_ this = do
    jset this.nullUtil =<< (NullUtil.getInstance)
    jset this.stdUtil =<< (StdUtil.getInstance)
    jset this.systemWrapper =<< (ABSystemWrapper.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.thread (NullThread.nULL_THREAD)
    jset this.currentThread (NullThread.nULL_THREAD)
    jset this.running (False)
    jset this.loopTimeHelper =<< (TimeDelayHelper.new_1 (jget ((jio (NullWaitGameRunnable.getInstance))).wAIT))
    jset this.runnableCanvasRefreshHelper =<< (Processor.getInstance)
    jset this.commonLabels =<< (CommonLabels.getInstance)
    jset this.threadObjectUtil =<< (ThreadObjectUtil.getInstance)
    jset this.sET_RUNNING ("setRunning")
    jset this.iS_RUNNING ("isRunning")
    jset this.tHREAD ("Thread: ")
    jset this.nOT_EQUAL (" != ")
    jset this.pAUSE_SLEEP ("pause sleep")
    jset this.sTART_PAUSE ("start pause - game thread sleep at: ")
    jset this.eND_PAUSE ("end pause - game thread sleep at: ")
    jset this.pROCESS_LOOP_SLEEP ("processLoopSleep")
    jset this.pauseWait (0)
    jset this.notified (False)
    pure ()

new_3 :: CommandListener.CommandListener -> BasicArrayList.BasicArrayList -> Bool -> IO RunnableCanvas
new_3 commandListener childNameList hasParam = do
    this <- newRecord_
    init_3 this commandListener childNameList hasParam
    pure this

init_3 :: RunnableCanvas -> CommandListener.CommandListener -> BasicArrayList.BasicArrayList -> Bool -> IO ()
init_3 this commandListener childNameList hasParam = do
        MyCanvas.init_2 this.base (jget ((jio (CommonStrings.getInstance))).uNKNOWN) (childNameList)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "RunnableCanvas delay: "))) (jget ((jget (this).loopTimeHelper)).delay)))))) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (RunnableCanvasRefreshHelper.new_1 this))
        jset (this).runnableCanvasRefreshHelper (assignedValue)
        if (commandListener /= javaNull) then do
            Control.Monad.void (RunnableCanvas.initCommands this commandListener)
        else when hasParam $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) "commandListener was null" this "initCommands")
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: RunnableCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: RunnableCanvas)) a1

initCommands_impl :: RunnableCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).nOT_IMPLEMENTED) this "initCommands")
        pure ()


isMainCanvas :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMainCanvas object_ = jmethod object_ "isMainCanvas" (\() -> (isMainCanvas_impl (javaCast object_ :: RunnableCanvas))) ()

isMainCanvas_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMainCanvas_super object_ = (isMainCanvas_impl (javaCast object_ :: RunnableCanvas))

isMainCanvas_impl :: RunnableCanvas -> IO (Bool)
isMainCanvas_impl this = do
    javaCatchReturn $ do
        if ((jio (MyCanvas.getCustomCommandListener this)) /= javaNull) then do
            javaReturn (True)
        else do
            javaReturn (False)


setThread :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread object_ a1 = jmethod object_ "setThread" (\() -> (setThread_impl (javaCast object_ :: RunnableCanvas))) () a1

setThread_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
setThread_super object_ a1 = (setThread_impl (javaCast object_ :: RunnableCanvas)) a1

setThread_impl :: RunnableCanvas -> Thread.Thread -> IO (())
setThread_impl this thread = do
        jset (this).thread (thread)
        pure ()


setRunning :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning object_ a1 = jmethod object_ "setRunning" (\() -> (setRunning_impl (javaCast object_ :: RunnableCanvas))) () a1

setRunning_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRunning_super object_ a1 = (setRunning_impl (javaCast object_ :: RunnableCanvas)) a1

setRunning_impl :: RunnableCanvas -> Bool -> IO (())
setRunning_impl this running = do
        jset (this).running (running)
        when (Prelude.not (jget (this).running)) $ do
            jset (this).thread (NullThread.nULL_THREAD)
            do -- synchronized
                Control.Monad.void (ThreadObjectUtil.notifyObject ((jget (this).threadObjectUtil)) this)
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).iS_RUNNING)))) (jget (this).running)))))) this (jget (this).sET_RUNNING))
        pure ()


isRunning :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning object_ = jmethod object_ "isRunning" (\() -> (isRunning_impl (javaCast object_ :: RunnableCanvas))) ()

isRunning_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRunning_super object_ = (isRunning_impl (javaCast object_ :: RunnableCanvas))

isRunning_impl :: RunnableCanvas -> IO (Bool)
isRunning_impl this = do
    javaCatchReturn $ do
        if ((jget (this).thread) == (jget (this).currentThread)) then do
            javaReturn ((jget (this).running))
        else do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).tHREAD))
            when ((jget (this).thread) /= javaNull) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jio (Thread.toString ((jget (this).thread)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).nOT_EQUAL))
            when ((jget (this).currentThread) /= javaNull) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget (this).currentThread))))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).iS_RUNNING))
            javaReturn (False)


getLoopTimeHelperP :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getLoopTimeHelperP object_ = jmethod object_ "getLoopTimeHelperP" (\() -> (getLoopTimeHelperP_impl (javaCast object_ :: RunnableCanvas))) ()

getLoopTimeHelperP_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getLoopTimeHelperP_super object_ = (getLoopTimeHelperP_impl (javaCast object_ :: RunnableCanvas))

getLoopTimeHelperP_impl :: RunnableCanvas -> IO (TimeDelayHelper.TimeDelayHelper)
getLoopTimeHelperP_impl this = do
        pure ((jget (this).loopTimeHelper))


setWait :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWait object_ a1 = jmethod object_ "setWait" (\() -> (setWait_impl (javaCast object_ :: RunnableCanvas))) () a1

setWait_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWait_super object_ a1 = (setWait_impl (javaCast object_ :: RunnableCanvas)) a1

setWait_impl :: RunnableCanvas -> Int -> IO (())
setWait_impl this wait = do
        jset ((jget (this).loopTimeHelper)).delay (wait)
        jset (this).pauseWait (((Prelude.fromIntegral wait) * 3))
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "setWait - delay: "))) (jget ((jget (this).loopTimeHelper)).delay)))))) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        pure ()


getWait :: (JavaObjectClass this_) => this_ -> IO (Int)
getWait object_ = jmethod object_ "getWait" (\() -> (getWait_impl (javaCast object_ :: RunnableCanvas))) ()

getWait_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWait_super object_ = (getWait_impl (javaCast object_ :: RunnableCanvas))

getWait_impl :: RunnableCanvas -> IO (Int)
getWait_impl this = do
        pure ((jget ((jget (this).loopTimeHelper)).delay))


setCurrentThread :: (JavaObjectClass this_) => this_ -> IO (())
setCurrentThread object_ = jmethod object_ "setCurrentThread" (\() -> (setCurrentThread_impl (javaCast object_ :: RunnableCanvas))) ()

setCurrentThread_super :: (JavaObjectClass this_) => this_ -> IO (())
setCurrentThread_super object_ = (setCurrentThread_impl (javaCast object_ :: RunnableCanvas))

setCurrentThread_impl :: RunnableCanvas -> IO (())
setCurrentThread_impl this = do
        assignedValue <- (Thread.currentThread)
        jset (this).currentThread (assignedValue)
        pure ()


setCurrentThreadFake :: (JavaObjectClass this_) => this_ -> IO (())
setCurrentThreadFake object_ = jmethod object_ "setCurrentThreadFake" (\() -> (setCurrentThreadFake_impl (javaCast object_ :: RunnableCanvas))) ()

setCurrentThreadFake_super :: (JavaObjectClass this_) => this_ -> IO (())
setCurrentThreadFake_super object_ = (setCurrentThreadFake_impl (javaCast object_ :: RunnableCanvas))

setCurrentThreadFake_impl :: RunnableCanvas -> IO (())
setCurrentThreadFake_impl this = do
        jset (this).currentThread ((jget (this).thread))
        pure ()


showNotify :: (JavaObjectClass this_) => this_ -> IO (())
showNotify object_ = jmethod object_ "showNotify" (\() -> (showNotify_impl (javaCast object_ :: RunnableCanvas))) ()

showNotify_super :: (JavaObjectClass this_) => this_ -> IO (())
showNotify_super object_ = (showNotify_impl (javaCast object_ :: RunnableCanvas))

showNotify_impl :: RunnableCanvas -> IO (())
showNotify_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "showNotify" e)
            ) $ do
            Control.Monad.void (RunnableCanvas.stopWaiting this)
        pure ()


-- throws Exception
stopWaiting :: (JavaObjectClass this_) => this_ -> IO (())
stopWaiting object_ = jmethod object_ "stopWaiting" (\() -> (stopWaiting_impl (javaCast object_ :: RunnableCanvas))) ()

stopWaiting_super :: (JavaObjectClass this_) => this_ -> IO (())
stopWaiting_super object_ = (stopWaiting_impl (javaCast object_ :: RunnableCanvas))

stopWaiting_impl :: RunnableCanvas -> IO (())
stopWaiting_impl this = do
        jset (this).notified (True)
        do -- synchronized
            Control.Monad.void (ThreadObjectUtil.notifyObject ((jget (this).threadObjectUtil)) this)
        Control.Monad.void (MyCanvas.repaint this)
        pure ()


-- throws Exception
waitOnNotify :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
waitOnNotify object_ a1 = jmethod object_ "waitOnNotify" (\() -> (waitOnNotify_impl (javaCast object_ :: RunnableCanvas))) () a1

waitOnNotify_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
waitOnNotify_super object_ a1 = (waitOnNotify_impl (javaCast object_ :: RunnableCanvas)) a1

waitOnNotify_impl :: RunnableCanvas -> Int64 -> IO (())
waitOnNotify_impl this wait = do
        when (Prelude.not (jget (this).notified)) $ do
            if (wait > 0) then do
                Control.Monad.void (ThreadObjectUtil.waitObjectFor ((jget (this).threadObjectUtil)) this (wait))
            else do
                Control.Monad.void (ThreadObjectUtil.waitObject ((jget (this).threadObjectUtil)) this)
        pure ()


-- throws Exception
processSleep :: (JavaObjectClass this_) => this_ -> IO (())
processSleep object_ = jmethod object_ "processSleep" (\() -> (processSleep_impl (javaCast object_ :: RunnableCanvas))) ()

processSleep_super :: (JavaObjectClass this_) => this_ -> IO (())
processSleep_super object_ = (processSleep_impl (javaCast object_ :: RunnableCanvas))

processSleep_impl :: RunnableCanvas -> IO (())
processSleep_impl this = do
        Control.Monad.void (threadDelay (Prelude.fromIntegral (jget (this).pauseWait) * 1000))
        pure ()


isPausable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPausable object_ = jmethod object_ "isPausable" (\() -> (isPausable_impl (javaCast object_ :: RunnableCanvas))) ()

isPausable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPausable_super object_ = (isPausable_impl (javaCast object_ :: RunnableCanvas))

isPausable_impl :: RunnableCanvas -> IO (Bool)
isPausable_impl this = do
        pure (False)


-- throws Exception
processGameSleep :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
processGameSleep object_ a1 = jmethod object_ "processGameSleep" (\() -> (processGameSleep_impl (javaCast object_ :: RunnableCanvas))) () a1

processGameSleep_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
processGameSleep_super object_ a1 = (processGameSleep_impl (javaCast object_ :: RunnableCanvas)) a1

processGameSleep_impl :: RunnableCanvas -> Int64 -> IO (())
processGameSleep_impl this sleep = do
        Control.Monad.void (threadDelay (Prelude.fromIntegral sleep * 1000))
        pure ()


-- throws Exception
processLoopSleep :: (JavaObjectClass this_) => this_ -> IO (())
processLoopSleep object_ = jmethod object_ "processLoopSleep" (\() -> (processLoopSleep_impl (javaCast object_ :: RunnableCanvas))) ()

processLoopSleep_super :: (JavaObjectClass this_) => this_ -> IO (())
processLoopSleep_super object_ = (processLoopSleep_impl (javaCast object_ :: RunnableCanvas))

processLoopSleep_impl :: RunnableCanvas -> IO (())
processLoopSleep_impl this = do
    javaCatchReturn $ do
        Control.Monad.void (Processor.process ((jget (this).runnableCanvasRefreshHelper)))
        when (jio (MyCanvas.isPaused this)) $ do
            stringMaker <- (StringMaker.new_)
            when ((jio (RunnableCanvas.isRunning this)) && (Prelude.not (jio (RunnableCanvas.isSingleThread this)))) $ do
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                currentTimeMillis <- (ABSystemWrapper.currentTimeMillis ((jget (this).systemWrapper)))
                Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.appendlong ((jio (StringMaker.append stringMaker (jget (this).sTART_PAUSE)))) currentTimeMillis))) (jget (this).pAUSE_SLEEP)))) (jget (this).pauseWait)))))) this (jget (this).pROCESS_LOOP_SLEEP))
                fix $ \loop -> when (((jio (MyCanvas.isPaused this)) && (jio (RunnableCanvas.isRunning this))) && (Prelude.not (jio (RunnableCanvas.isSingleThread this)))) $ javaIteration (loop) $ do
                    Control.Monad.void (RunnableCanvas.processSleep this)
                    when (Prelude.not (jio (RunnableCanvas.isPausable this))) $ do
                        Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append stringMaker (jget (this).eND_PAUSE)))) currentTimeMillis))))) this (jget (this).pROCESS_LOOP_SLEEP))
                        javaReturn (())
        elapsedTime <- newIORef =<< (TimeDelayHelper.getElapsedTNT ((jget (this).loopTimeHelper)))
        let wait = (Prelude.fromIntegral (jget ((jget (this).loopTimeHelper)).delay))
        if ((jget elapsedTime) > wait) then do
            jset elapsedTime (wait)
        else do
            Control.Monad.void (RunnableCanvas.processGameSleep this (wait - (jget elapsedTime)))
    pure ()


isSingleThread :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSingleThread object_ = jmethod object_ "isSingleThread" (\() -> (isSingleThread_impl (javaCast object_ :: RunnableCanvas))) ()

isSingleThread_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSingleThread_super object_ = (isSingleThread_impl (javaCast object_ :: RunnableCanvas))

isSingleThread_impl :: RunnableCanvas -> IO (Bool)
isSingleThread_impl this = do
        pure (False)


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: RunnableCanvas))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: RunnableCanvas))

run_impl :: RunnableCanvas -> IO (())
run_impl this = do
        Control.Monad.void (RunnableCanvas.setCurrentThread this)
        pure ()


-- throws Exception
end2 :: (JavaObjectClass this_) => this_ -> IO (())
end2 object_ = jmethod object_ "end2" (\() -> (end2_impl (javaCast object_ :: RunnableCanvas))) ()

end2_super :: (JavaObjectClass this_) => this_ -> IO (())
end2_super object_ = (end2_impl (javaCast object_ :: RunnableCanvas))

end2_impl :: RunnableCanvas -> IO (())
end2_impl this = do
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: RunnableCanvas))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: RunnableCanvas))

getType_impl :: RunnableCanvas -> IO (Int)
getType_impl this = do
        pure ((Prelude.negate 1))


