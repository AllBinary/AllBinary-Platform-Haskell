{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
-- package org.allbinary.android.input.motion.api1
module GameInputMotionEventProcessorAPI1 (module GameInputMotionEventProcessorAPI1, module BaseGameInputMotionEventProcessor) where

import BaseGameInputMotionEventProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, instance_, logUtil, motionRecognizer)
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
import qualified CommonStrings -- same package or java.lang
import qualified MotionEvent -- android.view.MotionEvent
import qualified BaseGameInputMotionEventProcessor -- org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor
import qualified AllMotionRecognizer -- org.allbinary.input.motion.AllMotionRecognizer
import qualified MotionRecognizer -- org.allbinary.input.motion.MotionRecognizer
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data GameInputMotionEventProcessorAPI1 = GameInputMotionEventProcessorAPI1
    { header_ :: JavaHeader
    , base :: BaseGameInputMotionEventProcessor.BaseGameInputMotionEventProcessor
    , logUtil :: IORef (LogUtil.LogUtil)
    , motionRecognizer :: IORef (MotionRecognizer.MotionRecognizer)
    }

instance JavaNull GameInputMotionEventProcessorAPI1 where
    javaNull = javaNullRecord "GameInputMotionEventProcessorAPI1"

instance JavaEquals GameInputMotionEventProcessorAPI1 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMotionEventProcessorAPI1 where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMotionEventProcessorAPI1 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO GameInputMotionEventProcessorAPI1
newRecord_ = do
    base <- BaseGameInputMotionEventProcessor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    motionRecognizer <- newIORef javaNull
    let this = GameInputMotionEventProcessorAPI1 header_ base logUtil motionRecognizer
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: GameInputMotionEventProcessorAPI1 -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.motionRecognizer =<< (fmap (\value_ -> javaCast value_ :: MotionRecognizer.MotionRecognizer) (AllMotionRecognizer.new_))
    pure ()


getInstance :: IO (GameInputMotionEventProcessorAPI1)
getInstance = do
        when ((jget GameInputMotionEventProcessorAPI1.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameInputMotionEventProcessorAPI1.instance_ (assignedValue)
        pure ((javaCast (jget GameInputMotionEventProcessorAPI1.instance_) :: GameInputMotionEventProcessorAPI1))

new_ :: IO GameInputMotionEventProcessorAPI1
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInputMotionEventProcessorAPI1 -> IO ()
init_ this = do
        BaseGameInputMotionEventProcessor.init_ this.base
        initFields_ this
        pure ()
        pure ()


process :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: GameInputMotionEventProcessorAPI1))) () a1

process_super :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: GameInputMotionEventProcessorAPI1)) a1

process_impl :: GameInputMotionEventProcessorAPI1 -> MotionEvent.MotionEvent -> IO (())
process_impl this motionEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).pROCESS) e)
            ) $ do
            let x = (Prelude.fromInteger (jnumericInteger (jio (MotionEvent.getX motionEvent))))
            let y = (Prelude.fromInteger (jnumericInteger (jio (MotionEvent.getY motionEvent))))
            action <- (MotionEvent.getAction motionEvent)
            if (action == MotionEvent.aCTION_DOWN) then do
                Control.Monad.void (MotionRecognizer.processStartMotionEvent ((jget (this).motionRecognizer)) x y (jio (MotionEvent.getDeviceId motionEvent)) 0)
            else if ((action == MotionEvent.aCTION_UP) || (action == MotionEvent.aCTION_CANCEL)) then do
                Control.Monad.void (MotionRecognizer.processEndMotionEvent ((jget (this).motionRecognizer)) x y (jio (MotionEvent.getDeviceId motionEvent)) 0)
            else when (action == MotionEvent.aCTION_MOVE) $ do
                Control.Monad.void (MotionRecognizer.processDraggedMotionEvent ((jget (this).motionRecognizer)) x y (jio (MotionEvent.getDeviceId motionEvent)) 0)
        pure ()


