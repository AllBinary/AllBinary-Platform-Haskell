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
module BasicGeographicMapUtil where

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
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang
import qualified Layer -- org.allbinary.layer.Layer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data BasicGeographicMapUtil = BasicGeographicMapUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasicGeographicMapUtil where
    javaNull = javaNullRecord "BasicGeographicMapUtil"

instance JavaEquals BasicGeographicMapUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGeographicMapUtil where
    (==) = jrecordEquals

instance JavaObjectClass BasicGeographicMapUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGeographicMapUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = BasicGeographicMapUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getBorderingRow" (\() -> getBorderingRow_impl this)
    jregisterMethod header_ "getBorderingColumn" (\() -> getBorderingColumn_impl this)
    jregisterMethod header_ "isSameCellPosition" (\() -> isSameCellPosition_impl this)
    jregisterMethod header_ "createAllBinaryTiledLayerArray" (\() -> createAllBinaryTiledLayerArray_impl this)
    jregisterMethod header_ "getAllBinaryTiledLayerArray" (\() -> getAllBinaryTiledLayerArray_impl this)
    jregisterMethod header_ "move" (\() -> move_impl this)
    jregisterMethod header_ "setPosition" (\() -> setPosition_impl this)
    pure this

initFields_ :: BasicGeographicMapUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO BasicGeographicMapUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGeographicMapUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicGeographicMapUtil)
getInstance = do
        pure (BasicGeographicMapUtil.instance_)


-- throws Exception
getBorderingRow :: (JavaObjectClass this_) => this_ -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
getBorderingRow object_ a1 a2 = jmethod object_ "getBorderingRow" (\() -> (getBorderingRow_impl (javaCast object_ :: BasicGeographicMapUtil))) () a1 a2

getBorderingRow_super :: (JavaObjectClass this_) => this_ -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
getBorderingRow_super object_ a1 a2 = (getBorderingRow_impl (javaCast object_ :: BasicGeographicMapUtil)) a1 a2

getBorderingRow_impl :: BasicGeographicMapUtil -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
getBorderingRow_impl this direction oldGeographicMapCellPosition = do
    javaCatchReturn $ do
        let lOCATION_CHANGE = 1
        case direction of
            switchValue | switchValue == 0 -> do
                javaReturn =<< (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)
            switchValue | switchValue == 1 -> do
                javaReturn =<< (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)
            switchValue | switchValue == 2 -> do
                javaReturn (((jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)) + lOCATION_CHANGE))
            switchValue | switchValue == 3 -> do
                javaReturn (((jio (GeographicMapCellPosition.getRow oldGeographicMapCellPosition)) - lOCATION_CHANGE))
            _ -> do
                javaThrow ((JavaException "Exception" "Only Four Directions"))


-- throws Exception
getBorderingColumn :: (JavaObjectClass this_) => this_ -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
getBorderingColumn object_ a1 a2 = jmethod object_ "getBorderingColumn" (\() -> (getBorderingColumn_impl (javaCast object_ :: BasicGeographicMapUtil))) () a1 a2

getBorderingColumn_super :: (JavaObjectClass this_) => this_ -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
getBorderingColumn_super object_ a1 a2 = (getBorderingColumn_impl (javaCast object_ :: BasicGeographicMapUtil)) a1 a2

getBorderingColumn_impl :: BasicGeographicMapUtil -> Int -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Int)
getBorderingColumn_impl this direction oldGeographicMapCellPosition = do
    javaCatchReturn $ do
        let lOCATION_CHANGE = 1
        case direction of
            switchValue | switchValue == 0 -> do
                javaReturn (((jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) - lOCATION_CHANGE))
            switchValue | switchValue == 1 -> do
                javaReturn (((jio (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)) + lOCATION_CHANGE))
            switchValue | switchValue == 2 -> do
                javaReturn =<< (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)
            switchValue | switchValue == 3 -> do
                javaReturn =<< (GeographicMapCellPosition.getColumn oldGeographicMapCellPosition)
            _ -> do
                javaThrow ((JavaException "Exception" "Only Four Directions"))


-- throws Exception
isSameCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isSameCellPosition object_ a1 a2 = jmethod object_ "isSameCellPosition" (\() -> (isSameCellPosition_impl (javaCast object_ :: BasicGeographicMapUtil))) () a1 a2

isSameCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isSameCellPosition_super object_ a1 a2 = (isSameCellPosition_impl (javaCast object_ :: BasicGeographicMapUtil)) a1 a2

