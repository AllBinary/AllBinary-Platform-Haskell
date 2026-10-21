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
module AdjustedRightToLeftImageAnimation (module AdjustedRightToLeftImageAnimation, module RightToLeftImageAnimation) where

import RightToLeftImageAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, paintXY, paintXY_super, paintXY_impl, dx, dy)
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
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified RightToLeftImageAnimation

data AdjustedRightToLeftImageAnimation = AdjustedRightToLeftImageAnimation
    { header_ :: JavaHeader
    , base :: RightToLeftImageAnimation.RightToLeftImageAnimation
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    }

instance JavaNull AdjustedRightToLeftImageAnimation where
    javaNull = javaNullRecord "AdjustedRightToLeftImageAnimation"

instance JavaEquals AdjustedRightToLeftImageAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdjustedRightToLeftImageAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AdjustedRightToLeftImageAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdjustedRightToLeftImageAnimation
newRecord_ = do
    base <- RightToLeftImageAnimation.newRecord_
    let header_ = base.header_
    dx <- newIORef 0
    dy <- newIORef 0
    let this = AdjustedRightToLeftImageAnimation header_ base dx dy
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: AdjustedRightToLeftImageAnimation -> IO ()
initFields_ this = do
    jset this.dx (0)
    jset this.dy (0)
    pure ()

new_4 :: Image.Image -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO AdjustedRightToLeftImageAnimation
new_4 image dx dy animationBehavior = do
    this <- newRecord_
    init_4 this image dx dy animationBehavior
    pure this

init_4 :: AdjustedRightToLeftImageAnimation -> Image.Image -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_4 this image dx dy animationBehavior = do
        RightToLeftImageAnimation.init_2 this.base (image) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AdjustedRightToLeftImageAnimation.init this dx dy)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AdjustedRightToLeftImageAnimation))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: AdjustedRightToLeftImageAnimation)) a1 a2

init_impl :: AdjustedRightToLeftImageAnimation -> Int -> Int -> IO (())
init_impl this dx dy = do
        jset (this).dx (dx)
        jset (this).dy (dy)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: AdjustedRightToLeftImageAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: AdjustedRightToLeftImageAnimation)) a1 a2 a3

paintXY_impl :: AdjustedRightToLeftImageAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (RightToLeftImageAnimation.paintXY_super this.base graphics (x + (jget (this).dx)) (y + (jget (this).dy)))
        pure ()


