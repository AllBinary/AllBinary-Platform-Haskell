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
-- package org.allbinary.input.motion.gesture.configuration
module MotionGestureConfiguration where

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
import qualified CompleteMotionGestureInputEvent -- org.allbinary.game.input.CompleteMotionGestureInputEvent
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified MotionGestureToMotionGestureActionAssociation -- org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data MotionGestureConfiguration = MotionGestureConfiguration
    { header_ :: JavaHeader
    , diagonalMotionGestureAllowed :: IORef (Bool)
    , diagonalTolerance :: IORef (Int)
    , minimumMotionGesture :: IORef (Int)
    , button :: IORef (String)
    , color :: IORef (BasicColor.BasicColor)
    , executingActions :: IORef (Bool)
    , mouseButtonMask :: IORef (Int)
    , activeCommands :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull MotionGestureConfiguration where
    javaNull = javaNullRecord "MotionGestureConfiguration"

instance JavaEquals MotionGestureConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionGestureConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass MotionGestureConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionGestureConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    diagonalMotionGestureAllowed <- newIORef False
    diagonalTolerance <- newIORef 0
    minimumMotionGesture <- newIORef 0
    button <- newIORef ""
    color <- newIORef javaNull
    executingActions <- newIORef False
    mouseButtonMask <- newIORef 0
    activeCommands <- newIORef javaNull
    let this = MotionGestureConfiguration header_ diagonalMotionGestureAllowed diagonalTolerance minimumMotionGesture button color executingActions mouseButtonMask activeCommands
    jregisterLevel header_ this
    jregisterMethod header_ "addMotionGestureAction" (\() -> addMotionGestureAction_impl this)
    jregisterMethod header_ "clearMotionGestureAction" (\() -> clearMotionGestureAction_impl this)
    jregisterMethod header_ "getAssociateCommandActionsList" (\() -> getAssociateCommandActionsList_impl this)
    jregisterMethod header_ "isDiagonalMotionGestureAllowed" (\() -> isDiagonalMotionGestureAllowed_impl this)
    jregisterMethod header_ "isExecutingActionsAllowed" (\() -> isExecutingActionsAllowed_impl this)
    jregisterMethod header_ "setExecutingActionsAllowed" (\() -> setExecutingActionsAllowed_impl this)
    jregisterMethod header_ "setDiagonalMotionGestureAllowed" (\() -> setDiagonalMotionGestureAllowed_impl this)
    jregisterMethod header_ "getDiagonalTolerance" (\() -> getDiagonalTolerance_impl this)
    jregisterMethod header_ "setDiagonalTolerance" (\() -> setDiagonalTolerance_impl this)
    jregisterMethod header_ "getMinimumMotionGesture" (\() -> getMinimumMotionGesture_impl this)
    jregisterMethod header_ "setMinimumMotionGesture" (\() -> setMinimumMotionGesture_impl this)
    jregisterMethod header_ "getButton" (\() -> getButton_impl this)
    jregisterMethod header_ "setButton" (\() -> setButton_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "getMouseButtonMask" (\() -> getMouseButtonMask_impl this)
    jregisterMethod header_ "setMouseButtonMask" (\() -> setMouseButtonMask_impl this)
    pure this

initFields_ :: MotionGestureConfiguration -> IO ()
initFields_ this = do
    jset this.diagonalMotionGestureAllowed (True)
    jset this.diagonalTolerance (7)
    jset this.minimumMotionGesture (9)
    jset this.button ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.color ((jget ((jio (BasicColorFactory.getInstance))).bLUE))
    jset this.executingActions (True)
    jset this.mouseButtonMask (0)
    jset this.activeCommands =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO MotionGestureConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionGestureConfiguration -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


addMotionGestureAction :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
addMotionGestureAction object_ a1 a2 = jmethod object_ "addMotionGestureAction" (\() -> (addMotionGestureAction_impl (javaCast object_ :: MotionGestureConfiguration))) () a1 a2

addMotionGestureAction_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
addMotionGestureAction_super object_ a1 a2 = (addMotionGestureAction_impl (javaCast object_ :: MotionGestureConfiguration)) a1 a2

addMotionGestureAction_impl :: MotionGestureConfiguration -> BasicArrayList.BasicArrayList -> CompleteMotionGestureInputEvent.CompleteMotionGestureInputEvent -> IO (())
addMotionGestureAction_impl this list commandAction = do
        Control.Monad.void (BasicArrayList.add ((jget (this).activeCommands)) (jio (MotionGestureToMotionGestureActionAssociation.new_2 list commandAction)))
        pure ()


clearMotionGestureAction :: (JavaObjectClass this_) => this_ -> IO (())
clearMotionGestureAction object_ = jmethod object_ "clearMotionGestureAction" (\() -> (clearMotionGestureAction_impl (javaCast object_ :: MotionGestureConfiguration))) ()

clearMotionGestureAction_super :: (JavaObjectClass this_) => this_ -> IO (())
clearMotionGestureAction_super object_ = (clearMotionGestureAction_impl (javaCast object_ :: MotionGestureConfiguration))

clearMotionGestureAction_impl :: MotionGestureConfiguration -> IO (())
clearMotionGestureAction_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).activeCommands)))
        pure ()


