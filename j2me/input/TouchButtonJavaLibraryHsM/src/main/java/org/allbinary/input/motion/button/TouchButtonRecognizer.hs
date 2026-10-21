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
-- package org.allbinary.input.motion.button
module TouchButtonRecognizer where

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
import qualified BasicTouchInputFactory -- same package or java.lang
import qualified TouchButtonInput -- same package or java.lang
import qualified CurrentlyPressedTouchButtonSingleton -- same package or java.lang
import qualified CancelTouchButtonInputFactory -- same package or java.lang
import qualified TouchScreenFactory -- same package or java.lang
import qualified TouchButtonFactory -- same package or java.lang
import qualified TouchButton -- same package or java.lang
import qualified DownGameKeyEventHandler -- org.allbinary.game.input.event.DownGameKeyEventHandler
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified UpGameKeyEventHandler -- org.allbinary.game.input.event.UpGameKeyEventHandler
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified RectangleCollisionUtil -- org.allbinary.math.RectangleCollisionUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data TouchButtonRecognizer = TouchButtonRecognizer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , rectangleCollisionUtil :: IORef (RectangleCollisionUtil.RectangleCollisionUtil)
    , upGameKeyEventHandler :: IORef (UpGameKeyEventHandler.UpGameKeyEventHandler)
    , downGameKeyEventHandler :: IORef (DownGameKeyEventHandler.DownGameKeyEventHandler)
    , lastPressedTouchButtonInput :: IORef (TouchButtonInput.TouchButtonInput)
    , currentlyPressedTouchButtonSingleton :: IORef (CurrentlyPressedTouchButtonSingleton.CurrentlyPressedTouchButtonSingleton)
    , releaseHelper :: IORef (ReleaseHelper.ReleaseHelper)
    }

instance JavaNull TouchButtonRecognizer where
    javaNull = javaNullRecord "TouchButtonRecognizer"

instance JavaEquals TouchButtonRecognizer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonRecognizer where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonRecognizer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchButtonRecognizer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    rectangleCollisionUtil <- newIORef javaNull
    upGameKeyEventHandler <- newIORef javaNull
    downGameKeyEventHandler <- newIORef javaNull
    lastPressedTouchButtonInput <- newIORef javaNull
    currentlyPressedTouchButtonSingleton <- newIORef javaNull
    releaseHelper <- newIORef javaNull
    let this = TouchButtonRecognizer header_ logUtil rectangleCollisionUtil upGameKeyEventHandler downGameKeyEventHandler lastPressedTouchButtonInput currentlyPressedTouchButtonSingleton releaseHelper
    jregisterLevel header_ this
    jregisterMethod header_ "processRelease" (\() -> processRelease_impl this)
    jregisterMethod header_ "releaseTouchButtonInput" (\() -> releaseTouchButtonInput_impl this)
    jregisterMethod header_ "pressTouchButtonInput" (\() -> pressTouchButtonInput_impl this)
    pure this

initFields_ :: TouchButtonRecognizer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.rectangleCollisionUtil =<< (RectangleCollisionUtil.getInstance)
    jset this.upGameKeyEventHandler =<< (UpGameKeyEventHandler.getInstance)
    jset this.downGameKeyEventHandler =<< (DownGameKeyEventHandler.getInstance)
    jset this.lastPressedTouchButtonInput ((jget ((jio (BasicTouchInputFactory.getInstance))).nONE))
    jset this.currentlyPressedTouchButtonSingleton =<< (CurrentlyPressedTouchButtonSingleton.getInstance)
    jset this.releaseHelper (javaNull)
    pure ()

new_ :: IO TouchButtonRecognizer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonRecognizer -> IO ()
init_ this = do
        initFields_ this
        if (jio (TouchScreenFactory.isMultiTouch ((jio (TouchScreenFactory.getInstance))))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ReleaseHelper.ReleaseHelper) (MultitouchReleaseHelper.new_1 this))
            jset (this).releaseHelper (assignedValue)
        else do
            assignedValue <- (ReleaseHelper.new_1 this)
            jset (this).releaseHelper (assignedValue)
        pure ()


-- throws Exception
processRelease :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
processRelease object_ a1 a2 = jmethod object_ "processRelease" (\() -> (processRelease_impl (javaCast object_ :: TouchButtonRecognizer))) () a1 a2

processRelease_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
processRelease_super object_ a1 a2 = (processRelease_impl (javaCast object_ :: TouchButtonRecognizer)) a1 a2

processRelease_impl :: TouchButtonRecognizer -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
processRelease_impl this touchButtonInput deviceId = do
        Control.Monad.void (ReleaseHelper.release ((jget (this).releaseHelper)) touchButtonInput deviceId)
        gameKeyEvent <- (TouchButtonInput.getGameKeyEvent touchButtonInput)
        Control.Monad.void (UpGameKeyEventHandler.fireEvent ((jget (this).upGameKeyEventHandler)) gameKeyEvent)
        Control.Monad.void (UpGameKeyEventHandlerBase.fireEvent ((jio (UpGameKeyEventHandler.getInstanceForDevice ((jget (this).upGameKeyEventHandler)) deviceId))) gameKeyEvent)
        Control.Monad.void (CurrentlyPressedTouchButtonSingleton.remove ((jget (this).currentlyPressedTouchButtonSingleton)) touchButtonInput)
        pure ()


-- throws Exception
releaseTouchButtonInput :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Bool)
releaseTouchButtonInput object_ a1 a2 a3 = jmethod object_ "releaseTouchButtonInput" (\() -> (releaseTouchButtonInput_impl (javaCast object_ :: TouchButtonRecognizer))) () a1 a2 a3

