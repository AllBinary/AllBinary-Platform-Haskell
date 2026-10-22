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
module InputRobotInterface where

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
import qualified Rectangle -- same package or java.lang
import qualified Color -- same package or java.lang
import qualified Point -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified HelpSet -- javax.help.HelpSet
-- import java.awt.*

-- Java interface: the classes that implement it have these functions
data InputRobotInterface = InputRobotInterface
    { header_ :: JavaHeader
    }

instance JavaNull InputRobotInterface where
    javaNull = javaNullRecord "InputRobotInterface"

instance JavaEquals InputRobotInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputRobotInterface where
    (==) = jrecordEquals

instance JavaObjectClass InputRobotInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> InputRobotInterface
fromHeader_ header = InputRobotInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (InputRobotInterface header)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: InputRobotInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: InputRobotInterface))

getName_impl :: InputRobotInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getHelpSet :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet object_ = jmethod object_ "getHelpSet" (\() -> (getHelpSet_impl (javaCast object_ :: InputRobotInterface))) ()

getHelpSet_super :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet_super object_ = (getHelpSet_impl (javaCast object_ :: InputRobotInterface))

getHelpSet_impl :: InputRobotInterface -> IO (HelpSet.HelpSet)
getHelpSet_impl this = javaAbstractMethod "getHelpSet"


createScreenCapture :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture object_ a1 = jmethod object_ "createScreenCapture" (\() -> (createScreenCapture_impl (javaCast object_ :: InputRobotInterface))) () a1

createScreenCapture_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture_super object_ a1 = (createScreenCapture_impl (javaCast object_ :: InputRobotInterface)) a1

createScreenCapture_impl :: InputRobotInterface -> Rectangle.Rectangle -> IO (BufferedImage.BufferedImage)
createScreenCapture_impl this screenRect = javaAbstractMethod "createScreenCapture"


delay :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delay object_ a1 = jmethod object_ "delay" (\() -> (delay_impl (javaCast object_ :: InputRobotInterface))) () a1

delay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delay_super object_ a1 = (delay_impl (javaCast object_ :: InputRobotInterface)) a1

delay_impl :: InputRobotInterface -> Int -> IO (())
delay_impl this ms = javaAbstractMethod "delay"


getAutoDelay :: (JavaObjectClass this_) => this_ -> IO (Int)
getAutoDelay object_ = jmethod object_ "getAutoDelay" (\() -> (getAutoDelay_impl (javaCast object_ :: InputRobotInterface))) ()

getAutoDelay_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAutoDelay_super object_ = (getAutoDelay_impl (javaCast object_ :: InputRobotInterface))

getAutoDelay_impl :: InputRobotInterface -> IO (Int)
getAutoDelay_impl this = javaAbstractMethod "getAutoDelay"


getPixelColor :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Color.Color)
getPixelColor object_ a1 a2 = jmethod object_ "getPixelColor" (\() -> (getPixelColor_impl (javaCast object_ :: InputRobotInterface))) () a1 a2

getPixelColor_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Color.Color)
getPixelColor_super object_ a1 a2 = (getPixelColor_impl (javaCast object_ :: InputRobotInterface)) a1 a2

getPixelColor_impl :: InputRobotInterface -> Int -> Int -> IO (Color.Color)
getPixelColor_impl this x y = javaAbstractMethod "getPixelColor"


isAutoWaitForIdle :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoWaitForIdle object_ = jmethod object_ "isAutoWaitForIdle" (\() -> (isAutoWaitForIdle_impl (javaCast object_ :: InputRobotInterface))) ()

isAutoWaitForIdle_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAutoWaitForIdle_super object_ = (isAutoWaitForIdle_impl (javaCast object_ :: InputRobotInterface))

isAutoWaitForIdle_impl :: InputRobotInterface -> IO (Bool)
isAutoWaitForIdle_impl this = javaAbstractMethod "isAutoWaitForIdle"


keyPress :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPress object_ a1 = jmethod object_ "keyPress" (\() -> (keyPress_impl (javaCast object_ :: InputRobotInterface))) () a1

keyPress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPress_super object_ a1 = (keyPress_impl (javaCast object_ :: InputRobotInterface)) a1

keyPress_impl :: InputRobotInterface -> Int -> IO (())
keyPress_impl this keycode = javaAbstractMethod "keyPress"


keyRelease :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRelease object_ a1 = jmethod object_ "keyRelease" (\() -> (keyRelease_impl (javaCast object_ :: InputRobotInterface))) () a1

keyRelease_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRelease_super object_ a1 = (keyRelease_impl (javaCast object_ :: InputRobotInterface)) a1

keyRelease_impl :: InputRobotInterface -> Int -> IO (())
keyRelease_impl this keycode = javaAbstractMethod "keyRelease"


getMousePoint :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getMousePoint object_ = jmethod object_ "getMousePoint" (\() -> (getMousePoint_impl (javaCast object_ :: InputRobotInterface))) ()

getMousePoint_super :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getMousePoint_super object_ = (getMousePoint_impl (javaCast object_ :: InputRobotInterface))

getMousePoint_impl :: InputRobotInterface -> IO (Point.Point)
getMousePoint_impl this = javaAbstractMethod "getMousePoint"