getAssociateCommandActionsList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAssociateCommandActionsList object_ = jmethod object_ "getAssociateCommandActionsList" (\() -> (getAssociateCommandActionsList_impl (javaCast object_ :: MotionGestureConfiguration))) ()

getAssociateCommandActionsList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAssociateCommandActionsList_super object_ = (getAssociateCommandActionsList_impl (javaCast object_ :: MotionGestureConfiguration))

getAssociateCommandActionsList_impl :: MotionGestureConfiguration -> IO (BasicArrayList.BasicArrayList)
getAssociateCommandActionsList_impl this = do
        pure ((jget (this).activeCommands))


isDiagonalMotionGestureAllowed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDiagonalMotionGestureAllowed object_ = jmethod object_ "isDiagonalMotionGestureAllowed" (\() -> (isDiagonalMotionGestureAllowed_impl (javaCast object_ :: MotionGestureConfiguration))) ()

isDiagonalMotionGestureAllowed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDiagonalMotionGestureAllowed_super object_ = (isDiagonalMotionGestureAllowed_impl (javaCast object_ :: MotionGestureConfiguration))

isDiagonalMotionGestureAllowed_impl :: MotionGestureConfiguration -> IO (Bool)
isDiagonalMotionGestureAllowed_impl this = do
        pure ((jget (this).diagonalMotionGestureAllowed))


isExecutingActionsAllowed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isExecutingActionsAllowed object_ = jmethod object_ "isExecutingActionsAllowed" (\() -> (isExecutingActionsAllowed_impl (javaCast object_ :: MotionGestureConfiguration))) ()

isExecutingActionsAllowed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isExecutingActionsAllowed_super object_ = (isExecutingActionsAllowed_impl (javaCast object_ :: MotionGestureConfiguration))

isExecutingActionsAllowed_impl :: MotionGestureConfiguration -> IO (Bool)
isExecutingActionsAllowed_impl this = do
        pure ((jget (this).executingActions))


setExecutingActionsAllowed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setExecutingActionsAllowed object_ a1 = jmethod object_ "setExecutingActionsAllowed" (\() -> (setExecutingActionsAllowed_impl (javaCast object_ :: MotionGestureConfiguration))) () a1

setExecutingActionsAllowed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setExecutingActionsAllowed_super object_ a1 = (setExecutingActionsAllowed_impl (javaCast object_ :: MotionGestureConfiguration)) a1

setExecutingActionsAllowed_impl :: MotionGestureConfiguration -> Bool -> IO (())
setExecutingActionsAllowed_impl this executingActionAllowed = do
        jset (this).executingActions (executingActionAllowed)
        pure ()


setDiagonalMotionGestureAllowed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDiagonalMotionGestureAllowed object_ a1 = jmethod object_ "setDiagonalMotionGestureAllowed" (\() -> (setDiagonalMotionGestureAllowed_impl (javaCast object_ :: MotionGestureConfiguration))) () a1

setDiagonalMotionGestureAllowed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDiagonalMotionGestureAllowed_super object_ a1 = (setDiagonalMotionGestureAllowed_impl (javaCast object_ :: MotionGestureConfiguration)) a1

setDiagonalMotionGestureAllowed_impl :: MotionGestureConfiguration -> Bool -> IO (())
setDiagonalMotionGestureAllowed_impl this diagonalMotionGestureAllowed = do
        jset (this).diagonalMotionGestureAllowed (diagonalMotionGestureAllowed)
        pure ()


getDiagonalTolerance :: (JavaObjectClass this_) => this_ -> IO (Int)
getDiagonalTolerance object_ = jmethod object_ "getDiagonalTolerance" (\() -> (getDiagonalTolerance_impl (javaCast object_ :: MotionGestureConfiguration))) ()

getDiagonalTolerance_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDiagonalTolerance_super object_ = (getDiagonalTolerance_impl (javaCast object_ :: MotionGestureConfiguration))

getDiagonalTolerance_impl :: MotionGestureConfiguration -> IO (Int)
getDiagonalTolerance_impl this = do
        pure ((jget (this).diagonalTolerance))


