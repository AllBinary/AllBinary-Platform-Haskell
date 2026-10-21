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
module BasicGeographicMapCellPositionFactory where

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
import qualified GeographicMapCellPositionFactoryInterface -- same package or java.lang
import qualified GeographicMapCellPositionFactoryInitVisitorInterface -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data BasicGeographicMapCellPositionFactory = BasicGeographicMapCellPositionFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , geographicMapCellPositionArray :: IORef (JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)))
    , geographicMapInterface :: IORef (BasicGeographicMap.BasicGeographicMap)
    , geographicMapCellPositionFactoryInterface :: IORef (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
    , columns :: IORef (Int)
    , rows :: IORef (Int)
    , tiledLayer :: IORef (AllBinaryTiledLayer.AllBinaryTiledLayer)
    }

instance JavaNull BasicGeographicMapCellPositionFactory where
    javaNull = javaNullRecord "BasicGeographicMapCellPositionFactory"

instance JavaEquals BasicGeographicMapCellPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGeographicMapCellPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicGeographicMapCellPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGeographicMapCellPositionFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    geographicMapCellPositionArray <- newIORef javaNull
    geographicMapInterface <- newIORef javaNull
    geographicMapCellPositionFactoryInterface <- newIORef javaNull
    columns <- newIORef 0
    rows <- newIORef 0
    tiledLayer <- newIORef javaNull
    let this = BasicGeographicMapCellPositionFactory header_ logUtil geographicMapCellPositionArray geographicMapInterface geographicMapCellPositionFactoryInterface columns rows tiledLayer
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "getAt" (\() -> getAt_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "createInstance" (\() -> createInstance_impl this)
    jregisterMethod header_ "getColumns" (\() -> getColumns_impl this)
    jregisterMethod header_ "getRows" (\() -> getRows_impl this)
    pure this

initFields_ :: BasicGeographicMapCellPositionFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.geographicMapCellPositionArray (javaNull)
    jset this.geographicMapInterface (javaNull)
    jset this.geographicMapCellPositionFactoryInterface (javaNull)
    jset this.columns (0)
    jset this.rows (0)
    jset this.tiledLayer (javaNull)
    pure ()

new_1 :: BasicGeographicMap.BasicGeographicMap -> IO BasicGeographicMapCellPositionFactory
new_1 geographicMapInterface = do
    this <- newRecord_
    init_1 this geographicMapInterface
    pure this

init_1 :: BasicGeographicMapCellPositionFactory -> BasicGeographicMap.BasicGeographicMap -> IO ()
init_1 this geographicMapInterface = do
        initFields_ this
        jset (this).geographicMapInterface (geographicMapInterface)
        assignedValue <- (BasicGeographicMap.getGeographicMapCellPositionFactoryInterface ((jget (this).geographicMapInterface)))
        jset (this).geographicMapCellPositionFactoryInterface (assignedValue)
        assignedValue <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface)))
        jset (this).tiledLayer (assignedValue)
        assignedValue <- (AllBinaryTiledLayer.getColumns ((jget (this).tiledLayer)))
        jset (this).columns (assignedValue)
        assignedValue <- (AllBinaryTiledLayer.getRows ((jget (this).tiledLayer)))
        jset (this).rows (assignedValue)
        jset (this).geographicMapCellPositionArray ((jnewArray2 ((jget (this).rows)) ((jget (this).columns)) javaNull))
        Control.Monad.void (BasicGeographicMapCellPositionFactory.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))

init_impl :: BasicGeographicMapCellPositionFactory -> IO (())
init_impl this = do
        let tiledLayer = (jget (this).tiledLayer)
        columns <- (BasicGeographicMapCellPositionFactory.getColumns this)
        rows <- (BasicGeographicMapCellPositionFactory.getRows this)
        width <- (AllBinaryTiledLayer.getCellWidth tiledLayer)
        height <- (AllBinaryTiledLayer.getCellHeight tiledLayer)
        forM_ [0 .. columns - 1] $ \column -> javaIteration (pure ()) $ do
            forM_ [0 .. rows - 1] $ \row -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicGeographicMapCellPositionFactory.createInstance this column row width height)
        pure ()


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionFactoryInitVisitorInterface.GeographicMapCellPositionFactoryInitVisitorInterface -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionFactoryInitVisitorInterface.GeographicMapCellPositionFactoryInitVisitorInterface -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory)) a1

