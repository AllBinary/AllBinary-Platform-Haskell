{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.animation.vector
module ARectangleFilledAnimation (module ARectangleFilledAnimation, module RectangleFilledAnimation) where

import RectangleFilledAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, x, y)
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
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified RectangleFilledAnimation

data ARectangleFilledAnimation = ARectangleFilledAnimation
    { header_ :: JavaHeader
    , base :: RectangleFilledAnimation.RectangleFilledAnimation
    , x :: IORef (Int)
    , y :: IORef (Int)
    }

instance JavaNull ARectangleFilledAnimation where
    javaNull = javaNullRecord "ARectangleFilledAnimation"

instance JavaEquals ARectangleFilledAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ARectangleFilledAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ARectangleFilledAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ARectangleFilledAnimation
newRecord_ = do
    base <- RectangleFilledAnimation.newRecord_
    let header_ = base.header_
    x <- newIORef 0
    y <- newIORef 0
    let this = ARectangleFilledAnimation header_ base x y
    jregisterLevel header_ this
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: ARectangleFilledAnimation -> IO ()
initFields_ this = do
    jset this.x (0)
    jset this.y (0)
    pure ()

new_ :: IO ARectangleFilledAnimation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ARectangleFilledAnimation -> IO ()
init_ this = do
        RectangleFilledAnimation.init_3 this.base (0) (0) (jget ((jio (BasicColorFactory.getInstance))).bLACK)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: ARectangleFilledAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: ARectangleFilledAnimation))

nextFrame_impl :: ARectangleFilledAnimation -> IO (())
nextFrame_impl this = do
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ARectangleFilledAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ARectangleFilledAnimation)) a1 a2 a3

paintXY_impl :: ARectangleFilledAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics unusedX unusedY = do
        Control.Monad.void (RectangleFilledAnimation.paintXY_super this.base graphics (jget (this).x) (jget (this).y))
        pure ()


