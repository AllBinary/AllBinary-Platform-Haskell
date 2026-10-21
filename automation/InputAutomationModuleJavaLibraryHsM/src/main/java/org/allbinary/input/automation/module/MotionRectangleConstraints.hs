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
-- package org.allbinary.input.automation.module
module MotionRectangleConstraints where

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
import qualified MotionRectangleConstraintsInterface -- org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface
-- import java.awt.*

-- implements MotionRectangleConstraintsInterface
data MotionRectangleConstraints = MotionRectangleConstraints
    { header_ :: JavaHeader
    , minDimension :: IORef (Dimension.Dimension)
    , maxDimension :: IORef (Dimension.Dimension)
    , maxMotionRectangles :: IORef (Int)
    , minArea :: IORef (Int)
    }

instance JavaNull MotionRectangleConstraints where
    javaNull = javaNullRecord "MotionRectangleConstraints"

instance JavaEquals MotionRectangleConstraints where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRectangleConstraints where
    (==) = jrecordEquals

instance JavaObjectClass MotionRectangleConstraints where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionRectangleConstraints
newRecord_ = do
    header_ <- newJavaHeader
    minDimension <- newIORef javaNull
    maxDimension <- newIORef javaNull
    maxMotionRectangles <- newIORef 0
    minArea <- newIORef 0
    let this = MotionRectangleConstraints header_ minDimension maxDimension maxMotionRectangles minArea
    jregisterLevel header_ this
    MotionRectangleConstraintsInterface.registerInterface_ header_
    jregisterMethod header_ "getMinDimension" (\() -> getMinDimension_impl this)
    jregisterMethod header_ "getMaxDimension" (\() -> getMaxDimension_impl this)
    jregisterMethod header_ "isTooSmall" (\() -> isTooSmall_impl this)
    jregisterMethod header_ "isAreaTooSmall" (\() -> isAreaTooSmall_impl this)
    jregisterMethod header_ "isTooBig" (\() -> isTooBig_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "setMinDimension" (\() -> setMinDimension_impl this)
    jregisterMethod header_ "setMaxDimension" (\() -> setMaxDimension_impl this)
    jregisterMethod header_ "getMaxMotionRectangles" (\() -> getMaxMotionRectangles_impl this)
    jregisterMethod header_ "setMaxMotionRectangles" (\() -> setMaxMotionRectangles_impl this)
    jregisterMethod header_ "getMinArea" (\() -> getMinArea_impl this)
    jregisterMethod header_ "setMinArea" (\() -> setMinArea_impl this)
    pure this

initFields_ :: MotionRectangleConstraints -> IO ()
initFields_ this = do
    jset this.minDimension (javaNull)
    jset this.maxDimension (javaNull)
    jset this.maxMotionRectangles (0)
    jset this.minArea (0)
    pure ()

new_ :: IO MotionRectangleConstraints
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionRectangleConstraints -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getMinDimension :: (JavaObjectClass this_) => this_ -> IO (Dimension.Dimension)
getMinDimension object_ = jmethod object_ "getMinDimension" (\() -> (getMinDimension_impl (javaCast object_ :: MotionRectangleConstraints))) ()

getMinDimension_super :: (JavaObjectClass this_) => this_ -> IO (Dimension.Dimension)
getMinDimension_super object_ = (getMinDimension_impl (javaCast object_ :: MotionRectangleConstraints))

getMinDimension_impl :: MotionRectangleConstraints -> IO (Dimension.Dimension)
getMinDimension_impl this = do
        pure ((jget (this).minDimension))


getMaxDimension :: (JavaObjectClass this_) => this_ -> IO (Dimension.Dimension)
getMaxDimension object_ = jmethod object_ "getMaxDimension" (\() -> (getMaxDimension_impl (javaCast object_ :: MotionRectangleConstraints))) ()

getMaxDimension_super :: (JavaObjectClass this_) => this_ -> IO (Dimension.Dimension)
getMaxDimension_super object_ = (getMaxDimension_impl (javaCast object_ :: MotionRectangleConstraints))

getMaxDimension_impl :: MotionRectangleConstraints -> IO (Dimension.Dimension)
getMaxDimension_impl this = do
        pure ((jget (this).maxDimension))


isTooSmall :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isTooSmall object_ a1 = jmethod object_ "isTooSmall" (\() -> (isTooSmall_impl (javaCast object_ :: MotionRectangleConstraints))) () a1

isTooSmall_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isTooSmall_super object_ a1 = (isTooSmall_impl (javaCast object_ :: MotionRectangleConstraints)) a1

isTooSmall_impl :: MotionRectangleConstraints -> Rectangle.Rectangle -> IO (Bool)
isTooSmall_impl this rectangle = do
    javaCatchReturn $ do
        if (((jget (rectangle).width) < (jget ((jio (MotionRectangleConstraints.getMinDimension this))).width)) || ((jget (rectangle).height) < (jget ((jio (MotionRectangleConstraints.getMinDimension this))).height))) then do
            javaReturn (True)
        else do
            javaReturn (False)


isAreaTooSmall :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isAreaTooSmall object_ a1 = jmethod object_ "isAreaTooSmall" (\() -> (isAreaTooSmall_impl (javaCast object_ :: MotionRectangleConstraints))) () a1

isAreaTooSmall_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isAreaTooSmall_super object_ a1 = (isAreaTooSmall_impl (javaCast object_ :: MotionRectangleConstraints)) a1

isAreaTooSmall_impl :: MotionRectangleConstraints -> Rectangle.Rectangle -> IO (Bool)
isAreaTooSmall_impl this rectangle = do
    javaCatchReturn $ do
        if (((jget (rectangle).width) * (jget (rectangle).height)) < (jio (MotionRectangleConstraints.getMinArea this))) then do
            javaReturn (True)
        else do
            javaReturn (False)


isTooBig :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isTooBig object_ a1 = jmethod object_ "isTooBig" (\() -> (isTooBig_impl (javaCast object_ :: MotionRectangleConstraints))) () a1

isTooBig_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isTooBig_super object_ a1 = (isTooBig_impl (javaCast object_ :: MotionRectangleConstraints)) a1

isTooBig_impl :: MotionRectangleConstraints -> Rectangle.Rectangle -> IO (Bool)
isTooBig_impl this rectangle = do
    javaCatchReturn $ do
        if (((jget (rectangle).width) > (jget ((jio (MotionRectangleConstraints.getMaxDimension this))).width)) || ((jget (rectangle).height) > (jget ((jio (MotionRectangleConstraints.getMaxDimension this))).height))) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid object_ a1 a2 a3 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: MotionRectangleConstraints))) () a1 a2 a3

