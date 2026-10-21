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
-- package org.allbinary.game.ag.ai
module BoundBounceAI (module BoundBounceAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, processAI, processAI_super, processAI_impl, currentRelativeAngle, layerBounds, boundsVisitorInterface)
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
import qualified BoundsVisitorInterface -- org.allbinary.bounds.BoundsVisitorInterface
import qualified LayerBounds -- org.allbinary.bounds.LayerBounds
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

data BoundBounceAI = BoundBounceAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , currentRelativeAngle :: IORef (Int)
    , layerBounds :: IORef (LayerBounds.LayerBounds)
    , boundsVisitorInterface :: IORef (BoundsVisitorInterface.BoundsVisitorInterface)
    }

instance JavaNull BoundBounceAI where
    javaNull = javaNullRecord "BoundBounceAI"

instance JavaEquals BoundBounceAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BoundBounceAI where
    (==) = jrecordEquals

instance JavaObjectClass BoundBounceAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BoundBounceAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    currentRelativeAngle <- newIORef 0
    layerBounds <- newIORef javaNull
    boundsVisitorInterface <- newIORef javaNull
    let this = BoundBounceAI header_ base currentRelativeAngle layerBounds boundsVisitorInterface
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    pure this

initFields_ :: BoundBounceAI -> IO ()
initFields_ this = do
    jset this.currentRelativeAngle (0)
    jset this.layerBounds (javaNull)
    jset this.boundsVisitorInterface (javaNull)
    pure ()

new_4 :: AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> LayerBounds.LayerBounds -> BoundsVisitorInterface.BoundsVisitorInterface -> IO BoundBounceAI
new_4 ownerLayerInterface gameInput layerBounds boundsVisitorInterface = do
    this <- newRecord_
    init_4 this ownerLayerInterface gameInput layerBounds boundsVisitorInterface
    pure this

init_4 :: BoundBounceAI -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> LayerBounds.LayerBounds -> BoundsVisitorInterface.BoundsVisitorInterface -> IO ()
init_4 this ownerLayerInterface gameInput layerBounds boundsVisitorInterface = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).layerBounds (layerBounds)
        jset (this).boundsVisitorInterface (boundsVisitorInterface)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: BoundBounceAI))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: BoundBounceAI)) a1

paint_impl :: BoundBounceAI -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        rectange <- (LayerBounds.getRectangleP ((jget (this).layerBounds)))
        Control.Monad.void (Graphics.drawRect graphics (jio (GPoint.getX ((jio (Rectangle.getPoint rectange))))) (jio (GPoint.getY ((jio (Rectangle.getPoint rectange))))) (jio (Rectangle.getWidth rectange)) (jio (Rectangle.getHeight rectange)))
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: BoundBounceAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: BoundBounceAI)) a1

processAI_impl :: BoundBounceAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        Control.Monad.void (LayerBounds.visit ((jget (this).layerBounds)) (jget (this).boundsVisitorInterface))
        pure ()


