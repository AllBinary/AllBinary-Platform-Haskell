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
module ImageArraySingletonAnimationInterfaceFactory (module ImageArraySingletonAnimationInterfaceFactory, module SingletonAnimationInterfaceFactory) where

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
import qualified ImageArrayAnimation -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified SingletonAnimationInterfaceFactory -- org.allbinary.animation.SingletonAnimationInterfaceFactory
import qualified IndexedAnimationToImageArrayUtil -- org.allbinary.image.IndexedAnimationToImageArrayUtil

data ImageArraySingletonAnimationInterfaceFactory = ImageArraySingletonAnimationInterfaceFactory
    { header_ :: JavaHeader
    , base :: SingletonAnimationInterfaceFactory.SingletonAnimationInterfaceFactory
    }

instance JavaNull ImageArraySingletonAnimationInterfaceFactory where
    javaNull = javaNullRecord "ImageArraySingletonAnimationInterfaceFactory"

instance JavaEquals ImageArraySingletonAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArraySingletonAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass ImageArraySingletonAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageArraySingletonAnimationInterfaceFactory
newRecord_ = do
    base <- SingletonAnimationInterfaceFactory.newRecord_
    let header_ = base.header_
    let this = ImageArraySingletonAnimationInterfaceFactory header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: ImageArraySingletonAnimationInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_1 :: JavaArray (Image.Image) -> IO ImageArraySingletonAnimationInterfaceFactory
new_1 imageArray = do
    this <- newRecord_
    init_1 this imageArray
    pure this

init_1 :: ImageArraySingletonAnimationInterfaceFactory -> JavaArray (Image.Image) -> IO ()
init_1 this imageArray = do
        SingletonAnimationInterfaceFactory.init_1 this.base (jio (ImageArrayAnimation.new_2 imageArray (jio (AnimationBehavior.getInstance))))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


