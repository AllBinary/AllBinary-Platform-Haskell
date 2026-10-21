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
-- package org.allbinary.animation.image
module RightToLeftImageAnimation (module RightToLeftImageAnimation, module ImageSegmentAnimation) where

import ImageSegmentAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, setFrame, setFrame_super, setFrame_impl, update, update_super, update_impl, paintXY, paintXY_super, paintXY_impl, startWidth, currentWidth, anchor)
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
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified ImageSegmentAnimation

data RightToLeftImageAnimation = RightToLeftImageAnimation
    { header_ :: JavaHeader
    , base :: ImageSegmentAnimation.ImageSegmentAnimation
    , startWidth :: IORef (Int)
    , currentWidth :: IORef (Int)
    , anchor :: IORef (Int)
    }

instance JavaNull RightToLeftImageAnimation where
    javaNull = javaNullRecord "RightToLeftImageAnimation"

instance JavaEquals RightToLeftImageAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RightToLeftImageAnimation where
    (==) = jrecordEquals

instance JavaObjectClass RightToLeftImageAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RightToLeftImageAnimation
newRecord_ = do
    base <- ImageSegmentAnimation.newRecord_
    let header_ = base.header_
    startWidth <- newIORef 0
    currentWidth <- newIORef 0
    anchor <- newIORef 0
    let this = RightToLeftImageAnimation header_ base startWidth currentWidth anchor
    jregisterLevel header_ this
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: RightToLeftImageAnimation -> IO ()
initFields_ this = do
    jset this.startWidth (0)
    jset this.currentWidth (0)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_2 :: Image.Image -> AnimationBehavior.AnimationBehavior -> IO RightToLeftImageAnimation
new_2 image animationBehavior = do
    this <- newRecord_
    init_2 this image animationBehavior
    pure this

init_2 :: RightToLeftImageAnimation -> Image.Image -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this image animationBehavior = do
        ImageSegmentAnimation.init_3 this.base (image) (jio (PrimitiveIntUtil.getArrayInstance)) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (RightToLeftImageAnimation.setFrame this ((jio (ImageSegmentAnimation.getSize this)) - 1))
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: RightToLeftImageAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: RightToLeftImageAnimation))

nextFrame_impl :: RightToLeftImageAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (ImageSegmentAnimation.previousFrame_super this.base)
        Control.Monad.void (RightToLeftImageAnimation.update this)
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: RightToLeftImageAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: RightToLeftImageAnimation))

previousFrame_impl :: RightToLeftImageAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (ImageSegmentAnimation.nextFrame_super this.base)
        Control.Monad.void (RightToLeftImageAnimation.update this)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: RightToLeftImageAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: RightToLeftImageAnimation)) a1

setFrame_impl :: RightToLeftImageAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (ImageSegmentAnimation.setFrame_super this.base index)
        Control.Monad.void (RightToLeftImageAnimation.update this)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: RightToLeftImageAnimation))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: RightToLeftImageAnimation))

update_impl :: RightToLeftImageAnimation -> IO (())
update_impl this = do
        jset (this).startWidth ((((jio (ImageSegmentAnimation.getDrawWidth this)) * (jio (ImageSegmentAnimation.getFrame this))) / (jio (ImageSegmentAnimation.getSize this))))
        jset (this).currentWidth (((jio (ImageSegmentAnimation.getDrawWidth this)) - (jget (this).startWidth)))
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: RightToLeftImageAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: RightToLeftImageAnimation)) a1 a2 a3

paintXY_impl :: RightToLeftImageAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Graphics.drawRegion graphics (jio (ImageSegmentAnimation.getImage this)) (jget (this).startWidth) (jio (ImageSegmentAnimation.getStartY this)) (jget (this).currentWidth) (jio (ImageSegmentAnimation.getDrawHeight this)) (Sprite.tRANS_NONE) (x + (jget (this).startWidth)) y (jget (this).anchor))
        pure ()


