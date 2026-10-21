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
module InputRobot where

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
import qualified Robot -- same package or java.lang
import qualified GraphicsDevice -- same package or java.lang
import qualified MouseInfo -- same package or java.lang
import qualified Point -- same package or java.lang
import qualified Rectangle -- same package or java.lang
import qualified Color -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified HelpSet -- javax.help.HelpSet
import qualified PointHelper -- org.allbinary.input.automation.PointHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
-- import java.awt.*
import qualified InputRobotInterface

-- implements InputRobotInterface
data InputRobot = InputRobot
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , robot :: IORef (Robot.Robot)
    }

instance JavaNull InputRobot where
    javaNull = javaNullRecord "InputRobot"

instance JavaEquals InputRobot where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputRobot where
    (==) = jrecordEquals

instance JavaObjectClass InputRobot where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "Java Robot"

newRecord_ :: IO InputRobot
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    robot <- newIORef javaNull
    let this = InputRobot header_ logUtil robot
    jregisterLevel header_ this
    InputRobotInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getHelpSet" (\() -> getHelpSet_impl this)
    jregisterMethod header_ "getMousePoint" (\() -> getMousePoint_impl this)
    jregisterMethod header_ "mouseMoveToTarget" (\() -> mouseMoveToTarget_impl this)
    jregisterMethod header_ "mouseMove" (\() -> mouseMove_impl this)
    jregisterMethod header_ "mouseMove_overload1" (\() -> mouseMove_overload1_impl this)
    jregisterMethod header_ "mouseMoveToTarget" (\() -> mouseMoveToTarget_impl this)
    jregisterMethod header_ "createScreenCapture" (\() -> createScreenCapture_impl this)
    jregisterMethod header_ "delay" (\() -> delay_impl this)
    jregisterMethod header_ "getAutoDelay" (\() -> getAutoDelay_impl this)
    jregisterMethod header_ "getPixelColor" (\() -> getPixelColor_impl this)
    jregisterMethod header_ "isAutoWaitForIdle" (\() -> isAutoWaitForIdle_impl this)
    jregisterMethod header_ "keyPress" (\() -> keyPress_impl this)
    jregisterMethod header_ "keyRelease" (\() -> keyRelease_impl this)
    jregisterMethod header_ "mouseMove_overload2" (\() -> mouseMove_overload2_impl this)
    jregisterMethod header_ "mousePress" (\() -> mousePress_impl this)
    jregisterMethod header_ "mouseRelease" (\() -> mouseRelease_impl this)
    jregisterMethod header_ "mouseWheel" (\() -> mouseWheel_impl this)
    jregisterMethod header_ "setAutoDelay" (\() -> setAutoDelay_impl this)
    jregisterMethod header_ "setAutoWaitForIdle" (\() -> setAutoWaitForIdle_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "waitForIdle" (\() -> waitForIdle_impl this)
    jregisterMethod header_ "on" (\() -> on_impl this)
    jregisterMethod header_ "off" (\() -> off_impl this)
    pure this

initFields_ :: InputRobot -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.robot (javaNull)
    pure ()

new_1 :: GraphicsDevice.GraphicsDevice -> IO InputRobot
new_1 graphicsDevice = do
    this <- newRecord_
    init_1 this graphicsDevice
    pure this

init_1 :: InputRobot -> GraphicsDevice.GraphicsDevice -> IO ()
init_1 this graphicsDevice = do
        initFields_ this
        assignedValue <- (Robot.new_1 graphicsDevice)
        jset (this).robot (assignedValue)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: InputRobot))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: InputRobot))

getName_impl :: InputRobot -> IO (String)
getName_impl this = do
        pure (InputRobot.nAME)


getHelpSet :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet object_ = jmethod object_ "getHelpSet" (\() -> (getHelpSet_impl (javaCast object_ :: InputRobot))) ()

getHelpSet_super :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet_super object_ = (getHelpSet_impl (javaCast object_ :: InputRobot))

getHelpSet_impl :: InputRobot -> IO (HelpSet.HelpSet)
getHelpSet_impl this = do
        pure (javaNull)


