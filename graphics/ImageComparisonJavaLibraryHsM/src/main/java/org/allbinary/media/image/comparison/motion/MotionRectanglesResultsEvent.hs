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
-- package org.allbinary.media.image.comparison.motion
module MotionRectanglesResultsEvent (module MotionRectanglesResultsEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getMotionRectangles, getMotionRectangles_super, getMotionRectangles_impl, setMotionRectangles, setMotionRectangles_super, setMotionRectangles_impl, getFrame, getFrame_super, getFrame_impl, frame, motionRectangles)
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
import qualified MotionRectangles -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data MotionRectanglesResultsEvent = MotionRectanglesResultsEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , frame :: IORef (Int64)
    , motionRectangles :: IORef (MotionRectangles.MotionRectangles)
    }

instance JavaNull MotionRectanglesResultsEvent where
    javaNull = javaNullRecord "MotionRectanglesResultsEvent"

instance JavaEquals MotionRectanglesResultsEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRectanglesResultsEvent where
    (==) = jrecordEquals

instance JavaObjectClass MotionRectanglesResultsEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MotionRectanglesResultsEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    frame <- newIORef javaNull
    motionRectangles <- newIORef javaNull
    let this = MotionRectanglesResultsEvent header_ base frame motionRectangles
    jregisterLevel header_ this
    jregisterMethod header_ "getMotionRectangles" (\() -> getMotionRectangles_impl this)
    jregisterMethod header_ "setMotionRectangles" (\() -> setMotionRectangles_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    pure this

initFields_ :: MotionRectanglesResultsEvent -> IO ()
initFields_ this = do
    jset this.frame (javaNull)
    jset this.motionRectangles (javaNull)
    pure ()

new_3 :: (JavaObjectClass o1) => o1 -> Int64 -> MotionRectangles.MotionRectangles -> IO MotionRectanglesResultsEvent
new_3 anyTypeObject_ frame motionRectangles = do
    this <- newRecord_
    init_3 this anyTypeObject_ frame motionRectangles
    pure this

init_3 :: (JavaObjectClass o1) => MotionRectanglesResultsEvent -> o1 -> Int64 -> MotionRectangles.MotionRectangles -> IO ()
init_3 this anyTypeObject_ frame motionRectangles = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).frame (frame)
        Control.Monad.void (MotionRectanglesResultsEvent.setMotionRectangles this motionRectangles)
        pure ()


getMotionRectangles :: (JavaObjectClass this_) => this_ -> IO (MotionRectangles.MotionRectangles)
getMotionRectangles object_ = jmethod object_ "getMotionRectangles" (\() -> (getMotionRectangles_impl (javaCast object_ :: MotionRectanglesResultsEvent))) ()

getMotionRectangles_super :: (JavaObjectClass this_) => this_ -> IO (MotionRectangles.MotionRectangles)
getMotionRectangles_super object_ = (getMotionRectangles_impl (javaCast object_ :: MotionRectanglesResultsEvent))

getMotionRectangles_impl :: MotionRectanglesResultsEvent -> IO (MotionRectangles.MotionRectangles)
getMotionRectangles_impl this = do
        pure ((jget (this).motionRectangles))


setMotionRectangles :: (JavaObjectClass this_) => this_ -> MotionRectangles.MotionRectangles -> IO (())
setMotionRectangles object_ a1 = jmethod object_ "setMotionRectangles" (\() -> (setMotionRectangles_impl (javaCast object_ :: MotionRectanglesResultsEvent))) () a1

setMotionRectangles_super :: (JavaObjectClass this_) => this_ -> MotionRectangles.MotionRectangles -> IO (())
setMotionRectangles_super object_ a1 = (setMotionRectangles_impl (javaCast object_ :: MotionRectanglesResultsEvent)) a1

setMotionRectangles_impl :: MotionRectanglesResultsEvent -> MotionRectangles.MotionRectangles -> IO (())
setMotionRectangles_impl this motionRectangles = do
        jset (this).motionRectangles (motionRectangles)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: MotionRectanglesResultsEvent))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: MotionRectanglesResultsEvent))

getFrame_impl :: MotionRectanglesResultsEvent -> IO (Int64)
getFrame_impl this = do
        pure ((jget (this).frame))


