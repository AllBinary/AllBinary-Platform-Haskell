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
-- package org.allbinary.game.layer
module AllBinaryGameLayer (module AllBinaryGameLayer, module AllBinaryLayer) where

import AllBinaryLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, move, move_super, move_impl, getGameKeyEventList, getGameKeyEventList_super, getGameKeyEventList_impl, processInput, processInput_super, processInput_impl, processTick, processTick_super, processTick_impl, onEvent, onEvent_super, onEvent_impl, onViewPositionChangeEvent, onViewPositionChangeEvent_super, onViewPositionChangeEvent_impl, onChangeEvent, onChangeEvent_super, onChangeEvent_impl, paintFirst, paintFirst_super, paintFirst_impl, paintDebug, paintDebug_super, paintDebug_impl, setWidth, setWidth_super, setWidth_impl, setHeight, setHeight_super, setHeight_impl, commonStrings, basicSetColorUtil, rED, paintable, gameKeyEventList)
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
import qualified SWTUtil -- same package or java.lang
import qualified GameLayerUtil -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicColorSetUtil -- org.allbinary.graphics.color.BasicColorSetUtil
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified OpenGLSurfaceChangedInterface -- org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified ViewPositionEvent -- org.allbinary.view.event.ViewPositionEvent
import qualified ViewPositionEventListenerInterface -- org.allbinary.view.event.ViewPositionEventListenerInterface

-- implements ViewPositionEventListenerInterface
-- implements OpenGLSurfaceChangedInterface
data AllBinaryGameLayer = AllBinaryGameLayer
    { header_ :: JavaHeader
    , base :: AllBinaryLayer.AllBinaryLayer
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , basicSetColorUtil :: IORef (BasicColorSetUtil.BasicColorSetUtil)
    , rED :: IORef (BasicColor.BasicColor)
    , paintable :: IORef (Paintable.Paintable)
    , gameKeyEventList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull AllBinaryGameLayer where
    javaNull = javaNullRecord "AllBinaryGameLayer"

instance JavaEquals AllBinaryGameLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryGameLayer where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryGameLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryGameLayer
newRecord_ = do
    base <- AllBinaryLayer.newRecord_
    let header_ = base.header_
    commonStrings <- newIORef javaNull
    basicSetColorUtil <- newIORef javaNull
    rED <- newIORef javaNull
    paintable <- newIORef javaNull
    gameKeyEventList <- newIORef javaNull
    let this = AllBinaryGameLayer header_ base commonStrings basicSetColorUtil rED paintable gameKeyEventList
    jregisterLevel header_ this
    ViewPositionEventListenerInterface.registerInterface_ header_
    OpenGLSurfaceChangedInterface.registerInterface_ header_
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "move" (\() -> move_impl this)
    jregisterMethod header_ "getGameKeyEventList" (\() -> getGameKeyEventList_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onViewPositionChangeEvent" (\() -> onViewPositionChangeEvent_impl this)
    jregisterMethod header_ "onChangeEvent" (\() -> onChangeEvent_impl this)
    jregisterMethod header_ "paintFirst" (\() -> paintFirst_impl this)
    jregisterMethod header_ "paintDebug" (\() -> paintDebug_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    pure this

initFields_ :: AllBinaryGameLayer -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
    jset this.rED ((jget ((jio (BasicColorFactory.getInstance))).rED))
    jset this.paintable ((if (jget SWTUtil.isSWT) then (Paintable.new_ {- Java anonymous class body: implement it as a record of functions
        jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
        jset this.bLACK ((jget ((jio (BasicColorFactory.getInstance))).bLACK))
        -- paint
-}) else (jio (NullPaintable.getInstance))))
    jset this.gameKeyEventList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_3 :: String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO AllBinaryGameLayer
new_3 name layerInfo viewPosition = do
    this <- newRecord_
    init_3 this name layerInfo viewPosition
    pure this

init_3 :: AllBinaryGameLayer -> String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO ()
init_3 this name layerInfo viewPosition = do
        AllBinaryLayer.init_3 this.base (name) (layerInfo) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: AllBinaryGameLayer)) a1

set_impl :: AllBinaryGameLayer -> GL.GL -> IO (())
set_impl this gl = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


move :: (JavaObjectClass this_) => this_ -> IO (())
move object_ = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: AllBinaryGameLayer))) ()

move_super :: (JavaObjectClass this_) => this_ -> IO (())
move_super object_ = (move_impl (javaCast object_ :: AllBinaryGameLayer))

move_impl :: AllBinaryGameLayer -> IO (())
move_impl this = do
        pure ()


