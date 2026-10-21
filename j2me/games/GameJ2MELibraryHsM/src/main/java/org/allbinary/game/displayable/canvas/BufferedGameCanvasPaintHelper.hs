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
module BufferedGameCanvasPaintHelper (module BufferedGameCanvasPaintHelper, module ProcessPaintable) where

import ProcessPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, paint, paint_super, paint_impl, gameCanvas, mAX_IMAGES, offScreenImage, previousImage, circularIndexUtil, drawCircularIndexUtil, anchor)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified ProcessPaintable -- org.allbinary.graphics.paint.ProcessPaintable
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data BufferedGameCanvasPaintHelper = BufferedGameCanvasPaintHelper
    { header_ :: JavaHeader
    , base :: ProcessPaintable.ProcessPaintable
    , gameCanvas :: IORef (Canvas.Canvas)
    , offScreenImage :: IORef (JavaArray (Image.Image))
    , previousImage :: IORef (Image.Image)
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , drawCircularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , anchor :: IORef (Int)
    }

instance JavaNull BufferedGameCanvasPaintHelper where
    javaNull = javaNullRecord "BufferedGameCanvasPaintHelper"

instance JavaEquals BufferedGameCanvasPaintHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedGameCanvasPaintHelper where
    (==) = jrecordEquals

instance JavaObjectClass BufferedGameCanvasPaintHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAX_IMAGES = 4

newRecord_ :: IO BufferedGameCanvasPaintHelper
newRecord_ = do
    base <- ProcessPaintable.newRecord_
    let header_ = base.header_
    gameCanvas <- newIORef javaNull
    offScreenImage <- newIORef javaNull
    previousImage <- newIORef javaNull
    circularIndexUtil <- newIORef javaNull
    drawCircularIndexUtil <- newIORef javaNull
    anchor <- newIORef 0
    let this = BufferedGameCanvasPaintHelper header_ base gameCanvas offScreenImage previousImage circularIndexUtil drawCircularIndexUtil anchor
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: BufferedGameCanvasPaintHelper -> IO ()
initFields_ this = do
    jset this.gameCanvas ((javaCast NullCanvas.nULL_CANVAS :: Canvas.Canvas))
    jset this.offScreenImage ((jnewArray (BufferedGameCanvasPaintHelper.mAX_IMAGES) javaNull))
    jset this.previousImage (NullImage.nULL_IMAGE)
    jset this.circularIndexUtil =<< (CircularIndexUtil.createInstance (BufferedGameCanvasPaintHelper.mAX_IMAGES))
    jset this.drawCircularIndexUtil =<< (CircularIndexUtil.createInstanceAt (BufferedGameCanvasPaintHelper.mAX_IMAGES - 1) (BufferedGameCanvasPaintHelper.mAX_IMAGES))
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO BufferedGameCanvasPaintHelper
new_1 gameCanvas = do
    this <- newRecord_
    init_1 this gameCanvas
    pure this

init_1 :: BufferedGameCanvasPaintHelper -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this gameCanvas = do
        ProcessPaintable.init_ this.base
        initFields_ this
        javaThrow ((JavaException "Exception" "No Longer Used"))
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BufferedGameCanvasPaintHelper))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: BufferedGameCanvasPaintHelper))

process_impl :: BufferedGameCanvasPaintHelper -> IO (())
process_impl this = do
        let myCanvas = ((javaCast (jget (this).gameCanvas) :: MyCanvas.MyCanvas))
        Control.Monad.void (MyCanvas.draw myCanvas (jio (getGraphics ((jindex ((jget (this).offScreenImage)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil))))))))))
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        Control.Monad.void (CircularIndexUtil.next ((jget (this).drawCircularIndexUtil)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: BufferedGameCanvasPaintHelper))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: BufferedGameCanvasPaintHelper)) a1

paint_impl :: BufferedGameCanvasPaintHelper -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        jset (this).previousImage ((jindex ((jget (this).offScreenImage)) ((jio (CircularIndexUtil.getIndex ((jget (this).drawCircularIndexUtil)))))))
        Control.Monad.void (Graphics.drawImage graphics (jget (this).previousImage) 0 0 (jget (this).anchor))
        pure ()


