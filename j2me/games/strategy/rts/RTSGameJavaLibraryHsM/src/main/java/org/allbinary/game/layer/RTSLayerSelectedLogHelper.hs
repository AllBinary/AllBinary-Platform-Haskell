{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.layer
module RTSLayerSelectedLogHelper (module RTSLayerSelectedLogHelper, module RTSLayerLogHelper) where

import RTSLayerLogHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, setClosestGeographicMapCellHistory, setClosestGeographicMapCellHistory_super, setClosestGeographicMapCellHistory_impl, trackTo, trackTo_super, trackTo_impl, turnTo, turnTo_super, turnTo_impl, doneMoving, doneMoving_super, doneMoving_impl, closeEnough, closeEnough_super, closeEnough_impl, movingLeft, movingLeft_super, movingLeft_impl, movingRight, movingRight_super, movingRight_impl, movingUp, movingUp_super, movingUp_impl, movingDown, movingDown_super, movingDown_impl, currentMoveEnded, currentMoveEnded_super, currentMoveEnded_impl, evade, evade_super, evade_impl, rotateLeft, rotateLeft_super, rotateLeft_impl, rotateRight, rotateRight_super, rotateRight_impl, handle, handle_super, handle_impl, noRotation, noRotation_super, noRotation_impl, notOnPath, notOnPath_super, notOnPath_impl, logUtil, instanceC, commonSeps, positionStrings, tRACKTO_TURNTO)
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
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified NamedAngle -- org.allbinary.math.NamedAngle
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified RTSLayerLogHelper

data RTSLayerSelectedLogHelper = RTSLayerSelectedLogHelper
    { header_ :: JavaHeader
    , base :: RTSLayerLogHelper.RTSLayerLogHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , positionStrings :: IORef (PositionStrings.PositionStrings)
    , tRACKTO_TURNTO :: IORef (String)
    }

instance JavaNull RTSLayerSelectedLogHelper where
    javaNull = javaNullRecord "RTSLayerSelectedLogHelper"

instance JavaEquals RTSLayerSelectedLogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerSelectedLogHelper where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerSelectedLogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO RTSLayerSelectedLogHelper
newRecord_ = do
    base <- RTSLayerLogHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonSeps <- newIORef javaNull
    positionStrings <- newIORef javaNull
    tRACKTO_TURNTO <- newIORef ""
    let this = RTSLayerSelectedLogHelper header_ base logUtil commonSeps positionStrings tRACKTO_TURNTO
    jregisterLevel header_ this
    jregisterMethod header_ "setClosestGeographicMapCellHistory" (\() -> setClosestGeographicMapCellHistory_impl this)
    jregisterMethod header_ "trackTo" (\() -> trackTo_impl this)
    jregisterMethod header_ "turnTo" (\() -> turnTo_impl this)
    jregisterMethod header_ "doneMoving" (\() -> doneMoving_impl this)
    jregisterMethod header_ "closeEnough" (\() -> closeEnough_impl this)
    jregisterMethod header_ "movingLeft" (\() -> movingLeft_impl this)
    jregisterMethod header_ "movingRight" (\() -> movingRight_impl this)
    jregisterMethod header_ "movingUp" (\() -> movingUp_impl this)
    jregisterMethod header_ "movingDown" (\() -> movingDown_impl this)
    jregisterMethod header_ "currentMoveEnded" (\() -> currentMoveEnded_impl this)
    jregisterMethod header_ "evade" (\() -> evade_impl this)
    jregisterMethod header_ "rotateLeft" (\() -> rotateLeft_impl this)
    jregisterMethod header_ "rotateRight" (\() -> rotateRight_impl this)
    jregisterMethod header_ "handle" (\() -> handle_impl this)
    jregisterMethod header_ "noRotation" (\() -> noRotation_impl this)
    jregisterMethod header_ "notOnPath" (\() -> notOnPath_impl this)
    pure this

initFields_ :: RTSLayerSelectedLogHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.positionStrings =<< (PositionStrings.getInstance)
    jset this.tRACKTO_TURNTO ("trackTo:turnTo")
    pure ()

