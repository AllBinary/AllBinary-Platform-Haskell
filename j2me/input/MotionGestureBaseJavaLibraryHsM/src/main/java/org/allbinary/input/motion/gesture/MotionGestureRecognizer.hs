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
-- package org.allbinary.input.motion.gesture
module MotionGestureRecognizer where

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
import qualified TouchMotionGestureFactory -- same package or java.lang
import qualified MotionGestureInput -- same package or java.lang
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Line -- org.allbinary.graphics.Line
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified MotionGestureConfiguration -- org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
import qualified MotionGestureConfigurationFactory -- org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
import qualified BasicMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
import qualified MotionEventCircularPool -- org.allbinary.input.motion.gesture.observer.MotionEventCircularPool
import qualified MotionGestureEvent -- org.allbinary.input.motion.gesture.observer.MotionGestureEvent
import qualified MovedMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.MovedMotionGesturesHandler
import qualified ScrolledMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified J2SEMath -- org.allbinary.logic.math.J2SEMath
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data MotionGestureRecognizer = MotionGestureRecognizer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , j2seMath :: IORef (J2SEMath.J2SEMath)
    , origin :: IORef (GPoint.GPoint)
    , previous :: IORef (GPoint.GPoint)
    , intermediate :: IORef (GPoint.GPoint)
    , line :: IORef (Line.Line)
    , motionGesturesHandler :: IORef (BasicMotionGesturesHandler.BasicMotionGesturesHandler)
    , movedMotionGesturesHandler :: IORef (BasicEventHandler.BasicEventHandler)
    , scrolledMotionGesturesHandler :: IORef (BasicEventHandler.BasicEventHandler)
    , motionEventCircularPool :: IORef (MotionEventCircularPool.MotionEventCircularPool)
    }

instance JavaNull MotionGestureRecognizer where
    javaNull = javaNullRecord "MotionGestureRecognizer"

instance JavaEquals MotionGestureRecognizer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionGestureRecognizer where
    (==) = jrecordEquals

instance JavaObjectClass MotionGestureRecognizer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionGestureRecognizer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    j2seMath <- newIORef javaNull
    origin <- newIORef javaNull
    previous <- newIORef javaNull
    intermediate <- newIORef javaNull
    line <- newIORef javaNull
    motionGesturesHandler <- newIORef javaNull
    movedMotionGesturesHandler <- newIORef javaNull
    scrolledMotionGesturesHandler <- newIORef javaNull
    motionEventCircularPool <- newIORef javaNull
    let this = MotionGestureRecognizer header_ logUtil j2seMath origin previous intermediate line motionGesturesHandler movedMotionGesturesHandler scrolledMotionGesturesHandler motionEventCircularPool
    jregisterLevel header_ this
    jregisterMethod header_ "processPressedMotionEvent" (\() -> processPressedMotionEvent_impl this)
    jregisterMethod header_ "processReleasedMotionEvent" (\() -> processReleasedMotionEvent_impl this)
    jregisterMethod header_ "processDraggedMotionEvent" (\() -> processDraggedMotionEvent_impl this)
    jregisterMethod header_ "processMovedMotionEvent" (\() -> processMovedMotionEvent_impl this)
    jregisterMethod header_ "processScrolledMotionEvent" (\() -> processScrolledMotionEvent_impl this)
    jregisterMethod header_ "getMotionGesturesHandler" (\() -> getMotionGesturesHandler_impl this)
    pure this

initFields_ :: MotionGestureRecognizer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.j2seMath =<< (J2SEMath.getInstance)
    jset this.origin ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
    jset this.previous ((jget (this).origin))
    jset this.intermediate ((jget (this).origin))
    jset this.line =<< (Line.new_2 (jget (this).origin) (jget (this).origin))
    jset this.motionGesturesHandler (javaNull)
    jset this.movedMotionGesturesHandler (javaNull)
    jset this.scrolledMotionGesturesHandler (javaNull)
    jset this.motionEventCircularPool (javaNull)
    pure ()