isSameCellPosition_impl :: BasicGeographicMapUtil -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isSameCellPosition_impl this fromGeographicMapCellPosition toGeographicMapCellPosition = do
    javaCatchReturn $ do
        fromColumn <- (GeographicMapCellPosition.getColumn fromGeographicMapCellPosition)
        fromRow <- (GeographicMapCellPosition.getRow fromGeographicMapCellPosition)
        goColumn <- (GeographicMapCellPosition.getColumn toGeographicMapCellPosition)
        goRow <- (GeographicMapCellPosition.getRow toGeographicMapCellPosition)
        if ((fromColumn == goColumn) && (fromRow == goRow)) then do
            javaReturn (True)
        else do
            javaReturn (False)


createAllBinaryTiledLayerArray :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (JavaArray (Layer.Layer))
createAllBinaryTiledLayerArray object_ a1 = jmethod object_ "createAllBinaryTiledLayerArray" (\() -> (createAllBinaryTiledLayerArray_impl (javaCast object_ :: BasicGeographicMapUtil))) () a1

createAllBinaryTiledLayerArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (JavaArray (Layer.Layer))
createAllBinaryTiledLayerArray_super object_ a1 = (createAllBinaryTiledLayerArray_impl (javaCast object_ :: BasicGeographicMapUtil)) a1

createAllBinaryTiledLayerArray_impl :: BasicGeographicMapUtil -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (JavaArray (Layer.Layer))
createAllBinaryTiledLayerArray_impl this geographicMapInterfaceArray = do
        let tiledLayerArray = (jnewArray ((jlength geographicMapInterfaceArray)) javaNull)
        (BasicGeographicMapUtil.getAllBinaryTiledLayerArray this geographicMapInterfaceArray tiledLayerArray 0)


getAllBinaryTiledLayerArray :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (Layer.Layer) -> Int -> IO (JavaArray (Layer.Layer))
getAllBinaryTiledLayerArray object_ a1 a2 a3 = jmethod object_ "getAllBinaryTiledLayerArray" (\() -> (getAllBinaryTiledLayerArray_impl (javaCast object_ :: BasicGeographicMapUtil))) () a1 a2 a3

getAllBinaryTiledLayerArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (Layer.Layer) -> Int -> IO (JavaArray (Layer.Layer))
getAllBinaryTiledLayerArray_super object_ a1 a2 a3 = (getAllBinaryTiledLayerArray_impl (javaCast object_ :: BasicGeographicMapUtil)) a1 a2 a3

getAllBinaryTiledLayerArray_impl :: BasicGeographicMapUtil -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (Layer.Layer) -> Int -> IO (JavaArray (Layer.Layer))
getAllBinaryTiledLayerArray_impl this geographicMapInterfaceArray tiledLayerArray startIndex = do
        geographicMapInterface <- newIORef (javaNull)
        let size = (jlength geographicMapInterfaceArray)
        count <- newIORef (0)
        index <- newIORef ((size + startIndex))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= startIndex) $ javaIteration (do { loop }) $ do
            jset geographicMapInterface ((jindex geographicMapInterfaceArray ((jget index))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Layer.Layer) (BasicGeographicMap.getAllBinaryTiledLayer ((jget geographicMapInterface))))
            jsetIndex tiledLayerArray ((jpostIncrement count (+ 1))) (assignedValue)
        pure (tiledLayerArray)


move :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
move object_ a1 a2 a3 = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: BasicGeographicMapUtil))) () a1 a2 a3

move_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
move_super object_ a1 a2 a3 = (move_impl (javaCast object_ :: BasicGeographicMapUtil)) a1 a2 a3

move_impl :: BasicGeographicMapUtil -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
move_impl this geographicMapInterfaceArray dx dy = do
        geographicMapInterface <- newIORef (javaNull)
        let size = (jlength geographicMapInterfaceArray)
        index <- newIORef (size)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset geographicMapInterface ((jindex geographicMapInterfaceArray ((jget index))))
            Control.Monad.void (AllBinaryTiledLayer.moveDXY ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget geographicMapInterface))))) dx dy)
        pure ()


setPosition :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
setPosition object_ a1 a2 a3 = jmethod object_ "setPosition" (\() -> (setPosition_impl (javaCast object_ :: BasicGeographicMapUtil))) () a1 a2 a3

setPosition_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
setPosition_super object_ a1 a2 a3 = (setPosition_impl (javaCast object_ :: BasicGeographicMapUtil)) a1 a2 a3

setPosition_impl :: BasicGeographicMapUtil -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
setPosition_impl this geographicMapInterfaceArray x y = do
        geographicMapInterface <- newIORef (javaNull)
        let size = (jlength geographicMapInterfaceArray)
        index <- newIORef (size)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset geographicMapInterface ((jindex geographicMapInterfaceArray ((jget index))))
            Control.Monad.void (AllBinaryTiledLayer.setPosition ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget geographicMapInterface))))) x y (jio (AllBinaryTiledLayer.getZP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget geographicMapInterface))))))))
        pure ()


