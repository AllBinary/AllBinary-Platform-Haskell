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
-- package org.allbinary.game.behavior.topview.placement
module TileMapPlacementVisitor where

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
import qualified TiledMap -- org.mapeditor.core.TiledMap

data TileMapPlacementVisitor = TileMapPlacementVisitor
    { header_ :: JavaHeader
    }

instance JavaNull TileMapPlacementVisitor where
    javaNull = javaNullRecord "TileMapPlacementVisitor"

instance JavaEquals TileMapPlacementVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TileMapPlacementVisitor where
    (==) = jrecordEquals

instance JavaObjectClass TileMapPlacementVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TileMapPlacementVisitor
newRecord_ = do
    header_ <- newJavaHeader
    let this = TileMapPlacementVisitor header_
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: TileMapPlacementVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TileMapPlacementVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TileMapPlacementVisitor -> IO ()
init_ this = do
    initFields_ this


visit :: (JavaObjectClass this_) => this_ -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit object_ a1 a2 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: TileMapPlacementVisitor))) () a1 a2

visit_super :: (JavaObjectClass this_) => this_ -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit_super object_ a1 a2 = (visit_impl (javaCast object_ :: TileMapPlacementVisitor)) a1 a2

visit_impl :: TileMapPlacementVisitor -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit_impl this lastMap mapData = do
        pure ()


