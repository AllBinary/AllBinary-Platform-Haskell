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
module AllAnimationsEverywhereTileMapPlacementVisitor (module AllAnimationsEverywhereTileMapPlacementVisitor, module TileMapPlacementVisitor) where

import TileMapPlacementVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl)
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
import qualified TileMapPlacementVisitor

data AllAnimationsEverywhereTileMapPlacementVisitor = AllAnimationsEverywhereTileMapPlacementVisitor
    { header_ :: JavaHeader
    , base :: TileMapPlacementVisitor.TileMapPlacementVisitor
    }

instance JavaNull AllAnimationsEverywhereTileMapPlacementVisitor where
    javaNull = javaNullRecord "AllAnimationsEverywhereTileMapPlacementVisitor"

instance JavaEquals AllAnimationsEverywhereTileMapPlacementVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllAnimationsEverywhereTileMapPlacementVisitor where
    (==) = jrecordEquals

instance JavaObjectClass AllAnimationsEverywhereTileMapPlacementVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllAnimationsEverywhereTileMapPlacementVisitor
newRecord_ = do
    base <- TileMapPlacementVisitor.newRecord_
    let header_ = base.header_
    let this = AllAnimationsEverywhereTileMapPlacementVisitor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: AllAnimationsEverywhereTileMapPlacementVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllAnimationsEverywhereTileMapPlacementVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllAnimationsEverywhereTileMapPlacementVisitor -> IO ()
init_ this = do
    TileMapPlacementVisitor.init_ this.base
    initFields_ this


visit :: (JavaObjectClass this_) => this_ -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit object_ a1 a2 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: AllAnimationsEverywhereTileMapPlacementVisitor))) () a1 a2

visit_super :: (JavaObjectClass this_) => this_ -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit_super object_ a1 a2 = (visit_impl (javaCast object_ :: AllAnimationsEverywhereTileMapPlacementVisitor)) a1 a2

visit_impl :: AllAnimationsEverywhereTileMapPlacementVisitor -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit_impl this lastMap mapData = do
        let size = (jlength mapData)
        let size2 = ((jlength (jindex mapData (0))) - 7)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            forM_ [0, 0 + (7) .. size2 - 1] $ \index2 -> javaIteration (pure ()) $ do
                jsetIndex ((jindex mapData (index))) (index2) (1)
                jsetIndex ((jindex mapData (index))) ((index2 + 1)) (17)
                jsetIndex ((jindex mapData (index))) ((index2 + 2)) (33)
                jsetIndex ((jindex mapData (index))) ((index2 + 3)) (49)
                jsetIndex ((jindex mapData (index))) ((index2 + 4)) (65)
                jsetIndex ((jindex mapData (index))) ((index2 + 5)) (81)
                jsetIndex ((jindex mapData (index))) ((index2 + 6)) (97)
        pure ()


