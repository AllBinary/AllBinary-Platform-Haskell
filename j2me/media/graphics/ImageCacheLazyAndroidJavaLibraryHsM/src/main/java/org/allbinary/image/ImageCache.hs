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
-- package org.allbinary.image
module ImageCache (module ImageCache, module ImageCacheBase) where

import ImageCacheBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, get, get_super, get_impl, getIndex, getIndex_super, getIndex_impl, createImage, createImage_super, createImage_impl, isLazy, isLazy_super, isLazy_impl, nULL_IMAGE_CACHE, logUtil, commonStrings, systemWrapper, tsUtil)
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
import qualified Thread -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ABHashtable -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified TsUtil -- org.allbinary.TsUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified GDResources -- org.allbinary.game.gd.resource.GDResources
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Memory -- org.allbinary.system.Memory
import qualified ImageCacheBase

data ImageCache = ImageCache
    { header_ :: JavaHeader
    , base :: ImageCacheBase.ImageCacheBase
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , systemWrapper :: IORef (ABSystemWrapper.ABSystemWrapper)
    , tsUtil :: IORef (TsUtil.TsUtil)
    }

instance JavaNull ImageCache where
    javaNull = javaNullRecord "ImageCache"

instance JavaEquals ImageCache where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCache where
    (==) = jrecordEquals

instance JavaObjectClass ImageCache where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_IMAGE_CACHE #-}
nULL_IMAGE_CACHE = unsafePerformIO ((new_))

newRecord_ :: IO ImageCache
newRecord_ = do
    base <- ImageCacheBase.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    systemWrapper <- newIORef javaNull
    tsUtil <- newIORef javaNull
    let this = ImageCache header_ base logUtil commonStrings systemWrapper tsUtil
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getIndex" (\() -> getIndex_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "isLazy" (\() -> isLazy_impl this)
    pure this

initFields_ :: ImageCache -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.systemWrapper =<< (ABSystemWrapper.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    pure ()

new_ :: IO ImageCache
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageCache -> IO ()
init_ this = do
        ImageCacheBase.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
get object_ a1 a2 a3 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ImageCache))) () a1 a2 a3

get_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
get_super object_ a1 a2 a3 = (get_impl (javaCast object_ :: ImageCache)) a1 a2 a3

get_impl :: ImageCache -> String -> Int -> Int -> IO (Image.Image)
get_impl this caller width height = do
        foundIndex <- newIORef =<< (ImageCacheBase.getIndexWH this width height)
        image <- newIORef =<< (ImageCacheBase.getFromAvailable this (jget foundIndex) width height)
        when ((jget image) == NullImage.nULL_IMAGE) $ do
            jset (this).base.volume (((jget (this).base.volume) + (width * height)))
            when ((jget (this).base.volume) > 32000) $ do
                Control.Monad.void (TsUtil.gc ((jget (this).tsUtil)))
                jset (this).base.volume (0)
            assignedValue <- (ImageCache.createImage this caller width height)
            jset image (assignedValue)
            when ((jget foundIndex) == (Prelude.negate 1)) $ do
                jset foundIndex ((jget (this).base.nextIndex))
                jsetIndex ((jget (this).base.widths)) ((jget (this).base.nextIndex)) (width)
                jsetIndex ((jget (this).base.heights)) ((jget (this).base.nextIndex)) (height)
                jset (this).base.nextIndex ((jget (this).base.nextIndex) + 1)
            Control.Monad.void (add ((jindex ((jget (this).base.listOfList)) ((jget foundIndex)))) (jget image))
        pure ((jget image))


-- throws Exception
-- Java overload of get with a different parameter count: give it a different name
get :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Image.Image)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ImageCache))) () (jtoObject a1)

get_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Image.Image)
get_super object_ a1 = (get_impl (javaCast object_ :: ImageCache)) (jtoObject a1)

get_impl :: ImageCache -> JavaObject -> IO (Image.Image)
get_impl this keyObject_ = do
        let key = jtoObject keyObject_
        resourceUtil <- (ResourceUtil.getInstance)
        resourceId <- (ResourceUtil.getResourceId resourceUtil (javaCast key :: String))
        image <- newIORef =<< (ImageCacheBase.getImage this resourceId)
        when ((jget image) == NullImage.nULL_IMAGE) $ do
            let inputStream = javaNull
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Exception: Trying Again After GC" this (jget ((jget (this).commonStrings)).gET) e)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "InputStream: "))) (jio (InputStream.toString inputStream))))))) this (jget ((jget (this).commonStrings)).gET))
                Control.Monad.void (TsUtil.gc ((jget (this).tsUtil)))
                Control.Monad.void (TsUtil.gc ((jget (this).tsUtil)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (Memory.getInfo)) this (jget ((jget (this).commonStrings)).gET))
                Control.Monad.void (threadDelay (Prelude.fromIntegral 100 * 1000))
                assignedValue <- (ImageCache.createImage this key inputStream)
                jset image (assignedValue)
                ) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (Memory.getInfo)) this (jget ((jget (this).commonStrings)).gET))
                assignedValue <- (ImageCache.createImage this key inputStream)
                jset image (assignedValue)
            Control.Monad.void (ABHashtable.put ((jget (this).base.hashtable)) resourceId (jget image))
        pure ((jget image))


getIndex :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
getIndex object_ a1 = jmethod object_ "getIndex" (\() -> (getIndex_impl (javaCast object_ :: ImageCache))) () (jtoObject a1)

getIndex_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
getIndex_super object_ a1 = (getIndex_impl (javaCast object_ :: ImageCache)) (jtoObject a1)

getIndex_impl :: ImageCache -> JavaObject -> IO (Int)
getIndex_impl this keyObject_ = do
    let key = jtoObject keyObject_
    javaCatchReturn $ do
        gdResources <- (GDResources.getInstance)
        let resourceStringArray = (jget (gdResources).resourceStringArray)
        let size = (jlength resourceStringArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex resourceStringArray (index)) == key) $ do
                javaReturn (index)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "unable to find key: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) key))))))) this (jget ((jget (this).commonStrings)).rUN))
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
createImage :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImage object_ a1 a2 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: ImageCache))) () (jtoObject a1) a2

createImage_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImage_super object_ a1 a2 = (createImage_impl (javaCast object_ :: ImageCache)) (jtoObject a1) a2

createImage_impl :: ImageCache -> JavaObject -> InputStream.InputStream -> IO (Image.Image)
createImage_impl this keyObject_ inputStream = do
        let key = jtoObject keyObject_
        (Image.createImageLater (javaCast key :: String) (Prelude.negate 1) (Prelude.negate 1))


isLazy :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLazy object_ = jmethod object_ "isLazy" (\() -> (isLazy_impl (javaCast object_ :: ImageCache))) ()

isLazy_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLazy_super object_ = (isLazy_impl (javaCast object_ :: ImageCache))

isLazy_impl :: ImageCache -> IO (Bool)
isLazy_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


