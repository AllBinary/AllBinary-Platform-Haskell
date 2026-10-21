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
module VectorAnimationFactory where

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
import qualified VectorAnimation -- same package or java.lang
import qualified AnimationBehavior -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified VectorAnimationFactoryInterface

-- implements VectorAnimationFactoryInterface
data VectorAnimationFactory = VectorAnimationFactory
    { header_ :: JavaHeader
    }

instance JavaNull VectorAnimationFactory where
    javaNull = javaNullRecord "VectorAnimationFactory"

instance JavaEquals VectorAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass VectorAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = VectorAnimationFactory header_
    jregisterLevel header_ this
    VectorAnimationFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: VectorAnimationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO VectorAnimationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VectorAnimationFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> IO (VectorAnimation.VectorAnimation)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: VectorAnimationFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> IO (VectorAnimation.VectorAnimation)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: VectorAnimationFactory)) a1 a2

getInstance_impl :: VectorAnimationFactory -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> IO (VectorAnimation.VectorAnimation)
getInstance_impl this points basicColor = do
        (VectorAnimation.new_3 points basicColor (jio (AnimationBehavior.getInstance)))


