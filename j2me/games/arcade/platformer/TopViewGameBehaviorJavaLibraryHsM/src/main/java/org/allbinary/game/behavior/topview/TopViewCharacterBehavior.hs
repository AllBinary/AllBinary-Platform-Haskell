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
module TopViewCharacterBehavior where

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
import qualified Direction -- org.allbinary.direction.Direction
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified BasicTopViewGeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory

data TopViewCharacterBehavior = TopViewCharacterBehavior
    { header_ :: JavaHeader
    }

instance JavaNull TopViewCharacterBehavior where
    javaNull = javaNullRecord "TopViewCharacterBehavior"

instance JavaEquals TopViewCharacterBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TopViewCharacterBehavior where
    (==) = jrecordEquals

instance JavaObjectClass TopViewCharacterBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TopViewCharacterBehavior
newRecord_ = do
    header_ <- newJavaHeader
    let this = TopViewCharacterBehavior header_
    jregisterLevel header_ this
    jregisterMethod header_ "terrainEvent" (\() -> terrainEvent_impl this)
    jregisterMethod header_ "terrainMove" (\() -> terrainMove_impl this)
    jregisterMethod header_ "hasSolidBlock" (\() -> hasSolidBlock_impl this)
    pure this

initFields_ :: TopViewCharacterBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TopViewCharacterBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TopViewCharacterBehavior -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
terrainEvent :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "terrainEvent" (\() -> (terrainEvent_impl (javaCast object_ :: TopViewCharacterBehavior))) () a1 a2 a3 a4 a5 a6

terrainEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent_super object_ a1 a2 a3 a4 a5 a6 = (terrainEvent_impl (javaCast object_ :: TopViewCharacterBehavior)) a1 a2 a3 a4 a5 a6

terrainEvent_impl :: TopViewCharacterBehavior -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent_impl this layer direction x y geographicMapInterfaceArray geographicMapCellPosition = do
        pure ()


terrainMove :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove object_ a1 a2 a3 a4 = jmethod object_ "terrainMove" (\() -> (terrainMove_impl (javaCast object_ :: TopViewCharacterBehavior))) () a1 a2 a3 a4

terrainMove_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove_super object_ a1 a2 a3 a4 = (terrainMove_impl (javaCast object_ :: TopViewCharacterBehavior)) a1 a2 a3 a4

terrainMove_impl :: TopViewCharacterBehavior -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove_impl this layer geographicMapInterfaceArray x y = do
        pure ()


hasSolidBlock :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
hasSolidBlock object_ a1 a2 = jmethod object_ "hasSolidBlock" (\() -> (hasSolidBlock_impl (javaCast object_ :: TopViewCharacterBehavior))) () a1 a2

hasSolidBlock_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
hasSolidBlock_super object_ a1 a2 = (hasSolidBlock_impl (javaCast object_ :: TopViewCharacterBehavior)) a1 a2

hasSolidBlock_impl :: TopViewCharacterBehavior -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> IO (Bool)
hasSolidBlock_impl this geographicMapInterfaceArray geographicMapCellTypeArray = do
    javaCatchReturn $ do
        let size = (jlength geographicMapInterfaceArray)
        basicTopViewGeographicMapCellTypeFactory <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset basicTopViewGeographicMapCellTypeFactory ((javaCast (jio (getGeographicMapCellTypeFactory ((jindex geographicMapInterfaceArray (index))))) :: BasicTopViewGeographicMapCellTypeFactory.BasicTopViewGeographicMapCellTypeFactory))
            when (jio (isType ((jget ((jget basicTopViewGeographicMapCellTypeFactory)).bLOCK_CELL_TYPE)) (jindex geographicMapCellTypeArray (index)))) $ do
                javaReturn (True)
        pure (False)