setDiagonalTolerance :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDiagonalTolerance object_ a1 = jmethod object_ "setDiagonalTolerance" (\() -> (setDiagonalTolerance_impl (javaCast object_ :: MotionGestureConfiguration))) () a1

setDiagonalTolerance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDiagonalTolerance_super object_ a1 = (setDiagonalTolerance_impl (javaCast object_ :: MotionGestureConfiguration)) a1

setDiagonalTolerance_impl :: MotionGestureConfiguration -> Int -> IO (())
setDiagonalTolerance_impl this diagonalTolerance = do
        jset (this).diagonalTolerance (diagonalTolerance)
        pure ()


getMinimumMotionGesture :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumMotionGesture object_ = jmethod object_ "getMinimumMotionGesture" (\() -> (getMinimumMotionGesture_impl (javaCast object_ :: MotionGestureConfiguration))) ()

getMinimumMotionGesture_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinimumMotionGesture_super object_ = (getMinimumMotionGesture_impl (javaCast object_ :: MotionGestureConfiguration))

getMinimumMotionGesture_impl :: MotionGestureConfiguration -> IO (Int)
getMinimumMotionGesture_impl this = do
        pure ((jget (this).minimumMotionGesture))


setMinimumMotionGesture :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinimumMotionGesture object_ a1 = jmethod object_ "setMinimumMotionGesture" (\() -> (setMinimumMotionGesture_impl (javaCast object_ :: MotionGestureConfiguration))) () a1

setMinimumMotionGesture_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinimumMotionGesture_super object_ a1 = (setMinimumMotionGesture_impl (javaCast object_ :: MotionGestureConfiguration)) a1

setMinimumMotionGesture_impl :: MotionGestureConfiguration -> Int -> IO (())
setMinimumMotionGesture_impl this minimumMotionGesture = do
        jset (this).minimumMotionGesture (minimumMotionGesture)
        pure ()


getButton :: (JavaObjectClass this_) => this_ -> IO (String)
getButton object_ = jmethod object_ "getButton" (\() -> (getButton_impl (javaCast object_ :: MotionGestureConfiguration))) ()

getButton_super :: (JavaObjectClass this_) => this_ -> IO (String)
getButton_super object_ = (getButton_impl (javaCast object_ :: MotionGestureConfiguration))

getButton_impl :: MotionGestureConfiguration -> IO (String)
getButton_impl this = do
        pure ((jget (this).button))


setButton :: (JavaObjectClass this_) => this_ -> String -> IO (())
setButton object_ a1 = jmethod object_ "setButton" (\() -> (setButton_impl (javaCast object_ :: MotionGestureConfiguration))) () a1

setButton_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setButton_super object_ a1 = (setButton_impl (javaCast object_ :: MotionGestureConfiguration)) a1

setButton_impl :: MotionGestureConfiguration -> String -> IO (())
setButton_impl this button = do
        jset (this).button (button)
        pure ()


getColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: MotionGestureConfiguration))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getColor_super object_ = (getColor_impl (javaCast object_ :: MotionGestureConfiguration))

getColor_impl :: MotionGestureConfiguration -> IO (BasicColor.BasicColor)
getColor_impl this = do
        pure ((jget (this).color))


setColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: MotionGestureConfiguration))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: MotionGestureConfiguration)) a1

setColor_impl :: MotionGestureConfiguration -> BasicColor.BasicColor -> IO (())
setColor_impl this color = do
        jset (this).color (color)
        pure ()


getMouseButtonMask :: (JavaObjectClass this_) => this_ -> IO (Int)
getMouseButtonMask object_ = jmethod object_ "getMouseButtonMask" (\() -> (getMouseButtonMask_impl (javaCast object_ :: MotionGestureConfiguration))) ()

getMouseButtonMask_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMouseButtonMask_super object_ = (getMouseButtonMask_impl (javaCast object_ :: MotionGestureConfiguration))

getMouseButtonMask_impl :: MotionGestureConfiguration -> IO (Int)
getMouseButtonMask_impl this = do
        pure ((jget (this).mouseButtonMask))


setMouseButtonMask :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMouseButtonMask object_ a1 = jmethod object_ "setMouseButtonMask" (\() -> (setMouseButtonMask_impl (javaCast object_ :: MotionGestureConfiguration))) () a1

setMouseButtonMask_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMouseButtonMask_super object_ a1 = (setMouseButtonMask_impl (javaCast object_ :: MotionGestureConfiguration)) a1

setMouseButtonMask_impl :: MotionGestureConfiguration -> Int -> IO (())
setMouseButtonMask_impl this mouseButtonMask = do
        jset (this).mouseButtonMask (mouseButtonMask)
        pure ()


