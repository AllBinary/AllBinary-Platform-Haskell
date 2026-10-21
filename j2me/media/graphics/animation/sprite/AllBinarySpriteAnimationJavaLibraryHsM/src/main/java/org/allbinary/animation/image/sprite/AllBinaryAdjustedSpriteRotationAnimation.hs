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
module AllBinaryAdjustedSpriteRotationAnimation (module AllBinaryAdjustedSpriteRotationAnimation, module AllBinarySpriteRotationAnimation) where

import AllBinarySpriteRotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paintXY, paintXY_super, paintXY_impl, dx, dy)
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
import qualified AllBinarySpriteRotationAnimation

data AllBinaryAdjustedSpriteRotationAnimation = AllBinaryAdjustedSpriteRotationAnimation
    { header_ :: JavaHeader
    , base :: AllBinarySpriteRotationAnimation.AllBinarySpriteRotationAnimation
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    }

instance JavaNull AllBinaryAdjustedSpriteRotationAnimation where
    javaNull = javaNullRecord "AllBinaryAdjustedSpriteRotationAnimation"

instance JavaEquals AllBinaryAdjustedSpriteRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryAdjustedSpriteRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryAdjustedSpriteRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryAdjustedSpriteRotationAnimation
newRecord_ = do
    base <- AllBinarySpriteRotationAnimation.newRecord_
    let header_ = base.header_
    dx <- newIORef 0
    dy <- newIORef 0
    let this = AllBinaryAdjustedSpriteRotationAnimation header_ base dx dy
    jregisterLevel header_ this
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: AllBinaryAdjustedSpriteRotationAnimation -> IO ()
initFields_ this = do
    jset this.dx (0)
    jset this.dy (0)
    pure ()

new_5 :: Sprite.Sprite -> Image.Image -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO AllBinaryAdjustedSpriteRotationAnimation
new_5 sprite image dx dy animationBehavior = do
    this <- newRecord_
    init_5 this sprite image dx dy animationBehavior
    pure this

init_5 :: AllBinaryAdjustedSpriteRotationAnimation -> Sprite.Sprite -> Image.Image -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_5 this sprite image dx dy animationBehavior = do
        AllBinarySpriteRotationAnimation.init_3 this.base (sprite) (image) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).dx (dx)
        jset (this).dy (dy)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: AllBinaryAdjustedSpriteRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: AllBinaryAdjustedSpriteRotationAnimation)) a1 a2 a3

paintXY_impl :: AllBinaryAdjustedSpriteRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this g x y = do
        Control.Monad.void (Sprite.setPosition ((jget (this).base.base.sprite)) (x + (jget (this).dx)) (y + (jget (this).dy)))
        Control.Monad.void (AllBinarySpriteRotationAnimation.paint this g)
        pure ()


