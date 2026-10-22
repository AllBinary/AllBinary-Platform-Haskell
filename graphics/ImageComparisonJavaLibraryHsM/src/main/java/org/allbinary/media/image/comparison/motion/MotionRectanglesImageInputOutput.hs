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
module MotionRectanglesImageInputOutput where

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
import qualified AllMotionRectanglesResultsCacheSingleton -- same package or java.lang
import qualified MotionRectanglesResultsFrameCacheable -- same package or java.lang
import qualified MotionRectangles -- same package or java.lang
import qualified ConsolidatedMotionRectanglesResultsCacheSingleton -- same package or java.lang
import qualified ConstrainedMotionRectanglesResultsCacheSingleton -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified MotionRectangle -- same package or java.lang
import qualified Rectangle -- same package or java.lang
import qualified Color -- same package or java.lang
import qualified MediaData -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ImageOutputData -- org.allbinary.input.automation.ImageOutputData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LongUtil -- org.allbinary.logic.java.number.LongUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AutomaticCacheInterface -- org.allbinary.logic.util.cache.AutomaticCacheInterface
import qualified PoolInterface -- org.allbinary.logic.util.cache.PoolInterface
import qualified MediaDataFactory -- org.allbinary.logic.visual.media.MediaDataFactory
import qualified ImagePersistanceUtil -- org.allbinary.media.image.ImagePersistanceUtil
import qualified BufferedImageCacheable -- org.allbinary.media.image.cache.BufferedImageCacheable
import qualified BufferedImageInfo -- org.allbinary.media.image.cache.BufferedImageInfo
import qualified BufferedImageInfoFactory -- org.allbinary.media.image.cache.BufferedImageInfoFactory
import qualified BufferedImagePoolSingleton -- org.allbinary.media.image.cache.BufferedImagePoolSingleton
import qualified ImageComparisonResult -- org.allbinary.media.image.comparison.ImageComparisonResult
import qualified ImageIOInterface -- org.allbinary.media.image.io.ImageIOInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*

-- implements ImageIOInterface
data MotionRectanglesImageInputOutput = MotionRectanglesImageInputOutput
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , nUMBER_OF_IMAGES :: IORef (Int)
    }

instance JavaNull MotionRectanglesImageInputOutput where
    javaNull = javaNullRecord "MotionRectanglesImageInputOutput"

instance JavaEquals MotionRectanglesImageInputOutput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionRectanglesImageInputOutput where
    (==) = jrecordEquals

instance JavaObjectClass MotionRectanglesImageInputOutput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MotionRectanglesImageInputOutput
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    nUMBER_OF_IMAGES <- newIORef 0
    let this = MotionRectanglesImageInputOutput header_ logUtil nUMBER_OF_IMAGES
    jregisterLevel header_ this
    ImageIOInterface.registerInterface_ header_
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "save_2" (\() -> save_2_impl this)
    pure this

initFields_ :: MotionRectanglesImageInputOutput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.nUMBER_OF_IMAGES (1)
    pure ()

new_ :: IO MotionRectanglesImageInputOutput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MotionRectanglesImageInputOutput -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
save object_ a1 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: MotionRectanglesImageInputOutput))) () a1

save_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
save_super object_ a1 = (save_impl (javaCast object_ :: MotionRectanglesImageInputOutput)) a1

