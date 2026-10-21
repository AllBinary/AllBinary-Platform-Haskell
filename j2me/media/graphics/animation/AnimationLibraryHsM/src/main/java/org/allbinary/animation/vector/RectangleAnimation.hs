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
module RectangleAnimation (module RectangleAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, setWidth, setWidth_super, setWidth_impl, setHeight, setHeight_super, setHeight_impl, width, height)
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
data RectangleAnimation = RectangleAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , width :: IORef (Int)
    , height :: IORef (Int)
    }

instance JavaNull RectangleAnimation where
    javaNull = javaNullRecord "RectangleAnimation"

instance JavaEquals RectangleAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RectangleAnimation where
    (==) = jrecordEquals

instance JavaObjectClass RectangleAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RectangleAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    width <- newIORef 0
    height <- newIORef 0
    let this = RectangleAnimation header_ base width height
    jregisterLevel header_ this
    ColorCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    pure this

initFields_ :: RectangleAnimation -> IO ()
initFields_ this = do
    jset this.width (0)
    jset this.height (0)
    pure ()

new_3 :: Int -> Int -> BasicColor.BasicColor -> IO RectangleAnimation
new_3 width height basicColor = do
    this <- newRecord_
    init_3 this width height basicColor
    pure this

init_3 :: RectangleAnimation -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_3 this width height basicColor = do
        Animation.init_ this.base
        initFields_ this
        jset (this).width (width)
        jset (this).height (height)
        Control.Monad.void (Animation.setBasicColorP this basicColor)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: RectangleAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: RectangleAnimation))

nextFrame_impl :: RectangleAnimation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: RectangleAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: RectangleAnimation)) a1 a2 a3

paintXY_impl :: RectangleAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.basicSetColorUtil)) graphics (jio (Animation.getBasicColorP this)) (jio (Animation.getColor this)))
        Control.Monad.void (Graphics.drawRect graphics x y (jget (this).width) (jget (this).height))
        pure ()


setWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: RectangleAnimation))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: RectangleAnimation)) a1

setWidth_impl :: RectangleAnimation -> Int -> IO (())
setWidth_impl this width = do
        jset (this).width (width)
        pure ()


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: RectangleAnimation))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: RectangleAnimation)) a1

setHeight_impl :: RectangleAnimation -> Int -> IO (())
setHeight_impl this height = do
        jset (this).height (height)
        pure ()