new_1 :: Int -> IO MotionGestureRecognizer
new_1 id = do
    this <- newRecord_
    init_1 this id
    pure this

init_1 :: MotionGestureRecognizer -> Int -> IO ()
init_1 this id = do
        initFields_ this
        assignedValue <- (MotionEventCircularPool.createPool id)
        jset (this).motionEventCircularPool (assignedValue)
        motionGesturesHandler <- newIORef =<< (BasicEventHandler.new_)
        movedMotionGesturesHandler <- newIORef ((jget motionGesturesHandler))
        scrolledMotionGesturesHandler <- newIORef ((jget motionGesturesHandler))
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            assignedValue <- (BasicMotionGesturesHandler.getInstance)
            jset motionGesturesHandler (assignedValue)
            assignedValue <- (MovedMotionGesturesHandler.getInstance)
            jset movedMotionGesturesHandler (assignedValue)
            assignedValue <- (ScrolledMotionGesturesHandler.getInstance)
            jset scrolledMotionGesturesHandler (assignedValue)
        jset (this).motionGesturesHandler ((javaCast (jget motionGesturesHandler) :: BasicMotionGesturesHandler.BasicMotionGesturesHandler))
        jset (this).movedMotionGesturesHandler ((jget movedMotionGesturesHandler))
        jset (this).scrolledMotionGesturesHandler ((jget scrolledMotionGesturesHandler))
        pure ()


-- throws Exception
processPressedMotionEvent :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processPressedMotionEvent object_ a1 a2 a3 = jmethod object_ "processPressedMotionEvent" (\() -> (processPressedMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer))) () a1 a2 a3

processPressedMotionEvent_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processPressedMotionEvent_super object_ a1 a2 a3 = (processPressedMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer)) a1 a2 a3

processPressedMotionEvent_impl :: MotionGestureRecognizer -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processPressedMotionEvent_impl this current deviceId button = do
        jset (this).intermediate ((jget (this).origin))
        jset (this).previous ((jget (this).origin))
        event <- (MotionEventCircularPool.getInstance ((jget (this).motionEventCircularPool)) (jget ((jio (TouchMotionGestureFactory.getInstance))).pRESSED))
        Control.Monad.void (MotionGestureEvent.setPreviousPoint event (jget (this).previous))
        Control.Monad.void (MotionGestureEvent.setCurrentPoint event current)
        Control.Monad.void (BasicMotionGesturesHandler.fireEvent ((jget (this).motionGesturesHandler)) (javaCast event))
        pure (True)


-- throws Exception
processReleasedMotionEvent :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processReleasedMotionEvent object_ a1 a2 a3 = jmethod object_ "processReleasedMotionEvent" (\() -> (processReleasedMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer))) () a1 a2 a3

processReleasedMotionEvent_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processReleasedMotionEvent_super object_ a1 a2 a3 = (processReleasedMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer)) a1 a2 a3

processReleasedMotionEvent_impl :: MotionGestureRecognizer -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processReleasedMotionEvent_impl this current deviceId button = do
        event <- (MotionEventCircularPool.getInstance ((jget (this).motionEventCircularPool)) (jget ((jio (TouchMotionGestureFactory.getInstance))).rELEASED))
        Control.Monad.void (MotionGestureEvent.setPreviousPoint event (jget (this).previous))
        Control.Monad.void (MotionGestureEvent.setCurrentPoint event current)
        Control.Monad.void (BasicMotionGesturesHandler.fireEvent ((jget (this).motionGesturesHandler)) (javaCast event))
        pure (True)


-- throws Exception
processDraggedMotionEvent :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (())
processDraggedMotionEvent object_ a1 a2 a3 = jmethod object_ "processDraggedMotionEvent" (\() -> (processDraggedMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer))) () a1 a2 a3

processDraggedMotionEvent_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (())
processDraggedMotionEvent_super object_ a1 a2 a3 = (processDraggedMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer)) a1 a2 a3

