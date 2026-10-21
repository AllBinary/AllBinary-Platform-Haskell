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
-- package org.allbinary.media.graphics.geography.map
module BasicGeographicMap (module BasicGeographicMap, module SimpleGeographicMap) where

import SimpleGeographicMap hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getCellPosition, getCellPosition_super, getCellPosition_impl, getCellPositionNoThrow, getCellPositionNoThrow_super, getCellPositionNoThrow_impl, isOfFourDirections, isOfFourDirections_super, isOfFourDirections_impl, getCellPositionAtXY, getCellPositionAtXY_super, getCellPositionAtXY_impl, getCellPositionAtXYNoThrow, getCellPositionAtXYNoThrow_super, getCellPositionAtXYNoThrow_impl, isOnMap, isOnMap_super, isOnMap_impl, getCellPositionAtNoThrow, getCellPositionAtNoThrow_super, getCellPositionAtNoThrow_impl, getCellPositionsAt, getCellPositionsAt_super, getCellPositionsAt_impl, getCellTypeAtXY, getCellTypeAtXY_super, getCellTypeAtXY_impl, getGeographicMapCellPositionFactory, getGeographicMapCellPositionFactory_super, getGeographicMapCellPositionFactory_impl, getGeographicMapCellPositionFactoryInterface, getGeographicMapCellPositionFactoryInterface_super, getGeographicMapCellPositionFactoryInterface_impl, getGeographicMapCellTypeFactory, getGeographicMapCellTypeFactory_super, getGeographicMapCellTypeFactory_impl, nULL_BASIC_GEOGRAPHIC_MAP_ARRAY, mathUtil, geographicMapCellPositionFactory, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory)
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
import qualified BasicGeographicMapCellPositionFactory -- same package or java.lang
import qualified GeographicMapCellPositionFactoryInterface -- same package or java.lang
import qualified GeographicMapCellTypeFactory -- same package or java.lang
import qualified GeographicMapCellPositionBaseFactory -- same package or java.lang
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified SimpleGeographicMapCellPositionFactory -- same package or java.lang
import qualified GeographicMapCellType -- same package or java.lang
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified Layer -- org.allbinary.layer.Layer
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified SimpleGeographicMap
import qualified GeographicMapInterface

