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
-- package org.allbinary.input.automation.robot
module NullInputRobot (module NullInputRobot, module AbstractInputRobot) where

import AbstractInputRobot hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getName, getName_super, getName_impl, getHelpSet, getHelpSet_super, getHelpSet_impl, getMousePoint, getMousePoint_super, getMousePoint_impl, keyPress, keyPress_super, keyPress_impl, keyRelease, keyRelease_super, keyRelease_impl, mouseMove, mouseMove_super, mouseMove_impl, mousePress, mousePress_super, mousePress_impl, mouseRelease, mouseRelease_super, mouseRelease_impl, createScreenCapture, createScreenCapture_super, createScreenCapture_impl, delay, delay_super, delay_impl, getAutoDelay, getAutoDelay_super, getAutoDelay_impl, getPixelColor, getPixelColor_super, getPixelColor_impl, isAutoWaitForIdle, isAutoWaitForIdle_super, isAutoWaitForIdle_impl, mouseWheel, mouseWheel_super, mouseWheel_impl, setAutoDelay, setAutoDelay_super, setAutoDelay_impl, setAutoWaitForIdle, setAutoWaitForIdle_super, setAutoWaitForIdle_impl, toString, toString_super, toString_impl, waitForIdle, waitForIdle_super, waitForIdle_impl, logUtil, lIBRARY_NAME, nAME)
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
import qualified Point -- same package or java.lang
import qualified Rectangle -- same package or java.lang
import qualified Color -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified HelpSet -- javax.help.HelpSet
import qualified AbstractInputRobot -- org.allbinary.input.automation.AbstractInputRobot
import qualified PointFactory -- org.allbinary.input.automation.PointFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
-- import java.awt.*
import qualified InputRobotInterface

-- implements InputRobotInterface
data NullInputRobot = NullInputRobot
    { header_ :: JavaHeader
    , base :: AbstractInputRobot.AbstractInputRobot
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull NullInputRobot where
    javaNull = javaNullRecord "NullInputRobot"

instance JavaEquals NullInputRobot where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullInputRobot where
    (==) = jrecordEquals

instance JavaObjectClass NullInputRobot where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

lIBRARY_NAME = "null"

nAME = "NULL"

newRecord_ :: IO NullInputRobot
newRecord_ = do
    base <- AbstractInputRobot.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = NullInputRobot header_ base logUtil
    jregisterLevel header_ this
    InputRobotInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getHelpSet" (\() -> getHelpSet_impl this)
    jregisterMethod header_ "getMousePoint" (\() -> getMousePoint_impl this)
    jregisterMethod header_ "keyPress" (\() -> keyPress_impl this)
    jregisterMethod header_ "keyRelease" (\() -> keyRelease_impl this)
    jregisterMethod header_ "mouseMove" (\() -> mouseMove_impl this)
    jregisterMethod header_ "mousePress" (\() -> mousePress_impl this)
    jregisterMethod header_ "mouseRelease" (\() -> mouseRelease_impl this)
    jregisterMethod header_ "createScreenCapture" (\() -> createScreenCapture_impl this)
    jregisterMethod header_ "delay" (\() -> delay_impl this)
    jregisterMethod header_ "getAutoDelay" (\() -> getAutoDelay_impl this)
    jregisterMethod header_ "getPixelColor" (\() -> getPixelColor_impl this)
    jregisterMethod header_ "isAutoWaitForIdle" (\() -> isAutoWaitForIdle_impl this)
    jregisterMethod header_ "mouseWheel" (\() -> mouseWheel_impl this)
    jregisterMethod header_ "setAutoDelay" (\() -> setAutoDelay_impl this)
    jregisterMethod header_ "setAutoWaitForIdle" (\() -> setAutoWaitForIdle_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "waitForIdle" (\() -> waitForIdle_impl this)
    pure this

initFields_ :: NullInputRobot -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO NullInputRobot
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullInputRobot -> IO ()
init_ this = do
        AbstractInputRobot.init_1 this.base (javaNull)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: NullInputRobot))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: NullInputRobot))