processDraggedMotionEvent_impl :: MotionGestureRecognizer -> GPoint.GPoint -> Int -> Int -> IO (())
processDraggedMotionEvent_impl this current deviceId buttonMask = do
    javaCatchReturn $ do
        when (((jget (this).previous) == (jget (this).origin)) || ((jget (this).intermediate) == (jget (this).origin))) $ do
            jset (this).previous (current)
            jset (this).intermediate (current)
            javaReturn (())
        Control.Monad.void (Line.setP1 ((jget (this).line)) (jget (this).previous))
        Control.Monad.void (Line.setP2 ((jget (this).line)) current)
        minimumMotionGesture <- (MotionGestureConfiguration.getMinimumMotionGesture ((jio (MotionGestureConfigurationFactory.getInstance))))
        when (((jio (J2SEMath.abs ((jget (this).j2seMath)) (Prelude.realToFrac (jio (Line.getDeltaX ((jget (this).line))))))) < (Prelude.fromIntegral minimumMotionGesture)) && ((jio (J2SEMath.abs ((jget (this).j2seMath)) (Prelude.realToFrac (jio (Line.getDeltaY ((jget (this).line))))))) < (Prelude.fromIntegral minimumMotionGesture))) $ do
            jset (this).intermediate (current)
            javaReturn (())
        gradient <- (Line.getGradient ((jget (this).line)))
        let absGradient = (Prelude.realToFrac (jio (J2SEMath.abs ((jget (this).j2seMath)) (Prelude.realToFrac gradient))))
        conf <- (MotionGestureConfigurationFactory.getInstance)
        touchMotionGestureFactory <- (TouchMotionGestureFactory.getInstance)
        newMotionGesture <- newIORef ((jget (touchMotionGestureFactory).nO_MOTION))
        diagonalToleranceHigher <- newIORef (12.0)
        diagonalToleranceLower <- newIORef (12.0)
        when (jio (MotionGestureConfiguration.isDiagonalMotionGestureAllowed conf)) $ do
            jset diagonalToleranceHigher ((Prelude.fromIntegral ((90 - (jio (MotionGestureConfiguration.getDiagonalTolerance conf))))))
            jset diagonalToleranceLower ((Prelude.fromIntegral (jio (MotionGestureConfiguration.getDiagonalTolerance conf))))
        if (absGradient > (Prelude.tan ((jget diagonalToleranceHigher) * pi / 180))) then do
            if ((jio (Line.getDeltaY ((jget (this).line)))) > 0.0) then do
                jset newMotionGesture ((jget (touchMotionGestureFactory).uP))
            else do
                jset newMotionGesture ((jget (touchMotionGestureFactory).dOWN))
        else do
            if (absGradient < (Prelude.tan ((jget diagonalToleranceLower) * pi / 180))) then do
                if ((jio (Line.getDeltaX ((jget (this).line)))) > 0.0) then do
                    jset newMotionGesture ((jget (touchMotionGestureFactory).lEFT))
                else do
                    jset newMotionGesture ((jget (touchMotionGestureFactory).rIGHT))
            else do
                if (gradient > 0.0) then do
                    if ((jio (Line.getDeltaX ((jget (this).line)))) > 0.0) then do
                        jset newMotionGesture ((jget (touchMotionGestureFactory).dIAGONAL_UP_LEFT))
                    else do
                        jset newMotionGesture ((jget (touchMotionGestureFactory).dIAGONAL_DOWN_RIGHT))
                else do
                    if ((jio (Line.getDeltaX ((jget (this).line)))) > 0.0) then do
                        jset newMotionGesture ((jget (touchMotionGestureFactory).dIAGONAL_DOWN_LEFT))
                    else do
                        jset newMotionGesture ((jget (touchMotionGestureFactory).dIAGONAL_UP_RIGHT))
        jset (this).previous (current)
        jset (this).intermediate (current)
        event <- (MotionEventCircularPool.getInstance ((jget (this).motionEventCircularPool)) (jget newMotionGesture))
        Control.Monad.void (MotionGestureEvent.setPreviousPoint event (jget (this).previous))
        Control.Monad.void (MotionGestureEvent.setCurrentPoint event current)
        Control.Monad.void (BasicMotionGesturesHandler.fireEvent ((jget (this).motionGesturesHandler)) (javaCast event))
        pure (())


