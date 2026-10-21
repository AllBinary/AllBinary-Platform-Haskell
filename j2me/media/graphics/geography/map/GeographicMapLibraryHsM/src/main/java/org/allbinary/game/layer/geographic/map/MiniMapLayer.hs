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
-- package org.allbinary.game.layer.geographic.map
module MiniMapLayer (module MiniMapLayer, module AllBinaryLayer) where

import AllBinaryLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, onEvent, onEvent_super, onEvent_impl, onRemoveGeographicMapCellPositionEvent, onRemoveGeographicMapCellPositionEvent_super, onRemoveGeographicMapCellPositionEvent_impl, onGeographicMapCellPositionEvent, onGeographicMapCellPositionEvent_super, onGeographicMapCellPositionEvent_impl, paintDots, paintDots_super, paintDots_impl, paint, paint_super, paint_impl, allBinaryTiledLayer, geographicMapCellPositionFactory, list, basicColorList, positionList, animationInterface)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified CircleFilledAnimation -- org.allbinary.animation.vector.CircleFilledAnimation
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ColorCompositeInterface -- org.allbinary.graphics.color.ColorCompositeInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellPositionEvent -- org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent
import qualified GeographicMapCellPositionEventHandler -- org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler
import qualified GeographicMapCellPositionEventListenerInterface -- org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase

-- implements GeographicMapCellPositionEventListenerInterface
data MiniMapLayer = MiniMapLayer
    { header_ :: JavaHeader
    , base :: AllBinaryLayer.AllBinaryLayer
    , allBinaryTiledLayer :: IORef (AllBinaryTiledLayer.AllBinaryTiledLayer)
    , geographicMapCellPositionFactory :: IORef (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , basicColorList :: IORef (BasicArrayList.BasicArrayList)
    , positionList :: IORef (BasicArrayList.BasicArrayList)
    , animationInterface :: IORef (CircleFilledAnimation.CircleFilledAnimation)
    }

instance JavaNull MiniMapLayer where
    javaNull = javaNullRecord "MiniMapLayer"

instance JavaEquals MiniMapLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MiniMapLayer where
    (==) = jrecordEquals

instance JavaObjectClass MiniMapLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MiniMapLayer
newRecord_ = do
    base <- AllBinaryLayer.newRecord_
    let header_ = base.header_
    allBinaryTiledLayer <- newIORef javaNull
    geographicMapCellPositionFactory <- newIORef javaNull
    list <- newIORef javaNull
    basicColorList <- newIORef javaNull
    positionList <- newIORef javaNull
    animationInterface <- newIORef javaNull
    let this = MiniMapLayer header_ base allBinaryTiledLayer geographicMapCellPositionFactory list basicColorList positionList animationInterface
    jregisterLevel header_ this
    GeographicMapCellPositionEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onRemoveGeographicMapCellPositionEvent" (\() -> onRemoveGeographicMapCellPositionEvent_impl this)
    jregisterMethod header_ "onGeographicMapCellPositionEvent" (\() -> onGeographicMapCellPositionEvent_impl this)
    jregisterMethod header_ "paintDots" (\() -> paintDots_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: MiniMapLayer -> IO ()
initFields_ this = do
    jset this.allBinaryTiledLayer (javaNull)
    jset this.geographicMapCellPositionFactory (javaNull)
    jset this.list (javaNull)
    jset this.basicColorList (javaNull)
    jset this.positionList (javaNull)
    jset this.animationInterface (javaNull)
    pure ()

new_2 :: BasicGeographicMap.BasicGeographicMap -> ViewPositionBase.ViewPositionBase -> IO MiniMapLayer
new_2 geographicMapInterface viewPosition = do
    this <- newRecord_
    init_2 this geographicMapInterface viewPosition
    pure this

init_2 :: MiniMapLayer -> BasicGeographicMap.BasicGeographicMap -> ViewPositionBase.ViewPositionBase -> IO ()
init_2 this geographicMapInterface viewPosition = do
        AllBinaryLayer.init_3 this.base (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jio (Rectangle.new_3 (jio (PointFactory.createXY ((jio (PointFactory.getInstance))) 0 (jio (ViewPositionBase.getY viewPosition)))) (jio (AllBinaryTiledLayer.getWidth ((jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface))))) (jio (AllBinaryTiledLayer.getHeight ((jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface))))))) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        jset (this).allBinaryTiledLayer (assignedValue)
        assignedValue <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
        jset (this).geographicMapCellPositionFactory (assignedValue)
        assignedValue <- (CircleFilledAnimation.new_3 (jio (AllBinaryTiledLayer.getCellWidth ((jget (this).allBinaryTiledLayer)))) (jio (AllBinaryTiledLayer.getCellHeight ((jget (this).allBinaryTiledLayer)))) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
        jset (this).animationInterface (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).list (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).basicColorList (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).positionList (assignedValue)
        Control.Monad.void (GeographicMapCellPositionEventHandler.addListener ((jio (GeographicMapCellPositionEventHandler.getInstance))) this)
        Control.Monad.void (MiniMapLayer.init this)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: MiniMapLayer))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: MiniMapLayer))

init_impl :: MiniMapLayer -> IO (())
init_impl this = do
        Control.Monad.void (AllBinaryTiledLayer.setPosition ((jget (this).allBinaryTiledLayer)) (jget (this).base.base.x) (jget (this).base.base.y) (jget (this).base.base.z))
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: MiniMapLayer))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: MiniMapLayer)) a1

