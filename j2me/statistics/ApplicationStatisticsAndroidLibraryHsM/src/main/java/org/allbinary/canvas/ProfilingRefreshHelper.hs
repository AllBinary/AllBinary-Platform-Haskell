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
module ProfilingRefreshHelper (module ProfilingRefreshHelper, module AndroidGameStatistics) where

import AndroidGameStatistics hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, initView, initView_super, initView_impl, nextFrame, nextFrame_super, nextFrame_impl, toString, toString_super, toString_impl, instance_, firstTime, bestFrameProcessingTime, worstFrameProcessingTime, frameProcessingTimeElapsed)
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
import qualified View -- android.view.View
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AndroidGameStatistics

data ProfilingRefreshHelper = ProfilingRefreshHelper
    { header_ :: JavaHeader
    , base :: AndroidGameStatistics.AndroidGameStatistics
    , firstTime :: IORef (Bool)
    , bestFrameProcessingTime :: IORef (Int)
    , worstFrameProcessingTime :: IORef (Int)
    , frameProcessingTimeElapsed :: IORef (Int64)
    }

instance JavaNull ProfilingRefreshHelper where
    javaNull = javaNullRecord "ProfilingRefreshHelper"

instance JavaEquals ProfilingRefreshHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProfilingRefreshHelper where
    (==) = jrecordEquals

instance JavaObjectClass ProfilingRefreshHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO ProfilingRefreshHelper
newRecord_ = do
    base <- AndroidGameStatistics.newRecord_
    let header_ = base.header_
    firstTime <- newIORef False
    bestFrameProcessingTime <- newIORef 0
    worstFrameProcessingTime <- newIORef 0
    frameProcessingTimeElapsed <- newIORef 0
    let this = ProfilingRefreshHelper header_ base firstTime bestFrameProcessingTime worstFrameProcessingTime frameProcessingTimeElapsed
    jregisterLevel header_ this
    jregisterMethod header_ "initView" (\() -> initView_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ProfilingRefreshHelper -> IO ()
initFields_ this = do
    jset this.firstTime (True)
    jset this.bestFrameProcessingTime (0)
    jset this.worstFrameProcessingTime (0)
    jset this.frameProcessingTimeElapsed (0)
    pure ()


getInstance :: IO (AndroidGameStatistics.AndroidGameStatistics)
getInstance = do
        pure ((javaCast ProfilingRefreshHelper.instance_ :: AndroidGameStatistics.AndroidGameStatistics))

new_ :: IO ProfilingRefreshHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ProfilingRefreshHelper -> IO ()
init_ this = do
        AndroidGameStatistics.init_ this.base
        initFields_ this
        pure ()
        pure ()


initView :: (JavaObjectClass this_) => this_ -> View.View -> IO (())
initView object_ a1 = jmethod object_ "initView" (\() -> (initView_impl (javaCast object_ :: ProfilingRefreshHelper))) () a1

initView_super :: (JavaObjectClass this_) => this_ -> View.View -> IO (())
initView_super object_ a1 = (initView_impl (javaCast object_ :: ProfilingRefreshHelper)) a1

initView_impl :: ProfilingRefreshHelper -> View.View -> IO (())
initView_impl this view = do
        Control.Monad.void (AndroidGameStatistics.initView_super this.base view)
        assignedValue <- (TimeDelayHelper.getStartTime ((jio (AndroidGameStatistics.getTimeDelayHelper this))))
        jset (this).frameProcessingTimeElapsed (assignedValue)
        jset (this).bestFrameProcessingTime ((2147483647 :: Int))
        jset (this).worstFrameProcessingTime (0)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: ProfilingRefreshHelper))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: ProfilingRefreshHelper))

nextFrame_impl :: ProfilingRefreshHelper -> IO (())
nextFrame_impl this = do
        jset (this).frameProcessingTimeElapsed (((jio jcurrentTimeMillis) - (jget (this).frameProcessingTimeElapsed)))
        if ((jget (this).firstTime) /= True) then do
            when ((jget (this).frameProcessingTimeElapsed) > (Prelude.fromIntegral (jget (this).worstFrameProcessingTime))) $ do
                jset (this).worstFrameProcessingTime ((Prelude.fromIntegral (jget (this).frameProcessingTimeElapsed)))
            when ((jget (this).frameProcessingTimeElapsed) < (Prelude.fromIntegral (jget (this).bestFrameProcessingTime))) $ do
                jset (this).bestFrameProcessingTime ((Prelude.fromIntegral (jget (this).frameProcessingTimeElapsed)))
        else do
            jset (this).firstTime (False)
        Control.Monad.void (AndroidGameStatistics.nextFrame_super this.base)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ProfilingRefreshHelper))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ProfilingRefreshHelper))

toString_impl :: ProfilingRefreshHelper -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (AndroidGameStatistics.toString_super this.base))))) " Worst: "))) (jget (this).worstFrameProcessingTime)))) " Best: "))) (jget (this).bestFrameProcessingTime)))))