-- implements GeographicMapInterface
data BasicGeographicMap = BasicGeographicMap
    { header_ :: JavaHeader
    , base :: SimpleGeographicMap.SimpleGeographicMap
    , mathUtil :: IORef (MathUtil.MathUtil)
    , geographicMapCellPositionFactory :: IORef (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
    , geographicMapCellPositionFactoryInterface :: IORef (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
    , geographicMapCellTypeFactory :: IORef (GeographicMapCellTypeFactory.GeographicMapCellTypeFactory)
    }

instance JavaNull BasicGeographicMap where
    javaNull = javaNullRecord "BasicGeographicMap"

instance JavaEquals BasicGeographicMap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGeographicMap where
    (==) = jrecordEquals

instance JavaObjectClass BasicGeographicMap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nULL_BASIC_GEOGRAPHIC_MAP_ARRAY = (jnewArray (0) javaNull)

newRecord_ :: IO BasicGeographicMap
newRecord_ = do
    base <- SimpleGeographicMap.newRecord_
    let header_ = base.header_
    mathUtil <- newIORef javaNull
    geographicMapCellPositionFactory <- newIORef javaNull
    geographicMapCellPositionFactoryInterface <- newIORef javaNull
    geographicMapCellTypeFactory <- newIORef javaNull
    let this = BasicGeographicMap header_ base mathUtil geographicMapCellPositionFactory geographicMapCellPositionFactoryInterface geographicMapCellTypeFactory
    jregisterLevel header_ this
    GeographicMapInterface.registerInterface_ header_
    jregisterMethod header_ "getCellPosition" (\() -> getCellPosition_impl this)
    jregisterMethod header_ "getCellPositionNoThrow" (\() -> getCellPositionNoThrow_impl this)
    jregisterMethod header_ "isOfFourDirections" (\() -> isOfFourDirections_impl this)
    jregisterMethod header_ "getCellPositionAtXY" (\() -> getCellPositionAtXY_impl this)
    jregisterMethod header_ "getCellPositionAtXYNoThrow" (\() -> getCellPositionAtXYNoThrow_impl this)
    jregisterMethod header_ "isOnMap" (\() -> isOnMap_impl this)
    jregisterMethod header_ "getCellPositionAtNoThrow" (\() -> getCellPositionAtNoThrow_impl this)
    jregisterMethod header_ "getCellPositionsAt" (\() -> getCellPositionsAt_impl this)
    jregisterMethod header_ "getCellTypeAtXY" (\() -> getCellTypeAtXY_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionFactory" (\() -> getGeographicMapCellPositionFactory_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionFactoryInterface" (\() -> getGeographicMapCellPositionFactoryInterface_impl this)
    jregisterMethod header_ "getGeographicMapCellTypeFactory" (\() -> getGeographicMapCellTypeFactory_impl this)
    pure this

initFields_ :: BasicGeographicMap -> IO ()
initFields_ this = do
    jset this.mathUtil =<< (MathUtil.getInstance)
    jset this.geographicMapCellPositionFactory (javaNull)
    jset this.geographicMapCellPositionFactoryInterface (javaNull)
    jset this.geographicMapCellTypeFactory (javaNull)
    pure ()

new_9 :: Int -> String -> JavaArray (Int) -> AllBinaryTiledLayer.AllBinaryTiledLayer -> BasicColor.BasicColor -> BasicColor.BasicColor -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellPositionBaseFactory.GeographicMapCellPositionBaseFactory -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> IO BasicGeographicMap
new_9 id name cellTypeIdToGeographicMapCellType tiledLayer foregroundBasicColor backgroundBasicColor geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory = do
    this <- newRecord_
    init_9 this id name cellTypeIdToGeographicMapCellType tiledLayer foregroundBasicColor backgroundBasicColor geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory
    pure this

init_9 :: BasicGeographicMap -> Int -> String -> JavaArray (Int) -> AllBinaryTiledLayer.AllBinaryTiledLayer -> BasicColor.BasicColor -> BasicColor.BasicColor -> GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface -> GeographicMapCellPositionBaseFactory.GeographicMapCellPositionBaseFactory -> GeographicMapCellTypeFactory.GeographicMapCellTypeFactory -> IO ()
init_9 this id name cellTypeIdToGeographicMapCellType tiledLayer foregroundBasicColor backgroundBasicColor geographicMapCellPositionFactoryInterface geographicMapCellPositionBaseFactory geographicMapCellTypeFactory = do
        SimpleGeographicMap.init_6 this.base (id) (name) (cellTypeIdToGeographicMapCellType) (tiledLayer) (foregroundBasicColor) (backgroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).geographicMapCellPositionFactoryInterface (geographicMapCellPositionFactoryInterface)
        assignedValue <- (GeographicMapCellPositionBaseFactory.getInstance geographicMapCellPositionBaseFactory this)
        jset (this).geographicMapCellPositionFactory (assignedValue)
        jset (this).geographicMapCellTypeFactory (geographicMapCellTypeFactory)
        pure ()


-- throws Exception
getCellPosition :: (JavaObjectClass this_) => this_ -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPosition object_ a1 a2 = jmethod object_ "getCellPosition" (\() -> (getCellPosition_impl (javaCast object_ :: BasicGeographicMap))) () a1 a2

getCellPosition_super :: (JavaObjectClass this_) => this_ -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPosition_super object_ a1 a2 = (getCellPosition_impl (javaCast object_ :: BasicGeographicMap)) a1 a2

getCellPosition_impl :: BasicGeographicMap -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPosition_impl this direction oldGeographicMapCellPosition = do
    javaCatchReturn $ do
        case direction of
            switchValue | switchValue == 0 -> do
                javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) ((jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) - 1) (jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)))
            switchValue | switchValue == 1 -> do
                javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) ((jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) + 1) (jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)))
            switchValue | switchValue == 2 -> do
                javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) (jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) ((jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)) - 1))
            switchValue | switchValue == 3 -> do
                javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) (jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) ((jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)) + 1))
            _ -> do
                javaThrow ((JavaException "Exception" "Only Four Directions"))