mouseMove :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove object_ a1 a2 = jmethod object_ "mouseMove" (\() -> (mouseMove_impl (javaCast object_ :: InputRobotInterface))) () a1 a2

mouseMove_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove_super object_ a1 a2 = (mouseMove_impl (javaCast object_ :: InputRobotInterface)) a1 a2

mouseMove_impl :: InputRobotInterface -> Int -> Int -> IO (())
mouseMove_impl this x y = javaAbstractMethod "mouseMove"


mousePress :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mousePress object_ a1 = jmethod object_ "mousePress" (\() -> (mousePress_impl (javaCast object_ :: InputRobotInterface))) () a1

mousePress_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mousePress_super object_ a1 = (mousePress_impl (javaCast object_ :: InputRobotInterface)) a1

mousePress_impl :: InputRobotInterface -> Int -> IO (())
mousePress_impl this buttons = javaAbstractMethod "mousePress"


mouseRelease :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseRelease object_ a1 = jmethod object_ "mouseRelease" (\() -> (mouseRelease_impl (javaCast object_ :: InputRobotInterface))) () a1

mouseRelease_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseRelease_super object_ a1 = (mouseRelease_impl (javaCast object_ :: InputRobotInterface)) a1

mouseRelease_impl :: InputRobotInterface -> Int -> IO (())
mouseRelease_impl this buttons = javaAbstractMethod "mouseRelease"


mouseWheel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseWheel object_ a1 = jmethod object_ "mouseWheel" (\() -> (mouseWheel_impl (javaCast object_ :: InputRobotInterface))) () a1

mouseWheel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mouseWheel_super object_ a1 = (mouseWheel_impl (javaCast object_ :: InputRobotInterface)) a1

mouseWheel_impl :: InputRobotInterface -> Int -> IO (())
mouseWheel_impl this wheelAmt = javaAbstractMethod "mouseWheel"


setAutoDelay :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAutoDelay object_ a1 = jmethod object_ "setAutoDelay" (\() -> (setAutoDelay_impl (javaCast object_ :: InputRobotInterface))) () a1

setAutoDelay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAutoDelay_super object_ a1 = (setAutoDelay_impl (javaCast object_ :: InputRobotInterface)) a1

setAutoDelay_impl :: InputRobotInterface -> Int -> IO (())
setAutoDelay_impl this ms = javaAbstractMethod "setAutoDelay"


setAutoWaitForIdle :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAutoWaitForIdle object_ a1 = jmethod object_ "setAutoWaitForIdle" (\() -> (setAutoWaitForIdle_impl (javaCast object_ :: InputRobotInterface))) () a1

setAutoWaitForIdle_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAutoWaitForIdle_super object_ a1 = (setAutoWaitForIdle_impl (javaCast object_ :: InputRobotInterface)) a1

setAutoWaitForIdle_impl :: InputRobotInterface -> Bool -> IO (())
setAutoWaitForIdle_impl this isOn = javaAbstractMethod "setAutoWaitForIdle"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: InputRobotInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: InputRobotInterface))

toString_impl :: InputRobotInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


waitForIdle :: (JavaObjectClass this_) => this_ -> IO (())
waitForIdle object_ = jmethod object_ "waitForIdle" (\() -> (waitForIdle_impl (javaCast object_ :: InputRobotInterface))) ()

waitForIdle_super :: (JavaObjectClass this_) => this_ -> IO (())
waitForIdle_super object_ = (waitForIdle_impl (javaCast object_ :: InputRobotInterface))

waitForIdle_impl :: InputRobotInterface -> IO (())
waitForIdle_impl this = javaAbstractMethod "waitForIdle"


mouseMove_1 :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
mouseMove_1 object_ a1 = jmethod object_ "mouseMove_1" (\() -> (mouseMove_1_impl (javaCast object_ :: InputRobotInterface))) () a1

mouseMove_1_super :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
mouseMove_1_super object_ a1 = (mouseMove_1_impl (javaCast object_ :: InputRobotInterface)) a1

mouseMove_1_impl :: InputRobotInterface -> Point.Point -> IO (())
mouseMove_1_impl this point = javaAbstractMethod "mouseMove"


-- throws Exception
mouseMoveToTarget :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget object_ a1 = jmethod object_ "mouseMoveToTarget" (\() -> (mouseMoveToTarget_impl (javaCast object_ :: InputRobotInterface))) () a1

mouseMoveToTarget_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget_super object_ a1 = (mouseMoveToTarget_impl (javaCast object_ :: InputRobotInterface)) a1

mouseMoveToTarget_impl :: InputRobotInterface -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget_impl this rectangle = javaAbstractMethod "mouseMoveToTarget"


-- throws Exception
mouseMoveToTarget_3 :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget_3 object_ a1 a2 a3 = jmethod object_ "mouseMoveToTarget_3" (\() -> (mouseMoveToTarget_3_impl (javaCast object_ :: InputRobotInterface))) () a1 a2 a3

mouseMoveToTarget_3_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget_3_super object_ a1 a2 a3 = (mouseMoveToTarget_3_impl (javaCast object_ :: InputRobotInterface)) a1 a2 a3

mouseMoveToTarget_3_impl :: InputRobotInterface -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget_3_impl this rectangle x y = javaAbstractMethod "mouseMoveToTarget"