new_ :: IO RTSLayerSelectedLogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSLayerSelectedLogHelper -> IO ()
init_ this = do
    RTSLayerLogHelper.init_ this.base
    initFields_ this


getInstance :: IO (RTSLayerSelectedLogHelper)
getInstance = do
        pure (RTSLayerSelectedLogHelper.instanceC)


setClosestGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory object_ a1 a2 = jmethod object_ "setClosestGeographicMapCellHistory" (\() -> (setClosestGeographicMapCellHistory_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1 a2

setClosestGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_super object_ a1 a2 = (setClosestGeographicMapCellHistory_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1 a2

setClosestGeographicMapCellHistory_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_impl this associatedAdvancedRTSGameLayer pathsList = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).sTART))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size pathsList)))
        Control.Monad.void (StringMaker.append stringBuffer " -> ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) pathsList)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: setClosestGeographicMapCellHistory")
        pure ()


trackTo :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> String -> IO (())
trackTo object_ a1 a2 a3 a4 a5 = jmethod object_ "trackTo" (\() -> (trackTo_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1 a2 a3 a4 a5

trackTo_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> String -> IO (())
trackTo_super object_ a1 a2 a3 a4 a5 = (trackTo_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1 a2 a3 a4 a5

trackTo_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> String -> IO (())
trackTo_impl this associatedAdvancedRTSGameLayer nextUnvisitedPathGeographicMapCellPosition dx dy reason = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) nextUnvisitedPathGeographicMapCellPosition)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).positionStrings)).dX_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer dx)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).positionStrings)).dY_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer dy)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer reason)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "selected: trackTo")
        pure ()


