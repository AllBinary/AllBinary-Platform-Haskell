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
module IndexedAnimationBehaviorFactory (module IndexedAnimationBehaviorFactory, module AnimationBehaviorFactory) where

import AnimationBehaviorFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getOrCreateInstance, getOrCreateInstance_super, getOrCreateInstance_impl, frameDelayTime, loopTotal)
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
import qualified IndexedAnimationBehavior -- same package or java.lang
import qualified AnimationBehavior -- same package or java.lang
import qualified AnimationBehaviorFactory

data IndexedAnimationBehaviorFactory = IndexedAnimationBehaviorFactory
    { header_ :: JavaHeader
    , base :: AnimationBehaviorFactory.AnimationBehaviorFactory
    , frameDelayTime :: IORef (Int64)
    , loopTotal :: IORef (Int)
    }

instance JavaNull IndexedAnimationBehaviorFactory where
    javaNull = javaNullRecord "IndexedAnimationBehaviorFactory"

instance JavaEquals IndexedAnimationBehaviorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IndexedAnimationBehaviorFactory where
    (==) = jrecordEquals

instance JavaObjectClass IndexedAnimationBehaviorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO IndexedAnimationBehaviorFactory
newRecord_ = do
    base <- AnimationBehaviorFactory.newRecord_
    let header_ = base.header_
    frameDelayTime <- newIORef 0
    loopTotal <- newIORef 0
    let this = IndexedAnimationBehaviorFactory header_ base frameDelayTime loopTotal
    jregisterLevel header_ this
    jregisterMethod header_ "getOrCreateInstance" (\() -> getOrCreateInstance_impl this)
    pure this

initFields_ :: IndexedAnimationBehaviorFactory -> IO ()
initFields_ this = do
    jset this.frameDelayTime (0)
    jset this.loopTotal (0)
    pure ()

new_2 :: Int -> Int64 -> IO IndexedAnimationBehaviorFactory
new_2 loopTotal frameDelayTime = do
    this <- newRecord_
    init_2 this loopTotal frameDelayTime
    pure this

init_2 :: IndexedAnimationBehaviorFactory -> Int -> Int64 -> IO ()
init_2 this loopTotal frameDelayTime = do
        AnimationBehaviorFactory.init_ this.base
        initFields_ this
        jset (this).loopTotal (loopTotal)
        jset (this).frameDelayTime (frameDelayTime)
        pure ()


getOrCreateInstance :: (JavaObjectClass this_) => this_ -> IO (AnimationBehavior.AnimationBehavior)
getOrCreateInstance object_ = jmethod object_ "getOrCreateInstance" (\() -> (getOrCreateInstance_impl (javaCast object_ :: IndexedAnimationBehaviorFactory))) ()

getOrCreateInstance_super :: (JavaObjectClass this_) => this_ -> IO (AnimationBehavior.AnimationBehavior)
getOrCreateInstance_super object_ = (getOrCreateInstance_impl (javaCast object_ :: IndexedAnimationBehaviorFactory))

getOrCreateInstance_impl :: IndexedAnimationBehaviorFactory -> IO (AnimationBehavior.AnimationBehavior)
getOrCreateInstance_impl this = do
        (fmap (\value_ -> javaCast value_ :: AnimationBehavior.AnimationBehavior) (IndexedAnimationBehavior.new_2 (jget (this).loopTotal) (jget (this).frameDelayTime)))


