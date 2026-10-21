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
-- package org.allbinary.game.displayable.canvas
module BasicPaintablesCanvas (module BasicPaintablesCanvas, module GameCommandCanvas) where

import GameCommandCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, paintableArray, colorFillPaintable)
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
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified ColorFillBasePaintable -- org.allbinary.game.paint.ColorFillBasePaintable
import qualified ColorFillPaintableFactory -- org.allbinary.game.paint.ColorFillPaintableFactory
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified GameCommandCanvas

data BasicPaintablesCanvas = BasicPaintablesCanvas
    { header_ :: JavaHeader
    , base :: GameCommandCanvas.GameCommandCanvas
    , paintableArray :: IORef (JavaArray (Paintable.Paintable))
    , colorFillPaintable :: IORef (ColorFillBasePaintable.ColorFillBasePaintable)
    }

instance JavaNull BasicPaintablesCanvas where
    javaNull = javaNullRecord "BasicPaintablesCanvas"

instance JavaEquals BasicPaintablesCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicPaintablesCanvas where
    (==) = jrecordEquals

instance JavaObjectClass BasicPaintablesCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicPaintablesCanvas
newRecord_ = do
    base <- GameCommandCanvas.newRecord_
    let header_ = base.header_
    paintableArray <- newIORef javaNull
    colorFillPaintable <- newIORef javaNull
    let this = BasicPaintablesCanvas header_ base paintableArray colorFillPaintable
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: BasicPaintablesCanvas -> IO ()
initFields_ this = do
    jset this.paintableArray (javaNull)
    jset this.colorFillPaintable (javaNull)
    pure ()

new_4 :: CommandListener.CommandListener -> String -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> JavaArray (Paintable.Paintable) -> IO BasicPaintablesCanvas
new_4 cmdListener name allBinaryGameLayerManager paintableArray = do
    this <- newRecord_
    init_4 this cmdListener name allBinaryGameLayerManager paintableArray
    pure this

init_4 :: BasicPaintablesCanvas -> CommandListener.CommandListener -> String -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> JavaArray (Paintable.Paintable) -> IO ()
init_4 this cmdListener name allBinaryGameLayerManager paintableArray = do
        GameCommandCanvas.init_4 this.base (cmdListener) (name) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor allBinaryGameLayerManager)) (jio (AllBinaryGameLayerManager.getForegroundBasicColor allBinaryGameLayerManager))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).paintableArray (paintableArray)
        assignedValue <- (ColorFillPaintableFactory.getInstance ((jio (ColorFillPaintableFactory.getInstance))) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor allBinaryGameLayerManager)) False)
        jset (this).colorFillPaintable (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: BasicPaintablesCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: BasicPaintablesCanvas)) a1

paint_impl :: BasicPaintablesCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (ColorFillBasePaintable.paint ((jget (this).colorFillPaintable)) graphics)
        Control.Monad.void (Graphics.setColor graphics (jget (this).base.foregroundColor))
        forM_ [((jlength (jget (this).paintableArray)) - 1), ((jlength (jget (this).paintableArray)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (paint ((jindex ((jget (this).paintableArray)) (index))) graphics)
        Control.Monad.void (GameCommandCanvas.paint_super this.base graphics)
        pure ()


