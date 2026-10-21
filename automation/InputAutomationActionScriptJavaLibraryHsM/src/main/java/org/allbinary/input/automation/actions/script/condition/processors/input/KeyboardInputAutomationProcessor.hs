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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module KeyboardInputAutomationProcessor where

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
import qualified Thread -- same package or java.lang
import qualified KeyboardActionScriptInputInterface -- same package or java.lang
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

data KeyboardInputAutomationProcessor = KeyboardInputAutomationProcessor
    { header_ :: JavaHeader
    }

instance JavaNull KeyboardInputAutomationProcessor where
    javaNull = javaNullRecord "KeyboardInputAutomationProcessor"

instance JavaEquals KeyboardInputAutomationProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyboardInputAutomationProcessor where
    (==) = jrecordEquals

instance JavaObjectClass KeyboardInputAutomationProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO KeyboardInputAutomationProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = KeyboardInputAutomationProcessor header_
    jregisterLevel header_ this
    pure this

initFields_ :: KeyboardInputAutomationProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO KeyboardInputAutomationProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeyboardInputAutomationProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
process :: KeyboardActionScriptInputInterface.KeyboardActionScriptInputInterface -> IO (())
process keyActionScriptInputInterface = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (javaToString (jget ((jio (CommonLabels.getInstance))).sTART) ++ (jio (KeyboardActionScriptInputInterface.toString keyActionScriptInputInterface))) "KeyInputAutomationProcessor" (jget (commonStrings).pROCESS))
        inputRobotInterface <- (KeyboardActionScriptInputInterface.getInputRobotInterface keyActionScriptInputInterface)
        integer <- (KeyboardActionScriptInputInterface.getKeyArray keyActionScriptInputInterface)
        if ((jio (KeyboardActionScriptInputInterface.getDelayBetweenKeys keyActionScriptInputInterface)) == 0) then do
            forM_ [0 .. (jlength (jio (KeyboardActionScriptInputInterface.getKeyArray keyActionScriptInputInterface))) - 1] $ \index -> javaIteration (pure ()) $ do
                when (jio (KeyboardActionScriptInputInterface.isPress keyActionScriptInputInterface)) $ do
                    Control.Monad.void (InputRobotInterface.keyPress inputRobotInterface (jindex integer (index)))
            Control.Monad.void (threadDelay (Prelude.fromIntegral (jio (KeyboardActionScriptInputInterface.getTime keyActionScriptInputInterface)) * 1000))
            forM_ [((jlength (jio (KeyboardActionScriptInputInterface.getKeyArray keyActionScriptInputInterface))) - 1), ((jlength (jio (KeyboardActionScriptInputInterface.getKeyArray keyActionScriptInputInterface))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                when (jio (KeyboardActionScriptInputInterface.isRelease keyActionScriptInputInterface)) $ do
                    Control.Monad.void (InputRobotInterface.keyRelease inputRobotInterface (jindex integer (index)))
        else do
            forM_ [0 .. (jlength (jio (KeyboardActionScriptInputInterface.getKeyArray keyActionScriptInputInterface))) - 1] $ \index -> javaIteration (pure ()) $ do
                when (jio (KeyboardActionScriptInputInterface.isPress keyActionScriptInputInterface)) $ do
                    Control.Monad.void (InputRobotInterface.keyPress inputRobotInterface (jindex integer (index)))
                Control.Monad.void (threadDelay (Prelude.fromIntegral (jio (KeyboardActionScriptInputInterface.getTime keyActionScriptInputInterface)) * 1000))
                when (jio (KeyboardActionScriptInputInterface.isRelease keyActionScriptInputInterface)) $ do
                    Control.Monad.void (InputRobotInterface.keyRelease inputRobotInterface (jindex integer (index)))
                timeHelper <- (TimeDelayHelper.new_1 (jio (KeyboardActionScriptInputInterface.getDelayBetweenKeys keyActionScriptInputInterface)))
                toLong <- newIORef (0)
                fix $ \loop -> when ((Prelude.not (jio (TimeDelayHelper.isTimeTNT timeHelper))) || ((jget toLong) > 6000)) $ javaIteration (loop) $ do
                    jset toLong ((jget toLong) + 1)
                    Control.Monad.void (threadDelay (Prelude.fromIntegral 50 * 1000))
        pure ()


