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
module LineAnimation (module LineAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, setPosition, setPosition_super, setPosition_impl, paintXY, paintXY_super, paintXY_impl, nextFrame, nextFrame_super, nextFrame_impl, newLine, tempLine, line)
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
import qualified PositionInterface -- org.allbinary.layer.PositionInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil

-- implements ColorCompositeInterface
-- implements PositionInterface
data LineAnimation = LineAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , newLine :: IORef (JavaArray (JavaArray (Int)))
    , tempLine :: IORef (JavaArray (JavaArray (Int)))
    , line :: IORef (JavaArray (JavaArray (Int)))
    }

instance JavaNull LineAnimation where
    javaNull = javaNullRecord "LineAnimation"

instance JavaEquals LineAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LineAnimation where
    (==) = jrecordEquals

instance JavaObjectClass LineAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LineAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    newLine <- newIORef javaNull
    tempLine <- newIORef javaNull
    line <- newIORef javaNull
    let this = LineAnimation header_ base newLine tempLine line
    jregisterLevel header_ this
    ColorCompositeInterface.registerInterface_ header_
    PositionInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "setPosition" (\() -> setPosition_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    pure this

initFields_ :: LineAnimation -> IO ()
initFields_ this = do
    jset this.newLine ((jnewArray2 (2) (2) 0))
    jset this.tempLine ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY))
    jset this.line ((jnewArray2 (2) (2) 0))
    pure ()

new_1 :: BasicColor.BasicColor -> IO LineAnimation
new_1 basicColor = do
    this <- newRecord_
    init_1 this basicColor
    pure this

init_1 :: LineAnimation -> BasicColor.BasicColor -> IO ()
init_1 this basicColor = do
        Animation.init_ this.base
        initFields_ this
        Control.Monad.void (Animation.setBasicColorP this basicColor)
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: LineAnimation))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: LineAnimation)) a1 a2

init_impl :: LineAnimation -> Int -> Int -> IO (())
init_impl this x y = do
        jsetIndex ((jindex ((jget (this).newLine)) (0))) (0) (x)
        jsetIndex ((jindex ((jget (this).newLine)) (0))) (1) (y)
        jsetIndex ((jindex ((jget (this).newLine)) (1))) (0) (x)
        jsetIndex ((jindex ((jget (this).newLine)) (1))) (1) (y)
        jset (this).tempLine ((jget (this).line))
        jset (this).line ((jget (this).newLine))
        jset (this).newLine ((jget (this).tempLine))
        pure ()


setPosition :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition object_ a1 a2 a3 = jmethod object_ "setPosition" (\() -> (setPosition_impl (javaCast object_ :: LineAnimation))) () a1 a2 a3

setPosition_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
setPosition_super object_ a1 a2 a3 = (setPosition_impl (javaCast object_ :: LineAnimation)) a1 a2 a3

setPosition_impl :: LineAnimation -> Int -> Int -> Int -> IO (())
setPosition_impl this x y z = do
        jsetIndex ((jindex ((jget (this).newLine)) (0))) (0) ((jindex ((jindex ((jget (this).line)) (1))) (0)))
        jsetIndex ((jindex ((jget (this).newLine)) (0))) (1) ((jindex ((jindex ((jget (this).line)) (1))) (1)))
        jsetIndex ((jindex ((jget (this).newLine)) (1))) (0) (x)
        jsetIndex ((jindex ((jget (this).newLine)) (1))) (1) (y)
        jset (this).tempLine ((jget (this).line))
        jset (this).line ((jget (this).newLine))
        jset (this).newLine ((jget (this).tempLine))
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: LineAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: LineAnimation)) a1 a2 a3

paintXY_impl :: LineAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        let currentLine = (jget (this).line)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.basicSetColorUtil)) graphics (jio (Animation.getBasicColorP this)) (jio (Animation.getColor this)))
        Control.Monad.void (Graphics.drawLine graphics (jindex ((jindex currentLine (0))) (0)) (jindex ((jindex currentLine (0))) (1)) (jindex ((jindex currentLine (1))) (0)) (jindex ((jindex currentLine (1))) (1)))
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: LineAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: LineAnimation))

nextFrame_impl :: LineAnimation -> IO (())
nextFrame_impl this = do
        pure ()


