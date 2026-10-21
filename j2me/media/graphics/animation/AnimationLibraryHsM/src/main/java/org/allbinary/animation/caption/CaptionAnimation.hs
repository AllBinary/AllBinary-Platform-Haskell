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
-- package org.allbinary.animation.caption
module CaptionAnimation (module CaptionAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy)
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
import qualified Animation -- org.allbinary.animation.Animation

data CaptionAnimation = CaptionAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , animationInterface :: IORef (Animation.Animation)
    , overlayAnimationInterface :: IORef (Animation.Animation)
    , captionDx :: IORef (Int)
    , captionDy :: IORef (Int)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    }

instance JavaNull CaptionAnimation where
    javaNull = javaNullRecord "CaptionAnimation"

instance JavaEquals CaptionAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CaptionAnimation where
    (==) = jrecordEquals

instance JavaObjectClass CaptionAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CaptionAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    animationInterface <- newIORef javaNull
    overlayAnimationInterface <- newIORef javaNull
    captionDx <- newIORef 0
    captionDy <- newIORef 0
    dx <- newIORef 0
    dy <- newIORef 0
    let this = CaptionAnimation header_ base animationInterface overlayAnimationInterface captionDx captionDy dx dy
    jregisterLevel header_ this
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    pure this

initFields_ :: CaptionAnimation -> IO ()
initFields_ this = do
    jset this.animationInterface (javaNull)
    jset this.overlayAnimationInterface (javaNull)
    jset this.captionDx (0)
    jset this.captionDy (0)
    jset this.dx (0)
    jset this.dy (0)
    pure ()

new_6 :: Animation.Animation -> Animation.Animation -> Int -> Int -> Int -> Int -> IO CaptionAnimation
new_6 animationInterface overlayAnimationInterface captionDx captionDy dx dy = do
    this <- newRecord_
    init_6 this animationInterface overlayAnimationInterface captionDx captionDy dx dy
    pure this

init_6 :: CaptionAnimation -> Animation.Animation -> Animation.Animation -> Int -> Int -> Int -> Int -> IO ()
init_6 this animationInterface overlayAnimationInterface captionDx captionDy dx dy = do
        Animation.init_ this.base
        initFields_ this
        jset (this).animationInterface (animationInterface)
        jset (this).overlayAnimationInterface (overlayAnimationInterface)
        jset (this).captionDx (captionDx)
        jset (this).captionDy (captionDy)
        jset (this).dx (dx)
        jset (this).dy (dy)
        pure ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: CaptionAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: CaptionAnimation))

nextFrame_impl :: CaptionAnimation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CaptionAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CaptionAnimation)) a1 a2 a3

paintXY_impl :: CaptionAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics (x + (jget (this).captionDx)) (y + (jget (this).captionDy)))
        Control.Monad.void (Animation.paintXY ((jget (this).overlayAnimationInterface)) graphics ((x + (jget (this).captionDx)) + (jget (this).dx)) ((y + (jget (this).captionDy)) + (jget (this).dy)))
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: CaptionAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: CaptionAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: CaptionAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        Control.Monad.void (Animation.paintThreedXYZ ((jget (this).animationInterface)) graphics (x + (jget (this).captionDx)) (y + (jget (this).captionDy)) z)
        Control.Monad.void (Animation.paintThreedXYZ ((jget (this).overlayAnimationInterface)) graphics ((x + (jget (this).captionDx)) + (jget (this).dx)) ((y + (jget (this).captionDy)) + (jget (this).dy)) z)
        pure ()


