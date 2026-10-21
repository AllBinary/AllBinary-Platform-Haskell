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
-- package org.allbinary.game.input
module CompleteMotionGestureInputEvent (module CompleteMotionGestureInputEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setName, setName_super, setName_impl, getName, getName_super, getName_impl, setMotionGestureInput, setMotionGestureInput_super, setMotionGestureInput_impl, getMotionGestureInput, getMotionGestureInput_super, getMotionGestureInput_impl, logUtil, name, motionGestureInput)
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
import qualified MotionGestureInput -- org.allbinary.input.motion.gesture.MotionGestureInput
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified CompleteMotionGestureInputInterface

-- implements CompleteMotionGestureInputInterface
data CompleteMotionGestureInputEvent = CompleteMotionGestureInputEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , logUtil :: IORef (LogUtil.LogUtil)
    , name :: IORef (String)
    , motionGestureInput :: IORef (MotionGestureInput.MotionGestureInput)
    }

instance JavaNull CompleteMotionGestureInputEvent where
    javaNull = javaNullRecord "CompleteMotionGestureInputEvent"

instance JavaEquals CompleteMotionGestureInputEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompleteMotionGestureInputEvent where
    (==) = jrecordEquals

instance JavaObjectClass CompleteMotionGestureInputEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CompleteMotionGestureInputEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    name <- newIORef ""
    motionGestureInput <- newIORef javaNull
    let this = CompleteMotionGestureInputEvent header_ base logUtil name motionGestureInput
    jregisterLevel header_ this
    CompleteMotionGestureInputInterface.registerInterface_ header_
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setMotionGestureInput" (\() -> setMotionGestureInput_impl this)
    jregisterMethod header_ "getMotionGestureInput" (\() -> getMotionGestureInput_impl this)
    pure this

initFields_ :: CompleteMotionGestureInputEvent -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.motionGestureInput ((jget ((jio (TouchMotionGestureFactory.getInstance))).nO_MOTION))
    pure ()

new_2 :: String -> MotionGestureInput.MotionGestureInput -> IO CompleteMotionGestureInputEvent
new_2 name motionGestureInput = do
    this <- newRecord_
    init_2 this name motionGestureInput
    pure this

init_2 :: CompleteMotionGestureInputEvent -> String -> MotionGestureInput.MotionGestureInput -> IO ()
init_2 this name motionGestureInput = do
        AllBinaryEventObject.init_1 this.base (motionGestureInput)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (CompleteMotionGestureInputEvent.setName this name)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "InputToGameKeyEventAction" e)
            ) $ do
            Control.Monad.void (CompleteMotionGestureInputEvent.setMotionGestureInput this motionGestureInput)
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: CompleteMotionGestureInputEvent))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: CompleteMotionGestureInputEvent)) a1

setName_impl :: CompleteMotionGestureInputEvent -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: CompleteMotionGestureInputEvent))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: CompleteMotionGestureInputEvent))

getName_impl :: CompleteMotionGestureInputEvent -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setMotionGestureInput :: (JavaObjectClass this_) => this_ -> MotionGestureInput.MotionGestureInput -> IO (())
setMotionGestureInput object_ a1 = jmethod object_ "setMotionGestureInput" (\() -> (setMotionGestureInput_impl (javaCast object_ :: CompleteMotionGestureInputEvent))) () a1

setMotionGestureInput_super :: (JavaObjectClass this_) => this_ -> MotionGestureInput.MotionGestureInput -> IO (())
setMotionGestureInput_super object_ a1 = (setMotionGestureInput_impl (javaCast object_ :: CompleteMotionGestureInputEvent)) a1

setMotionGestureInput_impl :: CompleteMotionGestureInputEvent -> MotionGestureInput.MotionGestureInput -> IO (())
setMotionGestureInput_impl this motionGestureInput = do
        jset (this).motionGestureInput (motionGestureInput)
        pure ()


getMotionGestureInput :: (JavaObjectClass this_) => this_ -> IO (MotionGestureInput.MotionGestureInput)
getMotionGestureInput object_ = jmethod object_ "getMotionGestureInput" (\() -> (getMotionGestureInput_impl (javaCast object_ :: CompleteMotionGestureInputEvent))) ()

getMotionGestureInput_super :: (JavaObjectClass this_) => this_ -> IO (MotionGestureInput.MotionGestureInput)
getMotionGestureInput_super object_ = (getMotionGestureInput_impl (javaCast object_ :: CompleteMotionGestureInputEvent))

getMotionGestureInput_impl :: CompleteMotionGestureInputEvent -> IO (MotionGestureInput.MotionGestureInput)
getMotionGestureInput_impl this = do
        pure ((jget (this).motionGestureInput))


