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
-- package org.allbinary.input.motion
module CompleteMotionGestureInputToGameMotionGestureInput where

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
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified MotionGestureConfiguration -- org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
import qualified MotionGestureConfigurationFactory -- org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
import qualified DiagonalDownLeftTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction
import qualified DiagonalDownRightTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction
import qualified DiagonalUpLeftTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction
import qualified DiagonalUpRightTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction
import qualified DownTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction
import qualified LeftTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction
import qualified ReleaseTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction
import qualified RightTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction
import qualified UpTouchInputToGameKeyEventAction -- org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data CompleteMotionGestureInputToGameMotionGestureInput = CompleteMotionGestureInputToGameMotionGestureInput
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CompleteMotionGestureInputToGameMotionGestureInput where
    javaNull = javaNullRecord "CompleteMotionGestureInputToGameMotionGestureInput"

instance JavaEquals CompleteMotionGestureInputToGameMotionGestureInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompleteMotionGestureInputToGameMotionGestureInput where
    (==) = jrecordEquals

instance JavaObjectClass CompleteMotionGestureInputToGameMotionGestureInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CompleteMotionGestureInputToGameMotionGestureInput
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = CompleteMotionGestureInputToGameMotionGestureInput header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: CompleteMotionGestureInputToGameMotionGestureInput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO CompleteMotionGestureInputToGameMotionGestureInput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CompleteMotionGestureInputToGameMotionGestureInput -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CompleteMotionGestureInputToGameMotionGestureInput)
getInstance = do
        pure (CompleteMotionGestureInputToGameMotionGestureInput.instance_)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: CompleteMotionGestureInputToGameMotionGestureInput))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: CompleteMotionGestureInputToGameMotionGestureInput))

init_impl :: CompleteMotionGestureInputToGameMotionGestureInput -> IO (())
init_impl this = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).iNIT) e)
            ) $ do
            Control.Monad.void (PreLogUtil.put "Compound Motion Gestures" this (jget (commonStrings).iNIT))
            motionGestureConfiguration <- (MotionGestureConfigurationFactory.getInstance)
            touchMotionGestureFactory <- (TouchMotionGestureFactory.getInstance)
            list <- newIORef =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).dIAGONAL_DOWN_LEFT))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).dIAGONAL_DOWN_RIGHT))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (DiagonalDownRightTouchInputToGameKeyEventAction.getInstance))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).dIAGONAL_UP_LEFT))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).dIAGONAL_UP_RIGHT))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (DiagonalUpRightTouchInputToGameKeyEventAction.getInstance))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).lEFT))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (LeftTouchInputToGameKeyEventAction.getInstance))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).rIGHT))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (RightTouchInputToGameKeyEventAction.getInstance))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).dOWN))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (DownTouchInputToGameKeyEventAction.getInstance))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).uP))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (UpTouchInputToGameKeyEventAction.getInstance))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset list (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget list)) (jget (touchMotionGestureFactory).rELEASED))
            Control.Monad.void (MotionGestureConfiguration.addMotionGestureAction motionGestureConfiguration (jget list) (javaCast (jio (ReleaseTouchInputToGameKeyEventAction.getInstance))))
        pure ()


