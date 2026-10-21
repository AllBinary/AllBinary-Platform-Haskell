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
-- package org.allbinary.game.behavior.topview
module GeographicMapTopViewGameLayerBehavior2 (module GeographicMapTopViewGameLayerBehavior2, module GeographicMapTopViewLayerBehavior) where

import GeographicMapTopViewLayerBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, gravity, gravity_super, gravity_impl, getPositionTopLeft, getPositionTopLeft_super, getPositionTopLeft_impl, getPositionTopRight, getPositionTopRight_super, getPositionTopRight_impl, getPositionBottomLeft, getPositionBottomLeft_super, getPositionBottomLeft_impl, getPositionBottomRight, getPositionBottomRight_super, getPositionBottomRight_impl, getLeftPosition, getLeftPosition_super, getLeftPosition_impl, getRightPosition, getRightPosition_super, getRightPosition_impl, getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation, getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_super, getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl, getGeographicMapCellPositionIfNotSolidBlockOrOffMap, getGeographicMapCellPositionIfNotSolidBlockOrOffMap_super, getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl, moveAndLand, moveAndLand_super, moveAndLand_impl, move, move_super, move_impl, left, left_super, left_impl, right, right_super, right_impl, gravityUtil, geographicMapBehavior, autoStepBlocks, offsetY, previousGeographicMapCellPosition)
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
import qualified TopViewCharacterInterface -- same package or java.lang
import qualified MultiGeographicMapBehavior -- org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified GravityUtil -- org.allbinary.game.physics.acceleration.GravityUtil
import qualified VelocityProperties -- org.allbinary.game.physics.velocity.VelocityProperties
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified GeographicMapTopViewLayerBehavior

data GeographicMapTopViewGameLayerBehavior2 = GeographicMapTopViewGameLayerBehavior2
    { header_ :: JavaHeader
    , base :: GeographicMapTopViewLayerBehavior.GeographicMapTopViewLayerBehavior
    , gravityUtil :: IORef (GravityUtil.GravityUtil)
    , geographicMapBehavior :: IORef (MultiGeographicMapBehavior.MultiGeographicMapBehavior)
    , autoStepBlocks :: IORef (Bool)
    , offsetY :: IORef (Int)
    , previousGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    }

instance JavaNull GeographicMapTopViewGameLayerBehavior2 where
    javaNull = javaNullRecord "GeographicMapTopViewGameLayerBehavior2"