isValid_super :: (JavaObjectClass this_) => this_ -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid_super object_ a1 a2 a3 = (isValid_impl (javaCast object_ :: MotionRectangleConstraints)) a1 a2 a3

isValid_impl :: MotionRectangleConstraints -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid_impl this frame bufferedImage rectangle = do
        javaThrow ((JavaException "RuntimeException" ""))


setMinDimension :: (JavaObjectClass this_) => this_ -> Dimension.Dimension -> IO (())
setMinDimension object_ a1 = jmethod object_ "setMinDimension" (\() -> (setMinDimension_impl (javaCast object_ :: MotionRectangleConstraints))) () a1

setMinDimension_super :: (JavaObjectClass this_) => this_ -> Dimension.Dimension -> IO (())
setMinDimension_super object_ a1 = (setMinDimension_impl (javaCast object_ :: MotionRectangleConstraints)) a1

setMinDimension_impl :: MotionRectangleConstraints -> Dimension.Dimension -> IO (())
setMinDimension_impl this minDimension = do
        jset (this).minDimension (minDimension)
        pure ()


setMaxDimension :: (JavaObjectClass this_) => this_ -> Dimension.Dimension -> IO (())
setMaxDimension object_ a1 = jmethod object_ "setMaxDimension" (\() -> (setMaxDimension_impl (javaCast object_ :: MotionRectangleConstraints))) () a1

setMaxDimension_super :: (JavaObjectClass this_) => this_ -> Dimension.Dimension -> IO (())
setMaxDimension_super object_ a1 = (setMaxDimension_impl (javaCast object_ :: MotionRectangleConstraints)) a1

setMaxDimension_impl :: MotionRectangleConstraints -> Dimension.Dimension -> IO (())
setMaxDimension_impl this maxDimension = do
        jset (this).maxDimension (maxDimension)
        pure ()


getMaxMotionRectangles :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxMotionRectangles object_ = jmethod object_ "getMaxMotionRectangles" (\() -> (getMaxMotionRectangles_impl (javaCast object_ :: MotionRectangleConstraints))) ()

getMaxMotionRectangles_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxMotionRectangles_super object_ = (getMaxMotionRectangles_impl (javaCast object_ :: MotionRectangleConstraints))

getMaxMotionRectangles_impl :: MotionRectangleConstraints -> IO (Int)
getMaxMotionRectangles_impl this = do
        pure ((jget (this).maxMotionRectangles))


setMaxMotionRectangles :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxMotionRectangles object_ a1 = jmethod object_ "setMaxMotionRectangles" (\() -> (setMaxMotionRectangles_impl (javaCast object_ :: MotionRectangleConstraints))) () a1

setMaxMotionRectangles_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxMotionRectangles_super object_ a1 = (setMaxMotionRectangles_impl (javaCast object_ :: MotionRectangleConstraints)) a1

setMaxMotionRectangles_impl :: MotionRectangleConstraints -> Int -> IO (())
setMaxMotionRectangles_impl this maxMotionRectangles = do
        jset (this).maxMotionRectangles (maxMotionRectangles)
        pure ()


getMinArea :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinArea object_ = jmethod object_ "getMinArea" (\() -> (getMinArea_impl (javaCast object_ :: MotionRectangleConstraints))) ()

getMinArea_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinArea_super object_ = (getMinArea_impl (javaCast object_ :: MotionRectangleConstraints))

getMinArea_impl :: MotionRectangleConstraints -> IO (Int)
getMinArea_impl this = do
        pure ((jget (this).minArea))


setMinArea :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinArea object_ a1 = jmethod object_ "setMinArea" (\() -> (setMinArea_impl (javaCast object_ :: MotionRectangleConstraints))) () a1

setMinArea_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinArea_super object_ a1 = (setMinArea_impl (javaCast object_ :: MotionRectangleConstraints)) a1

setMinArea_impl :: MotionRectangleConstraints -> Int -> IO (())
setMinArea_impl this minArea = do
        jset (this).minArea (minArea)
        pure ()


