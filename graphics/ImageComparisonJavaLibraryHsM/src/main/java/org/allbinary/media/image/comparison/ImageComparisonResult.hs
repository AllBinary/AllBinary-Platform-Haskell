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
module ImageComparisonResult where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ImageUtil -- org.allbinary.media.image.ImageUtil
import qualified PixelDelta -- org.allbinary.media.image.comparison.pixel.PixelDelta
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ImageComparisonResult = ImageComparisonResult
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , bufferedImages :: IORef (JavaArray (BufferedImage.BufferedImage))
    , name :: IORef (String)
    , isSameHeight :: IORef (Bool)
    , isSameWidth :: IORef (Bool)
    , imageHeight :: IORef (Int)
    , imageWidth :: IORef (Int)
    , nonMatchingPixelVector :: IORef (BasicArrayList.BasicArrayList)
    , frameOne :: IORef (Int64)
    , frameTwo :: IORef (Int64)
    , pixelsThatMatch :: IORef (Int)
    , pixelsIgnored :: IORef (Int)
    , tolerance :: IORef (Int)
    , matchingPercent :: IORef (Float)
    }

instance JavaNull ImageComparisonResult where
    javaNull = javaNullRecord "ImageComparisonResult"

instance JavaEquals ImageComparisonResult where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonResult where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonResult where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageComparisonResult
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    bufferedImages <- newIORef javaNull
    name <- newIORef ""
    isSameHeight <- newIORef False
    isSameWidth <- newIORef False
    imageHeight <- newIORef 0
    imageWidth <- newIORef 0
    nonMatchingPixelVector <- newIORef javaNull
    frameOne <- newIORef javaNull
    frameTwo <- newIORef javaNull
    pixelsThatMatch <- newIORef 0
    pixelsIgnored <- newIORef 0
    tolerance <- newIORef 0
    matchingPercent <- newIORef 0.0
    let this = ImageComparisonResult header_ logUtil commonStrings bufferedImages name isSameHeight isSameWidth imageHeight imageWidth nonMatchingPixelVector frameOne frameTwo pixelsThatMatch pixelsIgnored tolerance matchingPercent
    jregisterLevel header_ this
    jregisterMethod header_ "getMatchingPercent" (\() -> getMatchingPercent_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getNonMatchingPixelVector" (\() -> getNonMatchingPixelVector_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getBufferedImages" (\() -> getBufferedImages_impl this)
    jregisterMethod header_ "getTolerance" (\() -> getTolerance_impl this)
    jregisterMethod header_ "setTolerance" (\() -> setTolerance_impl this)
    jregisterMethod header_ "getFrameOne" (\() -> getFrameOne_impl this)
    jregisterMethod header_ "getFrameTwo" (\() -> getFrameTwo_impl this)
    pure this

initFields_ :: ImageComparisonResult -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.bufferedImages ((jnewArray (2) javaNull))
    jset this.name (javaNull)
    jset this.isSameHeight (False)
    jset this.isSameWidth (False)
    jset this.imageHeight (0)
    jset this.imageWidth (0)
    jset this.nonMatchingPixelVector (javaNull)
    jset this.frameOne (javaNull)
    jset this.frameTwo (javaNull)
    jset this.pixelsThatMatch (0)
    jset this.pixelsIgnored (0)
    jset this.tolerance (0)
    jset this.matchingPercent ((Prelude.fromIntegral ((Prelude.negate 1) :: Int)))
    pure ()

new_6 :: String -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int64 -> Int64 -> Int -> IO ImageComparisonResult
new_6 name bufferedImage bufferedImage2 frameOne frameTwo tolerance = do
    this <- newRecord_
    init_6 this name bufferedImage bufferedImage2 frameOne frameTwo tolerance
    pure this

init_6 :: ImageComparisonResult -> String -> BufferedImage.BufferedImage -> BufferedImage.BufferedImage -> Int64 -> Int64 -> Int -> IO ()
init_6 this name bufferedImage bufferedImage2 frameOne frameTwo tolerance = do
        initFields_ this
        jset (this).name (name)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).nonMatchingPixelVector (assignedValue)
        jsetIndex ((jget (this).bufferedImages)) (0) (bufferedImage)
        jsetIndex ((jget (this).bufferedImages)) (1) (bufferedImage2)
        jset (this).frameOne (frameOne)
        jset (this).frameTwo (frameTwo)
        Control.Monad.void (ImageComparisonResult.setTolerance this 0)
        imageHeight <- newIORef =<< (BufferedImage.getHeight bufferedImage)
        imageWidth <- newIORef =<< (BufferedImage.getWidth bufferedImage)
        if ((jio (BufferedImage.getHeight bufferedImage)) /= (jio (BufferedImage.getHeight bufferedImage2))) then do
            jset (this).isSameHeight (False)
            when ((jget imageHeight) > (jio (BufferedImage.getHeight bufferedImage2))) $ do
                assignedValue <- (BufferedImage.getHeight bufferedImage2)
                jset imageHeight (assignedValue)
        else do
            jset (this).isSameHeight (True)
        if ((jio (BufferedImage.getWidth bufferedImage)) /= (jio (BufferedImage.getWidth bufferedImage2))) then do
            jset (this).isSameWidth (False)
            when ((jget imageWidth) > (jio (BufferedImage.getWidth bufferedImage2))) $ do
                assignedValue <- (BufferedImage.getWidth bufferedImage2)
                jset imageWidth (assignedValue)
        else do
            jset (this).isSameWidth (True)
        jset (this).imageWidth ((jget imageWidth))
        jset (this).imageHeight ((jget imageHeight))
        when ((Prelude.not (jget (this).isSameWidth)) || (Prelude.not (jget (this).isSameHeight))) $ do
            imageUtil <- (ImageUtil.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Images were not the same size? Most likely a resolution change." this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("1: " ++ (jio (ImageUtil.toString imageUtil bufferedImage))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("2: " ++ (jio (ImageUtil.toString imageUtil bufferedImage2))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


getMatchingPercent :: (JavaObjectClass this_) => this_ -> IO (Float)
getMatchingPercent object_ = jmethod object_ "getMatchingPercent" (\() -> (getMatchingPercent_impl (javaCast object_ :: ImageComparisonResult))) ()

getMatchingPercent_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getMatchingPercent_super object_ = (getMatchingPercent_impl (javaCast object_ :: ImageComparisonResult))

getMatchingPercent_impl :: ImageComparisonResult -> IO (Float)
getMatchingPercent_impl this = do
        when ((jget (this).matchingPercent) == (Prelude.fromIntegral ((Prelude.negate 1) :: Int))) $ do
            jset (this).matchingPercent (((Prelude.fromIntegral (jget (this).pixelsThatMatch)) / (Prelude.fromIntegral (((jget (this).imageWidth) * (jget (this).imageHeight))))))
        pure ((jget (this).matchingPercent))


add :: (JavaObjectClass this_) => this_ -> PixelDelta.PixelDelta -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ImageComparisonResult))) () a1

