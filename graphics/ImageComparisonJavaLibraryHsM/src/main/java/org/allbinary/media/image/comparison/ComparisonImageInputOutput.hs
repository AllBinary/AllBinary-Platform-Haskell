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
module ComparisonImageInputOutput where

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
import qualified ImageComparisonResultCacheSingleton -- same package or java.lang
import qualified ImageComparisonResultFrameCacheable -- same package or java.lang
import qualified ImageComparisonResult -- same package or java.lang
import qualified ChangedPixelsUtil -- same package or java.lang
import qualified MediaData -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified ImageOutputData -- org.allbinary.input.automation.ImageOutputData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LongUtil -- org.allbinary.logic.java.number.LongUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AutomaticCacheInterface -- org.allbinary.logic.util.cache.AutomaticCacheInterface
import qualified MediaDataFactory -- org.allbinary.logic.visual.media.MediaDataFactory
import qualified ImagePersistanceUtil -- org.allbinary.media.image.ImagePersistanceUtil
import qualified BufferedImageCacheable -- org.allbinary.media.image.cache.BufferedImageCacheable
import qualified ImageIOInterface -- org.allbinary.media.image.io.ImageIOInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements ImageIOInterface
data ComparisonImageInputOutput = ComparisonImageInputOutput
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ComparisonImageInputOutput where
    javaNull = javaNullRecord "ComparisonImageInputOutput"

instance JavaEquals ComparisonImageInputOutput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ComparisonImageInputOutput where
    (==) = jrecordEquals

instance JavaObjectClass ComparisonImageInputOutput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

rOOT_NAME = "_Changed_"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ComparisonImageInputOutput
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ComparisonImageInputOutput header_ logUtil
    jregisterLevel header_ this
    ImageIOInterface.registerInterface_ header_
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    pure this

initFields_ :: ComparisonImageInputOutput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO ComparisonImageInputOutput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ComparisonImageInputOutput -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
save object_ a1 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: ComparisonImageInputOutput))) () a1

save_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
save_super object_ a1 = (save_impl (javaCast object_ :: ComparisonImageInputOutput)) a1

save_impl :: ComparisonImageInputOutput -> Int64 -> IO (())
save_impl this frame = do
        commonStrings <- (CommonStrings.getInstance)
        if (frame > 0) then do
            let imageComparisonResultFrameCacheable = (javaCast (jio (get (((javaCast (jio (ImageComparisonResultCacheSingleton.getInstance)) :: AutomaticCacheInterface.AutomaticCacheInterface))) frame)) :: ImageComparisonResultFrameCacheable.ImageComparisonResultFrameCacheable)
            if (imageComparisonResultFrameCacheable /= javaNull) then do
                imageComparisonResult <- (ImageComparisonResultFrameCacheable.getImageComparisonResult imageComparisonResultFrameCacheable)
                Control.Monad.void (ComparisonImageInputOutput.save this imageComparisonResult (jio (ImageComparisonResultFrameCacheable.getFrame imageComparisonResultFrameCacheable)))
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Comparison Results Not Available for Output: " ++ javaToString frame) this (jget (commonStrings).sAVE))
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("No Comparison Results: for first frame: " ++ javaToString frame) this (jget (commonStrings).sAVE))
        pure ()


-- throws Exception
-- Java overload of save with a different parameter count: give it a different name
save :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> Int64 -> IO (())
save object_ a1 a2 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: ComparisonImageInputOutput))) () a1 a2

save_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> Int64 -> IO (())
save_super object_ a1 a2 = (save_impl (javaCast object_ :: ComparisonImageInputOutput)) a1 a2

save_impl :: ComparisonImageInputOutput -> ImageComparisonResult.ImageComparisonResult -> Int64 -> IO (())
save_impl this imageComparisonResult frame = do
        commonStrings <- (CommonStrings.getInstance)
        filePathStringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer (ImageOutputData.sAVE_PATH))
        Control.Monad.void (StringMaker.append filePathStringBuffer (jio (LongUtil.fillIn (javaToString frame))))
        Control.Monad.void (StringMaker.append filePathStringBuffer (ComparisonImageInputOutput.rOOT_NAME))
        filePathStringBuffer1 <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer1 (jio (StringMaker.toString filePathStringBuffer)))
        Control.Monad.void (StringMaker.append filePathStringBuffer1 "_1")
        Control.Monad.void (StringMaker.append filePathStringBuffer1 (jio (MediaData.getExtension ((jget ((jio (MediaDataFactory.getInstance))).jPG)))))
        filePath1 <- (StringMaker.toString filePathStringBuffer1)
        filePathStringBuffer2 <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer2 (jio (StringMaker.toString filePathStringBuffer)))
        Control.Monad.void (StringMaker.append filePathStringBuffer2 "_2")
        Control.Monad.void (StringMaker.append filePathStringBuffer2 (jio (MediaData.getExtension ((jget ((jio (MediaDataFactory.getInstance))).jPG)))))
        filePath2 <- (StringMaker.toString filePathStringBuffer2)
        bufferedImageCacheables <- (ChangedPixelsUtil.generateBufferedImageChacheables imageComparisonResult)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Comparison Image File Path 1: " ++ filePath1) this (jget (commonStrings).sAVE))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Comparison Image File Path 2: " ++ filePath2) this (jget (commonStrings).sAVE))
        let bufferedImageArray = (jnewArray (2) javaNull)
        assignedValue <- (getBufferedImage ((jindex bufferedImageCacheables (0))))
        jsetIndex bufferedImageArray (0) (assignedValue)
        assignedValue <- (getBufferedImage ((jindex bufferedImageCacheables (1))))
        jsetIndex bufferedImageArray (1) (assignedValue)
        imagePersistanceUtil <- (ImagePersistanceUtil.getInstance)
        Control.Monad.void (ImagePersistanceUtil.saveWithImageIO imagePersistanceUtil filePath1 (jindex bufferedImageArray (0)))
        Control.Monad.void (ImagePersistanceUtil.saveWithImageIO imagePersistanceUtil filePath2 (jindex bufferedImageArray (1)))
        pure ()


