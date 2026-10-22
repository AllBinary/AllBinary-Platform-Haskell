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
module CommandFormInputProcessor (module CommandFormInputProcessor, module BasicMenuInputProcessor) where

import BasicMenuInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processInput, processInput_super, processInput_impl, processCommand, processCommand_super, processCommand_impl, processInputList, processInputList_super, processInputList_impl, processMotionInputs, processMotionInputs_super, processMotionInputs_impl, processMotionInput, processMotionInput_super, processMotionInput_impl, toString, toString_super, toString_impl, mOTION_GESTURE_SOURCE_ID, cLICK_DELAY, clickTimeHelper, dOUBLE_CLICK_DELAY, doubleClickTimeHelper, isSingleKeyProcessing, form, hasPressed, pROCESS_COMMAND, nAME_LABEL)
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
import qualified CommandRunnable -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified GameInputStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Command -- javax.microedition.lcdui.Command
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified SWTUtil -- org.allbinary.game.layer.SWTUtil
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified CommandCurrentSelectionForm -- org.allbinary.graphics.form.CommandCurrentSelectionForm
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PrimaryPlayerQueueFactory -- org.allbinary.media.audio.PrimaryPlayerQueueFactory
import qualified SelectSound -- org.allbinary.media.audio.SelectSound
import qualified PrimaryThreadPool -- org.allbinary.thread.PrimaryThreadPool
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicMenuInputProcessor

data CommandFormInputProcessor = CommandFormInputProcessor
    { header_ :: JavaHeader
    , base :: BasicMenuInputProcessor.BasicMenuInputProcessor
    , mOTION_GESTURE_SOURCE_ID :: IORef (Int)
    , cLICK_DELAY :: IORef (Int)
    , clickTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , dOUBLE_CLICK_DELAY :: IORef (Int)
    , doubleClickTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , isSingleKeyProcessing :: IORef (Bool)
    , form :: IORef (ScrollSelectionForm.ScrollSelectionForm)
    , hasPressed :: IORef (Bool)
    , pROCESS_COMMAND :: IORef (String)
    , nAME_LABEL :: IORef (String)
    }

instance JavaNull CommandFormInputProcessor where
    javaNull = javaNullRecord "CommandFormInputProcessor"

instance JavaEquals CommandFormInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandFormInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass CommandFormInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CommandFormInputProcessor
newRecord_ = do
    base <- BasicMenuInputProcessor.newRecord_
    let header_ = base.header_
    mOTION_GESTURE_SOURCE_ID <- newIORef 0
    cLICK_DELAY <- newIORef 0
    clickTimeHelper <- newIORef javaNull
    dOUBLE_CLICK_DELAY <- newIORef 0
    doubleClickTimeHelper <- newIORef javaNull
    isSingleKeyProcessing <- newIORef False
    form <- newIORef javaNull
    hasPressed <- newIORef False
    pROCESS_COMMAND <- newIORef ""
    nAME_LABEL <- newIORef ""
    let this = CommandFormInputProcessor header_ base mOTION_GESTURE_SOURCE_ID cLICK_DELAY clickTimeHelper dOUBLE_CLICK_DELAY doubleClickTimeHelper isSingleKeyProcessing form hasPressed pROCESS_COMMAND nAME_LABEL
    jregisterLevel header_ this
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "processCommand" (\() -> processCommand_impl this)
    jregisterMethod header_ "processInputList" (\() -> processInputList_impl this)
    jregisterMethod header_ "processMotionInputs" (\() -> processMotionInputs_impl this)
    jregisterMethod header_ "processMotionInput" (\() -> processMotionInput_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CommandFormInputProcessor -> IO ()
initFields_ this = do
    jset this.mOTION_GESTURE_SOURCE_ID ((jget ((jio (GameKeyEventFactory.getInstance))).mOTION_GESTURE_SOURCE_ID))
    jset this.cLICK_DELAY (150)
    jset this.clickTimeHelper =<< (TimeDelayHelper.new_1 (jget (this).cLICK_DELAY))
    jset this.dOUBLE_CLICK_DELAY (1200)
    jset this.doubleClickTimeHelper =<< (TimeDelayHelper.new_1 (jget (this).dOUBLE_CLICK_DELAY))
    jset this.isSingleKeyProcessing =<< (InputFeatureFactory.isSingleKeyProcessing ((jio (InputFeatureFactory.getInstance))))
    jset this.form (javaNull)
    jset this.hasPressed (False)
    jset this.pROCESS_COMMAND ("processCommand")
    jset this.nAME_LABEL (" ScrollSelectionForm: ")
    pure ()

new_4 :: BasicArrayList.BasicArrayList -> Int -> MyCanvas.MyCanvas -> ScrollSelectionForm.ScrollSelectionForm -> IO CommandFormInputProcessor
new_4 gameKeyEventList playerInputId gameCanvas form = do
    this <- newRecord_
    init_4 this gameKeyEventList playerInputId gameCanvas form
    pure this

init_4 :: CommandFormInputProcessor -> BasicArrayList.BasicArrayList -> Int -> MyCanvas.MyCanvas -> ScrollSelectionForm.ScrollSelectionForm -> IO ()
init_4 this gameKeyEventList playerInputId gameCanvas form = do
        BasicMenuInputProcessor.init_3 this.base (gameKeyEventList) (playerInputId) (gameCanvas)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).form (form)
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: CommandFormInputProcessor))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: CommandFormInputProcessor)) a1

