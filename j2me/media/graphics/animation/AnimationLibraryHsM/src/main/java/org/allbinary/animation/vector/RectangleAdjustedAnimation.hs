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
-- package org.allbinary.animation.vector
module RectangleAdjustedAnimation (module RectangleAdjustedAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, setWidth, setWidth_super, setWidth_impl, setHeight, setHeight_super, setHeight_impl, setOffsetX, setOffsetX_super, setOffsetX_impl, setOffsetY, setOffsetY_super, setOffsetY_impl, width, height, offsetX, offsetY)
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
import qualified BasicColorSetUtil -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ColorCompositeInterface -- org.allbinary.graphics.color.ColorCompositeInterface

-- implements ColorCompositeInterface
data RectangleAdjustedAnimation = RectangleAdjustedAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , width :: IORef (Int)
    , height :: IORef (Int)
    , offsetX :: IORef (Int)
    , offsetY :: IORef (Int)
    }

instance JavaNull RectangleAdjustedAnimation where
    javaNull = javaNullRecord "RectangleAdjustedAnimation"

instance JavaEquals RectangleAdjustedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RectangleAdjustedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass RectangleAdjustedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RectangleAdjustedAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    width <- newIORef 0
    height <- newIORef 0
    offsetX <- newIORef 0
    offsetY <- newIORef 0
    let this = RectangleAdjustedAnimation header_ base width height offsetX offsetY
    jregisterLevel header_ this
    ColorCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    jregisterMethod header_ "setOffsetX" (\() -> setOffsetX_impl this)
    jregisterMethod header_ "setOffsetY" (\() -> setOffsetY_impl this)
    pure this

initFields_ :: RectangleAdjustedAnimation -> IO ()
initFields_ this = do
    jset this.width (0)
    jset this.height (0)
    jset this.offsetX (0)
    jset this.offsetY (0)
    pure ()

new_5 :: Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO RectangleAdjustedAnimation
new_5 width height offsetX offsetY basicColor = do
    this <- newRecord_
    init_5 this width height offsetX offsetY basicColor
    pure this

init_5 :: RectangleAdjustedAnimation -> Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_5 this width height offsetX offsetY basicColor = do
        Animation.init_ this.base
        initFields_ this
        jset (this).width (width)
        jset (this).height (height)
        jset (this).offsetX (offsetX)
        jset (this).offsetY (offsetY)
        Control.Monad.void (Animation.setBasicColorP this basicColor)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: RectangleAdjustedAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: RectangleAdjustedAnimation))

nextFrame_impl :: RectangleAdjustedAnimation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: RectangleAdjustedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: RectangleAdjustedAnimation)) a1 a2 a3

paintXY_impl :: RectangleAdjustedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.basicSetColorUtil)) graphics (jio (Animation.getBasicColorP this)) (jio (Animation.getColor this)))
        Control.Monad.void (Graphics.drawRect graphics (x + (jget (this).offsetX)) (y + (jget (this).offsetY)) (jget (this).width) (jget (this).height))
        pure ()


setWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: RectangleAdjustedAnimation))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: RectangleAdjustedAnimation)) a1

setWidth_impl :: RectangleAdjustedAnimation -> Int -> IO (())
setWidth_impl this width = do
        jset (this).width (width)
        pure ()


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: RectangleAdjustedAnimation))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: RectangleAdjustedAnimation)) a1

setHeight_impl :: RectangleAdjustedAnimation -> Int -> IO (())
setHeight_impl this height = do
        jset (this).height (height)
        pure ()


setOffsetX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOffsetX object_ a1 = jmethod object_ "setOffsetX" (\() -> (setOffsetX_impl (javaCast object_ :: RectangleAdjustedAnimation))) () a1

setOffsetX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOffsetX_super object_ a1 = (setOffsetX_impl (javaCast object_ :: RectangleAdjustedAnimation)) a1

setOffsetX_impl :: RectangleAdjustedAnimation -> Int -> IO (())
setOffsetX_impl this offsetX = do
        jset (this).offsetX (offsetX)
        pure ()


setOffsetY :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOffsetY object_ a1 = jmethod object_ "setOffsetY" (\() -> (setOffsetY_impl (javaCast object_ :: RectangleAdjustedAnimation))) () a1

setOffsetY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOffsetY_super object_ a1 = (setOffsetY_impl (javaCast object_ :: RectangleAdjustedAnimation)) a1

setOffsetY_impl :: RectangleAdjustedAnimation -> Int -> IO (())
setOffsetY_impl this offsetY = do
        jset (this).offsetY (offsetY)
        pure ()


