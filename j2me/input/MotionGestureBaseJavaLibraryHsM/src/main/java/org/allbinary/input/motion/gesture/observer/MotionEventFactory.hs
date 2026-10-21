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
module MotionEventFactory where

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
import qualified MotionGestureEvent -- same package or java.lang
import qualified Input -- org.allbinary.game.input.Input
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified AllBinaryEventObjectFactoryInterface -- org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface

-- implements AllBinaryEventObjectFactoryInterface
data MotionEventFactory = MotionEventFactory
    { header_ :: JavaHeader
    , source :: IORef (Any.Any)
    , id :: IORef (Int)
    }

instance JavaNull MotionEventFactory where
    javaNull = javaNullRecord "MotionEventFactory"

instance JavaEquals MotionEventFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionEventFactory where
    (==) = jrecordEquals

instance JavaObjectClass MotionEventFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE index #-}
index = unsafePerformIO (newIORef (0))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionEventFactory
newRecord_ = do
    header_ <- newJavaHeader
    source <- newIORef javaNull
    id <- newIORef 0
    let this = MotionEventFactory header_ source id
    jregisterLevel header_ this
    AllBinaryEventObjectFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: MotionEventFactory -> IO ()
initFields_ this = do
    jset this.source (javaNull)
    jset this.id (0)
    pure ()

new_2 :: (JavaObjectClass o1) => o1 -> Int -> IO MotionEventFactory
new_2 sourceObject_ id = do
    this <- newRecord_
    init_2 this sourceObject_ id
    pure this

init_2 :: (JavaObjectClass o1) => MotionEventFactory -> o1 -> Int -> IO ()
init_2 this sourceObject_ id = do
        let source = jtoObject sourceObject_
        initFields_ this
        jset (this).source (source)
        jset (this).id (id)
        assignedValue <- (MotionGestureInput.getId ((jget ((jio (TouchMotionGestureFactory.getInstance))).lAST_MOTION)))
        jset MotionEventFactory.index (assignedValue)
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: MotionEventFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: MotionEventFactory))

getInstance_impl :: MotionEventFactory -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance_impl this = do
    javaCatchReturn $ do
        inputFactory <- (InputFactory.getInstance)
        input <- (InputFactory.getInstanceById inputFactory (jpostIncrement MotionEventFactory.index (+ 1)))
        if (input == (jget (inputFactory).nO_INPUT)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: AllBinaryEventObject.AllBinaryEventObject) (MotionGestureEvent.new_3 (jget (this).source) (jget (this).id) (javaCast (jget ((jio (TouchMotionGestureFactory.getInstance))).nO_MOTION) :: MotionGestureInput.MotionGestureInput)))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: AllBinaryEventObject.AllBinaryEventObject) (MotionGestureEvent.new_3 (jget (this).source) (jget (this).id) (javaCast input :: MotionGestureInput.MotionGestureInput)))