processInput_impl :: CommandFormInputProcessor -> Int -> IO (Int)
processInput_impl this key = do
    javaCatchReturn $ do
        if ((((key == Canvas.lEFT) || (key == Canvas.rIGHT)) || (key == Canvas.uP)) || (key == Canvas.dOWN)) then do
            Control.Monad.void (PlayerQueue.add ((jio (PrimaryPlayerQueueFactory.getInstance))) (jio (SelectSound.getInstance)))
            Control.Monad.void (ScrollSelectionForm.processInputKey ((jget (this).form)) key)
            javaReturn (1)
        else when (key == Canvas.fIRE) $ do
            Control.Monad.void (PlayerQueue.add ((jio (PrimaryPlayerQueueFactory.getInstance))) (jio (SelectSound.getInstance)))
            javaReturn =<< (CommandFormInputProcessor.processCommand this)
        pure (0)


processCommand :: (JavaObjectClass this_) => this_ -> IO (Int)
processCommand object_ = jmethod object_ "processCommand" (\() -> (processCommand_impl (javaCast object_ :: CommandFormInputProcessor))) ()

processCommand_super :: (JavaObjectClass this_) => this_ -> IO (Int)
processCommand_super object_ = (processCommand_impl (javaCast object_ :: CommandFormInputProcessor))

processCommand_impl :: CommandFormInputProcessor -> IO (Int)
processCommand_impl this = do
    javaCatchReturn $ do
        let commandCurrentSelectionForm = (javaCast (jget (this).form) :: CommandCurrentSelectionForm.CommandCurrentSelectionForm)
        command <- (CommandCurrentSelectionForm.getSelectedCommand commandCurrentSelectionForm)
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jio (Command.toString command)) this (jget (this).pROCESS_COMMAND))
        features <- (Features.getInstance)
        openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
        if (((jget SWTUtil.isSWT) && (jio (Features.isFeature features (javaCast (jget (openGLFeatureFactory).oPENGL))))) && (command /= (jget ((jio (GameCommandsFactory.getInstance))).eXIT_COMMAND))) then do
            Control.Monad.void (CommandRunnable.run ((jio (CommandRunnable.new_2 this command))))
        else do
            Control.Monad.void (ThreadPool.runTask ((jio (PrimaryThreadPool.getInstance))) (javaCast (jio (CommandRunnable.new_2 this command))))
        if (command == (jget ((jio (GameCommandsFactory.getInstance))).qUIT_COMMAND)) then do
            javaReturn ((Prelude.negate 1))
        else do
            javaReturn (1)


-- throws Exception
processInputList :: (JavaObjectClass this_) => this_ -> IO (Int)
processInputList object_ = jmethod object_ "processInputList" (\() -> (processInputList_impl (javaCast object_ :: CommandFormInputProcessor))) ()

processInputList_super :: (JavaObjectClass this_) => this_ -> IO (Int)
processInputList_super object_ = (processInputList_impl (javaCast object_ :: CommandFormInputProcessor))

processInputList_impl :: CommandFormInputProcessor -> IO (Int)
processInputList_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.gameInputStrings)).pROCESS_INPUT) e)
            pure ((Prelude.negate 1))
            ) $ do
            motionInputsIndex <- (CommandFormInputProcessor.processMotionInputs this)
            list <- (BasicMenuInputProcessor.getGameKeyEventList this)
            size <- (BasicArrayList.size list)
            key <- newIORef (0)
            gameKeyEvent <- newIORef (javaNull)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset gameKeyEvent ((javaCast (jindex ((jget (list).objectArray)) (index)) :: GameKeyEvent.GameKeyEvent))
                assignedValue <- (GameKeyEvent.getKey ((jget gameKeyEvent)))
                jset key (assignedValue)
                when ((jio (GameKeyEvent.getSourceId ((jget gameKeyEvent)))) /= (jget (this).mOTION_GESTURE_SOURCE_ID)) $ do
                    when ((jio (CommandFormInputProcessor.processInput this (jget key))) == 1) $ do
                        throwIO JavaBreak
            Control.Monad.void (BasicMenuInputProcessor.clear this)
            if ((size > 0) || (motionInputsIndex >= 0)) then do
                javaReturn (1)
            else do
                javaReturn ((Prelude.negate 1))


