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
module SimpleGeographicMapCellPositionFactory where

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
import qualified GeographicMapCellPositionFactoryInterface

-- implements GeographicMapCellPositionFactoryInterface
data SimpleGeographicMapCellPositionFactory = SimpleGeographicMapCellPositionFactory
    { header_ :: JavaHeader
    }

instance JavaNull SimpleGeographicMapCellPositionFactory where
    javaNull = javaNullRecord "SimpleGeographicMapCellPositionFactory"

instance JavaEquals SimpleGeographicMapCellPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleGeographicMapCellPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass SimpleGeographicMapCellPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GEOGRAPHIC_MAP_CELL_POSITION #-}
nULL_GEOGRAPHIC_MAP_CELL_POSITION = unsafePerformIO ((GeographicMapCellPosition.new_6 (Prelude.negate 1) (Prelude.negate 1) (Prelude.negate 1) (Prelude.negate 1) (Prelude.negate 1) (Prelude.negate 1)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SimpleGeographicMapCellPositionFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = SimpleGeographicMapCellPositionFactory header_
    jregisterLevel header_ this
    GeographicMapCellPositionFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: SimpleGeographicMapCellPositionFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SimpleGeographicMapCellPositionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SimpleGeographicMapCellPositionFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: SimpleGeographicMapCellPositionFactory))) () a1 a2 a3 a4 a5 a6 a7

getInstance_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance_super object_ a1 a2 a3 a4 a5 a6 a7 = (getInstance_impl (javaCast object_ :: SimpleGeographicMapCellPositionFactory)) a1 a2 a3 a4 a5 a6 a7

getInstance_impl :: SimpleGeographicMapCellPositionFactory -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance_impl this geographicMapInterface i_column i_row columns rows width height = do
        (GeographicMapCellPosition.new_6 i_column i_row columns rows width height)