releaseTouchButtonInput_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Bool)
releaseTouchButtonInput_super object_ a1 a2 a3 = (releaseTouchButtonInput_impl (javaCast object_ :: TouchButtonRecognizer)) a1 a2 a3

releaseTouchButtonInput_impl :: TouchButtonRecognizer -> Int -> Int -> Int -> IO (Bool)
releaseTouchButtonInput_impl this x y deviceId = do
    javaCatchReturn $ do
        touchButtonInput <- newIORef ((jget (this).lastPressedTouchButtonInput))
        if (jio (CurrentlyPressedTouchButtonSingleton.contains ((jget (this).currentlyPressedTouchButtonSingleton)) (jget touchButtonInput))) then do
            jset (this).lastPressedTouchButtonInput ((jget ((jio (BasicTouchInputFactory.getInstance))).nONE))
            Control.Monad.void (TouchButtonRecognizer.processRelease this (jget touchButtonInput) deviceId)
            javaReturn (True)
        else do
            list <- (TouchButtonFactory.getList ((jio (TouchButtonFactory.getInstance))))
            rectangle <- newIORef (javaNull)
            point <- newIORef (javaNull)
            touchButton <- newIORef (javaNull)
            forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                jset touchButton ((javaCast (jindex ((jget (list).objectArray)) (index)) :: TouchButton.TouchButton))
                assignedValue <- (TouchButton.getRectangle ((jget touchButton)))
                jset rectangle (assignedValue)
                assignedValue <- (Rectangle.getPoint ((jget rectangle)))
                jset point (assignedValue)
                when (jio (RectangleCollisionUtil.isInside ((jget (this).rectangleCollisionUtil)) (jio (GPoint.getX ((jget point)))) (jio (GPoint.getY ((jget point)))) (jio (Rectangle.getMaxX ((jget rectangle)))) (jio (Rectangle.getMaxY ((jget rectangle)))) x y)) $ do
                    assignedValue <- (TouchButton.getTouchButtonInput ((jget touchButton)))
                    jset touchButtonInput (assignedValue)
                    Control.Monad.void (TouchButtonRecognizer.processRelease this (jget touchButtonInput) deviceId)
                    javaReturn (True)
        pure (False)


-- throws Exception
pressTouchButtonInput :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Bool)
pressTouchButtonInput object_ a1 a2 a3 = jmethod object_ "pressTouchButtonInput" (\() -> (pressTouchButtonInput_impl (javaCast object_ :: TouchButtonRecognizer))) () a1 a2 a3

pressTouchButtonInput_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Bool)
pressTouchButtonInput_super object_ a1 a2 a3 = (pressTouchButtonInput_impl (javaCast object_ :: TouchButtonRecognizer)) a1 a2 a3

pressTouchButtonInput_impl :: TouchButtonRecognizer -> Int -> Int -> Int -> IO (Bool)
pressTouchButtonInput_impl this x y deviceId = do
    javaCatchReturn $ do
        list <- (TouchButtonFactory.getList ((jio (TouchButtonFactory.getInstance))))
        rectangle <- newIORef (javaNull)
        point <- newIORef (javaNull)
        touchButton <- newIORef (javaNull)
        touchButtonInput <- newIORef (javaNull)
        gameKeyEvent <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset touchButton ((javaCast (jindex ((jget (list).objectArray)) (index)) :: TouchButton.TouchButton))
            assignedValue <- (TouchButton.getRectangle ((jget touchButton)))
            jset rectangle (assignedValue)
            assignedValue <- (Rectangle.getPoint ((jget rectangle)))
            jset point (assignedValue)
            when (jio (RectangleCollisionUtil.isInside ((jget (this).rectangleCollisionUtil)) (jio (GPoint.getX ((jget point)))) (jio (GPoint.getY ((jget point)))) (jio (Rectangle.getMaxX ((jget rectangle)))) (jio (Rectangle.getMaxY ((jget rectangle)))) x y)) $ do
                assignedValue <- (TouchButton.getTouchButtonInput ((jget touchButton)))
                jset touchButtonInput (assignedValue)
                when (Prelude.not (jio (CurrentlyPressedTouchButtonSingleton.contains ((jget (this).currentlyPressedTouchButtonSingleton)) (jget touchButtonInput)))) $ do
                    Control.Monad.void (ReleaseHelper.release ((jget (this).releaseHelper)) (jget touchButtonInput) deviceId)
                    jset (this).lastPressedTouchButtonInput ((jget touchButtonInput))
                    Control.Monad.void (CurrentlyPressedTouchButtonSingleton.add ((jget (this).currentlyPressedTouchButtonSingleton)) (jget touchButtonInput))
                    assignedValue <- (TouchButtonInput.getGameKeyEvent ((jget touchButtonInput)))
                    jset gameKeyEvent (assignedValue)
                    Control.Monad.void (DownGameKeyEventHandler.fireEvent ((jget (this).downGameKeyEventHandler)) (jget gameKeyEvent))
                    Control.Monad.void (DownGameKeyEventHandlerBase.fireEvent ((jio (DownGameKeyEventHandler.getInstanceForDevice ((jget (this).downGameKeyEventHandler)) deviceId))) (jget gameKeyEvent))
                javaReturn (True)
        pure (False)

-- Java nested class ReleaseHelper: move it to its own module ReleaseHelper
-- Java nested class MultitouchReleaseHelper: move it to its own module MultitouchReleaseHelper

