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
-- package org.allbinary.input.motion.touch.action
module LeftTouchInputToGameKeyEventAction (module LeftTouchInputToGameKeyEventAction, module GameKeyCompleteMotionGestureInputEvent) where

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
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil

data LeftTouchInputToGameKeyEventAction = LeftTouchInputToGameKeyEventAction
    { header_ :: JavaHeader
    , base :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent
    }

instance JavaNull LeftTouchInputToGameKeyEventAction where
    javaNull = javaNullRecord "LeftTouchInputToGameKeyEventAction"

instance JavaEquals LeftTouchInputToGameKeyEventAction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LeftTouchInputToGameKeyEventAction where
    (==) = jrecordEquals

instance JavaObjectClass LeftTouchInputToGameKeyEventAction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO LeftTouchInputToGameKeyEventAction
newRecord_ = do
    base <- GameKeyCompleteMotionGestureInputEvent.newRecord_
    let header_ = base.header_
    let this = LeftTouchInputToGameKeyEventAction header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: LeftTouchInputToGameKeyEventAction -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent)
getInstance = do
        when ((jget LeftTouchInputToGameKeyEventAction.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset LeftTouchInputToGameKeyEventAction.instance_ (assignedValue)
        pure ((javaCast (jget LeftTouchInputToGameKeyEventAction.instance_) :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent))

new_ :: IO LeftTouchInputToGameKeyEventAction
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LeftTouchInputToGameKeyEventAction -> IO ()
init_ this = do
        GameKeyCompleteMotionGestureInputEvent.init_3 this.base ("Left Action") (jget ((jio (TouchMotionGestureFactory.getInstance))).lEFT) (jio (PlatformInputMappingFactory.getInputMapping ((jio (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance))))))))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


