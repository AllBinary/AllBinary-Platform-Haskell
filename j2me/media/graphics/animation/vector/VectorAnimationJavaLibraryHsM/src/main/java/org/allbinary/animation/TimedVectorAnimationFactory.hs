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
module TimedVectorAnimationFactory where

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
import qualified TimedVectorAnimation -- same package or java.lang
import qualified AnimationBehavior -- same package or java.lang
import qualified VectorAnimation -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified VectorAnimationFactoryInterface

-- implements VectorAnimationFactoryInterface
data TimedVectorAnimationFactory = TimedVectorAnimationFactory
    { header_ :: JavaHeader
    }

instance JavaNull TimedVectorAnimationFactory where
    javaNull = javaNullRecord "TimedVectorAnimationFactory"

instance JavaEquals TimedVectorAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimedVectorAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass TimedVectorAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TimedVectorAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TimedVectorAnimationFactory header_
    jregisterLevel header_ this
    VectorAnimationFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TimedVectorAnimationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TimedVectorAnimationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TimedVectorAnimationFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> IO (VectorAnimation.VectorAnimation)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TimedVectorAnimationFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> IO (VectorAnimation.VectorAnimation)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: TimedVectorAnimationFactory)) a1 a2

getInstance_impl :: TimedVectorAnimationFactory -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> IO (VectorAnimation.VectorAnimation)
getInstance_impl this points basicColor = do
        (fmap (\value_ -> javaCast value_ :: VectorAnimation.VectorAnimation) (TimedVectorAnimation.new_3 points basicColor (jio (AnimationBehavior.getInstance))))


