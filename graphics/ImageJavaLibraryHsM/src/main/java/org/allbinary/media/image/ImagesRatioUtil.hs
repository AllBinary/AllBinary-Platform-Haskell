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
-- package org.allbinary.media.image
module ImagesRatioUtil where

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
import qualified ImageUtil -- same package or java.lang
import qualified Point -- same package or java.lang
import qualified Graphics2D -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
-- import java.awt.*

data ImagesRatioUtil = ImagesRatioUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , imageUtil :: IORef (ImageUtil.ImageUtil)
    }

instance JavaNull ImagesRatioUtil where
    javaNull = javaNullRecord "ImagesRatioUtil"

instance JavaEquals ImagesRatioUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImagesRatioUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImagesRatioUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImagesRatioUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    imageUtil <- newIORef javaNull
    let this = ImagesRatioUtil header_ logUtil imageUtil
    jregisterLevel header_ this
    jregisterMethod header_ "isEqual" (\() -> isEqual_impl this)
    jregisterMethod header_ "getAverage" (\() -> getAverage_impl this)
    jregisterMethod header_ "fudge" (\() -> fudge_impl this)
    jregisterMethod header_ "fudge" (\() -> fudge_impl this)
    pure this

initFields_ :: ImagesRatioUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.imageUtil =<< (ImageUtil.getInstance)
    pure ()


getInstance :: IO (ImagesRatioUtil)
getInstance = do
        pure (ImagesRatioUtil.instance_)

new_ :: IO ImagesRatioUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImagesRatioUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isEqual :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> IO (Bool)
isEqual object_ a1 a2 = jmethod object_ "isEqual" (\() -> (isEqual_impl (javaCast object_ :: ImagesRatioUtil))) () a1 a2

isEqual_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> IO (Bool)
isEqual_super object_ a1 a2 = (isEqual_impl (javaCast object_ :: ImagesRatioUtil)) a1 a2

isEqual_impl :: ImagesRatioUtil -> JavaArray (BufferedImage.BufferedImage) -> Int -> IO (Bool)
isEqual_impl this bufferedImageArray totalImages = do
    javaCatchReturn $ do
        end <- newIORef (totalImages)
        when ((jlength bufferedImageArray) < totalImages) $ do
            jset end ((jlength bufferedImageArray))
        let ratio = (((Prelude.realToFrac (jnumericDouble (jio (getWidth ((jindex bufferedImageArray (0))))))) / (jio (getHeight ((jindex bufferedImageArray (0)))))))
        forM_ [1 .. (jget end) - 1] $ \index -> javaIteration (pure ()) $ do
            when (ratio /= (((Prelude.realToFrac (jnumericDouble (jio (getWidth ((jindex bufferedImageArray (index))))))) / (jio (getHeight ((jindex bufferedImageArray (index)))))))) $ do
                javaReturn (False)
        pure (True)


getAverage :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> IO (Double)
getAverage object_ a1 a2 = jmethod object_ "getAverage" (\() -> (getAverage_impl (javaCast object_ :: ImagesRatioUtil))) () a1 a2

getAverage_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> IO (Double)
getAverage_super object_ a1 a2 = (getAverage_impl (javaCast object_ :: ImagesRatioUtil)) a1 a2

getAverage_impl :: ImagesRatioUtil -> JavaArray (BufferedImage.BufferedImage) -> Int -> IO (Double)
getAverage_impl this bufferedImageArray totalImages = do
        ratio <- newIORef (0.0)
        end <- newIORef (totalImages)
        when ((jlength bufferedImageArray) < totalImages) $ do
            jset end ((jlength bufferedImageArray))
        forM_ [0 .. (jget end) - 1] $ \index -> javaIteration (pure ()) $ do
            jset ratio (((jget ratio) + (((Prelude.realToFrac (jnumericDouble (jio (getWidth ((jindex bufferedImageArray (index))))))) / (jio (getHeight ((jindex bufferedImageArray (index)))))))))
        pure ((((jget ratio) / (Prelude.fromIntegral (jget end)))))


-- throws Exception
fudge :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Double -> IO (BufferedImage.BufferedImage)
fudge object_ a1 a2 = jmethod object_ "fudge" (\() -> (fudge_impl (javaCast object_ :: ImagesRatioUtil))) () a1 a2

fudge_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Double -> IO (BufferedImage.BufferedImage)
fudge_super object_ a1 a2 = (fudge_impl (javaCast object_ :: ImagesRatioUtil)) a1 a2

