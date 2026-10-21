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
-- package org.allbinary.android.input.motion.api5
module GameInputMotionEventProcessorAPI5 (module GameInputMotionEventProcessorAPI5, module BaseGameInputMotionEventProcessor) where

import BaseGameInputMotionEventProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, isValid, isValid_super, isValid_impl, process, process_super, process_impl, instance_, logUtil, displayInfo, motionRecognizerArray, tOTAL_MINUS_ONE)
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
import qualified GameInputMotionInfoAPI5 -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified MotionEvent -- android.view.MotionEvent
import qualified BaseGameInputMotionEventProcessor -- org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified ScalableListener -- org.allbinary.graphics.displayable.ScalableListener
import qualified AllMotionRecognizer -- org.allbinary.input.motion.AllMotionRecognizer
import qualified MotionRecognizer -- org.allbinary.input.motion.MotionRecognizer
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data GameInputMotionEventProcessorAPI5 = GameInputMotionEventProcessorAPI5
    { header_ :: JavaHeader
    , base :: BaseGameInputMotionEventProcessor.BaseGameInputMotionEventProcessor
    , logUtil :: IORef (LogUtil.LogUtil)
    , displayInfo :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , motionRecognizerArray :: IORef (JavaArray (MotionRecognizer.MotionRecognizer))
    , tOTAL_MINUS_ONE :: IORef (Int)
    }

instance JavaNull GameInputMotionEventProcessorAPI5 where
    javaNull = javaNullRecord "GameInputMotionEventProcessorAPI5"

instance JavaEquals GameInputMotionEventProcessorAPI5 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMotionEventProcessorAPI5 where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMotionEventProcessorAPI5 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO GameInputMotionEventProcessorAPI5
newRecord_ = do
    base <- BaseGameInputMotionEventProcessor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    displayInfo <- newIORef javaNull
    motionRecognizerArray <- newIORef javaNull
    tOTAL_MINUS_ONE <- newIORef 0
    let this = GameInputMotionEventProcessorAPI5 header_ base logUtil displayInfo motionRecognizerArray tOTAL_MINUS_ONE
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: GameInputMotionEventProcessorAPI5 -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.displayInfo =<< (DisplayInfoSingleton.getInstance)
    jset this.motionRecognizerArray (javaNull)
    jset this.tOTAL_MINUS_ONE (0)
    pure ()


getInstance :: IO (GameInputMotionEventProcessorAPI5)
getInstance = do
        when ((jget GameInputMotionEventProcessorAPI5.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameInputMotionEventProcessorAPI5.instance_ (assignedValue)
        pure ((javaCast (jget GameInputMotionEventProcessorAPI5.instance_) :: GameInputMotionEventProcessorAPI5))

new_ :: IO GameInputMotionEventProcessorAPI5
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInputMotionEventProcessorAPI5 -> IO ()
init_ this = do
        BaseGameInputMotionEventProcessor.init_ this.base
        initFields_ this
        let size = (jget ((jio (GameInputMotionInfoAPI5.getInstance))).mAX_POINTERS)
        jset (this).motionRecognizerArray ((jnewArray (size) javaNull))
        jset (this).tOTAL_MINUS_ONE (size)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: MotionRecognizer.MotionRecognizer) (AllMotionRecognizer.new_))
            jsetIndex ((jget (this).motionRecognizerArray)) (index) (assignedValue)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: GameInputMotionEventProcessorAPI5))) () a1

isValid_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: GameInputMotionEventProcessorAPI5)) a1

isValid_impl :: GameInputMotionEventProcessorAPI5 -> Int -> IO (Bool)
isValid_impl this pointerId = do
    javaCatchReturn $ do
        if (pointerId > (jget (this).tOTAL_MINUS_ONE)) then do
            let message = "Log that the pointer Ids are not what would be expected or Android has more than what I set my stuff to support pointerId: "
            Control.Monad.void (ForcedLogUtil.log (message ++ javaToString pointerId) this)
            javaReturn (False)
        else do
            javaReturn (True)


process :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: GameInputMotionEventProcessorAPI5))) () a1

process_super :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: GameInputMotionEventProcessorAPI5)) a1

