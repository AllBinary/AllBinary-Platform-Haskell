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
module GameCanvasPaintHelper (module GameCanvasPaintHelper, module ProcessPaintable) where

import ProcessPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, paint, paint_super, paint_impl, gameCanvas)
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
import qualified AllBinaryGameCanvas -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified ProcessPaintable -- org.allbinary.graphics.paint.ProcessPaintable

data GameCanvasPaintHelper = GameCanvasPaintHelper
    { header_ :: JavaHeader
    , base :: ProcessPaintable.ProcessPaintable
    , gameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    }

instance JavaNull GameCanvasPaintHelper where
    javaNull = javaNullRecord "GameCanvasPaintHelper"

instance JavaEquals GameCanvasPaintHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameCanvasPaintHelper where
    (==) = jrecordEquals

instance JavaObjectClass GameCanvasPaintHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameCanvasPaintHelper
newRecord_ = do
    base <- ProcessPaintable.newRecord_
    let header_ = base.header_
    gameCanvas <- newIORef javaNull
    let this = GameCanvasPaintHelper header_ base gameCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: GameCanvasPaintHelper -> IO ()
initFields_ this = do
    jset this.gameCanvas (javaNull)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO GameCanvasPaintHelper
new_1 gameCanvas = do
    this <- newRecord_
    init_1 this gameCanvas
    pure this

init_1 :: GameCanvasPaintHelper -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this gameCanvas = do
        ProcessPaintable.init_ this.base
        initFields_ this
        jset (this).gameCanvas (gameCanvas)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: GameCanvasPaintHelper))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: GameCanvasPaintHelper))

process_impl :: GameCanvasPaintHelper -> IO (())
process_impl this = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GameCanvasPaintHelper))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: GameCanvasPaintHelper)) a1

paint_impl :: GameCanvasPaintHelper -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (AllBinaryGameCanvas.draw ((jget (this).gameCanvas)) graphics)
        pure ()


