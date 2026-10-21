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
-- package org.allbinary.media.image.comparison.motion
module MotionRectangleConstraintsInterface where

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
import qualified Dimension -- same package or java.lang
import qualified Rectangle -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
-- import java.awt.*

-- Java interface: the classes that implement it have these functions
data MotionRectangleConstraintsInterface = MotionRectangleConstraintsInterface
    { header_ :: JavaHeader
    }

instance JavaNull MotionRectangleConstraintsInterface where
    javaNull = javaNullRecord "MotionRectangleConstraintsInterface"

instance JavaEquals MotionRectangleConstraintsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRectangleConstraintsInterface where
    (==) = jrecordEquals

instance JavaObjectClass MotionRectangleConstraintsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MotionRectangleConstraintsInterface
fromHeader_ header = MotionRectangleConstraintsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MotionRectangleConstraintsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getMaxMotionRectangles :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxMotionRectangles object_ = jmethod object_ "getMaxMotionRectangles" (\() -> (getMaxMotionRectangles_impl (javaCast object_ :: MotionRectangleConstraintsInterface))) ()

getMaxMotionRectangles_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxMotionRectangles_super object_ = (getMaxMotionRectangles_impl (javaCast object_ :: MotionRectangleConstraintsInterface))

getMaxMotionRectangles_impl :: MotionRectangleConstraintsInterface -> IO (Int)
getMaxMotionRectangles_impl this = javaAbstractMethod "getMaxMotionRectangles"


getMinDimension :: (JavaObjectClass this_) => this_ -> IO (Dimension.Dimension)
getMinDimension object_ = jmethod object_ "getMinDimension" (\() -> (getMinDimension_impl (javaCast object_ :: MotionRectangleConstraintsInterface))) ()

getMinDimension_super :: (JavaObjectClass this_) => this_ -> IO (Dimension.Dimension)
getMinDimension_super object_ = (getMinDimension_impl (javaCast object_ :: MotionRectangleConstraintsInterface))

getMinDimension_impl :: MotionRectangleConstraintsInterface -> IO (Dimension.Dimension)
getMinDimension_impl this = javaAbstractMethod "getMinDimension"


getMinArea :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinArea object_ = jmethod object_ "getMinArea" (\() -> (getMinArea_impl (javaCast object_ :: MotionRectangleConstraintsInterface))) ()

getMinArea_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinArea_super object_ = (getMinArea_impl (javaCast object_ :: MotionRectangleConstraintsInterface))

getMinArea_impl :: MotionRectangleConstraintsInterface -> IO (Int)
getMinArea_impl this = javaAbstractMethod "getMinArea"


getMaxDimension :: (JavaObjectClass this_) => this_ -> IO (Dimension.Dimension)
getMaxDimension object_ = jmethod object_ "getMaxDimension" (\() -> (getMaxDimension_impl (javaCast object_ :: MotionRectangleConstraintsInterface))) ()

getMaxDimension_super :: (JavaObjectClass this_) => this_ -> IO (Dimension.Dimension)
getMaxDimension_super object_ = (getMaxDimension_impl (javaCast object_ :: MotionRectangleConstraintsInterface))

getMaxDimension_impl :: MotionRectangleConstraintsInterface -> IO (Dimension.Dimension)
getMaxDimension_impl this = javaAbstractMethod "getMaxDimension"


isTooSmall :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isTooSmall object_ a1 = jmethod object_ "isTooSmall" (\() -> (isTooSmall_impl (javaCast object_ :: MotionRectangleConstraintsInterface))) () a1

isTooSmall_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isTooSmall_super object_ a1 = (isTooSmall_impl (javaCast object_ :: MotionRectangleConstraintsInterface)) a1

isTooSmall_impl :: MotionRectangleConstraintsInterface -> Rectangle.Rectangle -> IO (Bool)
isTooSmall_impl this rectangle = javaAbstractMethod "isTooSmall"


isAreaTooSmall :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isAreaTooSmall object_ a1 = jmethod object_ "isAreaTooSmall" (\() -> (isAreaTooSmall_impl (javaCast object_ :: MotionRectangleConstraintsInterface))) () a1

isAreaTooSmall_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isAreaTooSmall_super object_ a1 = (isAreaTooSmall_impl (javaCast object_ :: MotionRectangleConstraintsInterface)) a1

isAreaTooSmall_impl :: MotionRectangleConstraintsInterface -> Rectangle.Rectangle -> IO (Bool)
isAreaTooSmall_impl this rectangle = javaAbstractMethod "isAreaTooSmall"


isTooBig :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isTooBig object_ a1 = jmethod object_ "isTooBig" (\() -> (isTooBig_impl (javaCast object_ :: MotionRectangleConstraintsInterface))) () a1

isTooBig_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isTooBig_super object_ a1 = (isTooBig_impl (javaCast object_ :: MotionRectangleConstraintsInterface)) a1

isTooBig_impl :: MotionRectangleConstraintsInterface -> Rectangle.Rectangle -> IO (Bool)
isTooBig_impl this rectangle = javaAbstractMethod "isTooBig"


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid object_ a1 a2 a3 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: MotionRectangleConstraintsInterface))) () a1 a2 a3

isValid_super :: (JavaObjectClass this_) => this_ -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid_super object_ a1 a2 a3 = (isValid_impl (javaCast object_ :: MotionRectangleConstraintsInterface)) a1 a2 a3

isValid_impl :: MotionRectangleConstraintsInterface -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid_impl this frame bufferedImage rectangle = javaAbstractMethod "isValid"


