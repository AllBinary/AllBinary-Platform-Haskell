{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module ImageWaitCompleteUtil (module ImageWaitCompleteUtil, module ImageCompleteUtil) where

import ImageCompleteUtil hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, waitForImage, waitForImage_super, waitForImage_impl, handleTimeout, handleTimeout_super, handleTimeout_impl, waitForATime, waitForATime_super, waitForATime_impl, waitForAll, waitForAll_super, waitForAll_impl, logUtil, timeDelayHelper, allTimeDelayHelper)
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
import qualified Any -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified PlaynImage -- org.microemu.device.playn.PlaynImage
import qualified ImageCompleteUtil

data ImageWaitCompleteUtil = ImageWaitCompleteUtil
    { header_ :: JavaHeader
    , base :: ImageCompleteUtil.ImageCompleteUtil
    , logUtil :: IORef (LogUtil.LogUtil)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , allTimeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull ImageWaitCompleteUtil where
    javaNull = javaNullRecord "ImageWaitCompleteUtil"

instance JavaEquals ImageWaitCompleteUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageWaitCompleteUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageWaitCompleteUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageWaitCompleteUtil
newRecord_ = do
    base <- ImageCompleteUtil.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    allTimeDelayHelper <- newIORef javaNull
    let this = ImageWaitCompleteUtil header_ base logUtil timeDelayHelper allTimeDelayHelper
    jregisterLevel header_ this
    jregisterMethod header_ "waitForImage" (\() -> waitForImage_impl this)
    jregisterMethod header_ "handleTimeout" (\() -> handleTimeout_impl this)
    jregisterMethod header_ "waitForATime" (\() -> waitForATime_impl this)
    jregisterMethod header_ "waitForAll" (\() -> waitForAll_impl this)
    pure this

initFields_ :: ImageWaitCompleteUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 18000)
    jset this.allTimeDelayHelper =<< (TimeDelayHelper.new_1 120000)
    pure ()

new_ :: IO ImageWaitCompleteUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageWaitCompleteUtil -> IO ()
init_ this = do
        ImageCompleteUtil.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
waitForImage :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> IO (())
waitForImage object_ a1 a2 = jmethod object_ "waitForImage" (\() -> (waitForImage_impl (javaCast object_ :: ImageWaitCompleteUtil))) () a1 a2

waitForImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> IO (())
waitForImage_super object_ a1 a2 = (waitForImage_impl (javaCast object_ :: ImageWaitCompleteUtil)) a1 a2

waitForImage_impl :: ImageWaitCompleteUtil -> Image.Image -> String -> IO (())
waitForImage_impl this image name = do
        Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).timeDelayHelper)))
        Control.Monad.void (ImageWaitCompleteUtil.waitForATime this image name (jget (this).timeDelayHelper))
        pure ()


-- throws Exception
handleTimeout :: (JavaObjectClass this_) => this_ -> String -> IO (())
handleTimeout object_ a1 = jmethod object_ "handleTimeout" (\() -> (handleTimeout_impl (javaCast object_ :: ImageWaitCompleteUtil))) () a1

handleTimeout_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
handleTimeout_super object_ a1 = (handleTimeout_impl (javaCast object_ :: ImageWaitCompleteUtil)) a1

handleTimeout_impl :: ImageWaitCompleteUtil -> String -> IO (())
handleTimeout_impl this name = do
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeDelayHelper)))) $ do
            javaThrow ((JavaException "Exception" ("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " ++ name)))
        pure ()


-- throws Exception
waitForATime :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (())
waitForATime object_ a1 a2 a3 = jmethod object_ "waitForATime" (\() -> (waitForATime_impl (javaCast object_ :: ImageWaitCompleteUtil))) () a1 a2 a3

waitForATime_super :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (())
waitForATime_super object_ a1 a2 a3 = (waitForATime_impl (javaCast object_ :: ImageWaitCompleteUtil)) a1 a2 a3

waitForATime_impl :: ImageWaitCompleteUtil -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (())
waitForATime_impl this image name timeDelayHelper = do
        let playnImage = (javaCast image :: PlaynImage.PlaynImage)
        let playnCoreImage = (javaCast (jio (PlaynImage.getImage playnImage)) :: Image.Image)
        fix $ \loop -> when ((Prelude.not (jio (Image.isReady playnCoreImage))) || (((jio (Image.width playnCoreImage)) + (jio (Image.height playnCoreImage))) <= 0)) $ javaIteration (loop) $ do
            when (jio (TimeDelayHelper.isTimeTNT timeDelayHelper)) $ do
                javaThrow ((JavaException "Exception" ("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " ++ name)))
        when (Prelude.not (jio (Image.isReady image))) $ do
            Control.Monad.void (Image.init image (jio (Image.getImage image)))
        pure ()


-- throws Exception
waitForAll :: (JavaObjectClass this_) => this_ -> IO (())
waitForAll object_ = jmethod object_ "waitForAll" (\() -> (waitForAll_impl (javaCast object_ :: ImageWaitCompleteUtil))) ()

waitForAll_super :: (JavaObjectClass this_) => this_ -> IO (())
waitForAll_super object_ = (waitForAll_impl (javaCast object_ :: ImageWaitCompleteUtil))

waitForAll_impl :: ImageWaitCompleteUtil -> IO (())
waitForAll_impl this = do
        Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).allTimeDelayHelper)))
        hashtable <- (GameFeatureImageCacheFactory.getHashtableP ((jio (GameFeatureImageCacheFactory.getInstance))))
        objectArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) hashtable)
        let size = (jlength objectArray)
        Control.Monad.void (PreLogUtil.put ("Image Total: " ++ javaToString size) this "waitForAll")
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (ImageWaitCompleteUtil.waitForATime this (javaCast (jio (ABHashtable.get hashtable (jindex objectArray (index)))) :: Image.Image) (javaCast (jindex objectArray (index)) :: String) (jget (this).allTimeDelayHelper))
        pure ()


