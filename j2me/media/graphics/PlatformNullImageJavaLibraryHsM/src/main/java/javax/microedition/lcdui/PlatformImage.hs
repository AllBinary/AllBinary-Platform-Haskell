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
-- package javax.microedition.lcdui
module PlatformImage where

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
import qualified NullImage -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Image -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil

data PlatformImage = PlatformImage
    { header_ :: JavaHeader
    }

instance JavaNull PlatformImage where
    javaNull = javaNullRecord "PlatformImage"

instance JavaEquals PlatformImage where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformImage where
    (==) = jrecordEquals

instance JavaObjectClass PlatformImage where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformImage
newRecord_ = do
    header_ <- newJavaHeader
    let this = PlatformImage header_
    jregisterLevel header_ this
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "getSurfaceWidth" (\() -> getSurfaceWidth_impl this)
    jregisterMethod header_ "getSurfaceHeight" (\() -> getSurfaceHeight_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getGraphics" (\() -> getGraphics_impl this)
    jregisterMethod header_ "drawImage" (\() -> drawImage_impl this)
    jregisterMethod header_ "drawRegion" (\() -> drawRegion_impl this)
    jregisterMethod header_ "getRGB" (\() -> getRGB_impl this)
    jregisterMethod header_ "setRGB" (\() -> setRGB_impl this)
    jregisterMethod header_ "getData" (\() -> getData_impl this)
    pure this

initFields_ :: PlatformImage -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PlatformImage
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformImage -> IO ()
init_ this = do
    initFields_ this


getImage :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
getImage object_ a1 = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: PlatformImage))) () (jtoObject a1)

getImage_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
getImage_super object_ a1 = (getImage_impl (javaCast object_ :: PlatformImage)) (jtoObject a1)

getImage_impl :: PlatformImage -> JavaObject -> IO (Any.Any)
getImage_impl this graphicsSurface2Object_ = do
        let graphicsSurface2 = jtoObject graphicsSurface2Object_
        pure ((jtoObject NullImage.nULL_IMAGE))


getSurfaceWidth :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (Int)
getSurfaceWidth object_ a1 a2 = jmethod object_ "getSurfaceWidth" (\() -> (getSurfaceWidth_impl (javaCast object_ :: PlatformImage))) () (jtoObject a1) a2

getSurfaceWidth_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (Int)
getSurfaceWidth_super object_ a1 a2 = (getSurfaceWidth_impl (javaCast object_ :: PlatformImage)) (jtoObject a1) a2

getSurfaceWidth_impl :: PlatformImage -> JavaObject -> Int -> IO (Int)
getSurfaceWidth_impl this graphicsSurface2Object_ width = do
        let graphicsSurface2 = jtoObject graphicsSurface2Object_
        pure (width)


getSurfaceHeight :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (Int)
getSurfaceHeight object_ a1 a2 = jmethod object_ "getSurfaceHeight" (\() -> (getSurfaceHeight_impl (javaCast object_ :: PlatformImage))) () (jtoObject a1) a2

getSurfaceHeight_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (Int)
getSurfaceHeight_super object_ a1 a2 = (getSurfaceHeight_impl (javaCast object_ :: PlatformImage)) (jtoObject a1) a2

getSurfaceHeight_impl :: PlatformImage -> JavaObject -> Int -> IO (Int)
getSurfaceHeight_impl this graphicsSurface2Object_ height = do
        let graphicsSurface2 = jtoObject graphicsSurface2Object_
        pure (height)


getWidth :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Int)
getWidth object_ a1 a2 = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: PlatformImage))) () a1 a2

getWidth_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Int)
getWidth_super object_ a1 a2 = (getWidth_impl (javaCast object_ :: PlatformImage)) a1 a2

getWidth_impl :: PlatformImage -> Image.Image -> Int -> IO (Int)
getWidth_impl this image width = do
        pure (width)


getHeight :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Int)
getHeight object_ a1 a2 = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: PlatformImage))) () a1 a2

getHeight_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> IO (Int)
getHeight_super object_ a1 a2 = (getHeight_impl (javaCast object_ :: PlatformImage)) a1 a2

getHeight_impl :: PlatformImage -> Image.Image -> Int -> IO (Int)
getHeight_impl this image height = do
        pure (height)


