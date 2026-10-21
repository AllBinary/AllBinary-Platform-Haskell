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
-- package org.allbinary.media.image.search
module ImageComparisonSearch where

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
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ImageUtil -- org.allbinary.media.image.ImageUtil
import qualified PixelDelta -- org.allbinary.media.image.comparison.pixel.PixelDelta
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ImageComparisonSearch = ImageComparisonSearch
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , isSameHeight :: IORef (Bool)
    , isSameWidth :: IORef (Bool)
    , pixelsThatMatch :: IORef (Int)
    , pixelsIgnored :: IORef (Int)
    , imageHeight :: IORef (Int)
    , imageWidth :: IORef (Int)
    , tolerance :: IORef (Int)
    , nonMatchingPixelVector :: IORef (BasicArrayList.BasicArrayList)
    , bufferedImages :: IORef (JavaArray (BufferedImage.BufferedImage))
    , matchingPercent :: IORef (Float)
    }

instance JavaNull ImageComparisonSearch where
    javaNull = javaNullRecord "ImageComparisonSearch"

instance JavaEquals ImageComparisonSearch where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonSearch where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonSearch where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageComparisonSearch
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    isSameHeight <- newIORef False
    isSameWidth <- newIORef False
    pixelsThatMatch <- newIORef 0
    pixelsIgnored <- newIORef 0
    imageHeight <- newIORef 0
    imageWidth <- newIORef 0
    tolerance <- newIORef 0
    nonMatchingPixelVector <- newIORef javaNull
    bufferedImages <- newIORef javaNull
    matchingPercent <- newIORef 0.0
    let this = ImageComparisonSearch header_ logUtil commonStrings isSameHeight isSameWidth pixelsThatMatch pixelsIgnored imageHeight imageWidth tolerance nonMatchingPixelVector bufferedImages matchingPercent
    jregisterLevel header_ this
    jregisterMethod header_ "getMatchingPercent" (\() -> getMatchingPercent_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getNonMatchingPixelVector" (\() -> getNonMatchingPixelVector_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getBufferedImages" (\() -> getBufferedImages_impl this)
    jregisterMethod header_ "setBufferedImages" (\() -> setBufferedImages_impl this)
    jregisterMethod header_ "getTolerance" (\() -> getTolerance_impl this)
    jregisterMethod header_ "setTolerance" (\() -> setTolerance_impl this)
    pure this

initFields_ :: ImageComparisonSearch -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.isSameHeight (False)
    jset this.isSameWidth (False)
    jset this.pixelsThatMatch (0)
    jset this.pixelsIgnored (0)
    jset this.imageHeight (0)
    jset this.imageWidth (0)
    jset this.tolerance (0)
    jset this.nonMatchingPixelVector (javaNull)
    jset this.bufferedImages (javaNull)
    jset this.matchingPercent ((Prelude.fromIntegral ((Prelude.negate 1) :: Int)))
    pure ()

new_3 :: BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int -> IO ImageComparisonSearch
new_3 bufferedImage bufferedImage2 tolerance = do
    this <- newRecord_
    init_3 this bufferedImage bufferedImage2 tolerance
    pure this

init_3 :: ImageComparisonSearch -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int -> IO ()
init_3 this bufferedImage bufferedImage2 tolerance = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).nonMatchingPixelVector (assignedValue)
        Control.Monad.void (ImageComparisonSearch.setBufferedImages this (jnewArray (2) javaNull))
        jsetIndex ((jio (ImageComparisonSearch.getBufferedImages this))) (0) (bufferedImage)
        jsetIndex ((jio (ImageComparisonSearch.getBufferedImages this))) (1) (bufferedImage2)
        assignedValue <- (BufferedImage.getHeight bufferedImage)
        jset (this).imageHeight (assignedValue)
        assignedValue <- (BufferedImage.getWidth bufferedImage)
        jset (this).imageWidth (assignedValue)
        if ((jio (BufferedImage.getHeight bufferedImage)) /= (jio (BufferedImage.getHeight bufferedImage2))) then do
            jset (this).isSameHeight (False)
            when ((jget (this).imageHeight) > (jio (BufferedImage.getHeight bufferedImage2))) $ do
                assignedValue <- (BufferedImage.getHeight bufferedImage2)
                jset (this).imageHeight (assignedValue)
        else do
            jset (this).isSameHeight (True)
        if ((jio (BufferedImage.getWidth bufferedImage)) /= (jio (BufferedImage.getWidth bufferedImage2))) then do
            jset (this).isSameWidth (False)
            when ((jget (this).imageWidth) > (jio (BufferedImage.getWidth bufferedImage2))) $ do
                assignedValue <- (BufferedImage.getWidth bufferedImage2)
                jset (this).imageWidth (assignedValue)
        else do
            jset (this).isSameWidth (True)
        when ((Prelude.not (jget (this).isSameWidth)) || (Prelude.not (jget (this).isSameHeight))) $ do
            imageUtil <- (ImageUtil.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Images were not the same size? Most likely a resolution change." this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("1: " ++ (jio (ImageUtil.toString imageUtil bufferedImage))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("2: " ++ (jio (ImageUtil.toString imageUtil bufferedImage2))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


getMatchingPercent :: (JavaObjectClass this_) => this_ -> IO (Float)
getMatchingPercent object_ = jmethod object_ "getMatchingPercent" (\() -> (getMatchingPercent_impl (javaCast object_ :: ImageComparisonSearch))) ()

getMatchingPercent_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getMatchingPercent_super object_ = (getMatchingPercent_impl (javaCast object_ :: ImageComparisonSearch))

getMatchingPercent_impl :: ImageComparisonSearch -> IO (Float)
getMatchingPercent_impl this = do
        when ((jget (this).matchingPercent) == (Prelude.fromIntegral ((Prelude.negate 1) :: Int))) $ do
            jset (this).matchingPercent (((Prelude.fromIntegral (jget (this).pixelsThatMatch)) / (Prelude.fromIntegral (((jget (this).imageWidth) * (jget (this).imageHeight))))))
        pure ((jget (this).matchingPercent))


add :: (JavaObjectClass this_) => this_ -> PixelDelta.PixelDelta -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ImageComparisonSearch))) () a1

