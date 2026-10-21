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
-- package org.allbinary.media.image.analysis
module ImageAnalysis where

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
import qualified ImageAnalysisResults -- same package or java.lang
import qualified ColorRangeInterface -- same package or java.lang
import qualified Color -- same package or java.lang
import qualified ColorAverage -- same package or java.lang
import qualified ImageColorResults -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified ColorCacheFactory -- org.allbinary.graphics.color.ColorCacheFactory
import qualified ColorCacheable -- org.allbinary.graphics.color.ColorCacheable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*

data ImageAnalysis = ImageAnalysis
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ImageAnalysis where
    javaNull = javaNullRecord "ImageAnalysis"

instance JavaEquals ImageAnalysis where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageAnalysis where
    (==) = jrecordEquals

instance JavaObjectClass ImageAnalysis where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageAnalysis
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ImageAnalysis header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "process_overload1" (\() -> process_overload1_impl this)
    pure this

initFields_ :: ImageAnalysis -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (ImageAnalysis)
getInstance = do
        pure (ImageAnalysis.instance_)

new_ :: IO ImageAnalysis
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageAnalysis -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of process: calls the overload for the types of the arguments
process :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> ColorRangeInterface.ColorRangeInterface -> IO (JavaArray (ImageAnalysisResults.ImageAnalysisResults))
process this a1 a2
    | jisInstanceOf a1 (javaNull :: JavaArray (BufferedImage.BufferedImage)) = process_overload1 this (javaCast a1 :: JavaArray (BufferedImage.BufferedImage)) a2
    | jisInstanceOf a1 (javaNull :: BufferedImage.BufferedImage) = process_overload2 this (javaCast a1 :: BufferedImage.BufferedImage) a2
    | otherwise = process_overload2 this (javaCast a1 :: BufferedImage.BufferedImage) a2

-- throws Exception
process_overload1 :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> ColorRangeInterface.ColorRangeInterface -> IO (JavaArray (ImageAnalysisResults.ImageAnalysisResults))
process_overload1 object_ a1 a2 = jmethod object_ "process_overload1" (\() -> (process_overload1_impl (javaCast object_ :: ImageAnalysis))) () a1 a2

process_overload1_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> ColorRangeInterface.ColorRangeInterface -> IO (JavaArray (ImageAnalysisResults.ImageAnalysisResults))
process_overload1_super object_ a1 a2 = (process_overload1_impl (javaCast object_ :: ImageAnalysis)) a1 a2

