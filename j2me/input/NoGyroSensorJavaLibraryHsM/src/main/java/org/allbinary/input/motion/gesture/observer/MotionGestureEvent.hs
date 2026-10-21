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
module MotionGestureEvent (module MotionGestureEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getMotionGesture, getMotionGesture_super, getMotionGesture_impl, setMotionGesture, setMotionGesture_super, setMotionGesture_impl, getPreviousPoint, getPreviousPoint_super, getPreviousPoint_impl, setPreviousPoint, setPreviousPoint_super, setPreviousPoint_impl, getCurrentPoint, getCurrentPoint_super, getCurrentPoint_impl, setCurrentPoint, setCurrentPoint_super, setCurrentPoint_impl, toString, toString_super, toString_impl, getId, getId_super, getId_impl, motionGesture, id, previousPoint, currentPoint, pREVIOUS, hASHCODE, commonLabels)
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
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified TsUtil -- org.allbinary.TsUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data MotionGestureEvent = MotionGestureEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , motionGesture :: IORef (MotionGestureInput.MotionGestureInput)
    , id :: IORef (Int)
    , previousPoint :: IORef (GPoint.GPoint)
    , currentPoint :: IORef (GPoint.GPoint)
    , commonLabels :: IORef (CommonLabels.CommonLabels)
    }

instance JavaNull MotionGestureEvent where
    javaNull = javaNullRecord "MotionGestureEvent"

instance JavaEquals MotionGestureEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionGestureEvent where
    (==) = jrecordEquals

instance JavaObjectClass MotionGestureEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

pREVIOUS = " Previous: "

hASHCODE = " hashcode: "

newRecord_ :: IO MotionGestureEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    motionGesture <- newIORef javaNull
    id <- newIORef 0
    previousPoint <- newIORef javaNull
    currentPoint <- newIORef javaNull
    commonLabels <- newIORef javaNull
    let this = MotionGestureEvent header_ base motionGesture id previousPoint currentPoint commonLabels
    jregisterLevel header_ this
    jregisterMethod header_ "getMotionGesture" (\() -> getMotionGesture_impl this)
    jregisterMethod header_ "setMotionGesture" (\() -> setMotionGesture_impl this)
    jregisterMethod header_ "getPreviousPoint" (\() -> getPreviousPoint_impl this)
    jregisterMethod header_ "setPreviousPoint" (\() -> setPreviousPoint_impl this)
    jregisterMethod header_ "getCurrentPoint" (\() -> getCurrentPoint_impl this)
    jregisterMethod header_ "setCurrentPoint" (\() -> setCurrentPoint_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    pure this

initFields_ :: MotionGestureEvent -> IO ()
initFields_ this = do
    jset this.motionGesture ((jget ((jio (TouchMotionGestureFactory.getInstance))).nO_MOTION))
    jset this.id (0)
    jset this.previousPoint ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
    jset this.currentPoint ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
    jset this.commonLabels =<< (CommonLabels.getInstance)
    pure ()

new_3 :: (JavaObjectClass o1) => o1 -> Int -> MotionGestureInput.MotionGestureInput -> IO MotionGestureEvent
new_3 sourceObject_ id motionGesture = do
    this <- newRecord_
    init_3 this sourceObject_ id motionGesture
    pure this

init_3 :: (JavaObjectClass o1) => MotionGestureEvent -> o1 -> Int -> MotionGestureInput.MotionGestureInput -> IO ()
init_3 this sourceObject_ id motionGesture = do
        let source = jtoObject sourceObject_
        AllBinaryEventObject.init_1 this.base (source)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).id (id)
        Control.Monad.void (MotionGestureEvent.setMotionGesture this motionGesture)
        pure ()


getMotionGesture :: (JavaObjectClass this_) => this_ -> IO (MotionGestureInput.MotionGestureInput)
getMotionGesture object_ = jmethod object_ "getMotionGesture" (\() -> (getMotionGesture_impl (javaCast object_ :: MotionGestureEvent))) ()

