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
-- package org.allbinary.input.motion.gesture.observer
module ResolveCompleteMotionGestureListener where

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
import qualified CompleteMotionGestureInputEventHandler -- org.allbinary.game.input.CompleteMotionGestureInputEventHandler
import qualified GameKeyCompleteMotionGestureInputEvent -- org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
import qualified GameKeyFromMotionGestureEventListener -- org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener
import qualified MotionGestureToMotionGestureActionAssociation -- org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation
import qualified MotionGestureConfiguration -- org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
import qualified MotionGestureConfigurationFactory -- org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified CompleteMotionGestureListenerInterface

-- implements CompleteMotionGestureListenerInterface
data ResolveCompleteMotionGestureListener = ResolveCompleteMotionGestureListener
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ResolveCompleteMotionGestureListener where
    javaNull = javaNullRecord "ResolveCompleteMotionGestureListener"

instance JavaEquals ResolveCompleteMotionGestureListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResolveCompleteMotionGestureListener where
    (==) = jrecordEquals

instance JavaObjectClass ResolveCompleteMotionGestureListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ResolveCompleteMotionGestureListener
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ResolveCompleteMotionGestureListener header_ logUtil
    jregisterLevel header_ this
    CompleteMotionGestureListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onMotionGestureCompleted" (\() -> onMotionGestureCompleted_impl this)
    pure this

initFields_ :: ResolveCompleteMotionGestureListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO ResolveCompleteMotionGestureListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ResolveCompleteMotionGestureListener -> IO ()
init_ this = do
        initFields_ this
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "MotionGesture to CompleteMotionGesture Reciever" this (jget (commonStrings).cONSTRUCTOR))
        Control.Monad.void (CompleteMotionGestureInputEventHandler.addListener ((jio (CompleteMotionGestureInputEventHandler.getInstance))) (javaCast (jio (GameKeyFromMotionGestureEventListener.new_))))
        pure ()


-- throws Exception
onMotionGestureCompleted :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted object_ a1 = jmethod object_ "onMotionGestureCompleted" (\() -> (onMotionGestureCompleted_impl (javaCast object_ :: ResolveCompleteMotionGestureListener))) () a1

onMotionGestureCompleted_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted_super object_ a1 = (onMotionGestureCompleted_impl (javaCast object_ :: ResolveCompleteMotionGestureListener)) a1

onMotionGestureCompleted_impl :: ResolveCompleteMotionGestureListener -> BasicArrayList.BasicArrayList -> IO (())
onMotionGestureCompleted_impl this list = do
        configuration <- (MotionGestureConfigurationFactory.getInstance)
        commandActionsList <- (MotionGestureConfiguration.getAssociateCommandActionsList configuration)
        size <- (BasicArrayList.size commandActionsList)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let association = (javaCast (jindex ((jget (commandActionsList).objectArray)) (index)) :: MotionGestureToMotionGestureActionAssociation.MotionGestureToMotionGestureActionAssociation)
            when ((jio (MotionGestureToMotionGestureActionAssociation.isMotionGestureArrayEquals association list)) == True) $ do
                let completeMotionGestureInputEvent = (javaCast (jio (MotionGestureToMotionGestureActionAssociation.getCommandAction association)) :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent)
                Control.Monad.void (CompleteMotionGestureInputEventHandler.fireEvent ((jio (CompleteMotionGestureInputEventHandler.getInstance))) (javaCast completeMotionGestureInputEvent))
                throwIO JavaBreak
        pure ()


