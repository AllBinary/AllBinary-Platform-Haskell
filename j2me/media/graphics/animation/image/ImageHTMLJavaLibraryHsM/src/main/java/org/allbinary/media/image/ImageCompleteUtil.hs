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
module ImageCompleteUtil where

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
import qualified Hashtable -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified PlaynImage -- org.microemu.device.playn.PlaynImage

data ImageCompleteUtil = ImageCompleteUtil
    { header_ :: JavaHeader
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , allTimeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull ImageCompleteUtil where
    javaNull = javaNullRecord "ImageCompleteUtil"

instance JavaEquals ImageCompleteUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCompleteUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageCompleteUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageCompleteUtil
newRecord_ = do
    header_ <- newJavaHeader
    timeDelayHelper <- newIORef javaNull
    allTimeDelayHelper <- newIORef javaNull
    let this = ImageCompleteUtil header_ timeDelayHelper allTimeDelayHelper
    jregisterLevel header_ this
    jregisterMethod header_ "waitForImage" (\() -> waitForImage_impl this)
    jregisterMethod header_ "isReady" (\() -> isReady_impl this)
    jregisterMethod header_ "waitForATime" (\() -> waitForATime_impl this)
    jregisterMethod header_ "waitForAll" (\() -> waitForAll_impl this)
    pure this

initFields_ :: ImageCompleteUtil -> IO ()
initFields_ this = do
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 18000)
    jset this.allTimeDelayHelper =<< (TimeDelayHelper.new_1 120000)
    pure ()

new_ :: IO ImageCompleteUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageCompleteUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ImageCompleteUtil)
getInstance = do
        pure (ImageCompleteUtil.instance_)


-- throws Exception
waitForImage :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> IO (())
waitForImage object_ a1 a2 = jmethod object_ "waitForImage" (\() -> (waitForImage_impl (javaCast object_ :: ImageCompleteUtil))) () a1 a2

waitForImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> IO (())
waitForImage_super object_ a1 a2 = (waitForImage_impl (javaCast object_ :: ImageCompleteUtil)) a1 a2

waitForImage_impl :: ImageCompleteUtil -> Image.Image -> String -> IO (())
waitForImage_impl this image name = do
        Control.Monad.void (TimeDelayHelper.setStartTime ((jget (this).timeDelayHelper)))
        Control.Monad.void (ImageCompleteUtil.waitForATime this image name (jget (this).timeDelayHelper))
        pure ()


-- throws Exception
isReady :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (Bool)
isReady object_ a1 a2 a3 = jmethod object_ "isReady" (\() -> (isReady_impl (javaCast object_ :: ImageCompleteUtil))) () a1 a2 a3

isReady_super :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (Bool)
isReady_super object_ a1 a2 a3 = (isReady_impl (javaCast object_ :: ImageCompleteUtil)) a1 a2 a3

isReady_impl :: ImageCompleteUtil -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (Bool)
isReady_impl this image name timeDelayHelper = do
    javaCatchReturn $ do
        let playnImage = (javaCast image :: PlaynImage.PlaynImage)
        when ((Prelude.not (jio (PlaynImage.isReady ((jio (PlaynImage.getImage playnImage)))))) && (((jio (PlaynImage.width ((jio (PlaynImage.getImage playnImage))))) + (jio (PlaynImage.height ((jio (PlaynImage.getImage playnImage)))))) == 0)) $ do
            when (jio (TimeDelayHelper.isTime timeDelayHelper)) $ do
                javaThrow ((JavaException "Exception" ("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " ++ name)))
            javaReturn (False)
        pure (True)


-- throws Exception
waitForATime :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (())
waitForATime object_ a1 a2 a3 = jmethod object_ "waitForATime" (\() -> (waitForATime_impl (javaCast object_ :: ImageCompleteUtil))) () a1 a2 a3

waitForATime_super :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (())
waitForATime_super object_ a1 a2 a3 = (waitForATime_impl (javaCast object_ :: ImageCompleteUtil)) a1 a2 a3

waitForATime_impl :: ImageCompleteUtil -> Image.Image -> String -> TimeDelayHelper.TimeDelayHelper -> IO (())
waitForATime_impl this image name timeDelayHelper = do
        let playnImage = (javaCast image :: PlaynImage.PlaynImage)
        fix $ \loop -> when ((Prelude.not (jio (PlaynImage.isReady ((jio (PlaynImage.getImage playnImage)))))) && (((jio (PlaynImage.width ((jio (PlaynImage.getImage playnImage))))) + (jio (PlaynImage.height ((jio (PlaynImage.getImage playnImage)))))) == 0)) $ javaIteration (loop) $ do
            when (jio (TimeDelayHelper.isTime timeDelayHelper)) $ do
                javaThrow ((JavaException "Exception" ("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: " ++ name)))
        pure ()


-- throws Exception
waitForAll :: (JavaObjectClass this_) => this_ -> IO (())
waitForAll object_ = jmethod object_ "waitForAll" (\() -> (waitForAll_impl (javaCast object_ :: ImageCompleteUtil))) ()

waitForAll_super :: (JavaObjectClass this_) => this_ -> IO (())
waitForAll_super object_ = (waitForAll_impl (javaCast object_ :: ImageCompleteUtil))

waitForAll_impl :: ImageCompleteUtil -> IO (())
waitForAll_impl this = do
        Control.Monad.void (TimeDelayHelper.setStartTime ((jget (this).allTimeDelayHelper)))
        hashtable <- (ImageCache.getHashtable ((jio (GameFeatureImageCacheFactory.getInstance))))
        objectArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) hashtable)
        let size = (jlength objectArray)
        Control.Monad.void (PreLogUtil.put ("Total: " ++ javaToString size) this "waitForAll")
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (ImageCompleteUtil.waitForATime this (javaCast (jio (Hashtable.get hashtable (jindex objectArray (index)))) :: Image.Image) (javaCast (jindex objectArray (index)) :: String) (jget (this).allTimeDelayHelper))
        pure ()