onEvent_impl :: MiniMapLayer -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
onRemoveGeographicMapCellPositionEvent :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionEvent.GeographicMapCellPositionEvent -> IO (())
onRemoveGeographicMapCellPositionEvent object_ a1 = jmethod object_ "onRemoveGeographicMapCellPositionEvent" (\() -> (onRemoveGeographicMapCellPositionEvent_impl (javaCast object_ :: MiniMapLayer))) () a1

onRemoveGeographicMapCellPositionEvent_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionEvent.GeographicMapCellPositionEvent -> IO (())
onRemoveGeographicMapCellPositionEvent_super object_ a1 = (onRemoveGeographicMapCellPositionEvent_impl (javaCast object_ :: MiniMapLayer)) a1

onRemoveGeographicMapCellPositionEvent_impl :: MiniMapLayer -> GeographicMapCellPositionEvent.GeographicMapCellPositionEvent -> IO (())
onRemoveGeographicMapCellPositionEvent_impl this geographicMapCellPositionEvent = do
        let colorCompositeInterface = (javaCast (jio (GeographicMapCellPositionEvent.getSource geographicMapCellPositionEvent)) :: ColorCompositeInterface.ColorCompositeInterface)
        index <- (BasicArrayList.indexOf ((jget (this).list)) colorCompositeInterface)
        when (index >= 0) $ do
            Control.Monad.void (BasicArrayList.removeAt ((jget (this).list)) index)
            Control.Monad.void (BasicArrayList.removeAt ((jget (this).basicColorList)) index)
            Control.Monad.void (BasicArrayList.removeAt ((jget (this).positionList)) index)
        pure ()


-- throws Exception
onGeographicMapCellPositionEvent :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionEvent.GeographicMapCellPositionEvent -> IO (())
onGeographicMapCellPositionEvent object_ a1 = jmethod object_ "onGeographicMapCellPositionEvent" (\() -> (onGeographicMapCellPositionEvent_impl (javaCast object_ :: MiniMapLayer))) () a1

onGeographicMapCellPositionEvent_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionEvent.GeographicMapCellPositionEvent -> IO (())
onGeographicMapCellPositionEvent_super object_ a1 = (onGeographicMapCellPositionEvent_impl (javaCast object_ :: MiniMapLayer)) a1

onGeographicMapCellPositionEvent_impl :: MiniMapLayer -> GeographicMapCellPositionEvent.GeographicMapCellPositionEvent -> IO (())
onGeographicMapCellPositionEvent_impl this geographicMapCellPositionEvent = do
        let colorCompositeInterface = (javaCast (jio (GeographicMapCellPositionEvent.getSource geographicMapCellPositionEvent)) :: ColorCompositeInterface.ColorCompositeInterface)
        layerIndex <- newIORef ((Prelude.negate 1))
        size <- (BasicArrayList.size ((jget (this).list)))
        nextColorCompositeInterface <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextColorCompositeInterface ((javaCast (jio (BasicArrayList.get ((jget (this).list)) index)) :: ColorCompositeInterface.ColorCompositeInterface))
            when ((jget nextColorCompositeInterface) == colorCompositeInterface) $ do
                jset layerIndex (index)
                throwIO JavaBreak
        geographicMapCellPosition <- (BasicGeographicMapCellPositionFactory.getInstance ((jget (this).geographicMapCellPositionFactory)) (jio (GeographicMapCellPositionEvent.getGeographicMapCellPosition geographicMapCellPositionEvent)))
        point <- (GeographicMapCellPosition.getPoint geographicMapCellPosition)
        if ((jget layerIndex) == (Prelude.negate 1)) then do
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) colorCompositeInterface)
            basicColor <- (ColorCompositeInterface.getBasicColorP colorCompositeInterface)
            Control.Monad.void (BasicArrayList.add ((jget (this).basicColorList)) basicColor)
            Control.Monad.void (BasicArrayList.add ((jget (this).positionList)) point)
            jset layerIndex (((jio (BasicArrayList.size ((jget (this).basicColorList)))) - 1))
        else do
            Control.Monad.void (BasicArrayList.set ((jget (this).positionList)) (jget layerIndex) point)
        pure ()


paintDots :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintDots object_ a1 = jmethod object_ "paintDots" (\() -> (paintDots_impl (javaCast object_ :: MiniMapLayer))) () a1

paintDots_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintDots_super object_ a1 = (paintDots_impl (javaCast object_ :: MiniMapLayer)) a1

paintDots_impl :: MiniMapLayer -> Graphics.Graphics -> IO (())
paintDots_impl this graphics = do
        let localPositionList = (jget (this).positionList)
        let localBasicColorList = (jget (this).basicColorList)
        length <- (BasicArrayList.size localPositionList)
        point <- newIORef (javaNull)
        basicColor <- newIORef (javaNull)
        index <- newIORef (length)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset point ((javaCast (jio (BasicArrayList.get localPositionList (jget index))) :: GPoint.GPoint))
            jset basicColor ((javaCast (jio (BasicArrayList.get localBasicColorList (jget index))) :: BasicColor.BasicColor))
            Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jget basicColor)))))
            Control.Monad.void (CircleFilledAnimation.setBasicColorP ((jget (this).animationInterface)) (jget basicColor))
            Control.Monad.void (CircleFilledAnimation.paintXY ((jget (this).animationInterface)) graphics ((jio (GPoint.getX ((jget point)))) + (jget (this).base.base.x)) ((jio (GPoint.getY ((jget point)))) + (jget (this).base.base.y)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: MiniMapLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: MiniMapLayer)) a1

paint_impl :: MiniMapLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (AllBinaryTiledLayer.paint ((jget (this).allBinaryTiledLayer)) graphics)
        Control.Monad.void (MiniMapLayer.paintDots this graphics)
        pure ()


