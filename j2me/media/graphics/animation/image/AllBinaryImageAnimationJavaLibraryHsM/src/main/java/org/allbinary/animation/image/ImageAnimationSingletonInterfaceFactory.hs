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
-- package org.allbinary.animation.image
module ImageAnimationSingletonInterfaceFactory (module ImageAnimationSingletonInterfaceFactory, module SingletonAnimationInterfaceFactory) where

import SingletonAnimationInterfaceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified ImageAnimation -- same package or java.lang
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified SingletonAnimationInterfaceFactory -- org.allbinary.animation.SingletonAnimationInterfaceFactory
import qualified AnimationFrameToImageUtil -- org.allbinary.image.AnimationFrameToImageUtil

data ImageAnimationSingletonInterfaceFactory = ImageAnimationSingletonInterfaceFactory
    { header_ :: JavaHeader
    , base :: SingletonAnimationInterfaceFactory.SingletonAnimationInterfaceFactory
    }

instance JavaNull ImageAnimationSingletonInterfaceFactory where
    javaNull = javaNullRecord "ImageAnimationSingletonInterfaceFactory"

instance JavaEquals ImageAnimationSingletonInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageAnimationSingletonInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass ImageAnimationSingletonInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageAnimationSingletonInterfaceFactory
newRecord_ = do
    base <- SingletonAnimationInterfaceFactory.newRecord_
    let header_ = base.header_
    let this = ImageAnimationSingletonInterfaceFactory header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: ImageAnimationSingletonInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_3 :: Animation.Animation -> Int -> Int -> IO ImageAnimationSingletonInterfaceFactory
new_3 animationInterface width height = do
    this <- newRecord_
    init_3 this animationInterface width height
    pure this

init_3 :: ImageAnimationSingletonInterfaceFactory -> Animation.Animation -> Int -> Int -> IO ()
init_3 this animationInterface width height = do
        SingletonAnimationInterfaceFactory.init_1 this.base (jio (ImageAnimation.new_2 (jio (AnimationFrameToImageUtil.getInstanceWH ((jio (AnimationFrameToImageUtil.getInstance))) width height animationInterface)) (jio (AnimationBehavior.getInstance))))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


