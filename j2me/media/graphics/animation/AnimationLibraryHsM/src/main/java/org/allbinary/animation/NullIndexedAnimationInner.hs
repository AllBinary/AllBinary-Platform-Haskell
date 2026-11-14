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
module NullIndexedAnimationInner (module NullIndexedAnimationInner, module NullIndexedAnimation) where

import NullIndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paintXY, paintXY_super, paintXY_impl)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified IndexedAnimationBehavior -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullIndexedAnimation

data NullIndexedAnimationInner = NullIndexedAnimationInner
    { header_ :: JavaHeader
    , base :: NullIndexedAnimation.NullIndexedAnimation
    }

instance JavaNull NullIndexedAnimationInner where
    javaNull = javaNullRecord "NullIndexedAnimationInner"

instance JavaEquals NullIndexedAnimationInner where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullIndexedAnimationInner where
    (==) = jrecordEquals

instance JavaObjectClass NullIndexedAnimationInner where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NullIndexedAnimationInner
newRecord_ = do
    base <- NullIndexedAnimation.newRecord_
    let header_ = base.header_
    let this = NullIndexedAnimationInner header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: NullIndexedAnimationInner -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullIndexedAnimationInner
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullIndexedAnimationInner -> IO ()
init_ this = do
        NullIndexedAnimation.init_1 this.base (javaCast (jio (IndexedAnimationBehavior.new_2 1 250)))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: NullIndexedAnimationInner))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: NullIndexedAnimationInner)) a1 a2 a3

paintXY_impl :: NullIndexedAnimationInner -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        pure ()


