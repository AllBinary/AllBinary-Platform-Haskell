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
-- package org.allbinary.input.media.image.capture
module CapturedImageInputOutput where

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
import qualified CapturedBufferedImagesCacheSingleton -- same package or java.lang
import qualified MediaData -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified ImageOutputData -- org.allbinary.input.automation.ImageOutputData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LongUtil -- org.allbinary.logic.java.number.LongUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AutomaticCacheInterface -- org.allbinary.logic.util.cache.AutomaticCacheInterface
import qualified MediaDataFactory -- org.allbinary.logic.visual.media.MediaDataFactory
import qualified ImagePersistanceUtil -- org.allbinary.media.image.ImagePersistanceUtil
import qualified ImageUtil -- org.allbinary.media.image.ImageUtil
import qualified BufferedImageFrameCacheable -- org.allbinary.media.image.cache.BufferedImageFrameCacheable
import qualified ImageIOInterface -- org.allbinary.media.image.io.ImageIOInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements ImageIOInterface
data CapturedImageInputOutput = CapturedImageInputOutput
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CapturedImageInputOutput where
    javaNull = javaNullRecord "CapturedImageInputOutput"

instance JavaEquals CapturedImageInputOutput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CapturedImageInputOutput where
    (==) = jrecordEquals

instance JavaObjectClass CapturedImageInputOutput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CapturedImageInputOutput
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = CapturedImageInputOutput header_ logUtil
    jregisterLevel header_ this
    ImageIOInterface.registerInterface_ header_
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "save_2" (\() -> save_2_impl this)
    pure this

initFields_ :: CapturedImageInputOutput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO CapturedImageInputOutput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CapturedImageInputOutput -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
save object_ a1 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: CapturedImageInputOutput))) () a1

save_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
save_super object_ a1 = (save_impl (javaCast object_ :: CapturedImageInputOutput)) a1

save_impl :: CapturedImageInputOutput -> Int64 -> IO (())
save_impl this frame = do
        commonStrings <- (CommonStrings.getInstance)
        let capturedBufferedImageCacheable = ((javaCast (jio (get (((javaCast (jio (CapturedBufferedImagesCacheSingleton.getInstance)) :: AutomaticCacheInterface.AutomaticCacheInterface))) frame)) :: BufferedImageFrameCacheable.BufferedImageFrameCacheable))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Saving: " ++ (jio (BufferedImageFrameCacheable.toString capturedBufferedImageCacheable)))) this (jget (commonStrings).sAVE))
        Control.Monad.void (CapturedImageInputOutput.save_2 this (jio (BufferedImageFrameCacheable.getBufferedImage capturedBufferedImageCacheable)) frame)
        pure ()


save_2 :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int64 -> IO (())
save_2 object_ a1 a2 = jmethod object_ "save_2" (\() -> (save_2_impl (javaCast object_ :: CapturedImageInputOutput))) () a1 a2

save_2_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int64 -> IO (())
save_2_super object_ a1 a2 = (save_2_impl (javaCast object_ :: CapturedImageInputOutput)) a1 a2

save_2_impl :: CapturedImageInputOutput -> BufferedImage.BufferedImage -> Int64 -> IO (())
save_2_impl this bufferedImage frame = do
        commonStrings <- (CommonStrings.getInstance)
        imageUtil <- (ImageUtil.getInstance)
        filePathStringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append filePathStringBuffer (ImageOutputData.sAVE_PATH))
        Control.Monad.void (StringMaker.append filePathStringBuffer (jio (LongUtil.fillIn (javaToString frame))))
        Control.Monad.void (StringMaker.append filePathStringBuffer (jio (MediaData.getExtension ((jget ((jio (MediaDataFactory.getInstance))).jPG)))))
        filePath <- (StringMaker.toString filePathStringBuffer)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Image File Path: " ++ filePath) ++ (jio (ImageUtil.toString imageUtil bufferedImage)))) this (jget (commonStrings).sAVE))
        imagePersistanceUtil <- (ImagePersistanceUtil.getInstance)
        Control.Monad.void (ImagePersistanceUtil.saveWithImageIO imagePersistanceUtil filePath bufferedImage)
        pure ()