process_impl :: GameInputMotionEventProcessorAPI5 -> MotionEvent.MotionEvent -> IO (())
process_impl this motionEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).pROCESS) e)
            ) $ do
            action <- (MotionEvent.getAction motionEvent)
            total <- newIORef ((jlength (jget (this).motionRecognizerArray)))
            if ((jget total) > (jio (MotionEvent.getPointerCount motionEvent))) then do
                assignedValue <- (MotionEvent.getPointerCount motionEvent)
                jset total (assignedValue)
            else do
                let message = "Log that Android has more pointers than I have expected so increase it motionEvent.getPointerCount(): "
                Control.Monad.void (ForcedLogUtil.log (message ++ javaToString (jio (MotionEvent.getPointerCount motionEvent))) this)
            let totalMinusOne = ((jget total) - 1)
            if (action == MotionEvent.aCTION_DOWN) then do
                forM_ [totalMinusOne, totalMinusOne + (-1) .. 0] $ \pointerIndex -> javaIteration (pure ()) $ do
                    pointerId <- (MotionEvent.getPointerId motionEvent pointerIndex)
                    when (jio (GameInputMotionEventProcessorAPI5.isValid this pointerId)) $ do
                        scalableListener <- (DisplayInfoSingleton.getScalableListener ((jget (this).displayInfo)))
                        let x = (Prelude.fromInteger (jnumericInteger (((((jio (MotionEvent.getX motionEvent pointerIndex)) - (jio (DisplayInfoSingleton.getLeft ((jget (this).displayInfo)))))) / (jio (ScalableListener.getRatio scalableListener (jio (DisplayInfoSingleton.getRatio ((jget (this).displayInfo))))))))))
                        let y = (Prelude.fromInteger (jnumericInteger (((((jio (MotionEvent.getY motionEvent pointerIndex)) - (jio (DisplayInfoSingleton.getTop ((jget (this).displayInfo)))))) / (jio (ScalableListener.getRatio scalableListener (jio (DisplayInfoSingleton.getRatio ((jget (this).displayInfo))))))))))
                        Control.Monad.void (processStartMotionEvent ((jindex ((jget (this).motionRecognizerArray)) (pointerId))) x y (jio (MotionEvent.getDeviceId motionEvent)) 0)
            else if ((action == MotionEvent.aCTION_UP) || (action == MotionEvent.aCTION_CANCEL)) then do
                forM_ [totalMinusOne, totalMinusOne + (-1) .. 0] $ \pointerIndex -> javaIteration (pure ()) $ do
                    pointerId <- (MotionEvent.getPointerId motionEvent pointerIndex)
                    when (jio (GameInputMotionEventProcessorAPI5.isValid this pointerId)) $ do
                        scalableListener <- (DisplayInfoSingleton.getScalableListener ((jget (this).displayInfo)))
                        let x = (Prelude.fromInteger (jnumericInteger (((((jio (MotionEvent.getX motionEvent pointerIndex)) - (jio (DisplayInfoSingleton.getLeft ((jget (this).displayInfo)))))) / (jio (ScalableListener.getRatio scalableListener (jio (DisplayInfoSingleton.getRatio ((jget (this).displayInfo))))))))))
                        let y = (Prelude.fromInteger (jnumericInteger (((((jio (MotionEvent.getY motionEvent pointerIndex)) - (jio (DisplayInfoSingleton.getTop ((jget (this).displayInfo)))))) / (jio (ScalableListener.getRatio scalableListener (jio (DisplayInfoSingleton.getRatio ((jget (this).displayInfo))))))))))
                        Control.Monad.void (processEndMotionEvent ((jindex ((jget (this).motionRecognizerArray)) (pointerId))) x y (jio (MotionEvent.getDeviceId motionEvent)) 0)
            else when (action == MotionEvent.aCTION_MOVE) $ do
                forM_ [totalMinusOne, totalMinusOne + (-1) .. 0] $ \pointerIndex -> javaIteration (pure ()) $ do
                    pointerId <- (MotionEvent.getPointerId motionEvent pointerIndex)
                    when (jio (GameInputMotionEventProcessorAPI5.isValid this pointerId)) $ do
                        scalableListener <- (DisplayInfoSingleton.getScalableListener ((jget (this).displayInfo)))
                        let x = (Prelude.fromInteger (jnumericInteger (((((jio (MotionEvent.getX motionEvent pointerIndex)) - (jio (DisplayInfoSingleton.getLeft ((jget (this).displayInfo)))))) / (jio (ScalableListener.getRatio scalableListener (jio (DisplayInfoSingleton.getRatio ((jget (this).displayInfo))))))))))
                        let y = (Prelude.fromInteger (jnumericInteger (((((jio (MotionEvent.getY motionEvent pointerIndex)) - (jio (DisplayInfoSingleton.getTop ((jget (this).displayInfo)))))) / (jio (ScalableListener.getRatio scalableListener (jio (DisplayInfoSingleton.getRatio ((jget (this).displayInfo))))))))))
                        Control.Monad.void (processDraggedMotionEvent ((jindex ((jget (this).motionRecognizerArray)) (pointerId))) x y (jio (MotionEvent.getDeviceId motionEvent)) 0)
        pure ()


