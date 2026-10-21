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
-- package org.allbinary.game.ai.path
module BasicAIProcessor where

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
import qualified BasicDirectionAIHelper -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapDirectionUtil -- org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil
import qualified GeographicMapCellPathHistoryInfo -- org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo

data BasicAIProcessor = BasicAIProcessor
    { header_ :: JavaHeader
    , name :: IORef (String)
    , geographicMapCellHistory :: IORef (GeographicMapCellHistory.GeographicMapCellHistory)
    , geographicMapCellPositionBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    , geographicMapCellPathHistoryInfo :: IORef (GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo)
    , basicAI :: IORef (BasicDirectionAIHelper.BasicDirectionAIHelper)
    , geographicMapDirectionUtil :: IORef (GeographicMapDirectionUtil.GeographicMapDirectionUtil)
    }

instance JavaNull BasicAIProcessor where
    javaNull = javaNullRecord "BasicAIProcessor"

instance JavaEquals BasicAIProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicAIProcessor where
    (==) = jrecordEquals

instance JavaObjectClass BasicAIProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicAIProcessor
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    geographicMapCellHistory <- newIORef javaNull
    geographicMapCellPositionBasicArrayList <- newIORef javaNull
    geographicMapCellPathHistoryInfo <- newIORef javaNull
    basicAI <- newIORef javaNull
    geographicMapDirectionUtil <- newIORef javaNull
    let this = BasicAIProcessor header_ name geographicMapCellHistory geographicMapCellPositionBasicArrayList geographicMapCellPathHistoryInfo basicAI geographicMapDirectionUtil
    jregisterLevel header_ this
    jregisterMethod header_ "setNewPath" (\() -> setNewPath_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "goTowardNextChosenOnPathPosition" (\() -> goTowardNextChosenOnPathPosition_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getGeographicMapCellPathHistoryInfo" (\() -> getGeographicMapCellPathHistoryInfo_impl this)
    jregisterMethod header_ "setGeographicMapCellPathHistoryInfo" (\() -> setGeographicMapCellPathHistoryInfo_impl this)
    jregisterMethod header_ "getGeographicMapCellHistory" (\() -> getGeographicMapCellHistory_impl this)
    jregisterMethod header_ "setGeographicMapCellHistory" (\() -> setGeographicMapCellHistory_impl this)
    pure this

initFields_ :: BasicAIProcessor -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.geographicMapCellHistory (javaNull)
    jset this.geographicMapCellPositionBasicArrayList (javaNull)
    jset this.geographicMapCellPathHistoryInfo (javaNull)
    jset this.basicAI (javaNull)
    jset this.geographicMapDirectionUtil =<< (GeographicMapDirectionUtil.getInstance)
    pure ()

new_6 :: String -> GeographicMapCellHistory.GeographicMapCellHistory -> GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo -> BasicArrayList.BasicArrayList -> AngleInfo.AngleInfo -> Int -> IO BasicAIProcessor
new_6 name geographicMapCellHistory geographicMapCellPathHistoryInfo chosenPathList angleInfo seed = do
    this <- newRecord_
    init_6 this name geographicMapCellHistory geographicMapCellPathHistoryInfo chosenPathList angleInfo seed
    pure this

init_6 :: BasicAIProcessor -> String -> GeographicMapCellHistory.GeographicMapCellHistory -> GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo -> BasicArrayList.BasicArrayList -> AngleInfo.AngleInfo -> Int -> IO ()
init_6 this name geographicMapCellHistory geographicMapCellPathHistoryInfo chosenPathList angleInfo seed = do
        initFields_ this
        jset (this).name (name)
        jset (this).geographicMapCellHistory (geographicMapCellHistory)
        jset (this).geographicMapCellPositionBasicArrayList (chosenPathList)
        jset (this).geographicMapCellPathHistoryInfo (geographicMapCellPathHistoryInfo)
        Control.Monad.void (BasicAIProcessor.setName this name)
        Control.Monad.void (BasicAIProcessor.setNewPath this geographicMapCellHistory chosenPathList)
        assignedValue <- (BasicDirectionAIHelper.new_2 (jio (BasicAIProcessor.getName this)) angleInfo)
        jset (this).basicAI (assignedValue)
        pure ()


setNewPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
setNewPath object_ a1 a2 = jmethod object_ "setNewPath" (\() -> (setNewPath_impl (javaCast object_ :: BasicAIProcessor))) () a1 a2

setNewPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
setNewPath_super object_ a1 a2 = (setNewPath_impl (javaCast object_ :: BasicAIProcessor)) a1 a2

setNewPath_impl :: BasicAIProcessor -> GeographicMapCellHistory.GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
setNewPath_impl this geographicMapCellHistory chosenPathList = do
        Control.Monad.void (BasicAIProcessor.setGeographicMapCellHistory this geographicMapCellHistory)
        jset (this).geographicMapCellPositionBasicArrayList (chosenPathList)
        Control.Monad.void (BasicAIProcessor.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicAIProcessor))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: BasicAIProcessor))

