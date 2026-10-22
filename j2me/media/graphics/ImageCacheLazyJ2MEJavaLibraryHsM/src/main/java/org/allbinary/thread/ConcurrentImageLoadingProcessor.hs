{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module ConcurrentImageLoadingProcessor (module ConcurrentImageLoadingProcessor, module BaseImageLoadingProcessor) where

import BaseImageLoadingProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, runTask, runTask_super, runTask_impl, logUtil, runnable)
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
import qualified ABRunnable -- same package or java.lang
import qualified ImageThreadPool -- same package or java.lang
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BaseImageLoadingProcessor

data ConcurrentImageLoadingProcessor = ConcurrentImageLoadingProcessor
    { header_ :: JavaHeader
    , base :: BaseImageLoadingProcessor.BaseImageLoadingProcessor
    , logUtil :: IORef (LogUtil.LogUtil)
    , runnable :: IORef (ABRunnable.ABRunnable)
    }

instance JavaNull ConcurrentImageLoadingProcessor where
    javaNull = javaNullRecord "ConcurrentImageLoadingProcessor"

instance JavaEquals ConcurrentImageLoadingProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ConcurrentImageLoadingProcessor where
    (==) = jrecordEquals

instance JavaObjectClass ConcurrentImageLoadingProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ConcurrentImageLoadingProcessor
newRecord_ = do
    base <- BaseImageLoadingProcessor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    runnable <- newIORef javaNull
    let this = ConcurrentImageLoadingProcessor header_ base logUtil runnable
    jregisterLevel header_ this
    jregisterMethod header_ "runTask" (\() -> runTask_impl this)
    pure this

initFields_ :: ConcurrentImageLoadingProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.runnable (javaNull)
    pure ()

new_1 :: ImageCache.ImageCache -> IO ConcurrentImageLoadingProcessor
new_1 imageCache = do
    this <- newRecord_
    init_1 this imageCache
    pure this

init_1 :: ConcurrentImageLoadingProcessor -> ImageCache.ImageCache -> IO ()
init_1 this imageCache = do
        BaseImageLoadingProcessor.init_ this.base
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: ABRunnable.ABRunnable) (ImageCacheRunnable.new_1 imageCache))
        jset (this).runnable (assignedValue)
        pure ()


runTask :: (JavaObjectClass this_) => this_ -> IO (())
runTask object_ = jmethod object_ "runTask" (\() -> (runTask_impl (javaCast object_ :: ConcurrentImageLoadingProcessor))) ()

runTask_super :: (JavaObjectClass this_) => this_ -> IO (())
runTask_super object_ = (runTask_impl (javaCast object_ :: ConcurrentImageLoadingProcessor))

runTask_impl :: ConcurrentImageLoadingProcessor -> IO (())
runTask_impl this = do
        when (Prelude.not (jio (ABRunnable.isRunning ((jget (this).runnable))))) $ do
            Control.Monad.void (ThreadPool.runTask ((jio (ImageThreadPool.getInstance))) (javaCast (jget (this).runnable)))
        pure ()

-- Java nested class ImageCacheRunnable: move it to its own module ImageCacheRunnable