save_impl :: MotionRectanglesImageInputOutput -> Int64 -> IO (())
save_impl this frame = do
        commonStrings <- (CommonStrings.getInstance)
        motionRectanglesResultsFrameCacheable <- newIORef ((javaCast (jio (get (((javaCast (jio (AllMotionRectanglesResultsCacheSingleton.getInstance)) :: AutomaticCacheInterface.AutomaticCacheInterface))) frame)) :: MotionRectanglesResultsFrameCacheable.MotionRectanglesResultsFrameCacheable))
        if ((jget motionRectanglesResultsFrameCacheable) /= javaNull) then do
            motionRectangles <- newIORef =<< (MotionRectanglesResultsFrameCacheable.getMotionRectangles ((jget motionRectanglesResultsFrameCacheable)))
            Control.Monad.void (MotionRectanglesImageInputOutput.save_2 this (jget motionRectangles) frame)
            jset motionRectanglesResultsFrameCacheable ((javaCast (jio (get (((javaCast (jio (ConsolidatedMotionRectanglesResultsCacheSingleton.getInstance)) :: AutomaticCacheInterface.AutomaticCacheInterface))) frame)) :: MotionRectanglesResultsFrameCacheable.MotionRectanglesResultsFrameCacheable))
            assignedValue <- (MotionRectanglesResultsFrameCacheable.getMotionRectangles ((jget motionRectanglesResultsFrameCacheable)))
            jset motionRectangles (assignedValue)
            Control.Monad.void (MotionRectanglesImageInputOutput.save_2 this (jget motionRectangles) frame)
            jset motionRectanglesResultsFrameCacheable ((javaCast (jio (get (((javaCast (jio (ConstrainedMotionRectanglesResultsCacheSingleton.getInstance)) :: AutomaticCacheInterface.AutomaticCacheInterface))) frame)) :: MotionRectanglesResultsFrameCacheable.MotionRectanglesResultsFrameCacheable))
            assignedValue <- (MotionRectanglesResultsFrameCacheable.getMotionRectangles ((jget motionRectanglesResultsFrameCacheable)))
            jset motionRectangles (assignedValue)
            Control.Monad.void (MotionRectanglesImageInputOutput.save_2 this (jget motionRectangles) frame)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("No Motion Rectangle Results for Frame: " ++ javaToString frame) this (jget (commonStrings).sAVE))
        pure ()


-- throws Exception
save_2 :: (JavaObjectClass this_) => this_ -> MotionRectangles.MotionRectangles -> Int64 -> IO (())
save_2 object_ a1 a2 = jmethod object_ "save_2" (\() -> (save_2_impl (javaCast object_ :: MotionRectanglesImageInputOutput))) () a1 a2

save_2_super :: (JavaObjectClass this_) => this_ -> MotionRectangles.MotionRectangles -> Int64 -> IO (())
save_2_super object_ a1 a2 = (save_2_impl (javaCast object_ :: MotionRectanglesImageInputOutput)) a1 a2

