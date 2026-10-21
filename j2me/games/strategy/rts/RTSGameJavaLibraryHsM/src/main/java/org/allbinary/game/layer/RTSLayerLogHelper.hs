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
module RTSLayerLogHelper where

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
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified NamedAngle -- org.allbinary.math.NamedAngle
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data RTSLayerLogHelper = RTSLayerLogHelper
    { header_ :: JavaHeader
    }

instance JavaNull RTSLayerLogHelper where
    javaNull = javaNullRecord "RTSLayerLogHelper"

instance JavaEquals RTSLayerLogHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerLogHelper where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerLogHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RTSLayerLogHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = RTSLayerLogHelper header_
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

initFields_ :: RTSLayerLogHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RTSLayerLogHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSLayerLogHelper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RTSLayerLogHelper)
getInstance = do
        pure (RTSLayerLogHelper.instance_)


setClosestGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory object_ a1 a2 = jmethod object_ "setClosestGeographicMapCellHistory" (\() -> (setClosestGeographicMapCellHistory_impl (javaCast object_ :: RTSLayerLogHelper))) () a1 a2

setClosestGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_super object_ a1 a2 = (setClosestGeographicMapCellHistory_impl (javaCast object_ :: RTSLayerLogHelper)) a1 a2

setClosestGeographicMapCellHistory_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> BasicArrayList.BasicArrayList -> IO (())
setClosestGeographicMapCellHistory_impl this associatedAdvancedRTSGameLayer pathsList = do
        pure ()


trackTo :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> String -> IO (())
trackTo object_ a1 a2 a3 a4 a5 = jmethod object_ "trackTo" (\() -> (trackTo_impl (javaCast object_ :: RTSLayerLogHelper))) () a1 a2 a3 a4 a5

trackTo_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> String -> IO (())
trackTo_super object_ a1 a2 a3 a4 a5 = (trackTo_impl (javaCast object_ :: RTSLayerLogHelper)) a1 a2 a3 a4 a5

trackTo_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> Int -> Int -> String -> IO (())
trackTo_impl this associatedAdvancedRTSGameLayer nextUnvisitedPathGeographicMapCellPosition dx dy reason = do
        pure ()


turnTo :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> AngleInfo.AngleInfo -> Int -> NamedAngle.NamedAngle -> Bool -> Int -> IO (())
turnTo object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "turnTo" (\() -> (turnTo_impl (javaCast object_ :: RTSLayerLogHelper))) () a1 a2 a3 a4 a5 a6 a7 a8

turnTo_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> AngleInfo.AngleInfo -> Int -> NamedAngle.NamedAngle -> Bool -> Int -> IO (())
turnTo_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (turnTo_impl (javaCast object_ :: RTSLayerLogHelper)) a1 a2 a3 a4 a5 a6 a7 a8

turnTo_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> Int -> Int -> AngleInfo.AngleInfo -> Int -> NamedAngle.NamedAngle -> Bool -> Int -> IO (())
turnTo_impl this associatedAdvancedRTSGameLayer dx dy angleInfo angle movementAngle evading targetAngle = do
        pure ()


