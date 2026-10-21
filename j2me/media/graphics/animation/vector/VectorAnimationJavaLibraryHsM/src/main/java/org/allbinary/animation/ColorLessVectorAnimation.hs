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
-- package org.allbinary.animation
module ColorLessVectorAnimation (module ColorLessVectorAnimation, module VectorAnimation) where

import VectorAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paintXY, paintXY_super, paintXY_impl)
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
import qualified AnimationBehavior -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified VectorAnimation

data ColorLessVectorAnimation = ColorLessVectorAnimation
    { header_ :: JavaHeader
    , base :: VectorAnimation.VectorAnimation
    }

instance JavaNull ColorLessVectorAnimation where
    javaNull = javaNullRecord "ColorLessVectorAnimation"

instance JavaEquals ColorLessVectorAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorLessVectorAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ColorLessVectorAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorLessVectorAnimation
newRecord_ = do
    base <- VectorAnimation.newRecord_
    let header_ = base.header_
    let this = ColorLessVectorAnimation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: ColorLessVectorAnimation -> IO ()
initFields_ this = do
    pure ()

new_2 :: JavaArray (JavaArray (JavaArray (Int))) -> AnimationBehavior.AnimationBehavior -> IO ColorLessVectorAnimation
new_2 currentPoints animationBehavior = do
    this <- newRecord_
    init_2 this currentPoints animationBehavior
    pure this

init_2 :: ColorLessVectorAnimation -> JavaArray (JavaArray (JavaArray (Int))) -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this currentPoints animationBehavior = do
        VectorAnimation.init_3 this.base (currentPoints) (jget ((jio (BasicColorFactory.getInstance))).wHITE) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ColorLessVectorAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ColorLessVectorAnimation)) a1 a2 a3

paintXY_impl :: ColorLessVectorAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (VectorAnimation.paintVectors this graphics x y)
        pure ()


