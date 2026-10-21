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
module ChangedPixelsUtil where

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
import qualified ImageComparisonResult -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PoolInterface -- org.allbinary.logic.util.cache.PoolInterface
import qualified BufferedImageCacheable -- org.allbinary.media.image.cache.BufferedImageCacheable
import qualified BufferedImageInfo -- org.allbinary.media.image.cache.BufferedImageInfo
import qualified BufferedImageInfoFactory -- org.allbinary.media.image.cache.BufferedImageInfoFactory
import qualified BufferedImagePoolSingleton -- org.allbinary.media.image.cache.BufferedImagePoolSingleton
import qualified PixelDelta -- org.allbinary.media.image.comparison.pixel.PixelDelta

data ChangedPixelsUtil = ChangedPixelsUtil
    { header_ :: JavaHeader
    }

instance JavaNull ChangedPixelsUtil where
    javaNull = javaNullRecord "ChangedPixelsUtil"

instance JavaEquals ChangedPixelsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ChangedPixelsUtil where
    (==) = jrecordEquals

instance JavaObjectClass ChangedPixelsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

sTART_X = 0

sTART_Y = 0

oFFSET = 0

sCAN_SIZE = 0

cLEAR_INT_ARRAY = (jnewArray ((1800 * 1600)) 0)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ChangedPixelsUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ChangedPixelsUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: ChangedPixelsUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ChangedPixelsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ChangedPixelsUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
generateBufferedImageChacheables :: ImageComparisonResult.ImageComparisonResult -> IO (JavaArray (BufferedImageCacheable.BufferedImageCacheable))
generateBufferedImageChacheables imageComparisonInfo = do
        bufferedImageCacheables <- newIORef (javaNull)
        let originalBufferedImage = (jindex ((jio (ImageComparisonResult.getBufferedImages imageComparisonInfo))) (0))
        jset bufferedImageCacheables ((jnewArray (2) javaNull))
        bufferedImageInfo <- (BufferedImageInfoFactory.getInstance (jget (imageComparisonInfo).imageWidth) (jget (imageComparisonInfo).imageHeight) (jio (BufferedImage.getType originalBufferedImage)))
        poolInterface <- (BufferedImagePoolSingleton.getInstance)
        forM_ [0 .. (jlength (jget bufferedImageCacheables)) - 1] $ \index -> javaIteration (pure ()) $ do
            let bufferedImageCacheable = (javaCast (jio (PoolInterface.remove poolInterface bufferedImageInfo)) :: BufferedImageCacheable.BufferedImageCacheable)
            jsetIndex ((jget bufferedImageCacheables)) (index) (bufferedImageCacheable)
            Control.Monad.void (setRGB ((jio (getBufferedImage ((jindex ((jget bufferedImageCacheables)) (index)))))) (ChangedPixelsUtil.sTART_X) (ChangedPixelsUtil.sTART_Y) (jio (BufferedImageInfo.getWidth bufferedImageInfo)) (jio (BufferedImageInfo.getHeight bufferedImageInfo)) (ChangedPixelsUtil.cLEAR_INT_ARRAY) (ChangedPixelsUtil.oFFSET) (ChangedPixelsUtil.sCAN_SIZE))
        vector <- (ImageComparisonResult.getNonMatchingPixelVector imageComparisonInfo)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let pixelDelta = (javaCast (jio (BasicArrayList.get vector index)) :: PixelDelta.PixelDelta)
            when ((jio (PixelDelta.getColorDelta pixelDelta)) == javaNull) $ do
                Control.Monad.void (putStr (javaToString "ColorDelta"))
                Control.Monad.void (System.exit 0)
            Control.Monad.void (setRGB ((jio (getBufferedImage ((jindex ((jget bufferedImageCacheables)) (0)))))) (jio (GPoint.getX ((jio (PixelDelta.getPoint pixelDelta))))) (jio (GPoint.getY ((jio (PixelDelta.getPoint pixelDelta))))) (jio (ColorDelta.getRgb1 ((jio (PixelDelta.getColorDelta pixelDelta))))))
            Control.Monad.void (setRGB ((jio (getBufferedImage ((jindex ((jget bufferedImageCacheables)) (1)))))) (jio (GPoint.getX ((jio (PixelDelta.getPoint pixelDelta))))) (jio (GPoint.getY ((jio (PixelDelta.getPoint pixelDelta))))) (jio (ColorDelta.getRgb2 ((jio (PixelDelta.getColorDelta pixelDelta))))))
        pure ((jget bufferedImageCacheables))


