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
module ImageComparatorConstraints where

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
import qualified Color -- java.awt.Color
import qualified Rectangle -- java.awt.Rectangle
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified RectangleCollisionUtil -- org.allbinary.collision.RectangleCollisionUtil
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ImageComparatorConstraintsInterface -- org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface

-- implements ImageComparatorConstraintsInterface
data ImageComparatorConstraints = ImageComparatorConstraints
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , avoidVector :: IORef (BasicArrayList.BasicArrayList)
    , maxNonMatchingPixelDeltas :: IORef (Int)
    , doImageComparisonEveryNthFrame :: IORef (Int)
    }

instance JavaNull ImageComparatorConstraints where
    javaNull = javaNullRecord "ImageComparatorConstraints"

instance JavaEquals ImageComparatorConstraints where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparatorConstraints where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparatorConstraints where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageComparatorConstraints
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    avoidVector <- newIORef javaNull
    maxNonMatchingPixelDeltas <- newIORef 0
    doImageComparisonEveryNthFrame <- newIORef 0
    let this = ImageComparatorConstraints header_ logUtil avoidVector maxNonMatchingPixelDeltas doImageComparisonEveryNthFrame
    jregisterLevel header_ this
    ImageComparatorConstraintsInterface.registerInterface_ header_
    jregisterMethod header_ "getAvoidVector" (\() -> getAvoidVector_impl this)
    jregisterMethod header_ "isColorAllowed" (\() -> isColorAllowed_impl this)
    jregisterMethod header_ "isCollisionWithAvoidRectangles_overload1" (\() -> isCollisionWithAvoidRectangles_overload1_impl this)
    jregisterMethod header_ "isCollisionWithAvoidRectangles_overload2" (\() -> isCollisionWithAvoidRectangles_overload2_impl this)
    jregisterMethod header_ "setAvoidVector" (\() -> setAvoidVector_impl this)
    jregisterMethod header_ "getMaxNonMatchingPixelDeltas" (\() -> getMaxNonMatchingPixelDeltas_impl this)
    jregisterMethod header_ "setMaxNonMatchingPixelDeltas" (\() -> setMaxNonMatchingPixelDeltas_impl this)
    jregisterMethod header_ "isFrameAllowed" (\() -> isFrameAllowed_impl this)
    jregisterMethod header_ "isImageValid" (\() -> isImageValid_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: ImageComparatorConstraints -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.avoidVector (javaNull)
    jset this.maxNonMatchingPixelDeltas (0)
    jset this.doImageComparisonEveryNthFrame (0)
    pure ()

new_1 :: Int -> IO ImageComparatorConstraints
new_1 doImageComparisonEveryNthFrame = do
    this <- newRecord_
    init_1 this doImageComparisonEveryNthFrame
    pure this

init_1 :: ImageComparatorConstraints -> Int -> IO ()
init_1 this doImageComparisonEveryNthFrame = do
        initFields_ this
        jset (this).doImageComparisonEveryNthFrame (doImageComparisonEveryNthFrame)
        Control.Monad.void (ImageComparatorConstraints.setAvoidVector this (javaCast (jio (BasicArrayListD.new_))))
        pure ()


getAvoidVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAvoidVector object_ = jmethod object_ "getAvoidVector" (\() -> (getAvoidVector_impl (javaCast object_ :: ImageComparatorConstraints))) ()

getAvoidVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAvoidVector_super object_ = (getAvoidVector_impl (javaCast object_ :: ImageComparatorConstraints))

getAvoidVector_impl :: ImageComparatorConstraints -> IO (BasicArrayList.BasicArrayList)
getAvoidVector_impl this = do
        pure ((jget (this).avoidVector))


isColorAllowed :: (JavaObjectClass this_) => this_ -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed object_ a1 a2 a3 = jmethod object_ "isColorAllowed" (\() -> (isColorAllowed_impl (javaCast object_ :: ImageComparatorConstraints))) () a1 a2 a3

isColorAllowed_super :: (JavaObjectClass this_) => this_ -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed_super object_ a1 a2 a3 = (isColorAllowed_impl (javaCast object_ :: ImageComparatorConstraints)) a1 a2 a3

isColorAllowed_impl :: ImageComparatorConstraints -> Int -> GPoint.GPoint -> Color.Color -> IO (Bool)
isColorAllowed_impl this frame point color = do
        javaThrow ((JavaException "RuntimeException" ""))


-- Java overloads of isCollisionWithAvoidRectangles: calls the overload for the types of the arguments
isCollisionWithAvoidRectangles :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isCollisionWithAvoidRectangles this a1
    | jisInstanceOf a1 (javaNull :: Rectangle.Rectangle) = isCollisionWithAvoidRectangles_overload1 this (javaCast a1 :: Rectangle.Rectangle)
    | jisInstanceOf a1 (javaNull :: GPoint.GPoint) = isCollisionWithAvoidRectangles_overload2 this (javaCast a1 :: GPoint.GPoint)
    | otherwise = isCollisionWithAvoidRectangles_overload2 this (javaCast a1 :: GPoint.GPoint)

isCollisionWithAvoidRectangles_overload1 :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isCollisionWithAvoidRectangles_overload1 object_ a1 = jmethod object_ "isCollisionWithAvoidRectangles_overload1" (\() -> (isCollisionWithAvoidRectangles_overload1_impl (javaCast object_ :: ImageComparatorConstraints))) () a1

isCollisionWithAvoidRectangles_overload1_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (Bool)
isCollisionWithAvoidRectangles_overload1_super object_ a1 = (isCollisionWithAvoidRectangles_overload1_impl (javaCast object_ :: ImageComparatorConstraints)) a1

isCollisionWithAvoidRectangles_overload1_impl :: ImageComparatorConstraints -> Rectangle.Rectangle -> IO (Bool)
isCollisionWithAvoidRectangles_overload1_impl this rectangle = do
        isCollsionWithAvoidRectangles <- newIORef (False)
        avoidVector <- (ImageComparatorConstraints.getAvoidVector this)
        size <- (BasicArrayList.size avoidVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let avoidRectangle = (javaCast (jio (BasicArrayList.get avoidVector index)) :: Rectangle.Rectangle)
            when (jio (RectangleCollisionUtil.isCollision avoidRectangle rectangle)) $ do
                jset isCollsionWithAvoidRectangles (True)
        pure ((jget isCollsionWithAvoidRectangles))


isCollisionWithAvoidRectangles_overload2 :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (Bool)
isCollisionWithAvoidRectangles_overload2 object_ a1 = jmethod object_ "isCollisionWithAvoidRectangles_overload2" (\() -> (isCollisionWithAvoidRectangles_overload2_impl (javaCast object_ :: ImageComparatorConstraints))) () a1

isCollisionWithAvoidRectangles_overload2_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (Bool)
isCollisionWithAvoidRectangles_overload2_super object_ a1 = (isCollisionWithAvoidRectangles_overload2_impl (javaCast object_ :: ImageComparatorConstraints)) a1

isCollisionWithAvoidRectangles_overload2_impl :: ImageComparatorConstraints -> GPoint.GPoint -> IO (Bool)
isCollisionWithAvoidRectangles_overload2_impl this point = do
        isCollsionWithAvoidRectangles <- newIORef (False)
        avoidVector <- (ImageComparatorConstraints.getAvoidVector this)
        size <- (BasicArrayList.size avoidVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let avoidRectangle = (javaCast (jio (BasicArrayList.get avoidVector index)) :: Rectangle.Rectangle)
            when (jio (RectangleCollisionUtil.isCollision avoidRectangle point)) $ do
                jset isCollsionWithAvoidRectangles (True)
                throwIO JavaBreak
        pure ((jget isCollsionWithAvoidRectangles))


setAvoidVector :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setAvoidVector object_ a1 = jmethod object_ "setAvoidVector" (\() -> (setAvoidVector_impl (javaCast object_ :: ImageComparatorConstraints))) () a1

setAvoidVector_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setAvoidVector_super object_ a1 = (setAvoidVector_impl (javaCast object_ :: ImageComparatorConstraints)) a1

setAvoidVector_impl :: ImageComparatorConstraints -> BasicArrayList.BasicArrayList -> IO (())
setAvoidVector_impl this avoidVector = do
        jset (this).avoidVector (avoidVector)
        pure ()


getMaxNonMatchingPixelDeltas :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxNonMatchingPixelDeltas object_ = jmethod object_ "getMaxNonMatchingPixelDeltas" (\() -> (getMaxNonMatchingPixelDeltas_impl (javaCast object_ :: ImageComparatorConstraints))) ()

getMaxNonMatchingPixelDeltas_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxNonMatchingPixelDeltas_super object_ = (getMaxNonMatchingPixelDeltas_impl (javaCast object_ :: ImageComparatorConstraints))

getMaxNonMatchingPixelDeltas_impl :: ImageComparatorConstraints -> IO (Int)
getMaxNonMatchingPixelDeltas_impl this = do
        pure ((jget (this).maxNonMatchingPixelDeltas))


setMaxNonMatchingPixelDeltas :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxNonMatchingPixelDeltas object_ a1 = jmethod object_ "setMaxNonMatchingPixelDeltas" (\() -> (setMaxNonMatchingPixelDeltas_impl (javaCast object_ :: ImageComparatorConstraints))) () a1

setMaxNonMatchingPixelDeltas_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxNonMatchingPixelDeltas_super object_ a1 = (setMaxNonMatchingPixelDeltas_impl (javaCast object_ :: ImageComparatorConstraints)) a1

setMaxNonMatchingPixelDeltas_impl :: ImageComparatorConstraints -> Int -> IO (())
setMaxNonMatchingPixelDeltas_impl this maxNonMatchingPixelDeltas = do
        jset (this).maxNonMatchingPixelDeltas (maxNonMatchingPixelDeltas)
        pure ()


isFrameAllowed :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isFrameAllowed object_ a1 = jmethod object_ "isFrameAllowed" (\() -> (isFrameAllowed_impl (javaCast object_ :: ImageComparatorConstraints))) () a1

isFrameAllowed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isFrameAllowed_super object_ a1 = (isFrameAllowed_impl (javaCast object_ :: ImageComparatorConstraints)) a1

isFrameAllowed_impl :: ImageComparatorConstraints -> Int -> IO (Bool)
isFrameAllowed_impl this frame = do
    javaCatchReturn $ do
        let remainder = ((((frame + 1)) `rem` (jget (this).doImageComparisonEveryNthFrame)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (((((" Frame: " ++ javaToString frame) ++ " remainder: ") ++ javaToString remainder) ++ " this.doImageComparisonEveryNthFrame: ") ++ javaToString (jget (this).doImageComparisonEveryNthFrame)) this "isCollisionWithAvoidRectangles")
        if (remainder == 0) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
isImageValid :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid object_ a1 = jmethod object_ "isImageValid" (\() -> (isImageValid_impl (javaCast object_ :: ImageComparatorConstraints))) () a1

isImageValid_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid_super object_ a1 = (isImageValid_impl (javaCast object_ :: ImageComparatorConstraints)) a1

isImageValid_impl :: ImageComparatorConstraints -> BufferedImage.BufferedImage -> IO (Bool)
isImageValid_impl this bufferedImage = do
        javaThrow ((JavaException "RuntimeException" ""))


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: ImageComparatorConstraints))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: ImageComparatorConstraints))

log_impl :: ImageComparatorConstraints -> IO (())
log_impl this = do
        avoidVector <- (ImageComparatorConstraints.getAvoidVector this)
        size <- (BasicArrayList.size avoidVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let avoidRectangle = (javaCast (jio (BasicArrayList.get avoidVector index)) :: Rectangle.Rectangle)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Avoid Rectangle: " ++ javaToString avoidRectangle) this "log")
        pure ()


