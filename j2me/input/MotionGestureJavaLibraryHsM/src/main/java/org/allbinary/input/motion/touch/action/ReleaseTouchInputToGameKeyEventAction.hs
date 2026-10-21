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
module ReleaseTouchInputToGameKeyEventAction (module ReleaseTouchInputToGameKeyEventAction, module GameKeyCompleteMotionGestureInputEvent) where

import GameKeyCompleteMotionGestureInputEvent hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, update, update_super, update_impl, instance_, nONE)
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
import qualified LogUtil -- same package or java.lang
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified GameKeyCompleteMotionGestureInputEvent -- org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ReleaseTouchInputToGameKeyEventAction = ReleaseTouchInputToGameKeyEventAction
    { header_ :: JavaHeader
    , base :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent
    , nONE :: IORef (GameKey.GameKey)
    }

instance JavaNull ReleaseTouchInputToGameKeyEventAction where
    javaNull = javaNullRecord "ReleaseTouchInputToGameKeyEventAction"

instance JavaEquals ReleaseTouchInputToGameKeyEventAction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ReleaseTouchInputToGameKeyEventAction where
    (==) = jrecordEquals

instance JavaObjectClass ReleaseTouchInputToGameKeyEventAction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO ReleaseTouchInputToGameKeyEventAction
newRecord_ = do
    base <- GameKeyCompleteMotionGestureInputEvent.newRecord_
    let header_ = base.header_
    nONE <- newIORef javaNull
    let this = ReleaseTouchInputToGameKeyEventAction header_ base nONE
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: ReleaseTouchInputToGameKeyEventAction -> IO ()
initFields_ this = do
    jset this.nONE ((jget ((jio (GameKeyFactory.getInstance))).nONE))
    pure ()


getInstance :: IO (GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent)
getInstance = do
        when ((jget ReleaseTouchInputToGameKeyEventAction.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset ReleaseTouchInputToGameKeyEventAction.instance_ (assignedValue)
        pure ((javaCast (jget ReleaseTouchInputToGameKeyEventAction.instance_) :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent))

new_ :: IO ReleaseTouchInputToGameKeyEventAction
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ReleaseTouchInputToGameKeyEventAction -> IO ()
init_ this = do
        GameKeyCompleteMotionGestureInputEvent.init_3 this.base ("Release Action") (jget ((jio (TouchMotionGestureFactory.getInstance))).rELEASED) (jio (PlatformInputMappingFactory.getInputMapping ((jio (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance))))))))
        initFields_ this
        pure () -- super(...) is in the record above
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            Control.Monad.void (GameKeyCompleteMotionGestureInputEvent.setGameKey this (jget (this).nONE))
            Control.Monad.void (GameKeyCompleteMotionGestureInputEvent.setGameKeyEvent this (jio (GameKeyEventFactory.getInstanceForInput ((jio (GameKeyEventFactory.getInstance))) this (jget (this).nONE))))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ReleaseTouchInputToGameKeyEventAction))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: ReleaseTouchInputToGameKeyEventAction))

update_impl :: ReleaseTouchInputToGameKeyEventAction -> IO (())
update_impl this = do
        pure ()