save_2_impl :: MotionRectanglesImageInputOutput -> MotionRectangles.MotionRectangles -> Int64 -> IO (())
save_2_impl this motionRectangles frame = do
        commonStrings <- (CommonStrings.getInstance)
        filePathStringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer (ImageOutputData.sAVE_PATH))
        Control.Monad.void (StringMaker.append filePathStringBuffer (jio (LongUtil.fillIn (javaToString frame))))
        Control.Monad.void (StringMaker.append filePathStringBuffer "_")
        Control.Monad.void (StringMaker.append filePathStringBuffer (jio (MotionRectangles.getName motionRectangles)))
        filePathStringBuffer1 <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer1 (jio (StringMaker.toString filePathStringBuffer)))
        Control.Monad.void (StringMaker.append filePathStringBuffer1 "_1")
        Control.Monad.void (StringMaker.append filePathStringBuffer1 (jio (MediaData.getExtension ((jget ((jio (MediaDataFactory.getInstance))).jPG)))))
        filePathStringBuffer2 <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer2 (jio (StringMaker.toString filePathStringBuffer)))
        Control.Monad.void (StringMaker.append filePathStringBuffer2 "_2")
        Control.Monad.void (StringMaker.append filePathStringBuffer2 (jio (MediaData.getExtension ((jget ((jio (MediaDataFactory.getInstance))).jPG)))))
        filePathStringBuffer3 <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer3 (jio (StringMaker.toString filePathStringBuffer)))
        Control.Monad.void (StringMaker.append filePathStringBuffer3 (jio (MediaData.getExtension ((jget ((jio (MediaDataFactory.getInstance))).jPG)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Motion Image File Path 1: " ++ (jio (StringMaker.toString filePathStringBuffer1))) this (jget (commonStrings).sAVE))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Motion Image File Path 2: " ++ (jio (StringMaker.toString filePathStringBuffer2))) this (jget (commonStrings).sAVE))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Motion Image File Path 2: " ++ (jio (StringMaker.toString filePathStringBuffer3))) this (jget (commonStrings).sAVE))
        let bufferedImageCacheables = (jnewArray ((jget (this).nUMBER_OF_IMAGES)) javaNull)
        imageComparisonInfo <- (MotionRectangles.getImageComparisonResult motionRectangles)
        let originalBufferedImage = (jindex ((jio (ImageComparisonResult.getBufferedImages imageComparisonInfo))) (0))
        bufferedImageInfo <- (BufferedImageInfoFactory.getInstance (jget (imageComparisonInfo).imageWidth) (jget (imageComparisonInfo).imageHeight) (jio (BufferedImage.getType originalBufferedImage)))
        poolInterface <- (BufferedImagePoolSingleton.getInstance)
        forM_ [0 .. (jget (this).nUMBER_OF_IMAGES) - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex bufferedImageCacheables (index) ((javaCast (jio (PoolInterface.remove poolInterface bufferedImageInfo)) :: BufferedImageCacheable.BufferedImageCacheable))
        Control.Monad.void (setData ((jio (getBufferedImage ((jindex bufferedImageCacheables (0)))))) (jio (getData ((jindex ((jio (ImageComparisonResult.getBufferedImages imageComparisonInfo))) (1))))))
        when ((jget (this).nUMBER_OF_IMAGES) > 1) $ do
            Control.Monad.void (setData ((jio (getBufferedImage ((jindex bufferedImageCacheables (1)))))) (jio (getData ((jindex ((jio (ImageComparisonResult.getBufferedImages imageComparisonInfo))) (1))))))
        bufferedImageGraphicsArray <- newIORef (javaNull)
        jset bufferedImageGraphicsArray ((jnewArray ((jget (this).nUMBER_OF_IMAGES)) javaNull))
        forM_ [0 .. (jget (this).nUMBER_OF_IMAGES) - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (getGraphics ((jio (getBufferedImage ((jindex bufferedImageCacheables (index)))))))
            jsetIndex ((jget bufferedImageGraphicsArray)) (index) (assignedValue)
        rectangelList <- (MotionRectangles.getVector motionRectangles)
        size <- (BasicArrayList.size rectangelList)
        forM_ [0 .. size - 1] $ \index2 -> javaIteration (pure ()) $ do
            let motionRectangle = (javaCast (jio (BasicArrayList.get rectangelList index2)) :: MotionRectangle.MotionRectangle)
            rectangle <- (MotionRectangle.getRectangle motionRectangle)
            forM_ [0 .. (jget (this).nUMBER_OF_IMAGES) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (setColor ((jindex ((jget bufferedImageGraphicsArray)) (index))) (Color.oRANGE))
                Control.Monad.void (drawRect ((jindex ((jget bufferedImageGraphicsArray)) (index))) (jget (rectangle).x) (jget (rectangle).y) (jget (rectangle).width) (jget (rectangle).height))
        imagePersistanceUtil <- (ImagePersistanceUtil.getInstance)
        when ((jget (this).nUMBER_OF_IMAGES) > 1) $ do
            Control.Monad.void (ImagePersistanceUtil.saveWithImageIO imagePersistanceUtil (jio (StringMaker.toString filePathStringBuffer1)) (jio (getBufferedImage ((jindex bufferedImageCacheables (1))))))
        Control.Monad.void (ImagePersistanceUtil.saveWithImageIO imagePersistanceUtil (jio (StringMaker.toString filePathStringBuffer2)) (jio (getBufferedImage ((jindex bufferedImageCacheables (0))))))
        when ((jget (this).nUMBER_OF_IMAGES) > 2) $ do
            Control.Monad.void (ImagePersistanceUtil.saveWithImageIO imagePersistanceUtil (jio (StringMaker.toString filePathStringBuffer3)) (jio (getBufferedImage ((jindex bufferedImageCacheables (2))))))
        pure ()