getGraphics :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> Int -> Image.Image -> IO (Graphics.Graphics)
getGraphics object_ a1 a2 a3 a4 = jmethod object_ "getGraphics" (\() -> (getGraphics_impl (javaCast object_ :: PlatformImage))) () (jtoObject a1) a2 a3 a4

getGraphics_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> Int -> Image.Image -> IO (Graphics.Graphics)
getGraphics_super object_ a1 a2 a3 a4 = (getGraphics_impl (javaCast object_ :: PlatformImage)) (jtoObject a1) a2 a3 a4

getGraphics_impl :: PlatformImage -> JavaObject -> Int -> Int -> Image.Image -> IO (Graphics.Graphics)
getGraphics_impl this graphicsSurfaceObject_ width height image = do
        let graphicsSurface = jtoObject graphicsSurfaceObject_
        javaThrow ((JavaException "RuntimeException" ""))


drawImage :: (JavaObjectClass this_, JavaObjectClass o6) => this_ -> Image.Image -> Int -> Int -> Int -> Graphics.Graphics -> o6 -> IO (())
drawImage object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "drawImage" (\() -> (drawImage_impl (javaCast object_ :: PlatformImage))) () a1 a2 a3 a4 a5 (jtoObject a6)

drawImage_super :: (JavaObjectClass this_, JavaObjectClass o6) => this_ -> Image.Image -> Int -> Int -> Int -> Graphics.Graphics -> o6 -> IO (())
drawImage_super object_ a1 a2 a3 a4 a5 a6 = (drawImage_impl (javaCast object_ :: PlatformImage)) a1 a2 a3 a4 a5 (jtoObject a6)

drawImage_impl :: PlatformImage -> Image.Image -> Int -> Int -> Int -> Graphics.Graphics -> JavaObject -> IO (())
drawImage_impl this image x y anchor g2 gObject_ = do
        let g = jtoObject gObject_
        pure ()


drawRegion :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Graphics.Graphics -> IO (())
drawRegion object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = jmethod object_ "drawRegion" (\() -> (drawRegion_impl (javaCast object_ :: PlatformImage))) () a1 a2 a3 a4 a5 a6 a7 a8 a9 a10

drawRegion_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Graphics.Graphics -> IO (())
drawRegion_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = (drawRegion_impl (javaCast object_ :: PlatformImage)) a1 a2 a3 a4 a5 a6 a7 a8 a9 a10

drawRegion_impl :: PlatformImage -> Image.Image -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Graphics.Graphics -> IO (())
drawRegion_impl this image x_src y_src width height transform x_dst y_dst anchor g = do
        pure ()


getRGB :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> Image.Image -> IO (())
getRGB object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "getRGB" (\() -> (getRGB_impl (javaCast object_ :: PlatformImage))) () a1 a2 a3 a4 a5 a6 a7 a8

getRGB_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> Image.Image -> IO (())
getRGB_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (getRGB_impl (javaCast object_ :: PlatformImage)) a1 a2 a3 a4 a5 a6 a7 a8

getRGB_impl :: PlatformImage -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> Image.Image -> IO (())
getRGB_impl this argb offset scanlength x y width height image = do
        pure ()


setRGB :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> Image.Image -> IO (())
setRGB object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "setRGB" (\() -> (setRGB_impl (javaCast object_ :: PlatformImage))) () a1 a2 a3 a4 a5 a6 a7 a8

setRGB_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> Image.Image -> IO (())
setRGB_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (setRGB_impl (javaCast object_ :: PlatformImage)) a1 a2 a3 a4 a5 a6 a7 a8

setRGB_impl :: PlatformImage -> JavaArray (Int) -> Int -> Int -> Int -> Int -> Int -> Int -> Image.Image -> IO (())
setRGB_impl this argb offset scanlength x y width height image = do
        pure ()


getData :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (JavaArray (Int))
getData object_ a1 = jmethod object_ "getData" (\() -> (getData_impl (javaCast object_ :: PlatformImage))) () a1

getData_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (JavaArray (Int))
getData_super object_ a1 = (getData_impl (javaCast object_ :: PlatformImage)) a1

getData_impl :: PlatformImage -> Image.Image -> IO (JavaArray (Int))
getData_impl this image = do
        pure ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY))


