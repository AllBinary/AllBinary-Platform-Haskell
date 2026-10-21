{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module IndexedAnimationBehavior (module IndexedAnimationBehavior, module AnimationBehavior) where

import AnimationBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, reset, reset_super, reset_impl, frameDelayTime, loopTotal, elapsedTime, loopIndex)
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
import qualified AnimationBehavior

data IndexedAnimationBehavior = IndexedAnimationBehavior
    { header_ :: JavaHeader
    , base :: AnimationBehavior.AnimationBehavior
    , frameDelayTime :: IORef (Int64)
    , loopTotal :: IORef (Int)
    , elapsedTime :: IORef (Int64)
    , loopIndex :: IORef (Int)
    }

instance JavaNull IndexedAnimationBehavior where
    javaNull = javaNullRecord "IndexedAnimationBehavior"

instance JavaEquals IndexedAnimationBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IndexedAnimationBehavior where
    (==) = jrecordEquals

instance JavaObjectClass IndexedAnimationBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO IndexedAnimationBehavior
newRecord_ = do
    base <- AnimationBehavior.newRecord_
    let header_ = base.header_
    frameDelayTime <- newIORef 0
    loopTotal <- newIORef 0
    elapsedTime <- newIORef 0
    loopIndex <- newIORef 0
    let this = IndexedAnimationBehavior header_ base frameDelayTime loopTotal elapsedTime loopIndex
    jregisterLevel header_ this
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    pure this

initFields_ :: IndexedAnimationBehavior -> IO ()
initFields_ this = do
    jset this.frameDelayTime (0)
    jset this.loopTotal (0)
    jset this.elapsedTime (0)
    jset this.loopIndex (0)
    pure ()

new_2 :: Int -> Int64 -> IO IndexedAnimationBehavior
new_2 loopTotal frameDelayTime = do
    this <- newRecord_
    init_2 this loopTotal frameDelayTime
    pure this

init_2 :: IndexedAnimationBehavior -> Int -> Int64 -> IO ()
init_2 this loopTotal frameDelayTime = do
        AnimationBehavior.init_ this.base
        initFields_ this
        jset (this).loopTotal (loopTotal)
        jset (this).frameDelayTime (frameDelayTime)
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: IndexedAnimationBehavior))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: IndexedAnimationBehavior))

reset_impl :: IndexedAnimationBehavior -> IO (())
reset_impl this = do
        jset (this).loopIndex (0)
        pure ()


