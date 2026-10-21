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
-- package org.allbinary.media.graphics.geography.map
module MultiGeographicMapBehavior where

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
import qualified GeographicMapCellType -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang
import qualified GeographicMapCellPosition -- same package or java.lang

data MultiGeographicMapBehavior = MultiGeographicMapBehavior
    { header_ :: JavaHeader
    }

instance JavaNull MultiGeographicMapBehavior where
    javaNull = javaNullRecord "MultiGeographicMapBehavior"

instance JavaEquals MultiGeographicMapBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultiGeographicMapBehavior where
    (==) = jrecordEquals

instance JavaObjectClass MultiGeographicMapBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MultiGeographicMapBehavior
newRecord_ = do
    header_ <- newJavaHeader
    let this = MultiGeographicMapBehavior header_
    jregisterLevel header_ this
    jregisterMethod header_ "getCellTypeAt" (\() -> getCellTypeAt_impl this)
    pure this

initFields_ :: MultiGeographicMapBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MultiGeographicMapBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MultiGeographicMapBehavior -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getCellTypeAt :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
getCellTypeAt object_ a1 a2 a3 = jmethod object_ "getCellTypeAt" (\() -> (getCellTypeAt_impl (javaCast object_ :: MultiGeographicMapBehavior))) () a1 a2 a3

getCellTypeAt_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
getCellTypeAt_super object_ a1 a2 a3 = (getCellTypeAt_impl (javaCast object_ :: MultiGeographicMapBehavior)) a1 a2 a3

getCellTypeAt_impl :: MultiGeographicMapBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
getCellTypeAt_impl this geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition = do
        let size = (jlength geographicMapInterfaceArray)
        cellType <- newIORef (GeographicMapCellType.nULL_GEOGRAPHIC_MAP_CELL_TYPE)
        index <- newIORef (size)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            assignedValue <- (getCellTypeAt ((jindex geographicMapInterfaceArray ((jget index)))) geographicMapCellPosition)
            jset cellType (assignedValue)
            jsetIndex geographicMapCellTypeArray ((jget index)) ((jget cellType))
        pure (geographicMapCellTypeArray)