add_super :: (JavaObjectClass this_) => this_ -> PixelDelta.PixelDelta -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: ImageComparisonResult)) a1

add_impl :: ImageComparisonResult -> PixelDelta.PixelDelta -> IO (())
add_impl this pixel = do
        Control.Monad.void (BasicArrayList.add ((jget (this).nonMatchingPixelVector)) pixel)
        pure ()


getNonMatchingPixelVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getNonMatchingPixelVector object_ = jmethod object_ "getNonMatchingPixelVector" (\() -> (getNonMatchingPixelVector_impl (javaCast object_ :: ImageComparisonResult))) ()

getNonMatchingPixelVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getNonMatchingPixelVector_super object_ = (getNonMatchingPixelVector_impl (javaCast object_ :: ImageComparisonResult))

getNonMatchingPixelVector_impl :: ImageComparisonResult -> IO (BasicArrayList.BasicArrayList)
getNonMatchingPixelVector_impl this = do
        pure ((jget (this).nonMatchingPixelVector))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageComparisonResult))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ImageComparisonResult))

toString_impl :: ImageComparisonResult -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "ImageComparisonInfo: "))) (jget (this).name)))) " Number Of Matching Pixels: "))) (jget (this).pixelsThatMatch)))) "\nNumber Of Non-Matching Pixels: "))) (jio (BasicArrayList.size ((jio (ImageComparisonResult.getNonMatchingPixelVector this)))))))) "\nNumber Of Pixels Ignored: "))) (jget (this).pixelsIgnored)))) "\nMatching Percentage: "))) (jio (ImageComparisonResult.getMatchingPercent this))))))


getBufferedImages :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImages object_ = jmethod object_ "getBufferedImages" (\() -> (getBufferedImages_impl (javaCast object_ :: ImageComparisonResult))) ()

getBufferedImages_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImages_super object_ = (getBufferedImages_impl (javaCast object_ :: ImageComparisonResult))

getBufferedImages_impl :: ImageComparisonResult -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImages_impl this = do
        pure ((jget (this).bufferedImages))


getTolerance :: (JavaObjectClass this_) => this_ -> IO (Int)
getTolerance object_ = jmethod object_ "getTolerance" (\() -> (getTolerance_impl (javaCast object_ :: ImageComparisonResult))) ()

getTolerance_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTolerance_super object_ = (getTolerance_impl (javaCast object_ :: ImageComparisonResult))

getTolerance_impl :: ImageComparisonResult -> IO (Int)
getTolerance_impl this = do
        pure ((jget (this).tolerance))


setTolerance :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTolerance object_ a1 = jmethod object_ "setTolerance" (\() -> (setTolerance_impl (javaCast object_ :: ImageComparisonResult))) () a1

setTolerance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTolerance_super object_ a1 = (setTolerance_impl (javaCast object_ :: ImageComparisonResult)) a1

setTolerance_impl :: ImageComparisonResult -> Int -> IO (())
setTolerance_impl this tolerance = do
        jset (this).tolerance (tolerance)
        pure ()


getFrameOne :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrameOne object_ = jmethod object_ "getFrameOne" (\() -> (getFrameOne_impl (javaCast object_ :: ImageComparisonResult))) ()

getFrameOne_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrameOne_super object_ = (getFrameOne_impl (javaCast object_ :: ImageComparisonResult))

getFrameOne_impl :: ImageComparisonResult -> IO (Int64)
getFrameOne_impl this = do
        pure ((jget (this).frameOne))


getFrameTwo :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrameTwo object_ = jmethod object_ "getFrameTwo" (\() -> (getFrameTwo_impl (javaCast object_ :: ImageComparisonResult))) ()

getFrameTwo_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrameTwo_super object_ = (getFrameTwo_impl (javaCast object_ :: ImageComparisonResult))

getFrameTwo_impl :: ImageComparisonResult -> IO (Int64)
getFrameTwo_impl this = do
        pure ((jget (this).frameTwo))


