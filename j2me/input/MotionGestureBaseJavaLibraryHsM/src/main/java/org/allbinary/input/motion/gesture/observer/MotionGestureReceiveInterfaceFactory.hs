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
module MotionGestureReceiveInterfaceFactory where

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
import qualified ResolveCompleteMotionGestureListener -- same package or java.lang
import qualified NullCompleteMotionGestureReceiver -- same package or java.lang
import qualified CompleteMotionGestureListenerInterface -- same package or java.lang
import qualified MotionGestureConfiguration -- org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
import qualified MotionGestureConfigurationFactory -- org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory

data MotionGestureReceiveInterfaceFactory = MotionGestureReceiveInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull MotionGestureReceiveInterfaceFactory where
    javaNull = javaNullRecord "MotionGestureReceiveInterfaceFactory"

instance JavaEquals MotionGestureReceiveInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionGestureReceiveInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass MotionGestureReceiveInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionGestureReceiveInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = MotionGestureReceiveInterfaceFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: MotionGestureReceiveInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MotionGestureReceiveInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionGestureReceiveInterfaceFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CompleteMotionGestureListenerInterface.CompleteMotionGestureListenerInterface)
getInstance = do
    javaCatchReturn $ do
        configuration <- (MotionGestureConfigurationFactory.getInstance)
        if (Prelude.not (jio (MotionGestureConfiguration.isExecutingActionsAllowed configuration))) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: CompleteMotionGestureListenerInterface.CompleteMotionGestureListenerInterface) (NullCompleteMotionGestureReceiver.new_))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: CompleteMotionGestureListenerInterface.CompleteMotionGestureListenerInterface) (ResolveCompleteMotionGestureListener.new_))