-- throws Exception
getCellPositionNoThrow :: (JavaObjectClass this_) => this_ -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionNoThrow object_ a1 a2 = jmethod object_ "getCellPositionNoThrow" (\() -> (getCellPositionNoThrow_impl (javaCast object_ :: BasicGeographicMap))) () a1 a2

getCellPositionNoThrow_super :: (JavaObjectClass this_) => this_ -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionNoThrow_super object_ a1 a2 = (getCellPositionNoThrow_impl (javaCast object_ :: BasicGeographicMap)) a1 a2

getCellPositionNoThrow_impl :: BasicGeographicMap -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionNoThrow_impl this direction oldGeographicMapCellPosition = do
    javaCatchReturn $ do
        case direction of
            switchValue | switchValue == 0 -> do
                if (((jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) - 1) >= 0) then do
                    javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) ((jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) - 1) (jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)))
                else do
                    javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
            switchValue | switchValue == 1 -> do
                if (((jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) + 1) < (jio (AllBinaryTiledLayer.getColumns ((jio (SimpleGeographicMap.getAllBinaryTiledLayer this)))))) then do
                    javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) ((jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) + 1) (jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)))
                else do
                    javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
            switchValue | switchValue == 2 -> do
                if (((jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)) - 1) >= 0) then do
                    javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) (jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) ((jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)) - 1))
                else do
                    javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
            switchValue | switchValue == 3 -> do
                if (((jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)) + 1) < (jio (AllBinaryTiledLayer.getRows ((jio (SimpleGeographicMap.getAllBinaryTiledLayer this)))))) then do
                    javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) (jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) ((jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)) + 1))
                else do
                    javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
            _ -> do
                javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)


-- throws Exception
isOfFourDirections :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isOfFourDirections object_ a1 a2 = jmethod object_ "isOfFourDirections" (\() -> (isOfFourDirections_impl (javaCast object_ :: BasicGeographicMap))) () a1 a2

isOfFourDirections_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isOfFourDirections_super object_ a1 a2 = (isOfFourDirections_impl (javaCast object_ :: BasicGeographicMap)) a1 a2

isOfFourDirections_impl :: BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isOfFourDirections_impl this oldGeographicMapCellPosition newGeographicMapCellPosition = do
    javaCatchReturn $ do
        forM_ [0 .. 4 - 1] $ \index -> javaIteration (pure ()) $ do
            when (newGeographicMapCellPosition == (jio (BasicGeographicMap.getCellPositionNoThrow this index oldGeographicMapCellPosition))) $ do
                javaReturn (True)
        pure (False)


-- throws Exception
getCellPositionAtXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY object_ a1 a2 = jmethod object_ "getCellPositionAtXY" (\() -> (getCellPositionAtXY_impl (javaCast object_ :: BasicGeographicMap))) () a1 a2

getCellPositionAtXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY_super object_ a1 a2 = (getCellPositionAtXY_impl (javaCast object_ :: BasicGeographicMap)) a1 a2

getCellPositionAtXY_impl :: BasicGeographicMap -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY_impl this x y = do
        allBinaryTiledLayer <- (SimpleGeographicMap.getAllBinaryTiledLayer this)
        i_column <- (MathUtil.abs ((jget (this).mathUtil)) (x `quot` (jio (AllBinaryTiledLayer.getCellHeight allBinaryTiledLayer))))
        i_row <- (MathUtil.abs ((jget (this).mathUtil)) (y `quot` (jio (AllBinaryTiledLayer.getCellWidth allBinaryTiledLayer))))
        (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) i_column i_row)


getCellPositionAtXYNoThrow :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow object_ a1 a2 = jmethod object_ "getCellPositionAtXYNoThrow" (\() -> (getCellPositionAtXYNoThrow_impl (javaCast object_ :: BasicGeographicMap))) () a1 a2

getCellPositionAtXYNoThrow_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow_super object_ a1 a2 = (getCellPositionAtXYNoThrow_impl (javaCast object_ :: BasicGeographicMap)) a1 a2

