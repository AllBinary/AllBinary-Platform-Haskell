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
-- package org.allbinary.image.opengles
module OpenGLImageCache (module OpenGLImageCache, module ImageCache) where

import ImageCache hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addListener, addListener_super, addListener_impl, update, update_super, update_impl, createImage, createImage_super, createImage_impl, createImageFromInputStream, createImageFromInputStream_super, createImageFromInputStream_impl, getGlP, getGlP_super, getGlP_impl, init, init_super, init_impl, imageCache, preResourceImageUtil, gl, lock, list, renderer)
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
import qualified OpenGLESImage -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified NullGL10 -- org.allbinary.device.NullGL10
import qualified AllBinaryRendererBase3 -- org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified ImageCacheFactory -- org.allbinary.image.ImageCacheFactory
import qualified PreResourceImageUtil -- org.allbinary.image.PreResourceImageUtil
import qualified SynchObject -- org.allbinary.thread.SynchObject

data OpenGLImageCache = OpenGLImageCache
    { header_ :: JavaHeader
    , base :: ImageCache.ImageCache
    , imageCache :: IORef (ImageCache.ImageCache)
    , preResourceImageUtil :: IORef (PreResourceImageUtil.PreResourceImageUtil)
    , gl :: IORef (GL10.GL10)
    , lock :: IORef (SynchObject.SynchObject)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , renderer :: IORef (AllBinaryRendererBase3.AllBinaryRendererBase3)
    }

instance JavaNull OpenGLImageCache where
    javaNull = javaNullRecord "OpenGLImageCache"

instance JavaEquals OpenGLImageCache where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLImageCache where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLImageCache where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OpenGLImageCache
newRecord_ = do
    base <- ImageCache.newRecord_
    let header_ = base.header_
    imageCache <- newIORef javaNull
    preResourceImageUtil <- newIORef javaNull
    gl <- newIORef javaNull
    lock <- newIORef javaNull
    list <- newIORef javaNull
    renderer <- newIORef javaNull
    let this = OpenGLImageCache header_ base imageCache preResourceImageUtil gl lock list renderer
    jregisterLevel header_ this
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "createImageFromInputStream" (\() -> createImageFromInputStream_impl this)
    jregisterMethod header_ "getGlP" (\() -> getGlP_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: OpenGLImageCache -> IO ()
initFields_ this = do
    jset this.imageCache =<< (ImageCacheFactory.getInstance)
    jset this.preResourceImageUtil =<< (PreResourceImageUtil.getInstance)
    jset this.gl ((javaCast NullGL10.nULL_GL10 :: GL10.GL10))
    jset this.lock =<< (SynchObject.new_)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.renderer =<< (AllBinaryRendererBase3.new_)
    pure ()

new_ :: IO OpenGLImageCache
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLImageCache -> IO ()
init_ this = do
        ImageCache.init_ this.base
        initFields_ this
        pure ()
        pure ()


addListener :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: OpenGLImageCache))) () (jtoObject a1)

addListener_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: OpenGLImageCache)) (jtoObject a1)

addListener_impl :: OpenGLImageCache -> JavaObject -> IO (())
addListener_impl this rendererObject_ = do
        let renderer = jtoObject rendererObject_
        jset (this).renderer ((javaCast renderer :: AllBinaryRendererBase3.AllBinaryRendererBase3))
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: OpenGLImageCache))) () a1

update_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: OpenGLImageCache)) a1

update_impl :: OpenGLImageCache -> GL10.GL10 -> IO (())
update_impl this gl = do
        jset (this).gl (gl)
        do -- synchronized
            forM_ [((jio (BasicArrayList.size ((jget (this).list)))) - 1), ((jio (BasicArrayList.size ((jget (this).list)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                let openGLESImage = ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) (index)) :: OpenGLESImage.OpenGLESImage))
                when (openGLESImage /= OpenGLESImage.nULL_OPENGL_IMAGE) $ do
                    Control.Monad.void (OpenGLESImage.set openGLESImage (javaCast gl))
        pure ()


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
createImage object_ a1 a2 a3 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: OpenGLImageCache))) () a1 a2 a3

createImage_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
createImage_super object_ a1 a2 a3 = (createImage_impl (javaCast object_ :: OpenGLImageCache)) a1 a2 a3

createImage_impl :: OpenGLImageCache -> String -> Int -> Int -> IO (Image.Image)
createImage_impl this caller width height = do
        width <- newIORef width
        height <- newIORef height
        textureSize <- newIORef ((jget width))
        when ((jget height) > (jget width)) $ do
            jset textureSize ((jget height))
        fix $ \loop -> when ((((jget textureSize) `rem` 4)) /= 0) $ javaIteration (loop) $ do
            jset textureSize ((jget textureSize) + 1)
        jset width ((jget textureSize))
        jset height ((jget textureSize))
        image2 <- (ImageCache.get ((jget (this).imageCache)) caller (jget width) (jget height))
        image <- (PreResourceImageUtil.encapsulate ((jget (this).preResourceImageUtil)) image2)
        do -- synchronized
            when (image /= NullImage.nULL_IMAGE) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).list)) image)
        pure (image)


-- throws Exception
createImageFromInputStream :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream object_ a1 a2 = jmethod object_ "createImageFromInputStream" (\() -> (createImageFromInputStream_impl (javaCast object_ :: OpenGLImageCache))) () (jtoObject a1) a2

createImageFromInputStream_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_super object_ a1 a2 = (createImageFromInputStream_impl (javaCast object_ :: OpenGLImageCache)) (jtoObject a1) a2

createImageFromInputStream_impl :: OpenGLImageCache -> JavaObject -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_impl this keyObject_ inputStream = do
        let key = jtoObject keyObject_
        cachedImage <- (ImageCache.getWithKey ((jget (this).imageCache)) key)
        image <- (PreResourceImageUtil.encapsulate ((jget (this).preResourceImageUtil)) cachedImage)
        do -- synchronized
            when (image /= NullImage.nULL_IMAGE) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).list)) image)
        pure (image)


getGlP :: (JavaObjectClass this_) => this_ -> IO (GL10.GL10)
getGlP object_ = jmethod object_ "getGlP" (\() -> (getGlP_impl (javaCast object_ :: OpenGLImageCache))) ()

getGlP_super :: (JavaObjectClass this_) => this_ -> IO (GL10.GL10)
getGlP_super object_ = (getGlP_impl (javaCast object_ :: OpenGLImageCache))

getGlP_impl :: OpenGLImageCache -> IO (GL10.GL10)
getGlP_impl this = do
        pure ((jget (this).gl))


init :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: OpenGLImageCache))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: OpenGLImageCache)) a1

init_impl :: OpenGLImageCache -> Image.Image -> IO (())
init_impl this image = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).iNIT) e)
            ) $ do
            do -- synchronized
                when (jio (BasicArrayList.contains ((jget (this).list)) image)) $ do
                    javaThrow ((JavaException "RuntimeException" ""))
                Control.Monad.void (BasicArrayList.add ((jget (this).list)) image)
            Control.Monad.void (AllBinaryRendererBase3.add ((jget (this).renderer)) image)
        pure ()


