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
-- package org.allbinary.input.motion.gesture
module MotionGestureToMotionGestureActionAssociation where

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
import qualified CompleteMotionGestureInputEvent -- org.allbinary.game.input.CompleteMotionGestureInputEvent
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data MotionGestureToMotionGestureActionAssociation = MotionGestureToMotionGestureActionAssociation
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    , motionGestureAction :: IORef (CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent)
    }

instance JavaNull MotionGestureToMotionGestureActionAssociation where
    javaNull = javaNullRecord "MotionGestureToMotionGestureActionAssociation"

instance JavaEquals MotionGestureToMotionGestureActionAssociation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionGestureToMotionGestureActionAssociation where
    (==) = jrecordEquals

instance JavaObjectClass MotionGestureToMotionGestureActionAssociation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionGestureToMotionGestureActionAssociation
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    motionGestureAction <- newIORef javaNull
    let this = MotionGestureToMotionGestureActionAssociation header_ list motionGestureAction
    jregisterLevel header_ this
    jregisterMethod header_ "getMotionGesture" (\() -> getMotionGesture_impl this)
    jregisterMethod header_ "setMotionGestures" (\() -> setMotionGestures_impl this)
    jregisterMethod header_ "getCommandAction" (\() -> getCommandAction_impl this)
    jregisterMethod header_ "setMotionGestureAction" (\() -> setMotionGestureAction_impl this)
    jregisterMethod header_ "isMotionGestureArrayEquals" (\() -> isMotionGestureArrayEquals_impl this)
    pure this

initFields_ :: MotionGestureToMotionGestureActionAssociation -> IO ()
initFields_ this = do
    jset this.list (javaNull)
    jset this.motionGestureAction (javaNull)
    pure ()

new_2 :: BasicArrayList.BasicArrayList -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO MotionGestureToMotionGestureActionAssociation
new_2 list commandAction = do
    this <- newRecord_
    init_2 this list commandAction
    pure this

init_2 :: MotionGestureToMotionGestureActionAssociation -> BasicArrayList.BasicArrayList -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO ()
init_2 this list commandAction = do
        initFields_ this
        jset (this).list (list)
        jset (this).motionGestureAction (commandAction)
        pure ()


getMotionGesture :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getMotionGesture object_ = jmethod object_ "getMotionGesture" (\() -> (getMotionGesture_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation))) ()

getMotionGesture_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getMotionGesture_super object_ = (getMotionGesture_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation))

getMotionGesture_impl :: MotionGestureToMotionGestureActionAssociation -> IO (BasicArrayList.BasicArrayList)
getMotionGesture_impl this = do
        pure ((jget (this).list))


setMotionGestures :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setMotionGestures object_ a1 = jmethod object_ "setMotionGestures" (\() -> (setMotionGestures_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation))) () a1

setMotionGestures_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setMotionGestures_super object_ a1 = (setMotionGestures_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation)) a1

setMotionGestures_impl :: MotionGestureToMotionGestureActionAssociation -> BasicArrayList.BasicArrayList -> IO (())
setMotionGestures_impl this list = do
        jset (this).list (list)
        pure ()


getCommandAction :: (JavaObjectClass this_) => this_ -> IO (CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent)
getCommandAction object_ = jmethod object_ "getCommandAction" (\() -> (getCommandAction_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation))) ()

getCommandAction_super :: (JavaObjectClass this_) => this_ -> IO (CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent)
getCommandAction_super object_ = (getCommandAction_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation))

getCommandAction_impl :: MotionGestureToMotionGestureActionAssociation -> IO (CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent)
getCommandAction_impl this = do
        pure ((jget (this).motionGestureAction))


setMotionGestureAction :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
setMotionGestureAction object_ a1 = jmethod object_ "setMotionGestureAction" (\() -> (setMotionGestureAction_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation))) () a1

setMotionGestureAction_super :: (JavaObjectClass this_) => this_ -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
setMotionGestureAction_super object_ a1 = (setMotionGestureAction_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation)) a1

setMotionGestureAction_impl :: MotionGestureToMotionGestureActionAssociation -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
setMotionGestureAction_impl this commandAction = do
        jset (this).motionGestureAction (commandAction)
        pure ()


isMotionGestureArrayEquals :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
isMotionGestureArrayEquals object_ a1 = jmethod object_ "isMotionGestureArrayEquals" (\() -> (isMotionGestureArrayEquals_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation))) () a1

isMotionGestureArrayEquals_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (Bool)
isMotionGestureArrayEquals_super object_ a1 = (isMotionGestureArrayEquals_impl (javaCast object_ :: MotionGestureToMotionGestureActionAssociation)) a1

isMotionGestureArrayEquals_impl :: MotionGestureToMotionGestureActionAssociation -> BasicArrayList.BasicArrayList -> IO (Bool)
isMotionGestureArrayEquals_impl this aList = do
    javaCatchReturn $ do
        size <- (BasicArrayList.size aList)
        when ((jio (BasicArrayList.size ((jget (this).list)))) /= size) $ do
            javaReturn (False)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \i -> javaIteration (pure ()) $ do
            when ((jindex ((jget (aList).objectArray)) (i)) /= (jindex ((jget ((jget (this).list)).objectArray)) (i))) $ do
                javaReturn (False)
        pure (True)


