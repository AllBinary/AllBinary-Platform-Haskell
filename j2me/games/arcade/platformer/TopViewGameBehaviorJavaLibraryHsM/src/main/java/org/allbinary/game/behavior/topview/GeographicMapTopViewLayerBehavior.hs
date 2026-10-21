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
module GeographicMapTopViewLayerBehavior (module GeographicMapTopViewLayerBehavior, module TopViewGameLayerBehavior) where

import TopViewGameLayerBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation, getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_super, getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl, getGeographicMapCellPositionIfNotSolidBlockOrOffMap, getGeographicMapCellPositionIfNotSolidBlockOrOffMap_super, getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl, getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap, getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_super, getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_impl, gravity, gravity_super, gravity_impl, left, left_super, left_impl, move, move_super, move_impl, moveAndLand, moveAndLand_super, moveAndLand_impl, right, right_super, right_impl, hasSolidBlock, hasSolidBlock_super, hasSolidBlock_impl, isOffMap, isOffMap_super, isOffMap_impl)
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
import qualified VelocityProperties -- org.allbinary.game.physics.velocity.VelocityProperties
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified BasicTopViewGeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified TopViewGameLayerBehavior

data GeographicMapTopViewLayerBehavior = GeographicMapTopViewLayerBehavior
    { header_ :: JavaHeader
    , base :: TopViewGameLayerBehavior.TopViewGameLayerBehavior
    }

instance JavaNull GeographicMapTopViewLayerBehavior where
    javaNull = javaNullRecord "GeographicMapTopViewLayerBehavior"

instance JavaEquals GeographicMapTopViewLayerBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapTopViewLayerBehavior where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapTopViewLayerBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GeographicMapTopViewLayerBehavior
newRecord_ = do
    base <- TopViewGameLayerBehavior.newRecord_
    let header_ = base.header_
    let this = GeographicMapTopViewLayerBehavior header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation" (\() -> getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionIfNotSolidBlockOrOffMap" (\() -> getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap" (\() -> getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_impl this)
    jregisterMethod header_ "gravity" (\() -> gravity_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "move" (\() -> move_impl this)
    jregisterMethod header_ "moveAndLand" (\() -> moveAndLand_impl this)
    jregisterMethod header_ "right" (\() -> right_impl this)
    jregisterMethod header_ "hasSolidBlock" (\() -> hasSolidBlock_impl this)
    jregisterMethod header_ "isOffMap" (\() -> isOffMap_impl this)
    pure this

initFields_ :: GeographicMapTopViewLayerBehavior -> IO ()
initFields_ this = do
    pure ()

new_1 :: Int -> IO GeographicMapTopViewLayerBehavior
new_1 maxGravityActionIndex = do
    this <- newRecord_
    init_1 this maxGravityActionIndex
    pure this

init_1 :: GeographicMapTopViewLayerBehavior -> Int -> IO ()
init_1 this maxGravityActionIndex = do
        TopViewGameLayerBehavior.init_1 this.base (maxGravityActionIndex)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation" (\() -> (getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2 a3 a4 a5 a6

getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_super object_ a1 a2 a3 a4 a5 a6 = (getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2 a3 a4 a5 a6

getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation_impl this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer x y = do
        pure (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)


-- throws Exception
getGeographicMapCellPositionIfNotSolidBlockOrOffMap :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMap object_ a1 a2 a3 a4 a5 = jmethod object_ "getGeographicMapCellPositionIfNotSolidBlockOrOffMap" (\() -> (getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2 a3 a4 a5

getGeographicMapCellPositionIfNotSolidBlockOrOffMap_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMap_super object_ a1 a2 a3 a4 a5 = (getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2 a3 a4 a5

getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionIfNotSolidBlockOrOffMap_impl this geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition velocityProperties layer = do
        pure (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)


-- throws Exception
getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> BasicArrayList.BasicArrayList -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap object_ a1 a2 a3 a4 a5 = jmethod object_ "getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap" (\() -> (getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2 a3 a4 a5

getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> BasicArrayList.BasicArrayList -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_super object_ a1 a2 a3 a4 a5 = (getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2 a3 a4 a5

getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> BasicArrayList.BasicArrayList -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap_impl this geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPositionList velocityProperties layer = do
        pure (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)


-- throws Exception
gravity :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
gravity object_ a1 a2 a3 a4 = jmethod object_ "gravity" (\() -> (gravity_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2 a3 a4

gravity_super :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
gravity_super object_ a1 a2 a3 a4 = (gravity_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2 a3 a4

gravity_impl :: GeographicMapTopViewLayerBehavior -> VelocityProperties.VelocityProperties -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
gravity_impl this velocityProperties geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition = do
        pure ()


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
left object_ a1 a2 a3 a4 = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2 a3 a4

left_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
left_super object_ a1 a2 a3 a4 = (left_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2 a3 a4

left_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
left_impl this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer = do
        pure ()


-- throws Exception
move :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (Bool)
move object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2 a3 a4 a5 a6

move_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (Bool)
move_super object_ a1 a2 a3 a4 a5 a6 = (move_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2 a3 a4 a5 a6

move_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (Bool)
move_impl this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer x y = do
        pure (False)


-- throws Exception
moveAndLand :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveAndLand object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "moveAndLand" (\() -> (moveAndLand_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2 a3 a4 a5 a6 a7

moveAndLand_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveAndLand_super object_ a1 a2 a3 a4 a5 a6 a7 = (moveAndLand_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2 a3 a4 a5 a6 a7

moveAndLand_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveAndLand_impl this geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition velocityProperties layer x y = do
        pure ()


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
right object_ a1 a2 a3 a4 = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2 a3 a4

right_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
right_super object_ a1 a2 a3 a4 = (right_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2 a3 a4

right_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> VelocityProperties.VelocityProperties -> AllBinaryLayer.AllBinaryLayer -> IO (())
right_impl this geographicMapInterfaceArray geographicMapCellTypeArray velocityProperties layer = do
        pure ()


hasSolidBlock :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
hasSolidBlock object_ a1 a2 = jmethod object_ "hasSolidBlock" (\() -> (hasSolidBlock_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2

hasSolidBlock_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
hasSolidBlock_super object_ a1 a2 = (hasSolidBlock_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2

hasSolidBlock_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
hasSolidBlock_impl this geographicMapInterfaceArray geographicMapCellTypeArray = do
    javaCatchReturn $ do
        let size = (jlength geographicMapInterfaceArray)
        basicTopViewGeographicMapCellTypeFactory <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset basicTopViewGeographicMapCellTypeFactory ((javaCast (jio (getGeographicMapCellTypeFactory ((jindex geographicMapInterfaceArray (index))))) :: BasicTopViewGeographicMapCellTypeFactory.BasicTopViewGeographicMapCellTypeFactory))
            when (jio (isType ((jget ((jget basicTopViewGeographicMapCellTypeFactory)).bLOCK_CELL_TYPE)) (jindex geographicMapCellTypeArray (index)))) $ do
                javaReturn (True)
        pure (False)


isOffMap :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
isOffMap object_ a1 a2 = jmethod object_ "isOffMap" (\() -> (isOffMap_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior))) () a1 a2

isOffMap_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
isOffMap_super object_ a1 a2 = (isOffMap_impl (javaCast object_ :: GeographicMapTopViewLayerBehavior)) a1 a2

isOffMap_impl :: GeographicMapTopViewLayerBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
isOffMap_impl this geographicMapInterfaceArray geographicMapCellTypeArray = do
    javaCatchReturn $ do
        let size = (jlength geographicMapInterfaceArray)
        basicTopViewGeographicMapCellTypeFactory <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset basicTopViewGeographicMapCellTypeFactory ((javaCast (jio (getGeographicMapCellTypeFactory ((jindex geographicMapInterfaceArray (index))))) :: BasicTopViewGeographicMapCellTypeFactory.BasicTopViewGeographicMapCellTypeFactory))
            when (jio (isType ((jget ((jget basicTopViewGeographicMapCellTypeFactory)).oFF_MAP_CELL_TYPE)) (jindex geographicMapCellTypeArray (index)))) $ do
                javaReturn (True)
        pure (False)