add_super :: (JavaObjectClass this_) => this_ -> PixelDelta.PixelDelta -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: ImageComparisonSearch)) a1

add_impl :: ImageComparisonSearch -> PixelDelta.PixelDelta -> IO (())
add_impl this pixel = do
        Control.Monad.void (BasicArrayList.add ((jget (this).nonMatchingPixelVector)) pixel)
        pure ()


getNonMatchingPixelVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getNonMatchingPixelVector object_ = jmethod object_ "getNonMatchingPixelVector" (\() -> (getNonMatchingPixelVector_impl (javaCast object_ :: ImageComparisonSearch))) ()

getNonMatchingPixelVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getNonMatchingPixelVector_super object_ = (getNonMatchingPixelVector_impl (javaCast object_ :: ImageComparisonSearch))

getNonMatchingPixelVector_impl :: ImageComparisonSearch -> IO (BasicArrayList.BasicArrayList)
getNonMatchingPixelVector_impl this = do
        pure ((jget (this).nonMatchingPixelVector))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageComparisonSearch))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ImageComparisonSearch))

toString_impl :: ImageComparisonSearch -> IO (String)
toString_impl this = do
        pure ((((((((("ImageComparisonInfo: " ++ " Number Of Matching Pixels: ") ++ javaToString (jget (this).pixelsThatMatch)) ++ "\nNumber Of Non-Matching Pixels: ") ++ javaToString (jio (BasicArrayList.size ((jio (ImageComparisonSearch.getNonMatchingPixelVector this)))))) ++ "\nNumber Of Pixels Ignored: ") ++ javaToString (jget (this).pixelsIgnored)) ++ "\nMatching Percentage: ") ++ javaToString (jio (ImageComparisonSearch.getMatchingPercent this))))


getBufferedImages :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImages object_ = jmethod object_ "getBufferedImages" (\() -> (getBufferedImages_impl (javaCast object_ :: ImageComparisonSearch))) ()

getBufferedImages_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImages_super object_ = (getBufferedImages_impl (javaCast object_ :: ImageComparisonSearch))

getBufferedImages_impl :: ImageComparisonSearch -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImages_impl this = do
        pure ((jget (this).bufferedImages))


setBufferedImages :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> IO (())
setBufferedImages object_ a1 = jmethod object_ "setBufferedImages" (\() -> (setBufferedImages_impl (javaCast object_ :: ImageComparisonSearch))) () a1

setBufferedImages_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> IO (())
setBufferedImages_super object_ a1 = (setBufferedImages_impl (javaCast object_ :: ImageComparisonSearch)) a1

setBufferedImages_impl :: ImageComparisonSearch -> JavaArray (BufferedImage.BufferedImage) -> IO (())
setBufferedImages_impl this bufferedImages = do
        jset (this).bufferedImages (bufferedImages)
        pure ()


getTolerance :: (JavaObjectClass this_) => this_ -> IO (Int)
getTolerance object_ = jmethod object_ "getTolerance" (\() -> (getTolerance_impl (javaCast object_ :: ImageComparisonSearch))) ()

getTolerance_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTolerance_super object_ = (getTolerance_impl (javaCast object_ :: ImageComparisonSearch))

getTolerance_impl :: ImageComparisonSearch -> IO (Int)
getTolerance_impl this = do
        pure ((jget (this).tolerance))


setTolerance :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTolerance object_ a1 = jmethod object_ "setTolerance" (\() -> (setTolerance_impl (javaCast object_ :: ImageComparisonSearch))) () a1

setTolerance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTolerance_super object_ a1 = (setTolerance_impl (javaCast object_ :: ImageComparisonSearch)) a1

setTolerance_impl :: ImageComparisonSearch -> Int -> IO (())
setTolerance_impl this tolerance = do
        jset (this).tolerance (tolerance)
        pure ()