getGameKeyEventList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList object_ = jmethod object_ "getGameKeyEventList" (\() -> (getGameKeyEventList_impl (javaCast object_ :: AllBinaryGameLayer))) ()

getGameKeyEventList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList_super object_ = (getGameKeyEventList_impl (javaCast object_ :: AllBinaryGameLayer))

getGameKeyEventList_impl :: AllBinaryGameLayer -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList_impl this = do
        pure ((jget (this).gameKeyEventList))


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: AllBinaryGameLayer)) a1

processInput_impl :: AllBinaryGameLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this allBinaryLayerManager = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: AllBinaryGameLayer)) a1

processTick_impl :: AllBinaryGameLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: AllBinaryGameLayer)) a1

onEvent_impl :: AllBinaryGameLayer -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
onViewPositionChangeEvent :: (JavaObjectClass this_) => this_ -> IO (())
onViewPositionChangeEvent object_ = jmethod object_ "onViewPositionChangeEvent" (\() -> (onViewPositionChangeEvent_impl (javaCast object_ :: AllBinaryGameLayer))) ()

onViewPositionChangeEvent_super :: (JavaObjectClass this_) => this_ -> IO (())
onViewPositionChangeEvent_super object_ = (onViewPositionChangeEvent_impl (javaCast object_ :: AllBinaryGameLayer))

onViewPositionChangeEvent_impl :: AllBinaryGameLayer -> IO (())
onViewPositionChangeEvent_impl this = do
        Control.Monad.void (AllBinaryGameLayer.onChangeEvent this (jget (this).base.viewPositionEvent))
        pure ()


-- throws Exception
onChangeEvent :: (JavaObjectClass this_) => this_ -> ViewPositionEvent.ViewPositionEvent -> IO (())
onChangeEvent object_ a1 = jmethod object_ "onChangeEvent" (\() -> (onChangeEvent_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

onChangeEvent_super :: (JavaObjectClass this_) => this_ -> ViewPositionEvent.ViewPositionEvent -> IO (())
onChangeEvent_super object_ a1 = (onChangeEvent_impl (javaCast object_ :: AllBinaryGameLayer)) a1

onChangeEvent_impl :: AllBinaryGameLayer -> ViewPositionEvent.ViewPositionEvent -> IO (())
onChangeEvent_impl this layerManagerEvent = do
        if (jio (GameLayerUtil.isOnScreen this)) then do
            Control.Monad.void (AllBinaryLayer.setVisible this True)
        else do
            Control.Monad.void (AllBinaryLayer.setVisible this False)
        pure ()


paintFirst :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintFirst object_ a1 = jmethod object_ "paintFirst" (\() -> (paintFirst_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

paintFirst_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintFirst_super object_ a1 = (paintFirst_impl (javaCast object_ :: AllBinaryGameLayer)) a1

paintFirst_impl :: AllBinaryGameLayer -> Graphics.Graphics -> IO (())
paintFirst_impl this graphics = do
        Control.Monad.void (Paintable.paint ((jget (this).paintable)) graphics)
        pure ()


paintDebug :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintDebug object_ a1 = jmethod object_ "paintDebug" (\() -> (paintDebug_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

paintDebug_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintDebug_super object_ a1 = (paintDebug_impl (javaCast object_ :: AllBinaryGameLayer)) a1

paintDebug_impl :: AllBinaryGameLayer -> Graphics.Graphics -> IO (())
paintDebug_impl this graphics = do
        viewPosition <- (AllBinaryLayer.getViewPosition this)
        viewX <- (ViewPositionBase.getX viewPosition)
        viewY <- (ViewPositionBase.getY viewPosition)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jget (this).rED))
        Control.Monad.void (Graphics.drawRect graphics viewX viewY (jio (AllBinaryLayer.getWidth this)) (jio (AllBinaryLayer.getHeight this)))
        pure ()


setWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: AllBinaryGameLayer)) a1

setWidth_impl :: AllBinaryGameLayer -> Int -> IO (())
setWidth_impl this width = do
        Control.Monad.void (AllBinaryLayer.setLayerWidth_super this.base width)
        Control.Monad.void (AllBinaryLayer.setHalfWidth this (width `Data.Bits.shiftR` 1))
        pure ()


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: AllBinaryGameLayer))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: AllBinaryGameLayer)) a1

setHeight_impl :: AllBinaryGameLayer -> Int -> IO (())
setHeight_impl this height = do
        Control.Monad.void (AllBinaryLayer.setLayerHeight_super this.base height)
        Control.Monad.void (AllBinaryLayer.setHalfHeight this (height `Data.Bits.shiftR` 1))
        pure ()