getCellPositionAtXYNoThrow_impl :: BasicGeographicMap -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow_impl this x y = do
    javaCatchReturn $ do
        allBinaryTiledLayer <- (SimpleGeographicMap.getAllBinaryTiledLayer this)
        i_column <- (MathUtil.abs ((jget (this).mathUtil)) (x `quot` (jio (AllBinaryTiledLayer.getCellHeight allBinaryTiledLayer))))
        i_row <- (MathUtil.abs ((jget (this).mathUtil)) (y `quot` (jio (AllBinaryTiledLayer.getCellWidth allBinaryTiledLayer))))
        if (((jio (AllBinaryTiledLayer.getColumns allBinaryTiledLayer)) > i_column) && ((jio (AllBinaryTiledLayer.getRows allBinaryTiledLayer)) > i_row)) then do
            handle (\(e :: JavaException) -> do
                javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
                ) $ do
                javaReturn =<< (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) i_column i_row)
        else do
            javaReturn (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)


-- throws Exception
isOnMap :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isOnMap object_ a1 = jmethod object_ "isOnMap" (\() -> (isOnMap_impl (javaCast object_ :: BasicGeographicMap))) () a1

isOnMap_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isOnMap_super object_ a1 = (isOnMap_impl (javaCast object_ :: BasicGeographicMap)) a1

isOnMap_impl :: BasicGeographicMap -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isOnMap_impl this geographicMapCellPosition = do
    javaCatchReturn $ do
        allBinaryTiledLayer <- (SimpleGeographicMap.getAllBinaryTiledLayer this)
        i_column <- (GeographicMapCellPosition.getColumn geographicMapCellPosition)
        i_row <- (GeographicMapCellPosition.getRow geographicMapCellPosition)
        if (((jio (AllBinaryTiledLayer.getColumns allBinaryTiledLayer)) > i_column) && ((jio (AllBinaryTiledLayer.getRows allBinaryTiledLayer)) > i_row)) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
getCellPositionAtNoThrow :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getCellPositionAtNoThrow object_ a1 a2 a3 a4 a5 = jmethod object_ "getCellPositionAtNoThrow" (\() -> (getCellPositionAtNoThrow_impl (javaCast object_ :: BasicGeographicMap))) () a1 a2 a3 a4 a5

getCellPositionAtNoThrow_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getCellPositionAtNoThrow_super object_ a1 a2 a3 a4 a5 = (getCellPositionAtNoThrow_impl (javaCast object_ :: BasicGeographicMap)) a1 a2 a3 a4 a5

getCellPositionAtNoThrow_impl :: BasicGeographicMap -> Int -> Int -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getCellPositionAtNoThrow_impl this x y x2 y2 geographicMapCellPositionList = do
        Control.Monad.void (BasicArrayList.clear geographicMapCellPositionList)
        allBinaryTiledLayer <- (SimpleGeographicMap.getAllBinaryTiledLayer this)
        i_columnMin <- (MathUtil.abs ((jget (this).mathUtil)) (x `quot` (jio (AllBinaryTiledLayer.getCellHeight allBinaryTiledLayer))))
        i_rowMin <- (MathUtil.abs ((jget (this).mathUtil)) (y `quot` (jio (AllBinaryTiledLayer.getCellWidth allBinaryTiledLayer))))
        let i_columnMax = ((jio (MathUtil.abs ((jget (this).mathUtil)) (x2 `quot` (jio (AllBinaryTiledLayer.getCellHeight allBinaryTiledLayer))))) + 1)
        let i_rowMax = ((jio (MathUtil.abs ((jget (this).mathUtil)) (y2 `quot` (jio (AllBinaryTiledLayer.getCellWidth allBinaryTiledLayer))))) + 1)
        forM_ [i_columnMin .. i_columnMax - 1] $ \columnIndex -> javaIteration (pure ()) $ do
            forM_ [i_rowMin .. i_rowMax - 1] $ \rowIndex -> javaIteration (pure ()) $ do
                when (((jio (AllBinaryTiledLayer.getColumns allBinaryTiledLayer)) > columnIndex) && ((jio (AllBinaryTiledLayer.getRows allBinaryTiledLayer)) > rowIndex)) $ do
                    Control.Monad.void (BasicArrayList.add geographicMapCellPositionList (jio (BasicGeographicMapCellPositionFactory.getAt ((jget (this).geographicMapCellPositionFactory)) columnIndex rowIndex)))
        pure (geographicMapCellPositionList)


