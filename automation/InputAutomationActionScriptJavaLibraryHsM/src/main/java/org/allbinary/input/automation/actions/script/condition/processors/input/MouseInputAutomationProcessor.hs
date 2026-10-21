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
module MouseInputAutomationProcessor where

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
import qualified MouseActionScriptInputInterface -- same package or java.lang
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data MouseInputAutomationProcessor = MouseInputAutomationProcessor
    { header_ :: JavaHeader
    }

instance JavaNull MouseInputAutomationProcessor where
    javaNull = javaNullRecord "MouseInputAutomationProcessor"

instance JavaEquals MouseInputAutomationProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MouseInputAutomationProcessor where
    (==) = jrecordEquals

instance JavaObjectClass MouseInputAutomationProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MouseInputAutomationProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = MouseInputAutomationProcessor header_
    jregisterLevel header_ this
    pure this

initFields_ :: MouseInputAutomationProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MouseInputAutomationProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MouseInputAutomationProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
process :: MouseActionScriptInputInterface.MouseActionScriptInputInterface -> IO (())
process mouseActionScriptInputInterface = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Start - Processing Mouse Input at: "))) (jio (MouseActionScriptInputInterface.toString ((jio (MouseActionScriptInputInterface.getPoint mouseActionScriptInputInterface)))))))) " clicks: "))) (Prelude.fromInteger (jnumericInteger (jio (MouseActionScriptInputInterface.getButtonClicks mouseActionScriptInputInterface))))))))) "MouseInputAutomationProcessor" (jget (commonStrings).pROCESS))
        inputRobotInterface <- (MouseActionScriptInputInterface.getInputRobotInterface mouseActionScriptInputInterface)
        when (((jget ((jio (MouseActionScriptInputInterface.getPoint mouseActionScriptInputInterface))).x) /= (Prelude.negate 1)) && ((jget ((jio (MouseActionScriptInputInterface.getPoint mouseActionScriptInputInterface))).y) /= (Prelude.negate 1))) $ do
            Control.Monad.void (InputRobotInterface.mouseMove inputRobotInterface (jio (MouseActionScriptInputInterface.getPoint mouseActionScriptInputInterface)))
        Control.Monad.void (threadDelay (Prelude.fromIntegral (jio (MouseActionScriptInputInterface.getTime mouseActionScriptInputInterface)) * 1000))
        when ((jio (MouseActionScriptInputInterface.getButtonClicks mouseActionScriptInputInterface)) /= 0) $ do
            Control.Monad.void (InputRobotInterface.mousePress inputRobotInterface (jio (MouseActionScriptInputInterface.getButtonClicks mouseActionScriptInputInterface)))
            Control.Monad.void (threadDelay (Prelude.fromIntegral (jio (MouseActionScriptInputInterface.getTime mouseActionScriptInputInterface)) * 1000))
            Control.Monad.void (InputRobotInterface.mouseRelease inputRobotInterface (jio (MouseActionScriptInputInterface.getButtonClicks mouseActionScriptInputInterface)))
        Control.Monad.void (threadDelay (Prelude.fromIntegral (jio (MouseActionScriptInputInterface.getTime mouseActionScriptInputInterface)) * 1000))
        pure ()


