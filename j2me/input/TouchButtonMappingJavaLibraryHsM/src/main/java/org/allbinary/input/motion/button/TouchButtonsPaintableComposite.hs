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
-- package org.allbinary.input.motion.button
module TouchButtonsPaintableComposite (module TouchButtonsPaintableComposite, module ProcessPaintable) where

import ProcessPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onEvent, onEvent_super, onEvent_impl, onCompleteMotionGestureInputEvent, onCompleteMotionGestureInputEvent_super, onCompleteMotionGestureInputEvent_impl, process, process_super, process_impl, logUtil, commonStrings, inputMappingInterface, touchButtonsPaintable, timeHelper, released, mETHOD_NAME, rELEASE, fAST_REPEAT, iGNORE)
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
import qualified TouchButtonsMappingPaintable -- same package or java.lang
import qualified CompleteMotionGestureInputEvent -- org.allbinary.game.input.CompleteMotionGestureInputEvent
import qualified CompleteMotionGestureInputEventHandler -- org.allbinary.game.input.CompleteMotionGestureInputEventHandler
import qualified CompleteMotionGestureInputEventListenerInterface -- org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified InputMappingInterface -- org.allbinary.game.input.mapping.InputMappingInterface
import qualified GameKeyCompleteMotionGestureInputEvent -- org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ProcessPaintable -- org.allbinary.graphics.paint.ProcessPaintable
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- implements CompleteMotionGestureInputEventListenerInterface
data TouchButtonsPaintableComposite = TouchButtonsPaintableComposite
    { header_ :: JavaHeader
    , base :: ProcessPaintable.ProcessPaintable
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , inputMappingInterface :: IORef (InputMappingInterface.InputMappingInterface)
    , touchButtonsPaintable :: IORef (TouchButtonsMappingPaintable.TouchButtonsMappingPaintable)
    , timeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , released :: IORef (Bool)
    , mETHOD_NAME :: IORef (String)
    , rELEASE :: IORef (String)
    , fAST_REPEAT :: IORef (String)
    , iGNORE :: IORef (String)
    }

instance JavaNull TouchButtonsPaintableComposite where
    javaNull = javaNullRecord "TouchButtonsPaintableComposite"

instance JavaEquals TouchButtonsPaintableComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonsPaintableComposite where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonsPaintableComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonsPaintableComposite
newRecord_ = do
    base <- ProcessPaintable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    inputMappingInterface <- newIORef javaNull
    touchButtonsPaintable <- newIORef javaNull
    timeHelper <- newIORef javaNull
    released <- newIORef False
    mETHOD_NAME <- newIORef ""
    rELEASE <- newIORef ""
    fAST_REPEAT <- newIORef ""
    iGNORE <- newIORef ""
    let this = TouchButtonsPaintableComposite header_ base logUtil commonStrings inputMappingInterface touchButtonsPaintable timeHelper released mETHOD_NAME rELEASE fAST_REPEAT iGNORE
    jregisterLevel header_ this
    CompleteMotionGestureInputEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onCompleteMotionGestureInputEvent" (\() -> onCompleteMotionGestureInputEvent_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: TouchButtonsPaintableComposite -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.inputMappingInterface (javaNull)
    jset this.touchButtonsPaintable (javaNull)
    jset this.timeHelper =<< (TimeDelayHelper.new_1 250)
    jset this.released (True)
    jset this.mETHOD_NAME ("onCompleteMotionGestureInputEvent")
    jset this.rELEASE ("Ignoring: MotionGestureInput Release")
    jset this.fAST_REPEAT ("Ignoring: MotionGestureInput Repeated To Quickly")
    jset this.iGNORE ("Ignoring: Until Released")
    pure ()

new_2 :: InputMappingInterface.InputMappingInterface -> BasicColor.BasicColor -> IO TouchButtonsPaintableComposite
new_2 inputMappingInterface basicColor = do
    this <- newRecord_
    init_2 this inputMappingInterface basicColor
    pure this

init_2 :: TouchButtonsPaintableComposite -> InputMappingInterface.InputMappingInterface -> BasicColor.BasicColor -> IO ()
init_2 this inputMappingInterface basicColor = do
        ProcessPaintable.init_ this.base
        initFields_ this
        jset (this).inputMappingInterface (inputMappingInterface)
        Control.Monad.void (CompleteMotionGestureInputEventHandler.addListenerInterface ((jio (CompleteMotionGestureInputEventHandler.getInstance))) (javaCast this))
        assignedValue <- (TouchButtonsMappingPaintable.new_1 basicColor)
        jset (this).touchButtonsPaintable (assignedValue)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: TouchButtonsPaintableComposite))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: TouchButtonsPaintableComposite)) a1

onEvent_impl :: TouchButtonsPaintableComposite -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onCompleteMotionGestureInputEvent :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent object_ a1 = jmethod object_ "onCompleteMotionGestureInputEvent" (\() -> (onCompleteMotionGestureInputEvent_impl (javaCast object_ :: TouchButtonsPaintableComposite))) () a1

onCompleteMotionGestureInputEvent_super :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent_super object_ a1 = (onCompleteMotionGestureInputEvent_impl (javaCast object_ :: TouchButtonsPaintableComposite)) a1

onCompleteMotionGestureInputEvent_impl :: TouchButtonsPaintableComposite -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent_impl this completeMotionGestureInputEvent = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget (this).mETHOD_NAME) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "onCompleteMotionGestureInputEvent")
            touchMotionGestureFactory <- (TouchMotionGestureFactory.getInstance)
            let gameKeyCompleteMotionGestureInputEvent = (javaCast completeMotionGestureInputEvent :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent)
            gameKey <- (GameKeyCompleteMotionGestureInputEvent.getGameKey gameKeyCompleteMotionGestureInputEvent)
            motionGestureInput <- (CompleteMotionGestureInputEvent.getMotionGestureInput completeMotionGestureInputEvent)
            when (motionGestureInput == (jget (touchMotionGestureFactory).rELEASED)) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).rELEASE) this (jget (this).mETHOD_NAME))
                jset (this).released (True)
                javaReturn (())
            when ((motionGestureInput == (jget ((jio (TouchMotionGestureFactory.getInstance))).nO_MOTION)) && (Prelude.not (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeHelper)))))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).fAST_REPEAT) this (jget (this).mETHOD_NAME))
                javaReturn (())
            when (Prelude.not (jget (this).released)) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).iGNORE) this (jget (this).mETHOD_NAME))
                javaReturn (())
            jset (this).released (False)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "GameKey: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) gameKey))))) " MotionGestureInput: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) motionGestureInput))))))) this (jget (this).mETHOD_NAME))
            Control.Monad.void (InputMappingInterface.processInputMapping ((jget (this).inputMappingInterface)) gameKey motionGestureInput)
    pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: TouchButtonsPaintableComposite))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: TouchButtonsPaintableComposite))

process_impl :: TouchButtonsPaintableComposite -> IO (())
process_impl this = do
        Control.Monad.void (CompleteMotionGestureInputEventHandler.removeListener ((jio (CompleteMotionGestureInputEventHandler.getInstance))) (javaCast this))
        pure ()