getMousePoint :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getMousePoint object_ = jmethod object_ "getMousePoint" (\() -> (getMousePoint_impl (javaCast object_ :: InputRobot))) ()

getMousePoint_super :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getMousePoint_super object_ = (getMousePoint_impl (javaCast object_ :: InputRobot))

getMousePoint_impl :: InputRobot -> IO (Point.Point)
getMousePoint_impl this = do
        point <- (MouseInfo.getLocation ((jio (MouseInfo.getPointerInfo))))
        pure (point)


-- throws Exception
mouseMoveToTarget :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget object_ a1 a2 a3 = jmethod object_ "mouseMoveToTarget" (\() -> (mouseMoveToTarget_impl (javaCast object_ :: InputRobot))) () a1 a2 a3

mouseMoveToTarget_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget_super object_ a1 a2 a3 = (mouseMoveToTarget_impl (javaCast object_ :: InputRobot)) a1 a2 a3

mouseMoveToTarget_impl :: InputRobot -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget_impl this rectangle x y = do
        point <- (PointHelper.getCenterPoint rectangle)
        Control.Monad.void (Robot.mouseMove ((jget (this).robot)) ((jget (point).x) + x) ((jget (point).y) + y))
        message <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Moved Mouse To: x: "))) (Prelude.fromInteger (jnumericInteger (jget (point).x)))))) " y: "))) (Prelude.fromInteger (jnumericInteger (jget (point).y)))))) " in the middle of: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) rectangle))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) message this "moveMouseToTarget")
        pure ()


mouseMove :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
mouseMove object_ a1 = jmethod object_ "mouseMove" (\() -> (mouseMove_impl (javaCast object_ :: InputRobot))) () a1

mouseMove_super :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
mouseMove_super object_ a1 = (mouseMove_impl (javaCast object_ :: InputRobot)) a1

mouseMove_impl :: InputRobot -> Point.Point -> IO (())
mouseMove_impl this point = do
        Control.Monad.void (InputRobot.mouseMove this (jget (point).x) (jget (point).y))
        pure ()


-- Java overloads of mouseMove: calls the overload for the types of the arguments
mouseMove :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove this a1 a2
    | otherwise = mouseMove_overload1 this a1 a2

-- Java overload of mouseMove with a different parameter count: give it a different name
mouseMove_overload1 :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove_overload1 object_ a1 a2 = jmethod object_ "mouseMove_overload1" (\() -> (mouseMove_overload1_impl (javaCast object_ :: InputRobot))) () a1 a2

mouseMove_overload1_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove_overload1_super object_ a1 a2 = (mouseMove_overload1_impl (javaCast object_ :: InputRobot)) a1 a2

mouseMove_overload1_impl :: InputRobot -> Int -> Int -> IO (())
mouseMove_overload1_impl this x y = do
        Control.Monad.void (Robot.mouseMove ((jget (this).robot)) x y)
        message <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Moved Mouse To: x: "))) x))) " y: "))) y))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) message this "moveMouse")
        pure ()


-- throws Exception
-- Java overload of mouseMoveToTarget with a different parameter count: give it a different name
mouseMoveToTarget :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget object_ a1 = jmethod object_ "mouseMoveToTarget" (\() -> (mouseMoveToTarget_impl (javaCast object_ :: InputRobot))) () a1

mouseMoveToTarget_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget_super object_ a1 = (mouseMoveToTarget_impl (javaCast object_ :: InputRobot)) a1

mouseMoveToTarget_impl :: InputRobot -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget_impl this rectangle = do
        Control.Monad.void (InputRobot.mouseMoveToTarget this rectangle 0 0)
        pure ()


createScreenCapture :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture object_ a1 = jmethod object_ "createScreenCapture" (\() -> (createScreenCapture_impl (javaCast object_ :: InputRobot))) () a1

createScreenCapture_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture_super object_ a1 = (createScreenCapture_impl (javaCast object_ :: InputRobot)) a1