doneMoving :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
doneMoving object_ a1 = jmethod object_ "doneMoving" (\() -> (doneMoving_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

doneMoving_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
doneMoving_super object_ a1 = (doneMoving_impl (javaCast object_ :: RTSLayerLogHelper)) a1

doneMoving_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
doneMoving_impl this associatedAdvancedRTSGameLayer = do
        pure ()


closeEnough :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
closeEnough object_ a1 = jmethod object_ "closeEnough" (\() -> (closeEnough_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

closeEnough_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
closeEnough_super object_ a1 = (closeEnough_impl (javaCast object_ :: RTSLayerLogHelper)) a1

closeEnough_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
closeEnough_impl this associatedAdvancedRTSGameLayer = do
        pure ()


movingLeft :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingLeft object_ a1 = jmethod object_ "movingLeft" (\() -> (movingLeft_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

movingLeft_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingLeft_super object_ a1 = (movingLeft_impl (javaCast object_ :: RTSLayerLogHelper)) a1

movingLeft_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingLeft_impl this associatedAdvancedRTSGameLayer = do
        pure ()


movingRight :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingRight object_ a1 = jmethod object_ "movingRight" (\() -> (movingRight_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

movingRight_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingRight_super object_ a1 = (movingRight_impl (javaCast object_ :: RTSLayerLogHelper)) a1

movingRight_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingRight_impl this associatedAdvancedRTSGameLayer = do
        pure ()


movingUp :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingUp object_ a1 = jmethod object_ "movingUp" (\() -> (movingUp_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

movingUp_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingUp_super object_ a1 = (movingUp_impl (javaCast object_ :: RTSLayerLogHelper)) a1

movingUp_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingUp_impl this associatedAdvancedRTSGameLayer = do
        pure ()


movingDown :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingDown object_ a1 = jmethod object_ "movingDown" (\() -> (movingDown_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

movingDown_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingDown_super object_ a1 = (movingDown_impl (javaCast object_ :: RTSLayerLogHelper)) a1

movingDown_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
movingDown_impl this associatedAdvancedRTSGameLayer = do
        pure ()


currentMoveEnded :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
currentMoveEnded object_ a1 = jmethod object_ "currentMoveEnded" (\() -> (currentMoveEnded_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

currentMoveEnded_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
currentMoveEnded_super object_ a1 = (currentMoveEnded_impl (javaCast object_ :: RTSLayerLogHelper)) a1

currentMoveEnded_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
currentMoveEnded_impl this associatedAdvancedRTSGameLayer = do
        pure ()


evade :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
evade object_ a1 = jmethod object_ "evade" (\() -> (evade_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

evade_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
evade_super object_ a1 = (evade_impl (javaCast object_ :: RTSLayerLogHelper)) a1

evade_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
evade_impl this associatedAdvancedRTSGameLayer = do
        pure ()


rotateLeft :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateLeft object_ a1 = jmethod object_ "rotateLeft" (\() -> (rotateLeft_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

rotateLeft_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateLeft_super object_ a1 = (rotateLeft_impl (javaCast object_ :: RTSLayerLogHelper)) a1

rotateLeft_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateLeft_impl this associatedAdvancedRTSGameLayer = do
        pure ()


rotateRight :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateRight object_ a1 = jmethod object_ "rotateRight" (\() -> (rotateRight_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

rotateRight_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateRight_super object_ a1 = (rotateRight_impl (javaCast object_ :: RTSLayerLogHelper)) a1

rotateRight_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
rotateRight_impl this associatedAdvancedRTSGameLayer = do
        pure ()


handle :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> NamedAngle.NamedAngle -> IO (())
handle object_ a1 a2 = jmethod object_ "handle" (\() -> (handle_impl (javaCast object_ :: RTSLayerLogHelper))) () a1 a2

handle_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> NamedAngle.NamedAngle -> IO (())
handle_super object_ a1 a2 = (handle_impl (javaCast object_ :: RTSLayerLogHelper)) a1 a2

handle_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> NamedAngle.NamedAngle -> IO (())
handle_impl this associatedAdvancedRTSGameLayer movementAngle = do
        pure ()


noRotation :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
noRotation object_ a1 = jmethod object_ "noRotation" (\() -> (noRotation_impl (javaCast object_ :: RTSLayerLogHelper))) () a1

noRotation_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
noRotation_super object_ a1 = (noRotation_impl (javaCast object_ :: RTSLayerLogHelper)) a1

noRotation_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
noRotation_impl this associatedAdvancedRTSGameLayer = do
        pure ()


notOnPath :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellHistory.GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (())
notOnPath object_ a1 a2 a3 a4 = jmethod object_ "notOnPath" (\() -> (notOnPath_impl (javaCast object_ :: RTSLayerLogHelper))) () a1 a2 a3 a4

notOnPath_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellHistory.GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (())
notOnPath_super object_ a1 a2 a3 a4 = (notOnPath_impl (javaCast object_ :: RTSLayerLogHelper)) a1 a2 a3 a4

notOnPath_impl :: RTSLayerLogHelper -> PathFindingLayerInterface.PathFindingLayerInterface -> GeographicMapCellHistory.GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> BasicArrayList.BasicArrayList -> IO (())
notOnPath_impl this associatedAdvancedRTSGameLayer geographicMapCellHistory currentGeographicMapCellPosition pathList = do
        pure ()


