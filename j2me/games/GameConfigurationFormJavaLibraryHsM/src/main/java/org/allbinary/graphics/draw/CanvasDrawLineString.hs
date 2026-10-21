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
-- package org.allbinary.graphics.draw
module CanvasDrawLineString where

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
import qualified DrawStringUtil -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor

-- implements UpdateMyFontInterface
data CanvasDrawLineString = CanvasDrawLineString
    { header_ :: JavaHeader
    , drawStringUtil :: IORef (DrawStringUtil.DrawStringUtil)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , x :: IORef (Int)
    , y :: IORef (Int)
    , fontHeight :: IORef (Int)
    }

instance JavaNull CanvasDrawLineString where
    javaNull = javaNullRecord "CanvasDrawLineString"

instance JavaEquals CanvasDrawLineString where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CanvasDrawLineString where
    (==) = jrecordEquals

instance JavaObjectClass CanvasDrawLineString where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_CANVAS_DRAW_LINE_STRING #-}
nULL_CANVAS_DRAW_LINE_STRING = unsafePerformIO ((new_2 0 0))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CanvasDrawLineString
newRecord_ = do
    header_ <- newJavaHeader
    drawStringUtil <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    x <- newIORef 0
    y <- newIORef 0
    fontHeight <- newIORef 0
    let this = CanvasDrawLineString header_ drawStringUtil myFontProcessor x y fontHeight
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: CanvasDrawLineString -> IO ()
initFields_ this = do
    jset this.drawStringUtil =<< (DrawStringUtil.getInstance)
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.x (0)
    jset this.y (0)
    jset this.fontHeight (0)
    pure ()

new_2 :: Int -> Int -> IO CanvasDrawLineString
new_2 x y = do
    this <- newRecord_
    init_2 this x y
    pure this

init_2 :: CanvasDrawLineString -> Int -> Int -> IO ()
init_2 this x y = do
        initFields_ this
        jset (this).x (x)
        jset (this).y (y)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: CanvasDrawLineString))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: CanvasDrawLineString)) a1

updateMeasurement_impl :: CanvasDrawLineString -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> Int -> IO (())
paint object_ a1 a2 a3 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: CanvasDrawLineString))) () a1 a2 a3

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> Int -> IO (())
paint_super object_ a1 a2 a3 = (paint_impl (javaCast object_ :: CanvasDrawLineString)) a1 a2 a3

paint_impl :: CanvasDrawLineString -> Graphics.Graphics -> String -> Int -> IO (())
paint_impl this graphics string line = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (DrawStringUtil.drawCenterString ((jget (this).drawStringUtil)) graphics string 0 (Prelude.length string) (jget (this).x) ((jget (this).y) + ((line * (jget (this).fontHeight)))))
        pure ()


