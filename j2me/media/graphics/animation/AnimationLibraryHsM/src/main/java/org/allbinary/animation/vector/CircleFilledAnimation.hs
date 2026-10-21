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
module CircleFilledAnimation (module CircleFilledAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, width, height)
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
data CircleFilledAnimation = CircleFilledAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , width :: IORef (Int)
    , height :: IORef (Int)
    }

instance JavaNull CircleFilledAnimation where
    javaNull = javaNullRecord "CircleFilledAnimation"

instance JavaEquals CircleFilledAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CircleFilledAnimation where
    (==) = jrecordEquals

instance JavaObjectClass CircleFilledAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CircleFilledAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    width <- newIORef 0
    height <- newIORef 0
    let this = CircleFilledAnimation header_ base width height
    jregisterLevel header_ this
    ColorCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: CircleFilledAnimation -> IO ()
initFields_ this = do
    jset this.width (0)
    jset this.height (0)
    pure ()

new_3 :: Int -> Int -> BasicColor.BasicColor -> IO CircleFilledAnimation
new_3 width height basicColor = do
    this <- newRecord_
    init_3 this width height basicColor
    pure this

init_3 :: CircleFilledAnimation -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_3 this width height basicColor = do
        Animation.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).width (width)
        jset (this).height (height)
        Control.Monad.void (Animation.setBasicColorP this basicColor)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: CircleFilledAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: CircleFilledAnimation))

nextFrame_impl :: CircleFilledAnimation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CircleFilledAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CircleFilledAnimation)) a1 a2 a3

paintXY_impl :: CircleFilledAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.basicSetColorUtil)) graphics (jio (Animation.getBasicColorP this)) (jio (Animation.getColor this)))
        Control.Monad.void (Graphics.fillRect graphics x y (jget (this).width) (jget (this).height))
        pure ()