getName_impl :: NullInputRobot -> IO (String)
getName_impl this = do
        pure (NullInputRobot.nAME)


getHelpSet :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet object_ = jmethod object_ "getHelpSet" (\() -> (getHelpSet_impl (javaCast object_ :: NullInputRobot))) ()

getHelpSet_super :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet_super object_ = (getHelpSet_impl (javaCast object_ :: NullInputRobot))

getHelpSet_impl :: NullInputRobot -> IO (HelpSet.HelpSet)
getHelpSet_impl this = do
        pure (javaNull)


getMousePoint :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getMousePoint object_ = jmethod object_ "getMousePoint" (\() -> (getMousePoint_impl (javaCast object_ :: NullInputRobot))) ()

getMousePoint_super :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getMousePoint_super object_ = (getMousePoint_impl (javaCast object_ :: NullInputRobot))

getMousePoint_impl :: NullInputRobot -> IO (Point.Point)
getMousePoint_impl this = do
        (PointFactory.getInstance 0 0)


keyPress :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPress object_ a1 = jmethod object_ "keyPress" (\() -> (keyPress_impl (javaCast object_ :: NullInputRobot))) () a1

keyPress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPress_super object_ a1 = (keyPress_impl (javaCast object_ :: NullInputRobot)) a1

keyPress_impl :: NullInputRobot -> Int -> IO (())
keyPress_impl this keycode = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("KeyCode: " ++ javaToString keycode) this "keyPress")
        pure ()


keyRelease :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRelease object_ a1 = jmethod object_ "keyRelease" (\() -> (keyRelease_impl (javaCast object_ :: NullInputRobot))) () a1

keyRelease_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRelease_super object_ a1 = (keyRelease_impl (javaCast object_ :: NullInputRobot)) a1

keyRelease_impl :: NullInputRobot -> Int -> IO (())
keyRelease_impl this keycode = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("KeyCode: " ++ javaToString keycode) this "keyRelease")
        pure ()


mouseMove :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove object_ a1 a2 = jmethod object_ "mouseMove" (\() -> (mouseMove_impl (javaCast object_ :: NullInputRobot))) () a1 a2

mouseMove_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove_super object_ a1 a2 = (mouseMove_impl (javaCast object_ :: NullInputRobot)) a1 a2

mouseMove_impl :: NullInputRobot -> Int -> Int -> IO (())
mouseMove_impl this x y = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("X: " ++ javaToString x) ++ " Y: ") ++ javaToString y) this "mouseMove")
        pure ()


mousePress :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mousePress object_ a1 = jmethod object_ "mousePress" (\() -> (mousePress_impl (javaCast object_ :: NullInputRobot))) () a1

mousePress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mousePress_super object_ a1 = (mousePress_impl (javaCast object_ :: NullInputRobot)) a1

mousePress_impl :: NullInputRobot -> Int -> IO (())
mousePress_impl this buttons = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Buttons: " ++ javaToString buttons) this "mousePress")
        pure ()


mouseRelease :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseRelease object_ a1 = jmethod object_ "mouseRelease" (\() -> (mouseRelease_impl (javaCast object_ :: NullInputRobot))) () a1

mouseRelease_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseRelease_super object_ a1 = (mouseRelease_impl (javaCast object_ :: NullInputRobot)) a1

mouseRelease_impl :: NullInputRobot -> Int -> IO (())
mouseRelease_impl this buttons = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Buttons: " ++ javaToString buttons) this "mouseRelease")
        pure ()


createScreenCapture :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture object_ a1 = jmethod object_ "createScreenCapture" (\() -> (createScreenCapture_impl (javaCast object_ :: NullInputRobot))) () a1

createScreenCapture_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture_super object_ a1 = (createScreenCapture_impl (javaCast object_ :: NullInputRobot)) a1

createScreenCapture_impl :: NullInputRobot -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture_impl this screenRect = do
        pure (javaNull)


delay :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delay object_ a1 = jmethod object_ "delay" (\() -> (delay_impl (javaCast object_ :: NullInputRobot))) () a1

