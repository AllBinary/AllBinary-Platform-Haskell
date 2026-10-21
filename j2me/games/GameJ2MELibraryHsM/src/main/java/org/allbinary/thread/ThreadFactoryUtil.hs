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
-- package org.allbinary.thread
module ThreadFactoryUtil where

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
import qualified ABRunnable -- same package or java.lang
import qualified PrimaryThreadPool -- same package or java.lang
import qualified ThreadPool -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified RunnableCanvas -- org.allbinary.canvas.RunnableCanvas
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified DemoCanvas -- org.allbinary.game.displayable.canvas.DemoCanvas
import qualified GameCanvasRunnableInterface -- org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
import qualified RunnableCanvasSingleThreadStartRunnable -- org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ThreadFactoryUtil = ThreadFactoryUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ThreadFactoryUtil where
    javaNull = javaNullRecord "ThreadFactoryUtil"

instance JavaEquals ThreadFactoryUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThreadFactoryUtil where
    (==) = jrecordEquals

instance JavaObjectClass ThreadFactoryUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThreadFactoryUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ThreadFactoryUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceGameCanvasRunnable" (\() -> getInstanceGameCanvasRunnable_impl this)
    jregisterMethod header_ "getInstanceForRunnable" (\() -> getInstanceForRunnable_impl this)
    jregisterMethod header_ "getInstanceType" (\() -> getInstanceType_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    pure this

initFields_ :: ThreadFactoryUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO ThreadFactoryUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThreadFactoryUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ThreadFactoryUtil)
getInstance = do
        pure (ThreadFactoryUtil.instance_)


getInstanceGameCanvasRunnable :: (JavaObjectClass this_) => this_ -> GameCanvasRunnableInterface.GameCanvasRunnableInterface -> IO (Thread.Thread)
getInstanceGameCanvasRunnable object_ a1 = jmethod object_ "getInstanceGameCanvasRunnable" (\() -> (getInstanceGameCanvasRunnable_impl (javaCast object_ :: ThreadFactoryUtil))) () a1

getInstanceGameCanvasRunnable_super :: (JavaObjectClass this_) => this_ -> GameCanvasRunnableInterface.GameCanvasRunnableInterface -> IO (Thread.Thread)
getInstanceGameCanvasRunnable_super object_ a1 = (getInstanceGameCanvasRunnable_impl (javaCast object_ :: ThreadFactoryUtil)) a1

getInstanceGameCanvasRunnable_impl :: ThreadFactoryUtil -> GameCanvasRunnableInterface.GameCanvasRunnableInterface -> IO (Thread.Thread)
getInstanceGameCanvasRunnable_impl this runnable = do
        (ThreadFactoryUtil.getInstanceType this runnable (jio (GameCanvasRunnableInterface.getType runnable)))


getInstanceForRunnable :: (JavaObjectClass this_) => this_ -> ABRunnable.ABRunnable -> IO (Thread.Thread)
getInstanceForRunnable object_ a1 = jmethod object_ "getInstanceForRunnable" (\() -> (getInstanceForRunnable_impl (javaCast object_ :: ThreadFactoryUtil))) () a1

getInstanceForRunnable_super :: (JavaObjectClass this_) => this_ -> ABRunnable.ABRunnable -> IO (Thread.Thread)
getInstanceForRunnable_super object_ a1 = (getInstanceForRunnable_impl (javaCast object_ :: ThreadFactoryUtil)) a1

getInstanceForRunnable_impl :: ThreadFactoryUtil -> ABRunnable.ABRunnable -> IO (Thread.Thread)
getInstanceForRunnable_impl this runnable = do
        (ThreadFactoryUtil.getInstanceType this runnable (jio (ABRunnable.getType runnable)))


getInstanceType :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> Int -> IO (Thread.Thread)
getInstanceType object_ a1 a2 = jmethod object_ "getInstanceType" (\() -> (getInstanceType_impl (javaCast object_ :: ThreadFactoryUtil))) () a1 a2

getInstanceType_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> Int -> IO (Thread.Thread)
getInstanceType_super object_ a1 a2 = (getInstanceType_impl (javaCast object_ :: ThreadFactoryUtil)) a1 a2

getInstanceType_impl :: ThreadFactoryUtil -> Runnable.Runnable -> Int -> IO (Thread.Thread)
getInstanceType_impl this runnable type_ = do
        commonStrings <- (CommonStrings.getInstance)
        when (jio (J2MEUtil.isHTML)) $ do
            if ((type_ == DemoCanvas.tYPE) || (type_ == AllBinaryGameCanvas.tYPE)) then do
                demoGameSingleThreadStartRunnable <- (RunnableCanvasSingleThreadStartRunnable.new_1 (javaCast runnable :: RunnableCanvas.RunnableCanvas))
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) runnable))))))) this (jget (commonStrings).cONSTRUCTOR))
                primaryThreadPool <- (PrimaryThreadPool.getInstance)
                Control.Monad.void (ThreadPool.runTask primaryThreadPool demoGameSingleThreadStartRunnable)
            else do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Using Pseudo Thread for Runnable under PlayN/HTML5: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) runnable))))))) this (jget (commonStrings).cONSTRUCTOR))
                primaryThreadPool <- (PrimaryThreadPool.getInstance)
                Control.Monad.void (ThreadPool.runTask primaryThreadPool runnable)
        thread <- (Thread.new_2 runnable (jio (Runnable.toString runnable)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (Thread.toString thread)) this (jget (commonStrings).cONSTRUCTOR))
        pure (thread)


start :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
start object_ a1 = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: ThreadFactoryUtil))) () a1

start_super :: (JavaObjectClass this_) => this_ -> Thread.Thread -> IO (())
start_super object_ a1 = (start_impl (javaCast object_ :: ThreadFactoryUtil)) a1

start_impl :: ThreadFactoryUtil -> Thread.Thread -> IO (())
start_impl this thread = do
        Control.Monad.void (Thread.start thread)
        pure ()