instance JavaEquals GeographicMapTopViewGameLayerBehavior2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapTopViewGameLayerBehavior2 where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapTopViewGameLayerBehavior2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GeographicMapTopViewGameLayerBehavior2
newRecord_ = do
    base <- GeographicMapTopViewLayerBehavior.newRecord_
    let header_ = base.header_
    gravityUtil <- newIORef javaNull
    geographicMapBehavior <- newIORef javaNull
    autoStepBlocks <- newIORef False
    offsetY <- newIORef 0
    previousGeographicMapCellPosition <- newIORef javaNull
    let this = GeographicMapTopViewGameLayerBehavior2 header_ base gravityUtil geographicMapBehavior autoStepBlocks offsetY previousGeographicMapCellPosition
    jregisterLevel header_ this
    jregisterMethod header_ "gravity" (\() -> gravity_impl this)
    jregisterMethod header_ "getPositionTopLeft" (\() -> getPositionTopLeft_impl this)
    jregisterMethod header_ "getPositionTopRight" (\() -> getPositionTopRight_impl this)
    jregisterMethod header_ "getPositionBottomLeft" (\() -> getPositionBottomLeft_impl this)
    jregisterMethod header_ "getPositionBottomRight" (\() -> getPositionBottomRight_impl this)
    jregisterMethod header_ "getLeftPosition" (\() -> getLeftPosition_impl this)
    jregisterMethod header_ "getRightPosition" (\() -> getRightPosition_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation" (\() -> getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionIfNotSolidBlockOrOffMap" (\() -> getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl this)
    jregisterMethod header_ "moveAndLand" (\() -> moveAndLand_impl this)
    jregisterMethod header_ "move" (\() -> move_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "right" (\() -> right_impl this)
    pure this

initFields_ :: GeographicMapTopViewGameLayerBehavior2 -> IO ()
initFields_ this = do
    jset this.gravityUtil =<< (GravityUtil.getInstance)
    jset this.geographicMapBehavior =<< (MultiGeographicMapBehavior.new_)
    jset this.autoStepBlocks (False)
    jset this.offsetY (0)
    jset this.previousGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    pure ()

new_3 :: Int -> Bool -> Int -> IO GeographicMapTopViewGameLayerBehavior2
new_3 maxGravityActionIndex autoStepBlocks offsetY = do
    this <- newRecord_
    init_3 this maxGravityActionIndex autoStepBlocks offsetY
    pure this

init_3 :: GeographicMapTopViewGameLayerBehavior2 -> Int -> Bool -> Int -> IO ()
init_3 this maxGravityActionIndex autoStepBlocks offsetY = do
        GeographicMapTopViewLayerBehavior.init_1 this.base (maxGravityActionIndex)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).autoStepBlocks (autoStepBlocks)
        jset (this).offsetY (offsetY)
        pure ()


-- throws Exception
gravity :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
gravity object_ a1 a2 a3 a4 = jmethod object_ "gravity" (\() -> (gravity_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4

gravity_super :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
gravity_super object_ a1 a2 a3 a4 = (gravity_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4

gravity_impl :: GeographicMapTopViewGameLayerBehavior2 -> VelocityProperties.VelocityProperties -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
gravity_impl this velocityProperties geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition = do
        when (geographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            Control.Monad.void (MultiGeographicMapBehavior.getCellTypeAt ((jget (this).geographicMapBehavior)) geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition)
            hasSolidBlock <- (GeographicMapTopViewLayerBehavior.hasSolidBlock this geographicMapInterfaceArray geographicMapCellTypeArray)
            if (Prelude.not hasSolidBlock) then do
                Control.Monad.void (GravityUtil.process ((jget (this).gravityUtil)) velocityProperties (jget ((jget (this).gravityUtil)).gAME_GRAVITY_VELOCITY))
                Control.Monad.void (VelocityProperties.limitXYToForwardAndReverseMaxVelocity velocityProperties)
                Control.Monad.void (GeographicMapTopViewGameLayerBehavior2.gravity this)
            else do
                pure ()
        pure ()


-- throws Exception
getPositionTopLeft :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionTopLeft object_ a1 a2 a3 a4 = jmethod object_ "getPositionTopLeft" (\() -> (getPositionTopLeft_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4

getPositionTopLeft_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionTopLeft_super object_ a1 a2 a3 a4 = (getPositionTopLeft_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4

getPositionTopLeft_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionTopLeft_impl this geographicMapInterfaceArray layer x y = do
        let xCellPosition = ((jio (AllBinaryLayer.getXP layer)) + (Prelude.negate x))
        let yCellPosition = ((jio (AllBinaryLayer.getYP layer)) + (Prelude.negate y))
        (getCellPositionAtXYNoThrow ((jindex geographicMapInterfaceArray (0))) xCellPosition yCellPosition)


-- throws Exception
getPositionTopRight :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionTopRight object_ a1 a2 a3 a4 = jmethod object_ "getPositionTopRight" (\() -> (getPositionTopRight_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4

getPositionTopRight_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionTopRight_super object_ a1 a2 a3 a4 = (getPositionTopRight_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4

getPositionTopRight_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionTopRight_impl this geographicMapInterfaceArray layer x y = do
        let xCellPosition = (((jio (AllBinaryLayer.getXP layer)) + (Prelude.negate x)) + (jio (AllBinaryLayer.getWidth layer)))
        let yCellPosition = ((jio (AllBinaryLayer.getYP layer)) + (Prelude.negate y))
        (getCellPositionAtXYNoThrow ((jindex geographicMapInterfaceArray (0))) xCellPosition yCellPosition)


-- throws Exception
getPositionBottomLeft :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionBottomLeft object_ a1 a2 a3 a4 = jmethod object_ "getPositionBottomLeft" (\() -> (getPositionBottomLeft_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4

getPositionBottomLeft_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionBottomLeft_super object_ a1 a2 a3 a4 = (getPositionBottomLeft_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4

getPositionBottomLeft_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionBottomLeft_impl this geographicMapInterfaceArray layer x y = do
        let xCellPosition = ((jio (AllBinaryLayer.getXP layer)) + (Prelude.negate x))
        let yCellPosition = (((jio (AllBinaryLayer.getYP layer)) + (Prelude.negate y)) + (jio (AllBinaryLayer.getHeight layer)))
        (getCellPositionAtXYNoThrow ((jindex geographicMapInterfaceArray (0))) xCellPosition yCellPosition)


-- throws Exception
getPositionBottomRight :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionBottomRight object_ a1 a2 a3 a4 = jmethod object_ "getPositionBottomRight" (\() -> (getPositionBottomRight_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4

getPositionBottomRight_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionBottomRight_super object_ a1 a2 a3 a4 = (getPositionBottomRight_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4

getPositionBottomRight_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPositionBottomRight_impl this geographicMapInterfaceArray layer x y = do
        let xCellPosition = (((jio (AllBinaryLayer.getXP layer)) + (Prelude.negate x)) + (jio (AllBinaryLayer.getWidth layer)))
        let yCellPosition = (((jio (AllBinaryLayer.getYP layer)) + (Prelude.negate y)) + (jio (AllBinaryLayer.getHeight layer)))
        (getCellPositionAtXYNoThrow ((jindex geographicMapInterfaceArray (0))) xCellPosition yCellPosition)


-- throws Exception
getLeftPosition :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getLeftPosition object_ a1 a2 = jmethod object_ "getLeftPosition" (\() -> (getLeftPosition_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2

getLeftPosition_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getLeftPosition_super object_ a1 a2 = (getLeftPosition_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2

getLeftPosition_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getLeftPosition_impl this geographicMapInterfaceArray layer = do
        xCellPosition <- (AllBinaryLayer.getXP layer)
        let yCellPosition = ((jio (AllBinaryLayer.getYP layer)) + (jio (AllBinaryLayer.getHeight layer)))
        (getCellPositionAtXYNoThrow ((jindex geographicMapInterfaceArray (0))) xCellPosition yCellPosition)


-- throws Exception
getRightPosition :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getRightPosition object_ a1 a2 = jmethod object_ "getRightPosition" (\() -> (getRightPosition_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2

getRightPosition_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getRightPosition_super object_ a1 a2 = (getRightPosition_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2

getRightPosition_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getRightPosition_impl this geographicMapInterfaceArray layer = do
        let xCellPosition = ((jio (AllBinaryLayer.getXP layer)) + (jio (AllBinaryLayer.getWidth layer)))
        let yCellPosition = ((jio (AllBinaryLayer.getYP layer)) + (jio (AllBinaryLayer.getHeight layer)))
        (getCellPositionAtXYNoThrow ((jindex geographicMapInterfaceArray (0))) xCellPosition yCellPosition)


-- throws Exception
getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation" (\() -> (getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4 a5 a6

getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_super object_ a1 a2 a3 a4 a5 a6 = (getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4 a5 a6

getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer x y = do
    javaCatchReturn $ do
        geographicMapCellPosition <- newIORef (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
        topLeftGeographicMapCellPosition <- (GeographicMapTopViewGameLayerBehavior2.getPositionTopLeft this geographicMapInterfaceArray layer x y)
        assignedValue <- (GeographicMapTopViewGameLayerBehavior2.getGeographicMapCellPositionIfNotSolidBlockOrOffMap this geographicMapInterfaceArray geographicMapCellTypeArray topLeftGeographicMapCellPosition velocityProperties layer)
        jset geographicMapCellPosition (assignedValue)
        when ((jget geographicMapCellPosition) == SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
        topRightGeographicMapCellPosition <- (GeographicMapTopViewGameLayerBehavior2.getPositionTopRight this geographicMapInterfaceArray layer x y)
        assignedValue <- (GeographicMapTopViewGameLayerBehavior2.getGeographicMapCellPositionIfNotSolidBlockOrOffMap this geographicMapInterfaceArray geographicMapCellTypeArray topRightGeographicMapCellPosition velocityProperties layer)
        jset geographicMapCellPosition (assignedValue)
        when ((jget geographicMapCellPosition) == SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
        bottomLeftGeographicMapCellPosition <- (GeographicMapTopViewGameLayerBehavior2.getPositionBottomLeft this geographicMapInterfaceArray layer x y)
        assignedValue <- (GeographicMapTopViewGameLayerBehavior2.getGeographicMapCellPositionIfNotSolidBlockOrOffMap this geographicMapInterfaceArray geographicMapCellTypeArray bottomLeftGeographicMapCellPosition velocityProperties layer)
        jset geographicMapCellPosition (assignedValue)
        when ((jget geographicMapCellPosition) == SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
        bottomRightGeographicMapCellPosition <- (GeographicMapTopViewGameLayerBehavior2.getPositionBottomRight this geographicMapInterfaceArray layer x y)
        assignedValue <- (GeographicMapTopViewGameLayerBehavior2.getGeographicMapCellPositionIfNotSolidBlockOrOffMap this geographicMapInterfaceArray geographicMapCellTypeArray bottomRightGeographicMapCellPosition velocityProperties layer)
        jset geographicMapCellPosition (assignedValue)
        if ((jget geographicMapCellPosition) == SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) then do
            pure ()
        else do
            pure ()
        pure ((jget geographicMapCellPosition))


-- throws Exception
getGeographicMapCellPositionIfNotSolidBlockOrOffMap :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMap object_ a1 a2 a3 a4 a5 = jmethod object_ "getGeographicMapCellPositionIfNotSolidBlockOrOffMap" (\() -> (getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4 a5

getGeographicMapCellPositionIfNotSolidBlockOrOffMap_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMap_super object_ a1 a2 a3 a4 a5 = (getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4 a5

getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl this geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition velocityProperties layer = do
    javaCatchReturn $ do
        if (geographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) then do
            let possibleStepGeographicMapCellPosition = geographicMapCellPosition
            tiledLayer <- (getAllBinaryTiledLayer ((jindex geographicMapInterfaceArray (0))))
            when (((((jio (GeographicMapCellPosition.getColumn possibleStepGeographicMapCellPosition)) > 0) && ((jio (GeographicMapCellPosition.getRow possibleStepGeographicMapCellPosition)) > 0)) && ((jio (GeographicMapCellPosition.getColumn possibleStepGeographicMapCellPosition)) < (jio (AllBinaryTiledLayer.getColumns tiledLayer)))) && ((jio (GeographicMapCellPosition.getRow possibleStepGeographicMapCellPosition)) < (jio (AllBinaryTiledLayer.getRows tiledLayer)))) $ do
                Control.Monad.void (MultiGeographicMapBehavior.getCellTypeAt ((jget (this).geographicMapBehavior)) geographicMapInterfaceArray geographicMapCellTypeArray possibleStepGeographicMapCellPosition)
                hasSolidBlock <- (GeographicMapTopViewLayerBehavior.hasSolidBlock this geographicMapInterfaceArray geographicMapCellTypeArray)
                hasOffMap <- (GeographicMapTopViewLayerBehavior.isOffMap this geographicMapInterfaceArray geographicMapCellTypeArray)
                if (hasSolidBlock || hasOffMap) then do
                    jset (this).previousGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
                    javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
                else do
                    jset (this).previousGeographicMapCellPosition (possibleStepGeographicMapCellPosition)
                    javaReturn (possibleStepGeographicMapCellPosition)
        else do
            pure ()
        jset (this).previousGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
        pure (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)


-- throws Exception
moveAndLand :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveAndLand object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "moveAndLand" (\() -> (moveAndLand_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4 a5 a6 a7

moveAndLand_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveAndLand_super object_ a1 a2 a3 a4 a5 a6 a7 = (moveAndLand_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4 a5 a6 a7

moveAndLand_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveAndLand_impl this geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition velocityProperties layer x y = do
        if (geographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) then do
            let topViewCharacterInterface = ((javaCast layer :: TopViewCharacterInterface.TopViewCharacterInterface))
            Control.Monad.void (TopViewCharacterInterface.terrainMove topViewCharacterInterface geographicMapInterfaceArray geographicMapCellTypeArray x y)
        else do
            pure ()
        pure ()


-- throws Exception
move :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (Bool)
move object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4 a5 a6

move_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (Bool)
move_super object_ a1 a2 a3 a4 a5 a6 = (move_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4 a5 a6

move_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (Bool)
move_impl this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer x y = do
    javaCatchReturn $ do
        geographicMapCellPosition <- (GeographicMapTopViewGameLayerBehavior2.getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer x y)
        Control.Monad.void (GeographicMapTopViewGameLayerBehavior2.moveAndLand this geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition velocityProperties layer x y)
        if (geographicMapCellPosition == SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) then do
            javaReturn (False)
        else do
            javaReturn (True)


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
left object_ a1 a2 a3 a4 = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4

left_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
left_super object_ a1 a2 a3 a4 = (left_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4

left_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
left_impl this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer = do
        geographicMapCellPosition <- (GeographicMapTopViewGameLayerBehavior2.getLeftPosition this geographicMapInterfaceArray layer)
        when (geographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            possibleStepGeographicMapCellPosition <- (getAt ((jio (getGeographicMapCellPositionFactory ((jindex geographicMapInterfaceArray (0)))))) (jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) ((jio (GeographicMapCellPosition.getRow geographicMapCellPosition)) - 1))
            Control.Monad.void (MultiGeographicMapBehavior.getCellTypeAt ((jget (this).geographicMapBehavior)) geographicMapInterfaceArray geographicMapCellTypeArray possibleStepGeographicMapCellPosition)
            hasSolidBlock <- (GeographicMapTopViewLayerBehavior.hasSolidBlock this geographicMapInterfaceArray geographicMapCellTypeArray)
            if hasSolidBlock then do
                if (jget (this).autoStepBlocks) then do
                    let topViewCharacterInterface = ((javaCast layer :: TopViewCharacterInterface.TopViewCharacterInterface))
                    Control.Monad.void (TopViewCharacterInterface.leftp topViewCharacterInterface)
                else do
                    Control.Monad.void (VelocityProperties.setint ((jio (VelocityProperties.getVelocityXBasicDecimalP velocityProperties))) 0)
            else do
                let topViewCharacterInterface = ((javaCast layer :: TopViewCharacterInterface.TopViewCharacterInterface))
                Control.Monad.void (TopViewCharacterInterface.leftp topViewCharacterInterface)
        pure ()


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
right object_ a1 a2 a3 a4 = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2))) () a1 a2 a3 a4

right_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
right_super object_ a1 a2 a3 a4 = (right_impl (javaCast object_ :: GeographicMapTopViewGameLayerBehavior2)) a1 a2 a3 a4

right_impl :: GeographicMapTopViewGameLayerBehavior2 -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
right_impl this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer = do
        geographicMapCellPosition <- (GeographicMapTopViewGameLayerBehavior2.getRightPosition this geographicMapInterfaceArray layer)
        when (geographicMapCellPosition /= SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            possibleStepGeographicMapCellPosition <- (getAt ((jio (getGeographicMapCellPositionFactory ((jindex geographicMapInterfaceArray (0)))))) (jio (GeographicMapCellPosition.getColumn geographicMapCellPosition)) ((jio (GeographicMapCellPosition.getRow geographicMapCellPosition)) - 1))
            Control.Monad.void (MultiGeographicMapBehavior.getCellTypeAt ((jget (this).geographicMapBehavior)) geographicMapInterfaceArray geographicMapCellTypeArray possibleStepGeographicMapCellPosition)
            hasSolidBlock <- (GeographicMapTopViewLayerBehavior.hasSolidBlock this geographicMapInterfaceArray geographicMapCellTypeArray)
            if hasSolidBlock then do
                if (jget (this).autoStepBlocks) then do
                    let topViewCharacterInterface = ((javaCast layer :: TopViewCharacterInterface.TopViewCharacterInterface))
                    Control.Monad.void (TopViewCharacterInterface.rightp topViewCharacterInterface)
                else do
                    Control.Monad.void (VelocityProperties.setint ((jio (VelocityProperties.getVelocityXBasicDecimalP velocityProperties))) 0)
            else do
                let topViewCharacterInterface = ((javaCast layer :: TopViewCharacterInterface.TopViewCharacterInterface))
                Control.Monad.void (TopViewCharacterInterface.rightp topViewCharacterInterface)
        pure ()