createScreenCapture_impl :: InputRobot -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture_impl this screenRect = do
        (Robot.createScreenCapture ((jget (this).robot)) screenRect)


delay :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delay object_ a1 = jmethod object_ "delay" (\() -> (delay_impl (javaCast object_ :: InputRobot))) () a1

delay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delay_super object_ a1 = (delay_impl (javaCast object_ :: InputRobot)) a1

delay_impl :: InputRobot -> Int -> IO (())
delay_impl this ms = do
        Control.Monad.void (Robot.delay ((jget (this).robot)) ms)
        pure ()


getAutoDelay :: (JavaObjectClass this_) => this_ -> IO (Int)
getAutoDelay object_ = jmethod object_ "getAutoDelay" (\() -> (getAutoDelay_impl (javaCast object_ :: InputRobot))) ()

getAutoDelay_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAutoDelay_super object_ = (getAutoDelay_impl (javaCast object_ :: InputRobot))

getAutoDelay_impl :: InputRobot -> IO (Int)
getAutoDelay_impl this = do
        (Robot.getAutoDelay ((jget (this).robot)))


getPixelColor :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Color.Color)
getPixelColor object_ a1 a2 = jmethod object_ "getPixelColor" (\() -> (getPixelColor_impl (javaCast object_ :: InputRobot))) () a1 a2

getPixelColor_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Color.Color)
getPixelColor_super object_ a1 a2 = (getPixelColor_impl (javaCast object_ :: InputRobot)) a1 a2

getPixelColor_impl :: InputRobot -> Int -> Int -> IO (Color.Color)
getPixelColor_impl this x y = do
        (Robot.getPixelColor ((jget (this).robot)) x y)


isAutoWaitForIdle :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoWaitForIdle object_ = jmethod object_ "isAutoWaitForIdle" (\() -> (isAutoWaitForIdle_impl (javaCast object_ :: InputRobot))) ()

isAutoWaitForIdle_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoWaitForIdle_super object_ = (isAutoWaitForIdle_impl (javaCast object_ :: InputRobot))

isAutoWaitForIdle_impl :: InputRobot -> IO (Bool)
isAutoWaitForIdle_impl this = do
        (Robot.isAutoWaitForIdle ((jget (this).robot)))


keyPress :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPress object_ a1 = jmethod object_ "keyPress" (\() -> (keyPress_impl (javaCast object_ :: InputRobot))) () a1

keyPress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPress_super object_ a1 = (keyPress_impl (javaCast object_ :: InputRobot)) a1

keyPress_impl :: InputRobot -> Int -> IO (())
keyPress_impl this keycode = do
        Control.Monad.void (Robot.keyPress ((jget (this).robot)) keycode)
        pure ()


keyRelease :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRelease object_ a1 = jmethod object_ "keyRelease" (\() -> (keyRelease_impl (javaCast object_ :: InputRobot))) () a1

keyRelease_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRelease_super object_ a1 = (keyRelease_impl (javaCast object_ :: InputRobot)) a1

keyRelease_impl :: InputRobot -> Int -> IO (())
keyRelease_impl this keycode = do
        Control.Monad.void (Robot.keyRelease ((jget (this).robot)) keycode)
        pure ()


-- Java overload of mouseMove with a different parameter count: give it a different name
mouseMove_overload2 :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove_overload2 object_ a1 a2 = jmethod object_ "mouseMove_overload2" (\() -> (mouseMove_overload2_impl (javaCast object_ :: InputRobot))) () a1 a2

mouseMove_overload2_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove_overload2_super object_ a1 a2 = (mouseMove_overload2_impl (javaCast object_ :: InputRobot)) a1 a2

mouseMove_overload2_impl :: InputRobot -> Int -> Int -> IO (())
mouseMove_overload2_impl this x y = do
        Control.Monad.void (Robot.mouseMove ((jget (this).robot)) x y)
        pure ()


mousePress :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mousePress object_ a1 = jmethod object_ "mousePress" (\() -> (mousePress_impl (javaCast object_ :: InputRobot))) () a1

mousePress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mousePress_super object_ a1 = (mousePress_impl (javaCast object_ :: InputRobot)) a1

