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
-- package org.allbinary.input.motion.trackball.action
module RightTrackballInputToGameKeyEventAction (module RightTrackballInputToGameKeyEventAction, module GameKeyCompleteMotionGestureInputEvent) where

import GameKeyCompleteMotionGestureInputEvent hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified GameKeyCompleteMotionGestureInputEvent -- org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
import qualified TrackballMotionGestureFactory -- org.allbinary.input.motion.gesture.TrackballMotionGestureFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil

data RightTrackballInputToGameKeyEventAction = RightTrackballInputToGameKeyEventAction
    { header_ :: JavaHeader
    , base :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent
    }

instance JavaNull RightTrackballInputToGameKeyEventAction where
    javaNull = javaNullRecord "RightTrackballInputToGameKeyEventAction"

instance JavaEquals RightTrackballInputToGameKeyEventAction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RightTrackballInputToGameKeyEventAction where
    (==) = jrecordEquals

instance JavaObjectClass RightTrackballInputToGameKeyEventAction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO RightTrackballInputToGameKeyEventAction
newRecord_ = do
    base <- GameKeyCompleteMotionGestureInputEvent.newRecord_
    let header_ = base.header_
    let this = RightTrackballInputToGameKeyEventAction header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: RightTrackballInputToGameKeyEventAction -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent)
getInstance = do
        when ((jget RightTrackballInputToGameKeyEventAction.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset RightTrackballInputToGameKeyEventAction.instance_ (assignedValue)
        pure ((javaCast (jget RightTrackballInputToGameKeyEventAction.instance_) :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent))

new_ :: IO RightTrackballInputToGameKeyEventAction
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RightTrackballInputToGameKeyEventAction -> IO ()
init_ this = do
        GameKeyCompleteMotionGestureInputEvent.init_3 this.base ("Right Action") (jget ((jio (TrackballMotionGestureFactory.getInstance))).rIGHT) (jio (PlatformInputMappingFactory.getInputMapping ((jio (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance))))))))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