-- throws Exception
getCellPositionsAt :: (JavaObjectClass this_) => this_ -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt object_ a1 a2 a3 = jmethod object_ "getCellPositionsAt" (\() -> (getCellPositionsAt_impl (javaCast object_ :: BasicGeographicMap))) () a1 a2 a3

getCellPositionsAt_super :: (JavaObjectClass this_) => this_ -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt_super object_ a1 a2 a3 = (getCellPositionsAt_impl (javaCast object_ :: BasicGeographicMap)) a1 a2 a3

getCellPositionsAt_impl :: BasicGeographicMap -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt_impl this layer currentCellPositionArray cellPositionArray = do
        hasChanged <- newIORef (False)
        let size = (jlength cellPositionArray)
        let size2 = (jlength (jindex cellPositionArray (0)))
        let xPortion = ((jio (Layer.getXP layer)) `quot` ((size - 1)))
        let yPortion = ((jio (Layer.getYP layer)) `quot` ((size - 1)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            forM_ [0 .. size2 - 1] $ \index2 -> javaIteration (pure ()) $ do
                let x = (xPortion * index)
                let y = (yPortion * index)
                assignedValue <- (BasicGeographicMap.getCellPositionAtXY this x y)
                jsetIndex ((jindex cellPositionArray (index))) (index2) (assignedValue)
                when ((jindex ((jindex currentCellPositionArray (index))) (index2)) /= (jindex ((jindex cellPositionArray (index))) (index2))) $ do
                    jset hasChanged (True)
        pure ((jget hasChanged))


-- throws Exception
getCellTypeAtXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY object_ a1 a2 = jmethod object_ "getCellTypeAtXY" (\() -> (getCellTypeAtXY_impl (javaCast object_ :: BasicGeographicMap))) () a1 a2

getCellTypeAtXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY_super object_ a1 a2 = (getCellTypeAtXY_impl (javaCast object_ :: BasicGeographicMap)) a1 a2

getCellTypeAtXY_impl :: BasicGeographicMap -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY_impl this x y = do
        cellPosition <- (BasicGeographicMap.getCellPositionAtXY this x y)
        (SimpleGeographicMap.getCellTypeAt this cellPosition)


getGeographicMapCellPositionFactory :: (JavaObjectClass this_) => this_ -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory object_ = jmethod object_ "getGeographicMapCellPositionFactory" (\() -> (getGeographicMapCellPositionFactory_impl (javaCast object_ :: BasicGeographicMap))) ()

getGeographicMapCellPositionFactory_super :: (JavaObjectClass this_) => this_ -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory_super object_ = (getGeographicMapCellPositionFactory_impl (javaCast object_ :: BasicGeographicMap))

getGeographicMapCellPositionFactory_impl :: BasicGeographicMap -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory_impl this = do
        pure ((jget (this).geographicMapCellPositionFactory))


getGeographicMapCellPositionFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface object_ = jmethod object_ "getGeographicMapCellPositionFactoryInterface" (\() -> (getGeographicMapCellPositionFactoryInterface_impl (javaCast object_ :: BasicGeographicMap))) ()

getGeographicMapCellPositionFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface_super object_ = (getGeographicMapCellPositionFactoryInterface_impl (javaCast object_ :: BasicGeographicMap))

getGeographicMapCellPositionFactoryInterface_impl :: BasicGeographicMap -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface_impl this = do
        pure ((jget (this).geographicMapCellPositionFactoryInterface))


getGeographicMapCellTypeFactory :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellTypeFactory.GeographicMapCellTypeFactory)
getGeographicMapCellTypeFactory object_ = jmethod object_ "getGeographicMapCellTypeFactory" (\() -> (getGeographicMapCellTypeFactory_impl (javaCast object_ :: BasicGeographicMap))) ()

getGeographicMapCellTypeFactory_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellTypeFactory.GeographicMapCellTypeFactory)
getGeographicMapCellTypeFactory_super object_ = (getGeographicMapCellTypeFactory_impl (javaCast object_ :: BasicGeographicMap))

getGeographicMapCellTypeFactory_impl :: BasicGeographicMap -> IO (GeographicMapCellTypeFactory.GeographicMapCellTypeFactory)
getGeographicMapCellTypeFactory_impl this = do
        pure ((jget (this).geographicMapCellTypeFactory))


