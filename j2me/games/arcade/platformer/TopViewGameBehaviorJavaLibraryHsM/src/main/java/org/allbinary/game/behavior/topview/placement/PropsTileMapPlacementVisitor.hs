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
module PropsTileMapPlacementVisitor (module PropsTileMapPlacementVisitor, module TileMapPlacementVisitor) where

import TileMapPlacementVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, visit2, visit2_super, visit2_impl, logUtil, randomFactory)
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
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TileLayer -- org.mapeditor.core.TileLayer
import qualified TiledMap -- org.mapeditor.core.TiledMap
import qualified TileMapPlacementVisitor

data PropsTileMapPlacementVisitor = PropsTileMapPlacementVisitor
    { header_ :: JavaHeader
    , base :: TileMapPlacementVisitor.TileMapPlacementVisitor
    , logUtil :: IORef (LogUtil.LogUtil)
    , randomFactory :: IORef (MyRandomFactory.MyRandomFactory)
    }

instance JavaNull PropsTileMapPlacementVisitor where
    javaNull = javaNullRecord "PropsTileMapPlacementVisitor"

instance JavaEquals PropsTileMapPlacementVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PropsTileMapPlacementVisitor where
    (==) = jrecordEquals

instance JavaObjectClass PropsTileMapPlacementVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PropsTileMapPlacementVisitor
newRecord_ = do
    base <- TileMapPlacementVisitor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    randomFactory <- newIORef javaNull
    let this = PropsTileMapPlacementVisitor header_ base logUtil randomFactory
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "visit2" (\() -> visit2_impl this)
    pure this

initFields_ :: PropsTileMapPlacementVisitor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.randomFactory =<< (MyRandomFactory.getInstance)
    pure ()

new_ :: IO PropsTileMapPlacementVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PropsTileMapPlacementVisitor -> IO ()
init_ this = do
    TileMapPlacementVisitor.init_ this.base
    initFields_ this


visit :: (JavaObjectClass this_) => this_ -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit object_ a1 a2 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: PropsTileMapPlacementVisitor))) () a1 a2

visit_super :: (JavaObjectClass this_) => this_ -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit_super object_ a1 a2 = (visit_impl (javaCast object_ :: PropsTileMapPlacementVisitor)) a1 a2

visit_impl :: PropsTileMapPlacementVisitor -> TiledMap.TiledMap -> JavaArray (JavaArray (Int)) -> IO (())
visit_impl this lastMap mapData = do
        let layerIndex = 0
        let tileLayer = ((javaCast (jio (TiledMap.getLayer lastMap layerIndex)) :: TileLayer.TileLayer))
        mapArray <- (TileLayer.getMapArray tileLayer)
        let size = (jlength mapData)
        let size2 = (jlength (jindex mapData (0)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            forM_ [0 .. size2 - 1] $ \index2 -> javaIteration (pure ()) $ do
                if ((jindex ((jindex mapArray (index))) (index2)) == 14) then do
                    pure ()
                else do
                    Control.Monad.void (PropsTileMapPlacementVisitor.visit2 this mapArray mapData index index2)
                when ((index `rem` 7) == 0) $ do
                    if ((jindex ((jindex mapArray (index))) (index2)) == 19) then do
                        randomInt <- (MyRandomFactory.getAbsoluteNextIntAllowZero ((jget (this).randomFactory)) 3)
                        if (randomInt == 0) then do
                            jsetIndex ((jindex mapData (index))) (index2) (1)
                        else if (randomInt == 1) then do
                            jsetIndex ((jindex mapData (index))) (index2) (81)
                        else when (randomInt == 2) $ do
                            jsetIndex ((jindex mapData (index))) (index2) (97)
                    else when ((jindex ((jindex mapArray (index))) (index2)) == 17) $ do
                        randomInt <- (MyRandomFactory.getAbsoluteNextIntAllowZero ((jget (this).randomFactory)) 3)
                        if (randomInt == 0) then do
                            jsetIndex ((jindex mapData (index))) (index2) (17)
                        else if (randomInt == 1) then do
                            jsetIndex ((jindex mapData (index))) (index2) (81)
                        else when (randomInt == 2) $ do
                            jsetIndex ((jindex mapData (index))) (index2) (97)
                when ((index2 `rem` 7) == 0) $ do
                    when ((jindex ((jindex mapArray (index))) (index2)) == 34) $ do
                        randomInt <- (MyRandomFactory.getAbsoluteNextIntAllowZero ((jget (this).randomFactory)) 4)
                        if (randomInt == 0) then do
                            jsetIndex ((jindex mapData (index))) (index2) (33)
                        else if (randomInt == 1) then do
                            jsetIndex ((jindex mapData (index))) (index2) (65)
                        else if (randomInt == 2) then do
                            jsetIndex ((jindex mapData (index))) (index2) (81)
                        else when (randomInt == 3) $ do
                            jsetIndex ((jindex mapData (index))) (index2) (97)
        pure ()


visit2 :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (())
visit2 object_ a1 a2 a3 a4 = jmethod object_ "visit2" (\() -> (visit2_impl (javaCast object_ :: PropsTileMapPlacementVisitor))) () a1 a2 a3 a4

visit2_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (())
visit2_super object_ a1 a2 a3 a4 = (visit2_impl (javaCast object_ :: PropsTileMapPlacementVisitor)) a1 a2 a3 a4

visit2_impl :: PropsTileMapPlacementVisitor -> JavaArray (JavaArray (Int)) -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (())
visit2_impl this mapArray mapData index index2 = do
    javaCatchReturn $ do
        commonStrings <- (CommonStrings.getInstance)
        countX <- newIORef (0)
        countY <- newIORef (0)
        index3 <- newIORef ((index - 1))
        forM_ [(index2 - 1), (index2 - 1) + (-1) .. 0 + 1] $ \index4 -> javaIteration (pure ()) $ do
            jset index3 ((jget index3) - 1)
            when (((jget index3) < 0) || (index4 < 0)) $ do
                javaReturn (())
            when (((jindex ((jindex mapArray ((jget index3)))) (index4)) /= 14) || ((jindex ((jindex mapData ((jget index3)))) (index4)) /= 0)) $ do
                when (((jget countX) > 10) && ((jget countY) > 10)) $ do
                    forM_ [((jget index3) + 1) .. (index - 1) - 1] $ \index5 -> javaIteration (pure ()) $ do
                        forM_ [(index4 + 1) .. (index2 - 1) - 1] $ \index6 -> javaIteration (pure ()) $ do
                            when (((jindex ((jindex mapArray (index5))) (index6)) /= 14) || ((jindex ((jindex mapData (index5))) (index6)) /= 0)) $ do
                                javaReturn (())
                    let x = (index - (((jget countX) `quot` 2)))
                    let y = (index2 - (((jget countY) `quot` 2)))
                    when ((((x >= 0) && (y >= 0)) && (x < (jlength mapData))) && (y < (jlength (jindex mapData (0))))) $ do
                        pure ()
                javaReturn (())
            jset countY ((jget countY) + 1)
            jset countX ((jget countX) + 1)
    pure ()


