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
-- package org.allbinary.animation.image.sprite
module AdjustedSpriteIndexedAnimation (module AdjustedSpriteIndexedAnimation, module SpriteIndexedAnimation) where

import SpriteIndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paintFrame, paintFrame_super, paintFrame_impl, paintXY, paintXY_super, paintXY_impl, paint, paint_super, paint_impl, dx, dy)
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
import qualified Image -- javax.microedition.lcdui.Image
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorUtil -- org.allbinary.graphics.color.BasicColorUtil
import qualified SpriteIndexedAnimation

data AdjustedSpriteIndexedAnimation = AdjustedSpriteIndexedAnimation
    { header_ :: JavaHeader
    , base :: SpriteIndexedAnimation.SpriteIndexedAnimation
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    }

instance JavaNull AdjustedSpriteIndexedAnimation where
    javaNull = javaNullRecord "AdjustedSpriteIndexedAnimation"

instance JavaEquals AdjustedSpriteIndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdjustedSpriteIndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AdjustedSpriteIndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdjustedSpriteIndexedAnimation
newRecord_ = do
    base <- SpriteIndexedAnimation.newRecord_
    let header_ = base.header_
    dx <- newIORef 0
    dy <- newIORef 0
    let this = AdjustedSpriteIndexedAnimation header_ base dx dy
    jregisterLevel header_ this
    jregisterMethod header_ "paintFrame" (\() -> paintFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: AdjustedSpriteIndexedAnimation -> IO ()
initFields_ this = do
    jset this.dx (0)
    jset this.dy (0)
    pure ()

new_6 :: Sprite.Sprite -> Image.Image -> JavaArray (BasicColor.BasicColor) -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO AdjustedSpriteIndexedAnimation
new_6 sprite image basicColorArray dx dy animationBehavior = do
    this <- newRecord_
    init_6 this sprite image basicColorArray dx dy animationBehavior
    pure this

init_6 :: AdjustedSpriteIndexedAnimation -> Sprite.Sprite -> Image.Image -> JavaArray (BasicColor.BasicColor) -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_6 this sprite image basicColorArray dx dy animationBehavior = do
        SpriteIndexedAnimation.init_4 this.base (sprite) (image) (basicColorArray) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).dx (dx)
        jset (this).dy (dy)
        pure ()


paintFrame :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame object_ a1 a2 a3 a4 = jmethod object_ "paintFrame" (\() -> (paintFrame_impl (javaCast object_ :: AdjustedSpriteIndexedAnimation))) () a1 a2 a3 a4

paintFrame_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame_super object_ a1 a2 a3 a4 = (paintFrame_impl (javaCast object_ :: AdjustedSpriteIndexedAnimation)) a1 a2 a3 a4

paintFrame_impl :: AdjustedSpriteIndexedAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame_impl this graphics frame x y = do
        Control.Monad.void (SpriteIndexedAnimation.setFrame this frame)
        Control.Monad.void (Sprite.setPosition ((jget (this).base.sprite)) (x + (jget (this).dx)) (y + (jget (this).dy)))
        Control.Monad.void (SpriteIndexedAnimation.paint_super this.base graphics)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: AdjustedSpriteIndexedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: AdjustedSpriteIndexedAnimation)) a1 a2 a3

paintXY_impl :: AdjustedSpriteIndexedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this g x y = do
        Control.Monad.void (Sprite.setPosition ((jget (this).base.sprite)) (x + (jget (this).dx)) (y + (jget (this).dy)))
        Control.Monad.void (SpriteIndexedAnimation.paint_super this.base g)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AdjustedSpriteIndexedAnimation))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AdjustedSpriteIndexedAnimation)) a1

paint_impl :: AdjustedSpriteIndexedAnimation -> Graphics.Graphics -> IO (())
paint_impl this g = do
        Control.Monad.void (Sprite.setPosition ((jget (this).base.sprite)) (jget (this).dx) (jget (this).dy))
        Control.Monad.void (SpriteIndexedAnimation.paint_super this.base g)
        pure ()