turnTo :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> AngleInfo.AngleInfo -> Int -> NamedAngle.NamedAngle -> Bool -> Int -> IO (())
turnTo object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "turnTo" (\() -> (turnTo_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1 a2 a3 a4 a5 a6 a7 a8

turnTo_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> AngleInfo.AngleInfo -> Int -> NamedAngle.NamedAngle -> Bool -> Int -> IO (())
turnTo_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (turnTo_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1 a2 a3 a4 a5 a6 a7 a8

turnTo_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> AngleInfo.AngleInfo -> Int -> NamedAngle.NamedAngle -> Bool -> Int -> IO (())
turnTo_impl this associatedAdvancedRTSGameLayer dx dy angleInfo angle movementAngle evading targetAngle = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer)))
        Control.Monad.void (StringMaker.append stringBuffer " steering - ")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).positionStrings)).dX_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer dx)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).positionStrings)).dY_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer dy)
        Control.Monad.void (StringMaker.append stringBuffer " angle: ")
        Control.Monad.void (StringMaker.appendint stringBuffer angle)
        Control.Monad.void (StringMaker.append stringBuffer " movementAngle: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (movementAngle).name))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).fORWARD_SLASH))
        Control.Monad.void (StringMaker.appendshort stringBuffer (jio (NamedAngle.getValue movementAngle)))
        when (angleInfo /= javaNull) $ do
            angleIncrement <- (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo angleInfo))))
            Control.Monad.void (StringMaker.append stringBuffer " angleIncrement: ")
            Control.Monad.void (StringMaker.appendshort stringBuffer angleIncrement)
        Control.Monad.void (StringMaker.append stringBuffer " Evading: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer evading)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).tRACKTO_TURNTO))
        pure ()


doneMoving :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
doneMoving object_ a1 = jmethod object_ "doneMoving" (\() -> (doneMoving_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

doneMoving_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
doneMoving_super object_ a1 = (doneMoving_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

doneMoving_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
doneMoving_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - done moving 0,0"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


closeEnough :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
closeEnough object_ a1 = jmethod object_ "closeEnough" (\() -> (closeEnough_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

closeEnough_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
closeEnough_super object_ a1 = (closeEnough_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

closeEnough_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
closeEnough_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - close enough"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


movingLeft :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingLeft object_ a1 = jmethod object_ "movingLeft" (\() -> (movingLeft_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

movingLeft_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingLeft_super object_ a1 = (movingLeft_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

movingLeft_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingLeft_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - allow movingLeft"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


movingRight :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingRight object_ a1 = jmethod object_ "movingRight" (\() -> (movingRight_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

movingRight_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingRight_super object_ a1 = (movingRight_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

movingRight_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingRight_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - allow movingRight"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


movingUp :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingUp object_ a1 = jmethod object_ "movingUp" (\() -> (movingUp_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

movingUp_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingUp_super object_ a1 = (movingUp_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

movingUp_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingUp_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - allow movingUp"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


movingDown :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingDown object_ a1 = jmethod object_ "movingDown" (\() -> (movingDown_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

movingDown_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingDown_super object_ a1 = (movingDown_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

movingDown_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingDown_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - allow movingDown"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


currentMoveEnded :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
currentMoveEnded object_ a1 = jmethod object_ "currentMoveEnded" (\() -> (currentMoveEnded_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

currentMoveEnded_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
currentMoveEnded_super object_ a1 = (currentMoveEnded_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

currentMoveEnded_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
currentMoveEnded_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - correct angle, but movement not needed for current deltas so reseting movement angle"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


evade :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
evade object_ a1 = jmethod object_ "evade" (\() -> (evade_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

evade_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
evade_super object_ a1 = (evade_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

evade_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
evade_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - evade"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


rotateLeft :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateLeft object_ a1 = jmethod object_ "rotateLeft" (\() -> (rotateLeft_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

rotateLeft_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateLeft_super object_ a1 = (rotateLeft_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

rotateLeft_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateLeft_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - rotating left"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


rotateRight :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateRight object_ a1 = jmethod object_ "rotateRight" (\() -> (rotateRight_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

rotateRight_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateRight_super object_ a1 = (rotateRight_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

rotateRight_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateRight_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - rotating right"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


handle :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> NamedAngle.NamedAngle -> IO (())
handle object_ a1 a2 = jmethod object_ "handle" (\() -> (handle_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1 a2

handle_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> NamedAngle.NamedAngle -> IO (())
handle_super object_ a1 a2 = (handle_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1 a2

handle_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> NamedAngle.NamedAngle -> IO (())
handle_impl this associatedAdvancedRTSGameLayer movementAngle = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendshort ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - movementAngle: "))) (jget (movementAngle).name)))) (jget ((jget (this).commonSeps)).fORWARD_SLASH)))) (jio (NamedAngle.getValue movementAngle))))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


noRotation :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
noRotation object_ a1 = jmethod object_ "noRotation" (\() -> (noRotation_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1

noRotation_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
noRotation_super object_ a1 = (noRotation_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1

noRotation_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
noRotation_impl this associatedAdvancedRTSGameLayer = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) " steering - Do not rotate"))))) this (jget (this).tRACKTO_TURNTO))
        pure ()


notOnPath :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellHistory.GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (())
notOnPath object_ a1 a2 a3 a4 = jmethod object_ "notOnPath" (\() -> (notOnPath_impl (javaCast object_ :: RTSLayerSelectedLogHelper))) () a1 a2 a3 a4

notOnPath_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellHistory.GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (())
notOnPath_super object_ a1 a2 a3 a4 = (notOnPath_impl (javaCast object_ :: RTSLayerSelectedLogHelper)) a1 a2 a3 a4

notOnPath_impl :: RTSLayerSelectedLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellHistory.GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (())
notOnPath_impl this associatedAdvancedRTSGameLayer geographicMapCellHistory currentGeographicMapCellPosition pathList = do
        stringUtil <- (StringUtil.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PathFindingLayerInterface.getName associatedAdvancedRTSGameLayer))))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jio (GeographicMapCellHistory.getTotalVisited geographicMapCellHistory))))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jio (StringUtil.toString stringUtil currentGeographicMapCellPosition))))) " - trying to move but not on path: "))) (jio (StringUtil.toString stringUtil pathList))))))) this "turnTo")
        pure ()


