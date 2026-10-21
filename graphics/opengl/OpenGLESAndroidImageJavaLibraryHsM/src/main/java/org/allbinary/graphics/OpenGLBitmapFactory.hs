{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics
module OpenGLBitmapFactory (module OpenGLBitmapFactory, module PlatformBitmapBaseFactory) where

import PlatformBitmapBaseFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, createBitmap, createBitmap_super, createBitmap_impl, decodeStream, decodeStream_super, decodeStream_impl, createBitmap, createBitmap_super, createBitmap_impl, instance_, aRGB_8888)
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
import qualified OpenGLBitmap -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified Image -- javax.microedition.lcdui.Image
import qualified Bitmap -- android.graphics.Bitmap
import qualified BitmapFactory -- android.graphics.BitmapFactory
import qualified IOException -- java.io.IOException
import qualified PlatformBitmapBaseFactory -- org.allbinary.platform.graphics.PlatformBitmapBaseFactory
import qualified PlatformBitmapBase -- org.allbinary.platform.graphics.PlatformBitmapBase
import qualified AndroidImageInterface -- org.microemu.android.device.AndroidImageInterface

data OpenGLBitmapFactory = OpenGLBitmapFactory
    { header_ :: JavaHeader
    , base :: PlatformBitmapBaseFactory.PlatformBitmapBaseFactory
    , aRGB_8888 :: IORef (Config.Config)
    }

instance JavaNull OpenGLBitmapFactory where
    javaNull = javaNullRecord "OpenGLBitmapFactory"

instance JavaEquals OpenGLBitmapFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLBitmapFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLBitmapFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO OpenGLBitmapFactory
newRecord_ = do
    base <- PlatformBitmapBaseFactory.newRecord_
    let header_ = base.header_
    aRGB_8888 <- newIORef javaNull
    let this = OpenGLBitmapFactory header_ base aRGB_8888
    jregisterLevel header_ this
    jregisterMethod header_ "createBitmap" (\() -> createBitmap_impl this)
    jregisterMethod header_ "decodeStream" (\() -> decodeStream_impl this)
    jregisterMethod header_ "createBitmap" (\() -> createBitmap_impl this)
    pure this

initFields_ :: OpenGLBitmapFactory -> IO ()
initFields_ this = do
    jset this.aRGB_8888 =<< (Config.new_1 (jget (Bitmap.config).aRGB_8888))
    pure ()

new_ :: IO OpenGLBitmapFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLBitmapFactory -> IO ()
init_ this = do
    PlatformBitmapBaseFactory.init_ this.base
    initFields_ this


getInstance :: IO (OpenGLBitmapFactory)
getInstance = do
        pure (OpenGLBitmapFactory.instance_)


createBitmap :: (JavaObjectClass this_) => this_ -> Int -> Int -> Config.Config -> IO (OpenGLBitmap.OpenGLBitmap)
createBitmap object_ a1 a2 a3 = jmethod object_ "createBitmap" (\() -> (createBitmap_impl (javaCast object_ :: OpenGLBitmapFactory))) () a1 a2 a3

createBitmap_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Config.Config -> IO (OpenGLBitmap.OpenGLBitmap)
createBitmap_super object_ a1 a2 a3 = (createBitmap_impl (javaCast object_ :: OpenGLBitmapFactory)) a1 a2 a3

createBitmap_impl :: OpenGLBitmapFactory -> Int -> Int -> Config.Config -> IO (OpenGLBitmap.OpenGLBitmap)
createBitmap_impl this width height config = do
        (OpenGLBitmap.new_1 (jio (Bitmap.createBitmap width height (jget (config).bitmapConfig))))


-- throws IOException
decodeStream :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (OpenGLBitmap.OpenGLBitmap)
decodeStream object_ a1 = jmethod object_ "decodeStream" (\() -> (decodeStream_impl (javaCast object_ :: OpenGLBitmapFactory))) () a1

decodeStream_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (OpenGLBitmap.OpenGLBitmap)
decodeStream_super object_ a1 = (decodeStream_impl (javaCast object_ :: OpenGLBitmapFactory)) a1

decodeStream_impl :: OpenGLBitmapFactory -> InputStream.InputStream -> IO (OpenGLBitmap.OpenGLBitmap)
decodeStream_impl this inputStream = do
        (OpenGLBitmap.new_1 (jio (BitmapFactory.decodeStream inputStream)))


-- Java overload of createBitmap with a different parameter count: give it a different name
createBitmap :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (PlatformBitmapBase.PlatformBitmapBase)
createBitmap object_ a1 = jmethod object_ "createBitmap" (\() -> (createBitmap_impl (javaCast object_ :: OpenGLBitmapFactory))) () a1

createBitmap_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (PlatformBitmapBase.PlatformBitmapBase)
createBitmap_super object_ a1 = (createBitmap_impl (javaCast object_ :: OpenGLBitmapFactory)) a1

createBitmap_impl :: OpenGLBitmapFactory -> Image.Image -> IO (PlatformBitmapBase.PlatformBitmapBase)
createBitmap_impl this image = do
        (OpenGLBitmap.new_1 (jio (getBitmap (((javaCast image :: AndroidImageInterface.AndroidImageInterface))))))

-- Java nested class Config: move it to its own module Config

