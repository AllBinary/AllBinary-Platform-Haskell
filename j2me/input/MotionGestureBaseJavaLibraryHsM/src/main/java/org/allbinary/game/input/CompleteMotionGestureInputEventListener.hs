{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module CompleteMotionGestureInputEventListener where

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
import qualified CompleteMotionGestureInputEvent -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified CompleteMotionGestureInputEventListenerInterface

-- implements CompleteMotionGestureInputEventListenerInterface
data CompleteMotionGestureInputEventListener = CompleteMotionGestureInputEventListener
    { header_ :: JavaHeader
    }

instance JavaNull CompleteMotionGestureInputEventListener where
    javaNull = javaNullRecord "CompleteMotionGestureInputEventListener"

instance JavaEquals CompleteMotionGestureInputEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompleteMotionGestureInputEventListener where
    (==) = jrecordEquals

instance JavaObjectClass CompleteMotionGestureInputEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CompleteMotionGestureInputEventListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = CompleteMotionGestureInputEventListener header_
    jregisterLevel header_ this
    CompleteMotionGestureInputEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onCompleteMotionGestureInputEvent" (\() -> onCompleteMotionGestureInputEvent_impl this)
    pure this

initFields_ :: CompleteMotionGestureInputEventListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CompleteMotionGestureInputEventListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CompleteMotionGestureInputEventListener -> IO ()
init_ this = do
    initFields_ this


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: CompleteMotionGestureInputEventListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: CompleteMotionGestureInputEventListener)) a1

onEvent_impl :: CompleteMotionGestureInputEventListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        pure ()


onCompleteMotionGestureInputEvent :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent object_ a1 = jmethod object_ "onCompleteMotionGestureInputEvent" (\() -> (onCompleteMotionGestureInputEvent_impl (javaCast object_ :: CompleteMotionGestureInputEventListener))) () a1

onCompleteMotionGestureInputEvent_super :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent_super object_ a1 = (onCompleteMotionGestureInputEvent_impl (javaCast object_ :: CompleteMotionGestureInputEventListener)) a1

onCompleteMotionGestureInputEvent_impl :: CompleteMotionGestureInputEventListener -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
onCompleteMotionGestureInputEvent_impl this completeMotionGestureInputEvent = do
        pure ()


