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
module AdjustedCircleAnimation (module AdjustedCircleAnimation, module CircleAnimation) where

import CircleAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createAnimation, createAnimation_super, createAnimation_impl, createW, createW_super, createW_impl, initXY, initXY_super, initXY_impl, init, init_super, init_impl, paintXY, paintXY_super, paintXY_impl, xAdjustment, yAdjustment)
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
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CircleAnimation

data AdjustedCircleAnimation = AdjustedCircleAnimation
    { header_ :: JavaHeader
    , base :: CircleAnimation.CircleAnimation
    , xAdjustment :: IORef (Int)
    , yAdjustment :: IORef (Int)
    }

instance JavaNull AdjustedCircleAnimation where
    javaNull = javaNullRecord "AdjustedCircleAnimation"

instance JavaEquals AdjustedCircleAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdjustedCircleAnimation where
    (==) = jrecordEquals

instance JavaObjectClass AdjustedCircleAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdjustedCircleAnimation
newRecord_ = do
    base <- CircleAnimation.newRecord_
    let header_ = base.header_
    xAdjustment <- newIORef 0
    yAdjustment <- newIORef 0
    let this = AdjustedCircleAnimation header_ base xAdjustment yAdjustment
    jregisterLevel header_ this
    jregisterMethod header_ "initXY" (\() -> initXY_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: AdjustedCircleAnimation -> IO ()
initFields_ this = do
    jset this.xAdjustment (0)
    jset this.yAdjustment (0)
    pure ()


createAnimation :: Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO (AdjustedCircleAnimation)
createAnimation width height xAdjustment yAdjustment basicColor = do
        adjustedCircleAnimation <- (new_3 width height basicColor)
        Control.Monad.void (AdjustedCircleAnimation.initXY adjustedCircleAnimation xAdjustment yAdjustment)
        pure (adjustedCircleAnimation)


createW :: Int -> Int -> Int -> BasicColor.BasicColor -> IO (AdjustedCircleAnimation)
createW width height innerWidth basicColor = do
        adjustedCircleAnimation <- (new_3 width height basicColor)
        Control.Monad.void (AdjustedCircleAnimation.init adjustedCircleAnimation innerWidth)
        pure (adjustedCircleAnimation)

new_3 :: Int -> Int -> BasicColor.BasicColor -> IO AdjustedCircleAnimation
new_3 width height basicColor = do
    this <- newRecord_
    init_3 this width height basicColor
    pure this

init_3 :: AdjustedCircleAnimation -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_3 this width height basicColor = do
        CircleAnimation.init_3 this.base (width) (height) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


initXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initXY object_ a1 a2 = jmethod object_ "initXY" (\() -> (initXY_impl (javaCast object_ :: AdjustedCircleAnimation))) () a1 a2

initXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
initXY_super object_ a1 a2 = (initXY_impl (javaCast object_ :: AdjustedCircleAnimation)) a1 a2

initXY_impl :: AdjustedCircleAnimation -> Int -> Int -> IO (())
initXY_impl this xAdjustment yAdjustment = do
        jset (this).xAdjustment (xAdjustment)
        jset (this).yAdjustment (yAdjustment)
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AdjustedCircleAnimation))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: AdjustedCircleAnimation)) a1

init_impl :: AdjustedCircleAnimation -> Int -> IO (())
init_impl this innerWidth = do
        if (jio (AndroidUtil.isAndroid)) then do
            let widthPortion = ((((((innerWidth `quot` 3)) * 10)) `quot` 7))
            jset (this).xAdjustment ((Prelude.negate (((((jget (this).base.width) `Data.Bits.shiftR` 1)) - widthPortion))))
            jset (this).yAdjustment ((jget (this).xAdjustment))
        else do
            jset (this).xAdjustment ((Prelude.negate (((((jget (this).base.width) `Data.Bits.shiftR` 1)) - innerWidth))))
            jset (this).yAdjustment ((jget (this).xAdjustment))
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: AdjustedCircleAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: AdjustedCircleAnimation)) a1 a2 a3

paintXY_impl :: AdjustedCircleAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.base.basicSetColorUtil)) graphics (jio (CircleAnimation.getBasicColorP this)) (jio (CircleAnimation.getColor this)))
        Control.Monad.void (Graphics.drawArc graphics (x + (jget (this).xAdjustment)) (y + (jget (this).yAdjustment)) (jget (this).base.width) (jget (this).base.height) 0 (jget (this).base.tOTAL_ANGLE))
        pure ()


