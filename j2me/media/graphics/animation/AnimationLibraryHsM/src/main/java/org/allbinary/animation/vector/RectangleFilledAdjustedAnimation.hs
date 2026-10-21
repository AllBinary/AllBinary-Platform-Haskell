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
module RectangleFilledAdjustedAnimation (module RectangleFilledAdjustedAnimation, module RectangleFilledAnimation) where

import RectangleFilledAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, setOffsetX, setOffsetX_super, setOffsetX_impl, setOffsetY, setOffsetY_super, setOffsetY_impl, offsetX, offsetY)
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
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ColorCompositeInterface -- org.allbinary.graphics.color.ColorCompositeInterface
import qualified RectangleFilledAnimation

-- implements ColorCompositeInterface
data RectangleFilledAdjustedAnimation = RectangleFilledAdjustedAnimation
    { header_ :: JavaHeader
    , base :: RectangleFilledAnimation.RectangleFilledAnimation
    , offsetX :: IORef (Int)
    , offsetY :: IORef (Int)
    }

instance JavaNull RectangleFilledAdjustedAnimation where
    javaNull = javaNullRecord "RectangleFilledAdjustedAnimation"

instance JavaEquals RectangleFilledAdjustedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RectangleFilledAdjustedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass RectangleFilledAdjustedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RectangleFilledAdjustedAnimation
newRecord_ = do
    base <- RectangleFilledAnimation.newRecord_
    let header_ = base.header_
    offsetX <- newIORef 0
    offsetY <- newIORef 0
    let this = RectangleFilledAdjustedAnimation header_ base offsetX offsetY
    jregisterLevel header_ this
    ColorCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "setOffsetX" (\() -> setOffsetX_impl this)
    jregisterMethod header_ "setOffsetY" (\() -> setOffsetY_impl this)
    pure this

initFields_ :: RectangleFilledAdjustedAnimation -> IO ()
initFields_ this = do
    jset this.offsetX (0)
    jset this.offsetY (0)
    pure ()

new_5 :: Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO RectangleFilledAdjustedAnimation
new_5 width height offsetX offsetY basicColor = do
    this <- newRecord_
    init_5 this width height offsetX offsetY basicColor
    pure this

init_5 :: RectangleFilledAdjustedAnimation -> Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_5 this width height offsetX offsetY basicColor = do
        RectangleFilledAnimation.init_3 this.base (width) (height) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).offsetX (offsetX)
        jset (this).offsetY (offsetY)
        Control.Monad.void (RectangleFilledAnimation.setBasicColorP this basicColor)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: RectangleFilledAdjustedAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: RectangleFilledAdjustedAnimation))

nextFrame_impl :: RectangleFilledAdjustedAnimation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: RectangleFilledAdjustedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: RectangleFilledAdjustedAnimation)) a1 a2 a3

paintXY_impl :: RectangleFilledAdjustedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.base.basicSetColorUtil)) graphics (jio (RectangleFilledAnimation.getBasicColorP this)) (jio (RectangleFilledAnimation.getColor this)))
        Control.Monad.void (RectangleFilledAnimation.paintXY_super this.base graphics (x + (jget (this).offsetX)) (y + (jget (this).offsetY)))
        pure ()


setOffsetX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOffsetX object_ a1 = jmethod object_ "setOffsetX" (\() -> (setOffsetX_impl (javaCast object_ :: RectangleFilledAdjustedAnimation))) () a1

setOffsetX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOffsetX_super object_ a1 = (setOffsetX_impl (javaCast object_ :: RectangleFilledAdjustedAnimation)) a1

setOffsetX_impl :: RectangleFilledAdjustedAnimation -> Int -> IO (())
setOffsetX_impl this offsetX = do
        jset (this).offsetX (offsetX)
        pure ()


setOffsetY :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOffsetY object_ a1 = jmethod object_ "setOffsetY" (\() -> (setOffsetY_impl (javaCast object_ :: RectangleFilledAdjustedAnimation))) () a1

setOffsetY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOffsetY_super object_ a1 = (setOffsetY_impl (javaCast object_ :: RectangleFilledAdjustedAnimation)) a1

setOffsetY_impl :: RectangleFilledAdjustedAnimation -> Int -> IO (())
setOffsetY_impl this offsetY = do
        jset (this).offsetY (offsetY)
        pure ()


