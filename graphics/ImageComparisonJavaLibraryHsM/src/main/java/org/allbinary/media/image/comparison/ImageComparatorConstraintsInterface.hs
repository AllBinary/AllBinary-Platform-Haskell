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
-- package org.allbinary.media.image.comparison
module ImageComparatorConstraintsInterface where

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
import qualified Rectangle -- same package or java.lang
import qualified Color -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified GPoint -- org.allbinary.graphics.GPoint
-- import java.awt.*

-- Java interface: the classes that implement it have these functions
data ImageComparatorConstraintsInterface = ImageComparatorConstraintsInterface
    { header_ :: JavaHeader
    }

instance JavaNull ImageComparatorConstraintsInterface where
    javaNull = javaNullRecord "ImageComparatorConstraintsInterface"

instance JavaEquals ImageComparatorConstraintsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparatorConstraintsInterface where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparatorConstraintsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ImageComparatorConstraintsInterface
fromHeader_ header = ImageComparatorConstraintsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ImageComparatorConstraintsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getMaxNonMatchingPixelDeltas :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxNonMatchingPixelDeltas object_ = jmethod object_ "getMaxNonMatchingPixelDeltas" (\() -> (getMaxNonMatchingPixelDeltas_impl (javaCast object_ :: ImageComparatorConstraintsInterface))) ()

getMaxNonMatchingPixelDeltas_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxNonMatchingPixelDeltas_super object_ = (getMaxNonMatchingPixelDeltas_impl (javaCast object_ :: ImageComparatorConstraintsInterface))

getMaxNonMatchingPixelDeltas_impl :: ImageComparatorConstraintsInterface -> IO (Int)
getMaxNonMatchingPixelDeltas_impl this = javaAbstractMethod "getMaxNonMatchingPixelDeltas"


-- Java overloads of isCollisionWithAvoidRectangles: calls the overload for the types of the arguments
isCollisionWithAvoidRectangles :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isCollisionWithAvoidRectangles this a1
    | jisInstanceOf a1 (javaNull :: Rectangle.Rectangle) = isCollisionWithAvoidRectangles_overload1 this (javaCast a1 :: Rectangle.Rectangle)
    | jisInstanceOf a1 (javaNull :: GPoint.GPoint) = isCollisionWithAvoidRectangles_overload2 this (javaCast a1 :: GPoint.GPoint)
    | otherwise = isCollisionWithAvoidRectangles_overload2 this (javaCast a1 :: GPoint.GPoint)

isCollisionWithAvoidRectangles_overload1 :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isCollisionWithAvoidRectangles_overload1 object_ a1 = jmethod object_ "isCollisionWithAvoidRectangles_overload1" (\() -> (isCollisionWithAvoidRectangles_overload1_impl (javaCast object_ :: ImageComparatorConstraintsInterface))) () a1

isCollisionWithAvoidRectangles_overload1_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isCollisionWithAvoidRectangles_overload1_super object_ a1 = (isCollisionWithAvoidRectangles_overload1_impl (javaCast object_ :: ImageComparatorConstraintsInterface)) a1

isCollisionWithAvoidRectangles_overload1_impl :: ImageComparatorConstraintsInterface -> Rectangle.Rectangle -> IO (Bool)
isCollisionWithAvoidRectangles_overload1_impl this rectangle = javaAbstractMethod "isCollisionWithAvoidRectangles"


isCollisionWithAvoidRectangles_overload2 :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (Bool)
isCollisionWithAvoidRectangles_overload2 object_ a1 = jmethod object_ "isCollisionWithAvoidRectangles_overload2" (\() -> (isCollisionWithAvoidRectangles_overload2_impl (javaCast object_ :: ImageComparatorConstraintsInterface))) () a1

isCollisionWithAvoidRectangles_overload2_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (Bool)
isCollisionWithAvoidRectangles_overload2_super object_ a1 = (isCollisionWithAvoidRectangles_overload2_impl (javaCast object_ :: ImageComparatorConstraintsInterface)) a1

isCollisionWithAvoidRectangles_overload2_impl :: ImageComparatorConstraintsInterface -> GPoint.GPoint -> IO (Bool)
isCollisionWithAvoidRectangles_overload2_impl this point = javaAbstractMethod "isCollisionWithAvoidRectangles"


isColorAllowed :: (JavaObjectClass this_) => this_ -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed object_ a1 a2 a3 = jmethod object_ "isColorAllowed" (\() -> (isColorAllowed_impl (javaCast object_ :: ImageComparatorConstraintsInterface))) () a1 a2 a3

isColorAllowed_super :: (JavaObjectClass this_) => this_ -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed_super object_ a1 a2 a3 = (isColorAllowed_impl (javaCast object_ :: ImageComparatorConstraintsInterface)) a1 a2 a3

isColorAllowed_impl :: ImageComparatorConstraintsInterface -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed_impl this frame point color = javaAbstractMethod "isColorAllowed"


-- throws Exception
isImageValid :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid object_ a1 = jmethod object_ "isImageValid" (\() -> (isImageValid_impl (javaCast object_ :: ImageComparatorConstraintsInterface))) () a1

isImageValid_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid_super object_ a1 = (isImageValid_impl (javaCast object_ :: ImageComparatorConstraintsInterface)) a1

isImageValid_impl :: ImageComparatorConstraintsInterface -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid_impl this bufferedImage = javaAbstractMethod "isImageValid"


isFrameAllowed :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isFrameAllowed object_ a1 = jmethod object_ "isFrameAllowed" (\() -> (isFrameAllowed_impl (javaCast object_ :: ImageComparatorConstraintsInterface))) () a1

isFrameAllowed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isFrameAllowed_super object_ a1 = (isFrameAllowed_impl (javaCast object_ :: ImageComparatorConstraintsInterface)) a1

isFrameAllowed_impl :: ImageComparatorConstraintsInterface -> Int -> IO (Bool)
isFrameAllowed_impl this frame = javaAbstractMethod "isFrameAllowed"