fudge_impl :: ImagesRatioUtil -> BufferedImage.BufferedImage -> Double -> IO (BufferedImage.BufferedImage)
fudge_impl this bufferedImage ratio = do
        let imageRatio = (((Prelude.realToFrac (jnumericDouble (jio (BufferedImage.getWidth bufferedImage)))) / (jio (BufferedImage.getHeight bufferedImage))))
        point <- (Point.new_)
        newHeight <- newIORef =<< (BufferedImage.getHeight bufferedImage)
        newWidth <- newIORef =<< (BufferedImage.getWidth bufferedImage)
        if (ratio > imageRatio) then do
            jset newWidth ((Prelude.truncate (((Prelude.realToFrac (jnumericDouble (jio (BufferedImage.getHeight bufferedImage)))) * ratio))))
            jset (point).x (((((jget newWidth) - (jio (BufferedImage.getWidth bufferedImage)))) / 2))
        else do
            jset newHeight ((Prelude.truncate (((Prelude.realToFrac (jnumericDouble (jio (BufferedImage.getWidth bufferedImage)))) / ratio))))
            jset (point).y (((((jget newHeight) - (jio (BufferedImage.getHeight bufferedImage)))) / 2))
        commonLabels <- (CommonLabels.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((((((((javaToString ((jget (commonLabels).wIDTH_LABEL) + (jio (BufferedImage.getWidth bufferedImage))) ++ " newWidth: ") ++ javaToString (jget newWidth)) ++ javaToString (jget (commonLabels).hEIGHT_LABEL)) ++ javaToString (jio (BufferedImage.getHeight bufferedImage))) ++ " newHeight: ") ++ javaToString (jget newHeight)) ++ " needed ratio: ") ++ javaToString (((Prelude.fromIntegral (jget newWidth)) / (Prelude.fromIntegral (jget newHeight))))) this "fudge")
        newBufferedImage <- (ImageUtil.create ((jget (this).imageUtil)) (jget newWidth) (jget newHeight))
        g <- (BufferedImage.createGraphics newBufferedImage)
        when ((jget (point).x) > 0) $ do
            firstColumnBufferedImage <- (BufferedImage.getSubimage bufferedImage 0 0 1 (jio (BufferedImage.getHeight bufferedImage)))
            lastColumnBufferedImage <- (BufferedImage.getSubimage bufferedImage ((jio (BufferedImage.getWidth bufferedImage)) - 1) 0 1 (jio (BufferedImage.getHeight bufferedImage)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Draw some columns to fill in gap" this "fudge")
            forM_ [0 .. (jget (point).x) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (Graphics2D.drawImage g firstColumnBufferedImage index 0 javaNull)
                Control.Monad.void (Graphics2D.drawImage g lastColumnBufferedImage ((jget newWidth) - index) 0 javaNull)
        when ((jget (point).y) > 0) $ do
            firstRowBufferedImage <- (BufferedImage.getSubimage bufferedImage 0 0 (jio (BufferedImage.getWidth bufferedImage)) 1)
            lastRowBufferedImage <- (BufferedImage.getSubimage bufferedImage 0 ((jio (BufferedImage.getHeight bufferedImage)) - 1) (jio (BufferedImage.getWidth bufferedImage)) 1)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Draw some rows to fill in gap" this "fudge")
            forM_ [0 .. (jget (point).y) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (Graphics2D.drawImage g firstRowBufferedImage 0 index javaNull)
                Control.Monad.void (Graphics2D.drawImage g lastRowBufferedImage 0 ((jget newHeight) - index) javaNull)
        Control.Monad.void (Graphics2D.drawImage g bufferedImage (jget (point).x) (jget (point).y) (jio (BufferedImage.getWidth bufferedImage)) (jio (BufferedImage.getHeight bufferedImage)) javaNull)
        pure (newBufferedImage)


-- throws Exception
-- Java overload of fudge with a different parameter count: give it a different name
fudge :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> Double -> IO (JavaArray (BufferedImage.BufferedImage))
fudge object_ a1 a2 a3 = jmethod object_ "fudge" (\() -> (fudge_impl (javaCast object_ :: ImagesRatioUtil))) () a1 a2 a3

fudge_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> Double -> IO (JavaArray (BufferedImage.BufferedImage))
fudge_super object_ a1 a2 a3 = (fudge_impl (javaCast object_ :: ImagesRatioUtil)) a1 a2 a3

fudge_impl :: ImagesRatioUtil -> JavaArray (BufferedImage.BufferedImage) -> Int -> Double -> IO (JavaArray (BufferedImage.BufferedImage))
fudge_impl this bufferedImageArray totalImages ratio = do
        end <- newIORef (totalImages)
        when ((jlength bufferedImageArray) < totalImages) $ do
            jset end ((jlength bufferedImageArray))
        let fudgedBufferedImageArray = (jnewArray ((jget end)) javaNull)
        forM_ [0 .. (jget end) - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (ImagesRatioUtil.fudge this (jindex bufferedImageArray (index)) ratio)
            jsetIndex fudgedBufferedImageArray (index) (assignedValue)
        pure (fudgedBufferedImageArray)