-- throws Exception
processMotionInputs :: (JavaObjectClass this_) => this_ -> IO (Int)
processMotionInputs object_ = jmethod object_ "processMotionInputs" (\() -> (processMotionInputs_impl (javaCast object_ :: CommandFormInputProcessor))) ()

processMotionInputs_super :: (JavaObjectClass this_) => this_ -> IO (Int)
processMotionInputs_super object_ = (processMotionInputs_impl (javaCast object_ :: CommandFormInputProcessor))

processMotionInputs_impl :: CommandFormInputProcessor -> IO (Int)
processMotionInputs_impl this = do
        let lastIndex = ((jio (BasicArrayList.size ((jget (this).base.motionGestureEventList)))) - 1)
        when (lastIndex >= 0) $ do
            let motionGestureEvent = (javaCast (jindex ((jget ((jget (this).base.motionGestureEventList)).objectArray)) (lastIndex)) :: MotionGestureEvent.MotionGestureEvent)
            Control.Monad.void (CommandFormInputProcessor.processMotionInput this motionGestureEvent)
        Control.Monad.void (BasicArrayList.clear ((jget (this).base.motionGestureEventList)))
        pure (lastIndex)


-- throws Exception
processMotionInput :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput object_ a1 = jmethod object_ "processMotionInput" (\() -> (processMotionInput_impl (javaCast object_ :: CommandFormInputProcessor))) () a1

processMotionInput_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput_super object_ a1 = (processMotionInput_impl (javaCast object_ :: CommandFormInputProcessor)) a1

processMotionInput_impl :: CommandFormInputProcessor -> MotionGestureEvent.MotionGestureEvent -> IO (())
processMotionInput_impl this motionGestureEvent = do
        touchMotionGestureFactory <- (TouchMotionGestureFactory.getInstance)
        motionGestureInput <- (MotionGestureEvent.getMotionGesture motionGestureEvent)
        if (motionGestureInput == (jget (touchMotionGestureFactory).rELEASED)) then do
            point <- (MotionGestureEvent.getCurrentPoint motionGestureEvent)
            when (jio (ScrollSelectionForm.isInForm ((jget (this).form)) point)) $ do
                index <- (ScrollSelectionForm.getSelectedIndexForPoint ((jget (this).form)) point)
                if (index /= (Prelude.negate 1)) then do
                    Control.Monad.void (PlayerQueue.add ((jio (PrimaryPlayerQueueFactory.getInstance))) (jio (SelectSound.getInstance)))
                    if (index == (jio (ScrollSelectionForm.getSelectedIndex ((jget (this).form))))) then do
                        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).clickTimeHelper)))) $ do
                            Control.Monad.void (CommandFormInputProcessor.processCommand this)
                    else do
                        Control.Monad.void (ScrollSelectionForm.setSelectedIndex ((jget (this).form)) index)
                else do
                    pure ()
            when (jget (this).hasPressed) $ do
                when (Prelude.not (jio (TimeDelayHelper.isTimeTNT ((jget (this).doubleClickTimeHelper))))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) "Double Press" this (jget ((jget (this).base.base.gameInputStrings)).pROCESS_MOTION_INPUT))
                    Control.Monad.void (CommandFormInputProcessor.processCommand this)
                jset ((jget (this).doubleClickTimeHelper)).delay ((jget (this).dOUBLE_CLICK_DELAY))
                Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).doubleClickTimeHelper)))
            jset (this).hasPressed (False)
        else when (motionGestureInput == (jget (touchMotionGestureFactory).pRESSED)) $ do
            jset ((jget (this).doubleClickTimeHelper)).delay (0)
            jset (this).hasPressed (True)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CommandFormInputProcessor))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CommandFormInputProcessor))

toString_impl :: CommandFormInputProcessor -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (BasicMenuInputProcessor.toString_super this.base))))) (jget (this).nAME_LABEL)))) (jio (ScrollSelectionForm.toString ((jget (this).form))))))))