process_overload1_impl :: ImageAnalysis -> JavaArray (BufferedImage.BufferedImage) -> ColorRangeInterface.ColorRangeInterface -> IO (JavaArray (ImageAnalysisResults.ImageAnalysisResults))
process_overload1_impl this bufferedImageArray colorRangeInterface = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jio (CommonLabels.getInstance))).sTART) ++ (jio (ColorRangeInterface.toString colorRangeInterface))) this (jget (commonStrings).pROCESS))
        let imageAnalysisResultsArray = (jnewArray ((jlength bufferedImageArray)) javaNull)
        forM_ [0 .. (jlength bufferedImageArray) - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (ImageAnalysis.process (jindex bufferedImageArray (index)) colorRangeInterface)
            jsetIndex imageAnalysisResultsArray (index) (assignedValue)
        pure (imageAnalysisResultsArray)


-- throws Exception
process_overload2 :: BufferedImage.BufferedImage -> ColorRangeInterface.ColorRangeInterface -> IO (ImageAnalysisResults.ImageAnalysisResults)
process_overload2 bufferedImage colorRangeInterface = do
        imageAnalysisResults <- (ImageAnalysisResults.new_)
        redTotal <- newIORef (0)
        greenTotal <- newIORef (0)
        blueTotal <- newIORef (0)
        forM_ [0 .. (jio (BufferedImage.getHeight bufferedImage)) - 1] $ \indexY -> javaIteration (pure ()) $ do
            forM_ [0 .. (jio (BufferedImage.getWidth bufferedImage)) - 1] $ \indexX -> javaIteration (pure ()) $ do
                let keyInteger = (javaToString (jio (BufferedImage.getRGB bufferedImage indexX indexY)))
                let colorCacheable = (javaCast (jio (AutomaticCacheInterface.get ((jio (ColorCacheFactory.getInstance))) keyInteger)) :: ColorCacheable.ColorCacheable)
                color <- (ColorCacheable.getColor colorCacheable)
                Control.Monad.void (ImageAnalysis.processColorRangeResults imageAnalysisResults colorRangeInterface color)
                Control.Monad.void (ImageAnalysis.processImageColorResults (jio (ImageAnalysisResults.getImageColorResults imageAnalysisResults)) colorRangeInterface color)
                jset redTotal (((jget redTotal) + (Color.getRed color)))
                jset greenTotal (((jget greenTotal) + (Color.getGreen color)))
                jset blueTotal (((jget blueTotal) + (Color.getBlue color)))
        totalPixels <- (ImageColorRangeResults.getTotalPixelsChecked ((jio (ImageAnalysisResults.getImageColorRangeResults imageAnalysisResults))))
        colorAverage <- (ImageColorResults.getColorAverage ((jio (ImageAnalysisResults.getImageColorResults imageAnalysisResults))))
        Control.Monad.void (ColorAverage.setAvgRed colorAverage ((Prelude.fromIntegral (jget redTotal)) / (Prelude.fromIntegral totalPixels)))
        Control.Monad.void (ColorAverage.setAvgGreen colorAverage ((Prelude.fromIntegral (jget greenTotal)) / (Prelude.fromIntegral totalPixels)))
        Control.Monad.void (ColorAverage.setAvgBlue colorAverage ((Prelude.fromIntegral (jget blueTotal)) / (Prelude.fromIntegral totalPixels)))
        pure (imageAnalysisResults)


processColorRangeResults :: ImageAnalysisResults.ImageAnalysisResults -> ColorRangeInterface.ColorRangeInterface -> Color.Color -> IO (())
processColorRangeResults imageAnalysisResults colorRangeInterface color = do
        if (jio (ColorRangeInterface.isInRange colorRangeInterface color)) then do
            Control.Monad.void (ImageColorRangeResults.addMatchingPixelsChecked ((jio (ImageAnalysisResults.getImageColorRangeResults imageAnalysisResults))))
        else do
            pure ()
        Control.Monad.void (ImageColorRangeResults.addTotalPixelsChecked ((jio (ImageAnalysisResults.getImageColorRangeResults imageAnalysisResults))))
        pure ()


processImageColorResults :: ImageColorResults.ImageColorResults -> ColorRangeInterface.ColorRangeInterface -> Color.Color -> IO (())
processImageColorResults imageColorResults colorRangeInterface color = do
        when ((jio (Color.getRed color)) < (jio (ColorRange.getMinRed ((jio (ImageColorResults.getColorRange imageColorResults)))))) $ do
            Control.Monad.void (ColorRange.setMinRed ((jio (ImageColorResults.getColorRange imageColorResults))) (jio (Color.getRed color)))
        when ((jio (Color.getGreen color)) < (jio (ColorRange.getMinGreen ((jio (ImageColorResults.getColorRange imageColorResults)))))) $ do
            Control.Monad.void (ColorRange.setMinGreen ((jio (ImageColorResults.getColorRange imageColorResults))) (jio (Color.getGreen color)))
        when ((jio (Color.getBlue color)) < (jio (ColorRange.getMinBlue ((jio (ImageColorResults.getColorRange imageColorResults)))))) $ do
            Control.Monad.void (ColorRange.setMinBlue ((jio (ImageColorResults.getColorRange imageColorResults))) (jio (Color.getBlue color)))
        when ((jio (Color.getRed color)) > (jio (ColorRange.getMaxRed ((jio (ImageColorResults.getColorRange imageColorResults)))))) $ do
            Control.Monad.void (ColorRange.setMaxRed ((jio (ImageColorResults.getColorRange imageColorResults))) (jio (Color.getRed color)))
        when ((jio (Color.getGreen color)) > (jio (ColorRange.getMaxGreen ((jio (ImageColorResults.getColorRange imageColorResults)))))) $ do
            Control.Monad.void (ColorRange.setMaxGreen ((jio (ImageColorResults.getColorRange imageColorResults))) (jio (Color.getGreen color)))
        when ((jio (Color.getBlue color)) > (jio (ColorRange.getMaxBlue ((jio (ImageColorResults.getColorRange imageColorResults)))))) $ do
            Control.Monad.void (ColorRange.setMaxBlue ((jio (ImageColorResults.getColorRange imageColorResults))) (jio (Color.getBlue color)))
        pure ()


