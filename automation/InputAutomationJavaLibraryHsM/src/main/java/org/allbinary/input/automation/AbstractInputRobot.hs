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
-- package org.allbinary.input.automation
module AbstractInputRobot where

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
import qualified PointHelper -- same package or java.lang
import qualified Rectangle -- same package or java.lang
import qualified HelpSet -- javax.help.HelpSet
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
-- import java.awt.*

data AbstractInputRobot = AbstractInputRobot
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , helpSet :: IORef (HelpSet.HelpSet)
    }

instance JavaNull AbstractInputRobot where
    javaNull = javaNullRecord "AbstractInputRobot"

instance JavaEquals AbstractInputRobot where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbstractInputRobot where
    (==) = jrecordEquals

instance JavaObjectClass AbstractInputRobot where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbstractInputRobot
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    helpSet <- newIORef javaNull
    let this = AbstractInputRobot header_ logUtil helpSet
    jregisterLevel header_ this
    jregisterMethod header_ "getHelpSet" (\() -> getHelpSet_impl this)
    jregisterMethod header_ "mouseMove" (\() -> mouseMove_impl this)
    jregisterMethod header_ "mouseMoveToTarget" (\() -> mouseMoveToTarget_impl this)
    jregisterMethod header_ "mouseMoveToTarget" (\() -> mouseMoveToTarget_impl this)
    jregisterMethod header_ "mouseMove" (\() -> mouseMove_impl this)
    jregisterMethod header_ "setHelpSet" (\() -> setHelpSet_impl this)
    pure this

initFields_ :: AbstractInputRobot -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.helpSet (javaNull)
    pure ()

new_1 :: HelpSet.HelpSet -> IO AbstractInputRobot
new_1 helpSet = do
    this <- newRecord_
    init_1 this helpSet
    pure this

init_1 :: AbstractInputRobot -> HelpSet.HelpSet -> IO ()
init_1 this helpSet = do
        initFields_ this
        Control.Monad.void (AbstractInputRobot.setHelpSet this helpSet)
        pure ()


getHelpSet :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet object_ = jmethod object_ "getHelpSet" (\() -> (getHelpSet_impl (javaCast object_ :: AbstractInputRobot))) ()

getHelpSet_super :: (JavaObjectClass this_) => this_ -> IO (HelpSet.HelpSet)
getHelpSet_super object_ = (getHelpSet_impl (javaCast object_ :: AbstractInputRobot))

getHelpSet_impl :: AbstractInputRobot -> IO (HelpSet.HelpSet)
getHelpSet_impl this = do
        pure ((jget (this).helpSet))


mouseMove :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
mouseMove object_ a1 = jmethod object_ "mouseMove" (\() -> (mouseMove_impl (javaCast object_ :: AbstractInputRobot))) () a1

mouseMove_super :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
mouseMove_super object_ a1 = (mouseMove_impl (javaCast object_ :: AbstractInputRobot)) a1

mouseMove_impl :: AbstractInputRobot -> Point.Point -> IO (())
mouseMove_impl this point = do
        Control.Monad.void (AbstractInputRobot.mouseMove this (jget (point).x) (jget (point).y))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Moved Mouse To: x: " ++ javaToString (jget (point).x)) ++ " y: ") ++ javaToString (jget (point).y)) this "moveMouse")
        pure ()


-- throws Exception
mouseMoveToTarget :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget object_ a1 a2 a3 = jmethod object_ "mouseMoveToTarget" (\() -> (mouseMoveToTarget_impl (javaCast object_ :: AbstractInputRobot))) () a1 a2 a3

mouseMoveToTarget_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget_super object_ a1 a2 a3 = (mouseMoveToTarget_impl (javaCast object_ :: AbstractInputRobot)) a1 a2 a3

mouseMoveToTarget_impl :: AbstractInputRobot -> Rectangle.Rectangle -> Int -> Int -> IO (())
mouseMoveToTarget_impl this rectangle x y = do
        point <- (PointHelper.getCenterPoint rectangle)
        Control.Monad.void (AbstractInputRobot.mouseMove this ((jget (point).x) + x) ((jget (point).y) + y))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((((("Moved Mouse To: x: " ++ javaToString (jget (point).x)) ++ " y: ") ++ javaToString (jget (point).y)) ++ " in the middle of: ") ++ javaToString rectangle) this "moveMouseToTarget")
        pure ()


-- throws Exception
-- Java overload of mouseMoveToTarget with a different parameter count: give it a different name
mouseMoveToTarget :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget object_ a1 = jmethod object_ "mouseMoveToTarget" (\() -> (mouseMoveToTarget_impl (javaCast object_ :: AbstractInputRobot))) () a1

mouseMoveToTarget_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget_super object_ a1 = (mouseMoveToTarget_impl (javaCast object_ :: AbstractInputRobot)) a1

mouseMoveToTarget_impl :: AbstractInputRobot -> Rectangle.Rectangle -> IO (())
mouseMoveToTarget_impl this rectangle = do
        Control.Monad.void (AbstractInputRobot.mouseMoveToTarget this rectangle 0 0)
        pure ()


-- Java overload of mouseMove with a different parameter count: give it a different name
mouseMove :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove object_ a1 a2 = jmethod object_ "mouseMove" (\() -> (mouseMove_impl (javaCast object_ :: AbstractInputRobot))) () a1 a2

mouseMove_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
mouseMove_super object_ a1 a2 = (mouseMove_impl (javaCast object_ :: AbstractInputRobot)) a1 a2

mouseMove_impl :: AbstractInputRobot -> Int -> Int -> IO (())
mouseMove_impl this x y = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


setHelpSet :: (JavaObjectClass this_) => this_ -> HelpSet.HelpSet -> IO (())
setHelpSet object_ a1 = jmethod object_ "setHelpSet" (\() -> (setHelpSet_impl (javaCast object_ :: AbstractInputRobot))) () a1

setHelpSet_super :: (JavaObjectClass this_) => this_ -> HelpSet.HelpSet -> IO (())
setHelpSet_super object_ a1 = (setHelpSet_impl (javaCast object_ :: AbstractInputRobot)) a1

setHelpSet_impl :: AbstractInputRobot -> HelpSet.HelpSet -> IO (())
setHelpSet_impl this helpSet = do
        jset (this).helpSet (helpSet)
        pure ()