init_impl :: BasicAIProcessor -> IO (())
init_impl this = do
        assignedValue <- (GeographicMapCellPathHistoryInfo.new_)
        jset (this).geographicMapCellPathHistoryInfo (assignedValue)
        Control.Monad.void (GeographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition ((jget (this).geographicMapCellPathHistoryInfo)) (javaCast (jio (BasicArrayList.get ((jget (this).geographicMapCellPositionBasicArrayList)) ((jio (BasicArrayList.size ((jget (this).geographicMapCellPositionBasicArrayList)))) - 1))) :: GeographicMapCellPosition.GeographicMapCellPosition))
        Control.Monad.void (GeographicMapCellPathHistoryInfo.setNextOnPathGeographicMapCellPosition ((jget (this).geographicMapCellPathHistoryInfo)) (javaCast (jio (BasicArrayList.get ((jget (this).geographicMapCellPositionBasicArrayList)) ((jio (BasicArrayList.size ((jget (this).geographicMapCellPositionBasicArrayList)))) - 1))) :: GeographicMapCellPosition.GeographicMapCellPosition))
        Control.Monad.void (BasicAIProcessor.update this)
        pure ()


-- throws Exception
goTowardNextChosenOnPathPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
goTowardNextChosenOnPathPosition object_ a1 = jmethod object_ "goTowardNextChosenOnPathPosition" (\() -> (goTowardNextChosenOnPathPosition_impl (javaCast object_ :: BasicAIProcessor))) () a1

goTowardNextChosenOnPathPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
goTowardNextChosenOnPathPosition_super object_ a1 = (goTowardNextChosenOnPathPosition_impl (javaCast object_ :: BasicAIProcessor)) a1

goTowardNextChosenOnPathPosition_impl :: BasicAIProcessor -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
goTowardNextChosenOnPathPosition_impl this currentGeographicMapCellPosition = do
        keyDirection <- newIORef ((Prelude.negate 1))
        goToGeographicMapCellPosition <- (GeographicMapCellPathHistoryInfo.getNextChosenOnPathGeographicMapCellPosition ((jget (this).geographicMapCellPathHistoryInfo)))
        geographicMapDirectionData <- newIORef =<< (GeographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition ((jget (this).geographicMapDirectionUtil)) currentGeographicMapCellPosition goToGeographicMapCellPosition)
        when ((jget geographicMapDirectionData) == (jget ((jio (DirectionFactory.getInstance))).nOT_BORDERED_WITH)) $ do
            assignedValue <- (GeographicMapDirectionUtil.getDirectionFromCellPositionToCellPosition ((jget (this).geographicMapDirectionUtil)) currentGeographicMapCellPosition goToGeographicMapCellPosition)
            jset geographicMapDirectionData (assignedValue)
        assignedValue <- (BasicDirectionAIHelper.getAIKeyPressedFromDirection ((jget (this).basicAI)) (jget geographicMapDirectionData))
        jset keyDirection (assignedValue)
        pure ((jget keyDirection))


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: BasicAIProcessor))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: BasicAIProcessor))

update_impl :: BasicAIProcessor -> IO (())
update_impl this = do
        Control.Monad.void (GeographicMapCellPathHistoryInfo.setNextUnvisitedOnPathGeographicMapCellPosition ((jget (this).geographicMapCellPathHistoryInfo)) (jio (GeographicMapCellHistory.getFirstUnvisited ((jio (BasicAIProcessor.getGeographicMapCellHistory this))))))
        Control.Monad.void (GeographicMapCellPathHistoryInfo.setNextChosenOnPathGeographicMapCellPosition ((jget (this).geographicMapCellPathHistoryInfo)) (jio (GeographicMapCellPathHistoryInfo.getNextUnvisitedOnPathGeographicMapCellPosition ((jget (this).geographicMapCellPathHistoryInfo)))))
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
processAI object_ a1 a2 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: BasicAIProcessor))) () a1 a2

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
processAI_super object_ a1 a2 = (processAI_impl (javaCast object_ :: BasicAIProcessor)) a1 a2

