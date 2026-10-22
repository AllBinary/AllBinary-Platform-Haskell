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
module ImageComparator where

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
import qualified ImageComparatorConstraintsInterface -- same package or java.lang
import qualified Color -- same package or java.lang
import qualified ImageComparisonResult -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified ColorCacheFactory -- org.allbinary.graphics.color.ColorCacheFactory
import qualified ColorCacheable -- org.allbinary.graphics.color.ColorCacheable
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AutomaticCacheInterface -- org.allbinary.logic.util.cache.AutomaticCacheInterface
import qualified PixelDeltaFactory -- org.allbinary.media.image.comparison.pixel.PixelDeltaFactory
-- import java.awt.*

data ImageComparator = ImageComparator
    { header_ :: JavaHeader
    , imageComparatorConstraintsInterface :: IORef (ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface)
    }

instance JavaNull ImageComparator where
    javaNull = javaNullRecord "ImageComparator"

instance JavaEquals ImageComparator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparator where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageComparator
newRecord_ = do
    header_ <- newJavaHeader
    imageComparatorConstraintsInterface <- newIORef javaNull
    let this = ImageComparator header_ imageComparatorConstraintsInterface
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "compare" (\() -> compare_impl this)
    jregisterMethod header_ "compare_6" (\() -> compare_6_impl this)
    pure this

initFields_ :: ImageComparator -> IO ()
initFields_ this = do
    jset this.imageComparatorConstraintsInterface (javaNull)
    pure ()

new_1 :: ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> IO ImageComparator
new_1 imageComparatorConstraintsInterface = do
    this <- newRecord_
    init_1 this imageComparatorConstraintsInterface
    pure this

init_1 :: ImageComparator -> ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> IO ()
init_1 this imageComparatorConstraintsInterface = do
        initFields_ this
        jset (this).imageComparatorConstraintsInterface (imageComparatorConstraintsInterface)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> GPoint.GPoint -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ImageComparator))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> GPoint.GPoint -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: ImageComparator)) a1 a2

process_impl :: ImageComparator -> ImageComparisonResult.ImageComparisonResult -> GPoint.GPoint -> IO (())
process_impl this imageComparisonInfo point = do
        isCollsionWithAvoidRectangles <- (ImageComparatorConstraintsInterface.isCollisionWithAvoidRectangles ((jget (this).imageComparatorConstraintsInterface)) point)
        if (Prelude.not isCollsionWithAvoidRectangles) then do
            rgb1 <- (getRGB ((jindex ((jio (ImageComparisonResult.getBufferedImages imageComparisonInfo))) (0))) (jio (GPoint.getX point)) (jio (GPoint.getY point)))
            rgb2 <- (getRGB ((jindex ((jio (ImageComparisonResult.getBufferedImages imageComparisonInfo))) (1))) (jio (GPoint.getX point)) (jio (GPoint.getY point)))
            automaticCacheInterface <- (ColorCacheFactory.getInstance)
            let colorInteger = (javaToString rgb1)
            let colorCacheable = (javaCast (jio (AutomaticCacheInterface.get automaticCacheInterface colorInteger)) :: ColorCacheable.ColorCacheable)
            color <- (ColorCacheable.getColor colorCacheable)
            let colorInteger2 = (javaToString rgb2)
            let colorCacheable2 = (javaCast (jio (AutomaticCacheInterface.get automaticCacheInterface colorInteger)) :: ColorCacheable.ColorCacheable)
            color2 <- (ColorCacheable.getColor colorCacheable)
            when ((jio (ImageComparatorConstraintsInterface.isColorAllowed ((jget (this).imageComparatorConstraintsInterface)) 0 point color)) || (jio (ImageComparatorConstraintsInterface.isColorAllowed ((jget (this).imageComparatorConstraintsInterface)) 1 point color2))) $ do
                if ((Prelude.abs (rgb1 - rgb2)) <= (jio (ImageComparisonResult.getTolerance imageComparisonInfo))) then do
                    jset (imageComparisonInfo).pixelsThatMatch ((jget (imageComparisonInfo).pixelsThatMatch) + 1)
                else do
                    Control.Monad.void (ImageComparisonResult.add imageComparisonInfo (jio (PixelDeltaFactory.getInstance (jio (GPoint.getX point)) (jio (GPoint.getY point)) rgb1 rgb2)))
        else do
            jset (imageComparisonInfo).pixelsIgnored ((jget (imageComparisonInfo).pixelsIgnored) + 1)
        pure ()


-- throws Exception
compare :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int64 -> Int64 -> Int -> IO (ImageComparisonResult.ImageComparisonResult)
compare object_ a1 a2 a3 a4 a5 = jmethod object_ "compare" (\() -> (compare_impl (javaCast object_ :: ImageComparator))) () a1 a2 a3 a4 a5

compare_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int64 -> Int64 -> Int -> IO (ImageComparisonResult.ImageComparisonResult)
compare_super object_ a1 a2 a3 a4 a5 = (compare_impl (javaCast object_ :: ImageComparator)) a1 a2 a3 a4 a5

compare_impl :: ImageComparator -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int64 -> Int64 -> Int -> IO (ImageComparisonResult.ImageComparisonResult)
compare_impl this bufferedImage1 bufferedImage2 frameOne frameTwo tolerance = do
        (ImageComparator.compare_6 this bufferedImage1 bufferedImage2 frameOne frameTwo tolerance (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


-- throws Exception
compare_6 :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int64 -> Int64 -> Int -> String -> IO (ImageComparisonResult.ImageComparisonResult)
compare_6 object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "compare_6" (\() -> (compare_6_impl (javaCast object_ :: ImageComparator))) () a1 a2 a3 a4 a5 a6

compare_6_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int64 -> Int64 -> Int -> String -> IO (ImageComparisonResult.ImageComparisonResult)
compare_6_super object_ a1 a2 a3 a4 a5 a6 = (compare_6_impl (javaCast object_ :: ImageComparator)) a1 a2 a3 a4 a5 a6

compare_6_impl :: ImageComparator -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int64 -> Int64 -> Int -> String -> IO (ImageComparisonResult.ImageComparisonResult)
compare_6_impl this bufferedImage1 bufferedImage2 frameOne frameTwo tolerance name = do
        when ((bufferedImage1 == javaNull) || (bufferedImage2 == javaNull)) $ do
            javaThrow ((JavaException "Exception" "Input images must not be null."))
        imageComparisonInfo <- (ImageComparisonResult.new_6 name bufferedImage1 bufferedImage2 frameOne frameTwo tolerance)
        forM_ [0 .. (jget (imageComparisonInfo).imageHeight) - 1] $ \indexY -> javaIteration (pure ()) $ do
            forM_ [0 .. (jget (imageComparisonInfo).imageWidth) - 1] $ \indexX -> javaIteration (pure ()) $ do
                Control.Monad.void (ImageComparator.process this imageComparisonInfo (jio (PointFactory.createXY ((jio (PointFactory.getInstance))) indexX indexY)))
                when ((jio (BasicArrayList.size ((jio (ImageComparisonResult.getNonMatchingPixelVector imageComparisonInfo))))) > (jio (ImageComparatorConstraintsInterface.getMaxNonMatchingPixelDeltas ((jget (this).imageComparatorConstraintsInterface))))) $ do
                    throwIO JavaBreak
        pure (imageComparisonInfo)