visit_impl :: BasicGeographicMapCellPositionFactory -> GeographicMapCellPositionFactoryInitVisitorInterface.GeographicMapCellPositionFactoryInitVisitorInterface -> IO (())
visit_impl this geographicMapCelPositionFactoryInitVisitorInterface = do
        let tiledLayer = (jget (this).tiledLayer)
        columns <- (BasicGeographicMapCellPositionFactory.getColumns this)
        rows <- (BasicGeographicMapCellPositionFactory.getRows this)
        handle (\(e :: JavaException) -> do
            commonSeps <- (CommonSeps.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (commonSeps).bRACKET_OPEN)))) rows))) (jget (commonSeps).bRACKET_CLOSE)))) (jget (commonSeps).bRACKET_OPEN)))) columns))) (jget (commonSeps).bRACKET_CLOSE)))))) this "visit" e)
            javaThrow (e)
            ) $ do
            cellPosition <- newIORef (javaNull)
            forM_ [0 .. columns - 1] $ \column -> javaIteration (pure ()) $ do
                forM_ [0 .. rows - 1] $ \row -> javaIteration (pure ()) $ do
                    assignedValue <- (BasicGeographicMapCellPositionFactory.getAt this column row)
                    jset cellPosition (assignedValue)
                    Control.Monad.void (GeographicMapCellPositionFactoryInitVisitorInterface.visit geographicMapCelPositionFactoryInitVisitorInterface tiledLayer (jget cellPosition))
        pure ()


-- throws Exception
getAt :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getAt object_ a1 a2 = jmethod object_ "getAt" (\() -> (getAt_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))) () a1 a2

getAt_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getAt_super object_ a1 a2 = (getAt_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory)) a1 a2

getAt_impl :: BasicGeographicMapCellPositionFactory -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getAt_impl this i_column i_row = do
        pure ((jindex ((jindex ((jget (this).geographicMapCellPositionArray)) (i_row))) (i_column)))


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory)) a1

getInstance_impl :: BasicGeographicMapCellPositionFactory -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance_impl this anotherMapGeographicMapCellPosition = do
        (BasicGeographicMapCellPositionFactory.getAt this (jio (GeographicMapCellPosition.getColumn anotherMapGeographicMapCellPosition)) (jio (GeographicMapCellPosition.getRow anotherMapGeographicMapCellPosition)))


-- throws Exception
createInstance :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
createInstance object_ a1 a2 a3 a4 = jmethod object_ "createInstance" (\() -> (createInstance_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))) () a1 a2 a3 a4

createInstance_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
createInstance_super object_ a1 a2 a3 a4 = (createInstance_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory)) a1 a2 a3 a4

createInstance_impl :: BasicGeographicMapCellPositionFactory -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
createInstance_impl this i_column i_row width height = do
        cellPositionCanBeNull <- newIORef ((jindex ((jindex ((jget (this).geographicMapCellPositionArray)) (i_row))) (i_column)))
        when ((jget cellPositionCanBeNull) == javaNull) $ do
            assignedValue <- (GeographicMapCellPositionFactoryInterface.getInstance ((jget (this).geographicMapCellPositionFactoryInterface)) (jget (this).geographicMapInterface) i_column i_row (jget (this).columns) (jget (this).rows) width height)
            jset cellPositionCanBeNull (assignedValue)
            jsetIndex ((jindex ((jget (this).geographicMapCellPositionArray)) (i_row))) (i_column) ((javaCast (jget cellPositionCanBeNull) :: GeographicMapCellPosition.GeographicMapCellPosition))
        pure ((javaCast (jget cellPositionCanBeNull) :: GeographicMapCellPosition.GeographicMapCellPosition))


getColumns :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns object_ = jmethod object_ "getColumns" (\() -> (getColumns_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))) ()

getColumns_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColumns_super object_ = (getColumns_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))

getColumns_impl :: BasicGeographicMapCellPositionFactory -> IO (Int)
getColumns_impl this = do
        pure ((jget (this).columns))


getRows :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows object_ = jmethod object_ "getRows" (\() -> (getRows_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))) ()

getRows_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRows_super object_ = (getRows_impl (javaCast object_ :: BasicGeographicMapCellPositionFactory))

getRows_impl :: BasicGeographicMapCellPositionFactory -> IO (Int)
getRows_impl this = do
        pure ((jget (this).rows))