processAI_impl :: BasicAIProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
processAI_impl this myManager currentGeographicMapCellPosition = do
        keyDirection <- newIORef ((Prelude.negate 1))
        if (jio (BasicArrayList.contains ((jget (this).geographicMapCellPositionBasicArrayList)) currentGeographicMapCellPosition)) then do
            Control.Monad.void (BasicAIProcessor.update this)
            assignedValue <- (BasicAIProcessor.goTowardNextChosenOnPathPosition this currentGeographicMapCellPosition)
            jset keyDirection (assignedValue)
            Control.Monad.void (GeographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition ((jget (this).geographicMapCellPathHistoryInfo)) currentGeographicMapCellPosition)
        else do
            assignedValue <- (BasicAIProcessor.goTowardNextChosenOnPathPosition this currentGeographicMapCellPosition)
            jset keyDirection (assignedValue)
        pure ((jget keyDirection))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicAIProcessor))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicAIProcessor))

getName_impl :: BasicAIProcessor -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: BasicAIProcessor))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: BasicAIProcessor)) a1

setName_impl :: BasicAIProcessor -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getGeographicMapCellPathHistoryInfo :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo)
getGeographicMapCellPathHistoryInfo object_ = jmethod object_ "getGeographicMapCellPathHistoryInfo" (\() -> (getGeographicMapCellPathHistoryInfo_impl (javaCast object_ :: BasicAIProcessor))) ()

getGeographicMapCellPathHistoryInfo_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo)
getGeographicMapCellPathHistoryInfo_super object_ = (getGeographicMapCellPathHistoryInfo_impl (javaCast object_ :: BasicAIProcessor))

getGeographicMapCellPathHistoryInfo_impl :: BasicAIProcessor -> IO (GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo)
getGeographicMapCellPathHistoryInfo_impl this = do
        pure ((jget (this).geographicMapCellPathHistoryInfo))


setGeographicMapCellPathHistoryInfo :: (JavaObjectClass this_) => this_ -> GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo -> IO (())
setGeographicMapCellPathHistoryInfo object_ a1 = jmethod object_ "setGeographicMapCellPathHistoryInfo" (\() -> (setGeographicMapCellPathHistoryInfo_impl (javaCast object_ :: BasicAIProcessor))) () a1

setGeographicMapCellPathHistoryInfo_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo -> IO (())
setGeographicMapCellPathHistoryInfo_super object_ a1 = (setGeographicMapCellPathHistoryInfo_impl (javaCast object_ :: BasicAIProcessor)) a1

setGeographicMapCellPathHistoryInfo_impl :: BasicAIProcessor -> GeographicMapCellPathHistoryInfo.GeographicMapCellPathHistoryInfo -> IO (())
setGeographicMapCellPathHistoryInfo_impl this geographicMapCellPathHistoryInfo = do
        jset (this).geographicMapCellPathHistoryInfo (geographicMapCellPathHistoryInfo)
        pure ()


getGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getGeographicMapCellHistory object_ = jmethod object_ "getGeographicMapCellHistory" (\() -> (getGeographicMapCellHistory_impl (javaCast object_ :: BasicAIProcessor))) ()

getGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getGeographicMapCellHistory_super object_ = (getGeographicMapCellHistory_impl (javaCast object_ :: BasicAIProcessor))

getGeographicMapCellHistory_impl :: BasicAIProcessor -> IO (GeographicMapCellHistory.GeographicMapCellHistory)
getGeographicMapCellHistory_impl this = do
        pure ((jget (this).geographicMapCellHistory))


setGeographicMapCellHistory :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> IO (())
setGeographicMapCellHistory object_ a1 = jmethod object_ "setGeographicMapCellHistory" (\() -> (setGeographicMapCellHistory_impl (javaCast object_ :: BasicAIProcessor))) () a1

setGeographicMapCellHistory_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellHistory.GeographicMapCellHistory -> IO (())
setGeographicMapCellHistory_super object_ a1 = (setGeographicMapCellHistory_impl (javaCast object_ :: BasicAIProcessor)) a1

setGeographicMapCellHistory_impl :: BasicAIProcessor -> GeographicMapCellHistory.GeographicMapCellHistory -> IO (())
setGeographicMapCellHistory_impl this geographicMapCellHistory = do
        jset (this).geographicMapCellHistory (geographicMapCellHistory)
        pure ()


