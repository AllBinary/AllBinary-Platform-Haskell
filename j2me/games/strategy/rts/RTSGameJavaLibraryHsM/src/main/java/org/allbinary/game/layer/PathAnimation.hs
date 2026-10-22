{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer
module PathAnimation (module PathAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, logUtil, linePathAnimation, pathFindingLayer, allBinaryGameLayerManagerP, startColor, middleColor, endColor)
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
import qualified LinePathAnimation -- same package or java.lang
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified AllBinaryGameLayerManager -- same package or java.lang
import qualified WaypointBehaviorBase -- same package or java.lang
import qualified AllBinaryTiledLayer -- same package or java.lang
import qualified BasicColorSetUtil -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data PathAnimation = PathAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , logUtil :: IORef (LogUtil.LogUtil)
    , linePathAnimation :: IORef (LinePathAnimation.LinePathAnimation)
    , pathFindingLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    , allBinaryGameLayerManagerP :: IORef (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
    , startColor :: IORef (BasicColor.BasicColor)
    , middleColor :: IORef (BasicColor.BasicColor)
    , endColor :: IORef (BasicColor.BasicColor)
    }

instance JavaNull PathAnimation where
    javaNull = javaNullRecord "PathAnimation"

instance JavaEquals PathAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathAnimation where
    (==) = jrecordEquals

instance JavaObjectClass PathAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PathAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    linePathAnimation <- newIORef javaNull
    pathFindingLayer <- newIORef javaNull
    allBinaryGameLayerManagerP <- newIORef javaNull
    startColor <- newIORef javaNull
    middleColor <- newIORef javaNull
    endColor <- newIORef javaNull
    let this = PathAnimation header_ base logUtil linePathAnimation pathFindingLayer allBinaryGameLayerManagerP startColor middleColor endColor
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: PathAnimation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.linePathAnimation (javaNull)
    jset this.pathFindingLayer (javaNull)
    jset this.allBinaryGameLayerManagerP =<< (AllBinaryGameLayerManager.getNullInstance)
    jset this.startColor ((jget ((jio (BasicColorFactory.getInstance))).rED))
    jset this.middleColor ((jget ((jio (BasicColorFactory.getInstance))).bLUE))
    jset this.endColor ((jget ((jio (BasicColorFactory.getInstance))).gREEN))
    pure ()

new_2 :: PathFindingLayerInterface.PathFindingLayerInterface -> LinePathAnimation.LinePathAnimation -> IO PathAnimation
new_2 pathFindingLayer linePathAnimation = do
    this <- newRecord_
    init_2 this pathFindingLayer linePathAnimation
    pure this

init_2 :: PathAnimation -> PathFindingLayerInterface.PathFindingLayerInterface -> LinePathAnimation.LinePathAnimation -> IO ()
init_2 this pathFindingLayer linePathAnimation = do
        Animation.init_ this.base
        initFields_ this
        jset (this).pathFindingLayer (pathFindingLayer)
        jset (this).linePathAnimation (linePathAnimation)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: PathAnimation))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: PathAnimation)) a1

setAllBinaryGameLayerManager_impl :: PathAnimation -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        jset (this).allBinaryGameLayerManagerP (allBinaryGameLayerManager)
        pure ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: PathAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: PathAnimation))

nextFrame_impl :: PathAnimation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: PathAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: PathAnimation)) a1 a2 a3

paintXY_impl :: PathAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Cleared Target" this (jget ((jio (CanvasStrings.getInstance))).pAINT))
            ) $ do
            waypointBehaviorBase <- (PathFindingLayerInterface.getWaypointBehavior ((jget (this).pathFindingLayer)))
            when (waypointBehaviorBase /= javaNull) $ do
                geographicMapCellHistory <- (WaypointBehaviorBase.getCurrentGeographicMapCellHistory waypointBehaviorBase)
                list <- (GeographicMapCellHistory.getTracked geographicMapCellHistory)
                size <- (BasicArrayList.size list)
                when (size > 0) $ do
                    let geographicMapCompositeInterface = (javaCast (jget (this).allBinaryGameLayerManagerP) :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
                    let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
                    tiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
                    geographicMapCellPosition <- newIORef (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
                    nextPoint <- newIORef (javaNull)
                    point <- newIORef (javaNull)
                    let start = (size - 2)
                    forM_ [0 .. (size - 1) - 1] $ \index -> javaIteration (pure ()) $ do
                        if (index == start) then do
                            Control.Monad.void (Animation.setBasicColorP this (jget (this).startColor))
                            Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.basicSetColorUtil)) graphics (jio (Animation.getBasicColorP this)) (jio (Animation.getColor this)))
                        else if (jio (GeographicMapCellHistory.isVisited geographicMapCellHistory (jget geographicMapCellPosition))) then do
                            Control.Monad.void (Animation.setBasicColorP this (jget (this).endColor))
                            Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.basicSetColorUtil)) graphics (jio (Animation.getBasicColorP this)) (jio (Animation.getColor this)))
                        else do
                            Control.Monad.void (Animation.setBasicColorP this (jget (this).middleColor))
                            Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.basicSetColorUtil)) graphics (jio (Animation.getBasicColorP this)) (jio (Animation.getColor this)))
                        jset geographicMapCellPosition ((javaCast (jio (BasicArrayList.get list index)) :: GeographicMapCellPosition.GeographicMapCellPosition))
                        assignedValue <- (GeographicMapCellPosition.getMidPoint ((jget geographicMapCellPosition)))
                        jset point (assignedValue)
                        jset geographicMapCellPosition ((javaCast (jio (BasicArrayList.get list (index + 1))) :: GeographicMapCellPosition.GeographicMapCellPosition))
                        assignedValue <- (GeographicMapCellPosition.getMidPoint ((jget geographicMapCellPosition)))
                        jset nextPoint (assignedValue)
                        Control.Monad.void (LinePathAnimation.paint ((jget (this).linePathAnimation)) graphics (jget point) (jget nextPoint) (javaCast tiledLayer))
        pure ()


