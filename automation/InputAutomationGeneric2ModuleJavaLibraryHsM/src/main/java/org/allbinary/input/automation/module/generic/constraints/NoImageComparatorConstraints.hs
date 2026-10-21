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
-- package org.allbinary.input.automation.module.generic.constraints
module NoImageComparatorConstraints (module NoImageComparatorConstraints, module ImageComparatorConstraints) where

import ImageComparatorConstraints hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isColorAllowed, isColorAllowed_super, isColorAllowed_impl, isImageValid, isImageValid_super, isImageValid_impl)
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
import qualified Color -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified ImageComparatorConstraints -- org.allbinary.input.automation.module.ImageComparatorConstraints
-- import java.awt.*

data NoImageComparatorConstraints = NoImageComparatorConstraints
    { header_ :: JavaHeader
    , base :: ImageComparatorConstraints.ImageComparatorConstraints
    }

instance JavaNull NoImageComparatorConstraints where
    javaNull = javaNullRecord "NoImageComparatorConstraints"

instance JavaEquals NoImageComparatorConstraints where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoImageComparatorConstraints where
    (==) = jrecordEquals

instance JavaObjectClass NoImageComparatorConstraints where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NoImageComparatorConstraints
newRecord_ = do
    base <- ImageComparatorConstraints.newRecord_
    let header_ = base.header_
    let this = NoImageComparatorConstraints header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isColorAllowed" (\() -> isColorAllowed_impl this)
    jregisterMethod header_ "isImageValid" (\() -> isImageValid_impl this)
    pure this

initFields_ :: NoImageComparatorConstraints -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoImageComparatorConstraints
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoImageComparatorConstraints -> IO ()
init_ this = do
        ImageComparatorConstraints.init_1 this.base (1)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ImageComparatorConstraints.setMaxNonMatchingPixelDeltas this (2147483647 :: Int))
        pure ()


isColorAllowed :: (JavaObjectClass this_) => this_ -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed object_ a1 a2 a3 = jmethod object_ "isColorAllowed" (\() -> (isColorAllowed_impl (javaCast object_ :: NoImageComparatorConstraints))) () a1 a2 a3

isColorAllowed_super :: (JavaObjectClass this_) => this_ -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed_super object_ a1 a2 a3 = (isColorAllowed_impl (javaCast object_ :: NoImageComparatorConstraints)) a1 a2 a3

isColorAllowed_impl :: NoImageComparatorConstraints -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed_impl this frame point color = do
        pure (True)


isImageValid :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid object_ a1 = jmethod object_ "isImageValid" (\() -> (isImageValid_impl (javaCast object_ :: NoImageComparatorConstraints))) () a1

isImageValid_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid_super object_ a1 = (isImageValid_impl (javaCast object_ :: NoImageComparatorConstraints)) a1

isImageValid_impl :: NoImageComparatorConstraints -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid_impl this bufferedImage = do
        pure (True)


