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
module GameMotionGestureListener where

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
import qualified CompleteMotionGestureListenerInterface -- same package or java.lang
import qualified MotionGestureEvent -- same package or java.lang
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified MotionGestureEventListener

-- implements MotionGestureEventListener
data GameMotionGestureListener = GameMotionGestureListener
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , motionGestureCollection :: IORef (BasicArrayList.BasicArrayList)
    , touchGestureCollection :: IORef (BasicArrayList.BasicArrayList)
    , signed :: IORef (CompleteMotionGestureListenerInterface.CompleteMotionGestureListenerInterface)
    }

instance JavaNull GameMotionGestureListener where
    javaNull = javaNullRecord "GameMotionGestureListener"

instance JavaEquals GameMotionGestureListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameMotionGestureListener where
    (==) = jrecordEquals

instance JavaObjectClass GameMotionGestureListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameMotionGestureListener
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    motionGestureCollection <- newIORef javaNull
    touchGestureCollection <- newIORef javaNull
    signed <- newIORef javaNull
    let this = GameMotionGestureListener header_ logUtil commonStrings motionGestureCollection touchGestureCollection signed
    jregisterLevel header_ this
    MotionGestureEventListener.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onUpMotionGestureEvent" (\() -> onUpMotionGestureEvent_impl this)
    jregisterMethod header_ "onDownMotionGestureEvent" (\() -> onDownMotionGestureEvent_impl this)
    jregisterMethod header_ "onLeftMotionGestureEvent" (\() -> onLeftMotionGestureEvent_impl this)
    jregisterMethod header_ "onRightMotionGestureEvent" (\() -> onRightMotionGestureEvent_impl this)
    jregisterMethod header_ "onDiagonalDownRightMotionGestureEvent" (\() -> onDiagonalDownRightMotionGestureEvent_impl this)
    jregisterMethod header_ "onDiagonalDownLeftMotionGestureEvent" (\() -> onDiagonalDownLeftMotionGestureEvent_impl this)
    jregisterMethod header_ "onDiagonalUpRightMotionGestureEvent" (\() -> onDiagonalUpRightMotionGestureEvent_impl this)
    jregisterMethod header_ "onDiagonalUpLeftMotionGestureEvent" (\() -> onDiagonalUpLeftMotionGestureEvent_impl this)
    jregisterMethod header_ "onPressedMotionGestureEvent" (\() -> onPressedMotionGestureEvent_impl this)
    jregisterMethod header_ "released" (\() -> released_impl this)
    jregisterMethod header_ "onScrolledMotionGestureEvent" (\() -> onScrolledMotionGestureEvent_impl this)
    jregisterMethod header_ "onMotionGestureEvent" (\() -> onMotionGestureEvent_impl this)
    pure this

initFields_ :: GameMotionGestureListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.motionGestureCollection =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.touchGestureCollection =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.signed (javaNull)
    pure ()

new_1 :: CompleteMotionGestureListenerInterface.CompleteMotionGestureListenerInterface -> IO GameMotionGestureListener
new_1 signed = do
    this <- newRecord_
    init_1 this signed
    pure this

init_1 :: GameMotionGestureListener -> CompleteMotionGestureListenerInterface.CompleteMotionGestureListenerInterface -> IO ()
init_1 this signed = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        jset (this).signed (signed)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onEvent_impl :: GameMotionGestureListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED) this)
        pure ()


onUpMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onUpMotionGestureEvent object_ a1 = jmethod object_ "onUpMotionGestureEvent" (\() -> (onUpMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onUpMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onUpMotionGestureEvent_super object_ a1 = (onUpMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onUpMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onUpMotionGestureEvent_impl this ev = do
        Control.Monad.void (GameMotionGestureListener.onMotionGestureEvent this ev)
        pure ()


onDownMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDownMotionGestureEvent object_ a1 = jmethod object_ "onDownMotionGestureEvent" (\() -> (onDownMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onDownMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDownMotionGestureEvent_super object_ a1 = (onDownMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onDownMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDownMotionGestureEvent_impl this ev = do
        Control.Monad.void (GameMotionGestureListener.onMotionGestureEvent this ev)
        pure ()


onLeftMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onLeftMotionGestureEvent object_ a1 = jmethod object_ "onLeftMotionGestureEvent" (\() -> (onLeftMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onLeftMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onLeftMotionGestureEvent_super object_ a1 = (onLeftMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onLeftMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onLeftMotionGestureEvent_impl this ev = do
        Control.Monad.void (GameMotionGestureListener.onMotionGestureEvent this ev)
        pure ()


onRightMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onRightMotionGestureEvent object_ a1 = jmethod object_ "onRightMotionGestureEvent" (\() -> (onRightMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onRightMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onRightMotionGestureEvent_super object_ a1 = (onRightMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onRightMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onRightMotionGestureEvent_impl this ev = do
        Control.Monad.void (GameMotionGestureListener.onMotionGestureEvent this ev)
        pure ()


onDiagonalDownRightMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownRightMotionGestureEvent object_ a1 = jmethod object_ "onDiagonalDownRightMotionGestureEvent" (\() -> (onDiagonalDownRightMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onDiagonalDownRightMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownRightMotionGestureEvent_super object_ a1 = (onDiagonalDownRightMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onDiagonalDownRightMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownRightMotionGestureEvent_impl this ev = do
        Control.Monad.void (GameMotionGestureListener.onMotionGestureEvent this ev)
        pure ()


onDiagonalDownLeftMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownLeftMotionGestureEvent object_ a1 = jmethod object_ "onDiagonalDownLeftMotionGestureEvent" (\() -> (onDiagonalDownLeftMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onDiagonalDownLeftMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownLeftMotionGestureEvent_super object_ a1 = (onDiagonalDownLeftMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onDiagonalDownLeftMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalDownLeftMotionGestureEvent_impl this ev = do
        Control.Monad.void (GameMotionGestureListener.onMotionGestureEvent this ev)
        pure ()


onDiagonalUpRightMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpRightMotionGestureEvent object_ a1 = jmethod object_ "onDiagonalUpRightMotionGestureEvent" (\() -> (onDiagonalUpRightMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onDiagonalUpRightMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpRightMotionGestureEvent_super object_ a1 = (onDiagonalUpRightMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onDiagonalUpRightMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpRightMotionGestureEvent_impl this ev = do
        Control.Monad.void (GameMotionGestureListener.onMotionGestureEvent this ev)
        pure ()


onDiagonalUpLeftMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpLeftMotionGestureEvent object_ a1 = jmethod object_ "onDiagonalUpLeftMotionGestureEvent" (\() -> (onDiagonalUpLeftMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onDiagonalUpLeftMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpLeftMotionGestureEvent_super object_ a1 = (onDiagonalUpLeftMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onDiagonalUpLeftMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onDiagonalUpLeftMotionGestureEvent_impl this ev = do
        Control.Monad.void (GameMotionGestureListener.onMotionGestureEvent this ev)
        pure ()


onPressedMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onPressedMotionGestureEvent object_ a1 = jmethod object_ "onPressedMotionGestureEvent" (\() -> (onPressedMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onPressedMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onPressedMotionGestureEvent_super object_ a1 = (onPressedMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onPressedMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onPressedMotionGestureEvent_impl this ev = do
        Control.Monad.void (BasicArrayList.add ((jget (this).touchGestureCollection)) (jio (MotionGestureEvent.getMotionGesture ev)))
        pure ()


released :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
released object_ a1 = jmethod object_ "released" (\() -> (released_impl (javaCast object_ :: GameMotionGestureListener))) () a1

released_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
released_super object_ a1 = (released_impl (javaCast object_ :: GameMotionGestureListener)) a1

released_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
released_impl this ev = do
        handle (\(e :: JavaException) -> do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonStrings)).eXCEPTION_LABEL))
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (MotionGestureEvent.getMotionGesture ev)))))
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "release" e)
            ) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).touchGestureCollection)) (jio (MotionGestureEvent.getMotionGesture ev)))
            Control.Monad.void (CompleteMotionGestureListenerInterface.onMotionGestureCompleted ((jget (this).signed)) (jget (this).touchGestureCollection))
            Control.Monad.void (BasicArrayList.clear ((jget (this).touchGestureCollection)))
        pure ()


onScrolledMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent object_ a1 = jmethod object_ "onScrolledMotionGestureEvent" (\() -> (onScrolledMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onScrolledMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent_super object_ a1 = (onScrolledMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onScrolledMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onScrolledMotionGestureEvent_impl this motionGestureEvent = do
        pure ()


onMotionGestureEvent :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent object_ a1 = jmethod object_ "onMotionGestureEvent" (\() -> (onMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener))) () a1

onMotionGestureEvent_super :: (JavaObjectClass this_) => this_ -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_super object_ a1 = (onMotionGestureEvent_impl (javaCast object_ :: GameMotionGestureListener)) a1

onMotionGestureEvent_impl :: GameMotionGestureListener -> MotionGestureEvent.MotionGestureEvent -> IO (())
onMotionGestureEvent_impl this ev = do
        handle (\(e :: JavaException) -> do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonStrings)).eXCEPTION_LABEL))
            Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (MotionGestureEvent.getMotionGesture ev)))))
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "onMotionGestureEvent" e)
            ) $ do
            motionGestureInput <- (MotionGestureEvent.getMotionGesture ev)
            if (motionGestureInput == (jget ((jio (TouchMotionGestureFactory.getInstance))).pRESSED)) then do
                Control.Monad.void (GameMotionGestureListener.onPressedMotionGestureEvent this ev)
            else if (motionGestureInput == (jget ((jio (TouchMotionGestureFactory.getInstance))).rELEASED)) then do
                Control.Monad.void (GameMotionGestureListener.released this ev)
            else do
                Control.Monad.void (BasicArrayList.add ((jget (this).motionGestureCollection)) motionGestureInput)
                Control.Monad.void (CompleteMotionGestureListenerInterface.onMotionGestureCompleted ((jget (this).signed)) (jget (this).motionGestureCollection))
                Control.Monad.void (BasicArrayList.clear ((jget (this).motionGestureCollection)))
                Control.Monad.void (BasicArrayList.clear ((jget (this).touchGestureCollection)))
        pure ()