getMotionGesture_super :: (JavaObjectClass this_) => this_ -> IO (MotionGestureInput.MotionGestureInput)
getMotionGesture_super object_ = (getMotionGesture_impl (javaCast object_ :: MotionGestureEvent))

getMotionGesture_impl :: MotionGestureEvent -> IO (MotionGestureInput.MotionGestureInput)
getMotionGesture_impl this = do
        pure ((jget (this).motionGesture))


setMotionGesture :: (JavaObjectClass this_) => this_ -> MotionGestureInput.MotionGestureInput -> IO (())
setMotionGesture object_ a1 = jmethod object_ "setMotionGesture" (\() -> (setMotionGesture_impl (javaCast object_ :: MotionGestureEvent))) () a1

setMotionGesture_super :: (JavaObjectClass this_) => this_ -> MotionGestureInput.MotionGestureInput -> IO (())
setMotionGesture_super object_ a1 = (setMotionGesture_impl (javaCast object_ :: MotionGestureEvent)) a1

setMotionGesture_impl :: MotionGestureEvent -> MotionGestureInput.MotionGestureInput -> IO (())
setMotionGesture_impl this motionGesture = do
        jset (this).motionGesture (motionGesture)
        pure ()


getPreviousPoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPreviousPoint object_ = jmethod object_ "getPreviousPoint" (\() -> (getPreviousPoint_impl (javaCast object_ :: MotionGestureEvent))) ()

getPreviousPoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPreviousPoint_super object_ = (getPreviousPoint_impl (javaCast object_ :: MotionGestureEvent))

getPreviousPoint_impl :: MotionGestureEvent -> IO (GPoint.GPoint)
getPreviousPoint_impl this = do
        pure ((jget (this).previousPoint))


setPreviousPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setPreviousPoint object_ a1 = jmethod object_ "setPreviousPoint" (\() -> (setPreviousPoint_impl (javaCast object_ :: MotionGestureEvent))) () a1

setPreviousPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setPreviousPoint_super object_ a1 = (setPreviousPoint_impl (javaCast object_ :: MotionGestureEvent)) a1

setPreviousPoint_impl :: MotionGestureEvent -> GPoint.GPoint -> IO (())
setPreviousPoint_impl this previousPoint = do
        jset (this).previousPoint (previousPoint)
        pure ()


getCurrentPoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getCurrentPoint object_ = jmethod object_ "getCurrentPoint" (\() -> (getCurrentPoint_impl (javaCast object_ :: MotionGestureEvent))) ()

getCurrentPoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getCurrentPoint_super object_ = (getCurrentPoint_impl (javaCast object_ :: MotionGestureEvent))

getCurrentPoint_impl :: MotionGestureEvent -> IO (GPoint.GPoint)
getCurrentPoint_impl this = do
        pure ((jget (this).currentPoint))


setCurrentPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setCurrentPoint object_ a1 = jmethod object_ "setCurrentPoint" (\() -> (setCurrentPoint_impl (javaCast object_ :: MotionGestureEvent))) () a1

setCurrentPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setCurrentPoint_super object_ a1 = (setCurrentPoint_impl (javaCast object_ :: MotionGestureEvent)) a1

setCurrentPoint_impl :: MotionGestureEvent -> GPoint.GPoint -> IO (())
setCurrentPoint_impl this currentPoint = do
        jset (this).currentPoint (currentPoint)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: MotionGestureEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: MotionGestureEvent))

toString_impl :: MotionGestureEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        stringUtil <- (StringUtil.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).motionGesture))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonLabels)).cURRENT))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).currentPoint))))
        Control.Monad.void (StringMaker.append stringBuffer (MotionGestureEvent.pREVIOUS))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString stringUtil (jget (this).previousPoint))))
        Control.Monad.void (StringMaker.append stringBuffer (MotionGestureEvent.hASHCODE))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this)))
        (StringMaker.toString stringBuffer)


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: MotionGestureEvent))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: MotionGestureEvent))

getId_impl :: MotionGestureEvent -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


