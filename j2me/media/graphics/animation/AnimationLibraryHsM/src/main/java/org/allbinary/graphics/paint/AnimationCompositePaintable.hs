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
-- package org.allbinary.graphics.paint
module AnimationCompositePaintable (module AnimationCompositePaintable, module InitUpdatePaintable) where

import InitUpdatePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, animationInterface)
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
import qualified InitUpdatePaintable

data AnimationCompositePaintable = AnimationCompositePaintable
    { header_ :: JavaHeader
    , base :: InitUpdatePaintable.InitUpdatePaintable
    , animationInterface :: IORef (Animation.Animation)
    }

instance JavaNull AnimationCompositePaintable where
    javaNull = javaNullRecord "AnimationCompositePaintable"

instance JavaEquals AnimationCompositePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationCompositePaintable where
    (==) = jrecordEquals

instance JavaObjectClass AnimationCompositePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AnimationCompositePaintable
newRecord_ = do
    base <- InitUpdatePaintable.newRecord_
    let header_ = base.header_
    animationInterface <- newIORef javaNull
    let this = AnimationCompositePaintable header_ base animationInterface
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: AnimationCompositePaintable -> IO ()
initFields_ this = do
    jset this.animationInterface (javaNull)
    pure ()

new_1 :: Animation.Animation -> IO AnimationCompositePaintable
new_1 animationInterface = do
    this <- newRecord_
    init_1 this animationInterface
    pure this

init_1 :: AnimationCompositePaintable -> Animation.Animation -> IO ()
init_1 this animationInterface = do
        InitUpdatePaintable.init_ this.base
        initFields_ this
        jset (this).animationInterface (animationInterface)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AnimationCompositePaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AnimationCompositePaintable)) a1

paint_impl :: AnimationCompositePaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics 0 0)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: AnimationCompositePaintable))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: AnimationCompositePaintable)) a1

paintThreed_impl :: AnimationCompositePaintable -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        Control.Monad.void (Animation.paintThreedXYZ ((jget (this).animationInterface)) graphics 0 0 0)
        pure ()


