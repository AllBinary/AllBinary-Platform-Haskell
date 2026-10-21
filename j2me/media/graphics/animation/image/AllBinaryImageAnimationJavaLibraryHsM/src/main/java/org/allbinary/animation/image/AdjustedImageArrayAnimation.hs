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
module AdjustedImageArrayAnimation (module AdjustedImageArrayAnimation, module ImageArrayAnimation) where

import ImageArrayAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, paintXY, paintXY_super, paintXY_impl, setDx, setDx_super, setDx_impl, getDx, getDx_super, getDx_impl, setDy, setDy_super, setDy_impl, getDy, getDy_super, getDy_impl, dx, dy)
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
import qualified ImageArrayAnimation

data AdjustedImageArrayAnimation = AdjustedImageArrayAnimation
    { header_ :: JavaHeader
    , base :: ImageArrayAnimation.ImageArrayAnimation
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    }

instance JavaNull AdjustedImageArrayAnimation where
    javaNull = javaNullRecord "AdjustedImageArrayAnimation"

instance JavaEquals AdjustedImageArrayAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdjustedImageArrayAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AdjustedImageArrayAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdjustedImageArrayAnimation
newRecord_ = do
    base <- ImageArrayAnimation.newRecord_
    let header_ = base.header_
    dx <- newIORef 0
    dy <- newIORef 0
    let this = AdjustedImageArrayAnimation header_ base dx dy
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "setDx" (\() -> setDx_impl this)
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    jregisterMethod header_ "setDy" (\() -> setDy_impl this)
    jregisterMethod header_ "getDy" (\() -> getDy_impl this)
    pure this

initFields_ :: AdjustedImageArrayAnimation -> IO ()
initFields_ this = do
    jset this.dx (0)
    jset this.dy (0)
    pure ()

new_4 :: JavaArray (Image.Image) -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO AdjustedImageArrayAnimation
new_4 imageArray dx dy animationBehavior = do
    this <- newRecord_
    init_4 this imageArray dx dy animationBehavior
    pure this

init_4 :: AdjustedImageArrayAnimation -> JavaArray (Image.Image) -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_4 this imageArray dx dy animationBehavior = do
        ImageArrayAnimation.init_2 this.base (imageArray) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AdjustedImageArrayAnimation.init this dx dy)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AdjustedImageArrayAnimation))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: AdjustedImageArrayAnimation)) a1 a2

init_impl :: AdjustedImageArrayAnimation -> Int -> Int -> IO (())
init_impl this dx dy = do
        Control.Monad.void (AdjustedImageArrayAnimation.setDx this dx)
        Control.Monad.void (AdjustedImageArrayAnimation.setDy this dy)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: AdjustedImageArrayAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: AdjustedImageArrayAnimation)) a1 a2 a3

paintXY_impl :: AdjustedImageArrayAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (ImageArrayAnimation.paintXY_super this.base graphics (x + (jget (this).dx)) (y + (jget (this).dy)))
        pure ()


setDx :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx object_ a1 = jmethod object_ "setDx" (\() -> (setDx_impl (javaCast object_ :: AdjustedImageArrayAnimation))) () a1

setDx_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx_super object_ a1 = (setDx_impl (javaCast object_ :: AdjustedImageArrayAnimation)) a1

setDx_impl :: AdjustedImageArrayAnimation -> Int -> IO (())
setDx_impl this dx = do
        jset (this).dx (dx)
        pure ()


getDx :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx object_ = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: AdjustedImageArrayAnimation))) ()

getDx_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx_super object_ = (getDx_impl (javaCast object_ :: AdjustedImageArrayAnimation))

getDx_impl :: AdjustedImageArrayAnimation -> IO (Int)
getDx_impl this = do
        pure ((jget (this).dx))


setDy :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy object_ a1 = jmethod object_ "setDy" (\() -> (setDy_impl (javaCast object_ :: AdjustedImageArrayAnimation))) () a1

setDy_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy_super object_ a1 = (setDy_impl (javaCast object_ :: AdjustedImageArrayAnimation)) a1

setDy_impl :: AdjustedImageArrayAnimation -> Int -> IO (())
setDy_impl this dy = do
        jset (this).dy (dy)
        pure ()


getDy :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy object_ = jmethod object_ "getDy" (\() -> (getDy_impl (javaCast object_ :: AdjustedImageArrayAnimation))) ()

getDy_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy_super object_ = (getDy_impl (javaCast object_ :: AdjustedImageArrayAnimation))

getDy_impl :: AdjustedImageArrayAnimation -> IO (Int)
getDy_impl this = do
        pure ((jget (this).dy))