-- throws Exception
processMovedMotionEvent :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processMovedMotionEvent object_ a1 a2 a3 = jmethod object_ "processMovedMotionEvent" (\() -> (processMovedMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer))) () a1 a2 a3

processMovedMotionEvent_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processMovedMotionEvent_super object_ a1 a2 a3 = (processMovedMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer)) a1 a2 a3

processMovedMotionEvent_impl :: MotionGestureRecognizer -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processMovedMotionEvent_impl this current deviceId button = do
        event <- (MotionEventCircularPool.getInstance ((jget (this).motionEventCircularPool)) (jget ((jio (TouchMotionGestureFactory.getInstance))).nO_MOTION))
        Control.Monad.void (MotionGestureEvent.setPreviousPoint event (jget (this).previous))
        Control.Monad.void (MotionGestureEvent.setCurrentPoint event current)
        Control.Monad.void (BasicEventHandler.fireEvent ((jget (this).movedMotionGesturesHandler)) (javaCast event))
        pure (True)


-- throws Exception
processScrolledMotionEvent :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processScrolledMotionEvent object_ a1 a2 a3 = jmethod object_ "processScrolledMotionEvent" (\() -> (processScrolledMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer))) () a1 a2 a3

processScrolledMotionEvent_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processScrolledMotionEvent_super object_ a1 a2 a3 = (processScrolledMotionEvent_impl (javaCast object_ :: MotionGestureRecognizer)) a1 a2 a3

processScrolledMotionEvent_impl :: MotionGestureRecognizer -> GPoint.GPoint -> Int -> Int -> IO (Bool)
processScrolledMotionEvent_impl this current deviceId button = do
        touchMotionGestureFactory <- (TouchMotionGestureFactory.getInstance)
        newMotionGesture <- newIORef ((jget (touchMotionGestureFactory).nO_MOTION))
        if (button > 0) then do
            jset newMotionGesture ((jget (touchMotionGestureFactory).sCROLL_UP))
        else when (button < 0) $ do
            jset newMotionGesture ((jget (touchMotionGestureFactory).sCROLL_DOWN))
        event <- (MotionEventCircularPool.getInstance ((jget (this).motionEventCircularPool)) (jget newMotionGesture))
        Control.Monad.void (MotionGestureEvent.setPreviousPoint event (jget (this).previous))
        Control.Monad.void (MotionGestureEvent.setCurrentPoint event current)
        Control.Monad.void (BasicEventHandler.fireEvent ((jget (this).scrolledMotionGesturesHandler)) (javaCast event))
        pure (True)


getMotionGesturesHandler :: (JavaObjectClass this_) => this_ -> IO (BasicMotionGesturesHandler.BasicMotionGesturesHandler)
getMotionGesturesHandler object_ = jmethod object_ "getMotionGesturesHandler" (\() -> (getMotionGesturesHandler_impl (javaCast object_ :: MotionGestureRecognizer))) ()

getMotionGesturesHandler_super :: (JavaObjectClass this_) => this_ -> IO (BasicMotionGesturesHandler.BasicMotionGesturesHandler)
getMotionGesturesHandler_super object_ = (getMotionGesturesHandler_impl (javaCast object_ :: MotionGestureRecognizer))

getMotionGesturesHandler_impl :: MotionGestureRecognizer -> IO (BasicMotionGesturesHandler.BasicMotionGesturesHandler)
getMotionGesturesHandler_impl this = do
        pure ((jget (this).motionGesturesHandler))