delay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delay_super object_ a1 = (delay_impl (javaCast object_ :: NullInputRobot)) a1

delay_impl :: NullInputRobot -> Int -> IO (())
delay_impl this ms = do
        pure ()


getAutoDelay :: (JavaObjectClass this_) => this_ -> IO (Int)
getAutoDelay object_ = jmethod object_ "getAutoDelay" (\() -> (getAutoDelay_impl (javaCast object_ :: NullInputRobot))) ()

getAutoDelay_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAutoDelay_super object_ = (getAutoDelay_impl (javaCast object_ :: NullInputRobot))

getAutoDelay_impl :: NullInputRobot -> IO (Int)
getAutoDelay_impl this = do
        pure ((Prelude.negate 1))


getPixelColor :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Color.Color)
getPixelColor object_ a1 a2 = jmethod object_ "getPixelColor" (\() -> (getPixelColor_impl (javaCast object_ :: NullInputRobot))) () a1 a2

getPixelColor_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Color.Color)
getPixelColor_super object_ a1 a2 = (getPixelColor_impl (javaCast object_ :: NullInputRobot)) a1 a2

getPixelColor_impl :: NullInputRobot -> Int -> Int -> IO (Color.Color)
getPixelColor_impl this x y = do
        pure (javaNull)


isAutoWaitForIdle :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoWaitForIdle object_ = jmethod object_ "isAutoWaitForIdle" (\() -> (isAutoWaitForIdle_impl (javaCast object_ :: NullInputRobot))) ()

isAutoWaitForIdle_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoWaitForIdle_super object_ = (isAutoWaitForIdle_impl (javaCast object_ :: NullInputRobot))

isAutoWaitForIdle_impl :: NullInputRobot -> IO (Bool)
isAutoWaitForIdle_impl this = do
        pure (False)


mouseWheel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseWheel object_ a1 = jmethod object_ "mouseWheel" (\() -> (mouseWheel_impl (javaCast object_ :: NullInputRobot))) () a1

mouseWheel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseWheel_super object_ a1 = (mouseWheel_impl (javaCast object_ :: NullInputRobot)) a1

mouseWheel_impl :: NullInputRobot -> Int -> IO (())
mouseWheel_impl this wheelAmt = do
        pure ()


setAutoDelay :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAutoDelay object_ a1 = jmethod object_ "setAutoDelay" (\() -> (setAutoDelay_impl (javaCast object_ :: NullInputRobot))) () a1

setAutoDelay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAutoDelay_super object_ a1 = (setAutoDelay_impl (javaCast object_ :: NullInputRobot)) a1

setAutoDelay_impl :: NullInputRobot -> Int -> IO (())
setAutoDelay_impl this ms = do
        pure ()


setAutoWaitForIdle :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAutoWaitForIdle object_ a1 = jmethod object_ "setAutoWaitForIdle" (\() -> (setAutoWaitForIdle_impl (javaCast object_ :: NullInputRobot))) () a1

setAutoWaitForIdle_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAutoWaitForIdle_super object_ a1 = (setAutoWaitForIdle_impl (javaCast object_ :: NullInputRobot)) a1

setAutoWaitForIdle_impl :: NullInputRobot -> Bool -> IO (())
setAutoWaitForIdle_impl this isOn = do
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: NullInputRobot))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: NullInputRobot))

toString_impl :: NullInputRobot -> IO (String)
toString_impl this = do
        pure ("DirectXWindowsInputRobot")


waitForIdle :: (JavaObjectClass this_) => this_ -> IO (())
waitForIdle object_ = jmethod object_ "waitForIdle" (\() -> (waitForIdle_impl (javaCast object_ :: NullInputRobot))) ()

waitForIdle_super :: (JavaObjectClass this_) => this_ -> IO (())
waitForIdle_super object_ = (waitForIdle_impl (javaCast object_ :: NullInputRobot))

waitForIdle_impl :: NullInputRobot -> IO (())
waitForIdle_impl this = do
        pure ()


