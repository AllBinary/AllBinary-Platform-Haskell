{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
-- package org.allbinary.game.layer.geological.resources
module GeologicalGeographicMapCellPositionFactory where

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
import qualified GeologicalGeographicMapCellPosition -- same package or java.lang
import qualified GeologicalResource -- same package or java.lang
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellPositionFactoryInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface

-- implements GeographicMapCellPositionFactoryInterface
data GeologicalGeographicMapCellPositionFactory = GeologicalGeographicMapCellPositionFactory
    { header_ :: JavaHeader
    , resourcePerMapCellType :: IORef (JavaArray (Int))
    }

instance JavaNull GeologicalGeographicMapCellPositionFactory where
    javaNull = javaNullRecord "GeologicalGeographicMapCellPositionFactory"

instance JavaEquals GeologicalGeographicMapCellPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeologicalGeographicMapCellPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass GeologicalGeographicMapCellPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeologicalGeographicMapCellPositionFactory
newRecord_ = do
    header_ <- newJavaHeader
    resourcePerMapCellType <- newIORef javaNull
    let this = GeologicalGeographicMapCellPositionFactory header_ resourcePerMapCellType
    jregisterLevel header_ this
    GeographicMapCellPositionFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: GeologicalGeographicMapCellPositionFactory -> IO ()
initFields_ this = do
    jset this.resourcePerMapCellType (javaNull)
    pure ()

new_1 :: JavaArray (Int) -> IO GeologicalGeographicMapCellPositionFactory
new_1 resourcePerMapCellType = do
    this <- newRecord_
    init_1 this resourcePerMapCellType
    pure this

init_1 :: GeologicalGeographicMapCellPositionFactory -> JavaArray (Int) -> IO ()
init_1 this resourcePerMapCellType = do
        initFields_ this
        jset (this).resourcePerMapCellType (resourcePerMapCellType)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: GeologicalGeographicMapCellPositionFactory))) () a1 a2 a3 a4 a5 a6 a7

getInstance_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance_super object_ a1 a2 a3 a4 a5 a6 a7 = (getInstance_impl (javaCast object_ :: GeologicalGeographicMapCellPositionFactory)) a1 a2 a3 a4 a5 a6 a7

getInstance_impl :: GeologicalGeographicMapCellPositionFactory -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getInstance_impl this geographicMapInterface i_column i_row columns rows width height = do
        tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        let resources = ((jindex ((jget (this).resourcePerMapCellType)) ((jio (AllBinaryTiledLayer.getCell tiledLayer i_column i_row)))) + (jio (MyRandomFactory.getAbsoluteNextInt ((jio (MyRandomFactory.getInstance))) 1000)))
        (fmap (\value_ -> javaCast value_ :: GeographicMapCellPosition.GeographicMapCellPosition) (GeologicalGeographicMapCellPosition.new_7 i_column i_row columns rows width height (jio (GeologicalResource.new_1 resources))))