mousePress_impl :: InputRobot -> Int -> IO (())
mousePress_impl this buttons = do
        Control.Monad.void (Robot.mousePress ((jget (this).robot)) buttons)
        pure ()


mouseRelease :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseRelease object_ a1 = jmethod object_ "mouseRelease" (\() -> (mouseRelease_impl (javaCast object_ :: InputRobot))) () a1

mouseRelease_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseRelease_super object_ a1 = (mouseRelease_impl (javaCast object_ :: InputRobot)) a1

mouseRelease_impl :: InputRobot -> Int -> IO (())
mouseRelease_impl this buttons = do
        Control.Monad.void (Robot.mouseRelease ((jget (this).robot)) buttons)
        pure ()


mouseWheel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseWheel object_ a1 = jmethod object_ "mouseWheel" (\() -> (mouseWheel_impl (javaCast object_ :: InputRobot))) () a1

mouseWheel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseWheel_super object_ a1 = (mouseWheel_impl (javaCast object_ :: InputRobot)) a1

mouseWheel_impl :: InputRobot -> Int -> IO (())
mouseWheel_impl this wheelAmt = do
        Control.Monad.void (Robot.mouseWheel ((jget (this).robot)) wheelAmt)
        pure ()


setAutoDelay :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAutoDelay object_ a1 = jmethod object_ "setAutoDelay" (\() -> (setAutoDelay_impl (javaCast object_ :: InputRobot))) () a1

setAutoDelay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAutoDelay_super object_ a1 = (setAutoDelay_impl (javaCast object_ :: InputRobot)) a1

setAutoDelay_impl :: InputRobot -> Int -> IO (())
setAutoDelay_impl this ms = do
        Control.Monad.void (Robot.setAutoDelay ((jget (this).robot)) ms)
        pure ()


setAutoWaitForIdle :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAutoWaitForIdle object_ a1 = jmethod object_ "setAutoWaitForIdle" (\() -> (setAutoWaitForIdle_impl (javaCast object_ :: InputRobot))) () a1

setAutoWaitForIdle_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAutoWaitForIdle_super object_ a1 = (setAutoWaitForIdle_impl (javaCast object_ :: InputRobot)) a1

setAutoWaitForIdle_impl :: InputRobot -> Bool -> IO (())
setAutoWaitForIdle_impl this isOn = do
        Control.Monad.void (Robot.setAutoWaitForIdle ((jget (this).robot)) isOn)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: InputRobot))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: InputRobot))

toString_impl :: InputRobot -> IO (String)
toString_impl this = do
        (Robot.toString ((jget (this).robot)))


waitForIdle :: (JavaObjectClass this_) => this_ -> IO (())
waitForIdle object_ = jmethod object_ "waitForIdle" (\() -> (waitForIdle_impl (javaCast object_ :: InputRobot))) ()

waitForIdle_super :: (JavaObjectClass this_) => this_ -> IO (())
waitForIdle_super object_ = (waitForIdle_impl (javaCast object_ :: InputRobot))

waitForIdle_impl :: InputRobot -> IO (())
waitForIdle_impl this = do
        Control.Monad.void (Robot.waitForIdle ((jget (this).robot)))
        pure ()


on :: (JavaObjectClass this_) => this_ -> IO (())
on object_ = jmethod object_ "on" (\() -> (on_impl (javaCast object_ :: InputRobot))) ()

on_super :: (JavaObjectClass this_) => this_ -> IO (())
on_super object_ = (on_impl (javaCast object_ :: InputRobot))

on_impl :: InputRobot -> IO (())
on_impl this = do
        pure ()


off :: (JavaObjectClass this_) => this_ -> IO (())
off object_ = jmethod object_ "off" (\() -> (off_impl (javaCast object_ :: InputRobot))) ()

off_super :: (JavaObjectClass this_) => this_ -> IO (())
off_super object_ = (off_impl (javaCast object_ :: InputRobot))

off_impl :: InputRobot -> IO (())
off_impl this = do
        pure ()


