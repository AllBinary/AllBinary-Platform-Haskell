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
module PlayerTopViewCharacterBehavior (module PlayerTopViewCharacterBehavior, module TopViewCharacterBehavior) where

import TopViewCharacterBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, terrainEvent, terrainEvent_super, terrainEvent_impl, terrainMove, terrainMove_super, terrainMove_impl, moveIfOnScreen, moveIfOnScreen_super, moveIfOnScreen_impl, isTiledLayerMoveable, isTiledLayerMoveable_super, isTiledLayerMoveable_impl, logUtil)
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
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified TrackingEventCircularStaticPool -- org.allbinary.game.tracking.TrackingEventCircularStaticPool
import qualified TrackingEventHandler -- org.allbinary.game.tracking.TrackingEventHandler
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapUtil -- org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified TopViewCharacterBehavior

data PlayerTopViewCharacterBehavior = PlayerTopViewCharacterBehavior
    { header_ :: JavaHeader
    , base :: TopViewCharacterBehavior.TopViewCharacterBehavior
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PlayerTopViewCharacterBehavior where
    javaNull = javaNullRecord "PlayerTopViewCharacterBehavior"

instance JavaEquals PlayerTopViewCharacterBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerTopViewCharacterBehavior where
    (==) = jrecordEquals

instance JavaObjectClass PlayerTopViewCharacterBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PlayerTopViewCharacterBehavior
newRecord_ = do
    base <- TopViewCharacterBehavior.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = PlayerTopViewCharacterBehavior header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "terrainEvent" (\() -> terrainEvent_impl this)
    jregisterMethod header_ "terrainMove" (\() -> terrainMove_impl this)
    jregisterMethod header_ "moveIfOnScreen" (\() -> moveIfOnScreen_impl this)
    jregisterMethod header_ "isTiledLayerMoveable" (\() -> isTiledLayerMoveable_impl this)
    pure this

initFields_ :: PlayerTopViewCharacterBehavior -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO PlayerTopViewCharacterBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlayerTopViewCharacterBehavior -> IO ()
init_ this = do
    TopViewCharacterBehavior.init_ this.base
    initFields_ this


-- throws Exception
terrainEvent :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "terrainEvent" (\() -> (terrainEvent_impl (javaCast object_ :: PlayerTopViewCharacterBehavior))) () a1 a2 a3 a4 a5 a6

terrainEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent_super object_ a1 a2 a3 a4 a5 a6 = (terrainEvent_impl (javaCast object_ :: PlayerTopViewCharacterBehavior)) a1 a2 a3 a4 a5 a6

terrainEvent_impl :: PlayerTopViewCharacterBehavior -> AllBinaryLayer.AllBinaryLayer -> Direction.Direction -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent_impl this layer direction x y geographicMapInterfaceArray geographicMapCellPosition = do
        Control.Monad.void (TrackingEventHandler.fireEvent ((jio (TrackingEventHandler.getInstance))) (jio (TrackingEventCircularStaticPool.getNextInstance ((jio (TrackingEventCircularStaticPool.getInstance))) layer)))
        pure ()


terrainMove :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove object_ a1 a2 a3 a4 = jmethod object_ "terrainMove" (\() -> (terrainMove_impl (javaCast object_ :: PlayerTopViewCharacterBehavior))) () a1 a2 a3 a4

terrainMove_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove_super object_ a1 a2 a3 a4 = (terrainMove_impl (javaCast object_ :: PlayerTopViewCharacterBehavior)) a1 a2 a3 a4

terrainMove_impl :: PlayerTopViewCharacterBehavior -> AllBinaryLayer.AllBinaryLayer -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> Int -> Int -> IO (())
terrainMove_impl this layer geographicMapInterfaceArray x y = do
        basicGeographicMapUtil <- (BasicGeographicMapUtil.getInstance)
        Control.Monad.void (BasicGeographicMapUtil.setPosition basicGeographicMapUtil geographicMapInterfaceArray x y)
        pure ()


moveIfOnScreen :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveIfOnScreen object_ a1 a2 a3 = jmethod object_ "moveIfOnScreen" (\() -> (moveIfOnScreen_impl (javaCast object_ :: PlayerTopViewCharacterBehavior))) () a1 a2 a3

moveIfOnScreen_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveIfOnScreen_super object_ a1 a2 a3 = (moveIfOnScreen_impl (javaCast object_ :: PlayerTopViewCharacterBehavior)) a1 a2 a3

moveIfOnScreen_impl :: PlayerTopViewCharacterBehavior -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> IO (())
moveIfOnScreen_impl this layer ax ay = do
        pure ()


isTiledLayerMoveable :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Bool)
isTiledLayerMoveable object_ a1 a2 a3 = jmethod object_ "isTiledLayerMoveable" (\() -> (isTiledLayerMoveable_impl (javaCast object_ :: PlayerTopViewCharacterBehavior))) () a1 a2 a3

isTiledLayerMoveable_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Bool)
isTiledLayerMoveable_super object_ a1 a2 a3 = (isTiledLayerMoveable_impl (javaCast object_ :: PlayerTopViewCharacterBehavior)) a1 a2 a3

isTiledLayerMoveable_impl :: PlayerTopViewCharacterBehavior -> AllBinaryTiledLayer.AllBinaryTiledLayer -> Int -> Int -> IO (Bool)
isTiledLayerMoveable_impl this terrainTiledLayer x y = do
        pure (((((((jio (AllBinaryTiledLayer.getXP terrainTiledLayer)) + (jio (DisplayInfoSingleton.getLastWidth ((jio (DisplayInfoSingleton.getInstance)))))) < (jio (AllBinaryTiledLayer.getWidth terrainTiledLayer))) || (x < 0))) && ((((jio (AllBinaryTiledLayer.getXP terrainTiledLayer)) > 0) || (x > 0)))))


