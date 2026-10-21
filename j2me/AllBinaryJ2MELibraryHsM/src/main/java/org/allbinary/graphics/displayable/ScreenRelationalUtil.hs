{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable
module ScreenRelationalUtil where

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
import qualified DisplayInfoSingleton -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image

data ScreenRelationalUtil = ScreenRelationalUtil
    { header_ :: JavaHeader
    }

instance JavaNull ScreenRelationalUtil where
    javaNull = javaNullRecord "ScreenRelationalUtil"

instance JavaEquals ScreenRelationalUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScreenRelationalUtil where
    (==) = jrecordEquals

instance JavaObjectClass ScreenRelationalUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScreenRelationalUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ScreenRelationalUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getScaleImage" (\() -> getScaleImage_impl this)
    jregisterMethod header_ "getScaleWH" (\() -> getScaleWH_impl this)
    jregisterMethod header_ "getScaleWHA" (\() -> getScaleWHA_impl this)
    jregisterMethod header_ "getScaledHeight" (\() -> getScaledHeight_impl this)
    jregisterMethod header_ "getScaledHeightAdd" (\() -> getScaledHeightAdd_impl this)
    pure this

initFields_ :: ScreenRelationalUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ScreenRelationalUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScreenRelationalUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ScreenRelationalUtil)
getInstance = do
        pure (ScreenRelationalUtil.instance_)


getScaleImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Float)
getScaleImage object_ a1 = jmethod object_ "getScaleImage" (\() -> (getScaleImage_impl (javaCast object_ :: ScreenRelationalUtil))) () a1

getScaleImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Float)
getScaleImage_super object_ a1 = (getScaleImage_impl (javaCast object_ :: ScreenRelationalUtil)) a1

getScaleImage_impl :: ScreenRelationalUtil -> Image.Image -> IO (Float)
getScaleImage_impl this image = do
        (ScreenRelationalUtil.getScaleWH this (jio (Image.getWidth image)) (jio (Image.getHeight image)))


getScaleWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Float)
getScaleWH object_ a1 a2 = jmethod object_ "getScaleWH" (\() -> (getScaleWH_impl (javaCast object_ :: ScreenRelationalUtil))) () a1 a2

getScaleWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Float)
getScaleWH_super object_ a1 a2 = (getScaleWH_impl (javaCast object_ :: ScreenRelationalUtil)) a1 a2

getScaleWH_impl :: ScreenRelationalUtil -> Int -> Int -> IO (Float)
getScaleWH_impl this aWidth aHeight = do
        (ScreenRelationalUtil.getScaleWHA this aWidth aHeight 20)


getScaleWHA :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Float)
getScaleWHA object_ a1 a2 a3 = jmethod object_ "getScaleWHA" (\() -> (getScaleWHA_impl (javaCast object_ :: ScreenRelationalUtil))) () a1 a2 a3

getScaleWHA_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Float)
getScaleWHA_super object_ a1 a2 a3 = (getScaleWHA_impl (javaCast object_ :: ScreenRelationalUtil)) a1 a2 a3

getScaleWHA_impl :: ScreenRelationalUtil -> Int -> Int -> Int -> IO (Float)
getScaleWHA_impl this aWidth aHeight add = do
        displayInfoSingleton <- (DisplayInfoSingleton.getInstance)
        last <- (DisplayInfoSingleton.getLast displayInfoSingleton)
        let width = (Prelude.fromIntegral (jindex last ((jget (displayInfoSingleton).wIDTH))))
        let height = (Prelude.fromIntegral (jindex last ((jget (displayInfoSingleton).hEIGHT))))
        largestSize <- newIORef (width)
        when ((jget largestSize) < height) $ do
            jset largestSize (height)
        let scale = (((jget largestSize)) / (Prelude.fromIntegral aWidth))
        pure (scale)


getScaledHeight :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getScaledHeight object_ a1 a2 = jmethod object_ "getScaledHeight" (\() -> (getScaledHeight_impl (javaCast object_ :: ScreenRelationalUtil))) () a1 a2

getScaledHeight_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
getScaledHeight_super object_ a1 a2 = (getScaledHeight_impl (javaCast object_ :: ScreenRelationalUtil)) a1 a2

getScaledHeight_impl :: ScreenRelationalUtil -> Int -> Int -> IO (Int)
getScaledHeight_impl this aWidth aHeight = do
        pure ((Prelude.truncate (((jio (ScreenRelationalUtil.getScaleWH this aWidth aHeight)) * (Prelude.fromIntegral aHeight)))))


getScaledHeightAdd :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Int)
getScaledHeightAdd object_ a1 a2 a3 = jmethod object_ "getScaledHeightAdd" (\() -> (getScaledHeightAdd_impl (javaCast object_ :: ScreenRelationalUtil))) () a1 a2 a3

getScaledHeightAdd_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Int)
getScaledHeightAdd_super object_ a1 a2 a3 = (getScaledHeightAdd_impl (javaCast object_ :: ScreenRelationalUtil)) a1 a2 a3

getScaledHeightAdd_impl :: ScreenRelationalUtil -> Int -> Int -> Int -> IO (Int)
getScaledHeightAdd_impl this aWidth aHeight add = do
        pure ((Prelude.truncate (((jio (ScreenRelationalUtil.getScaleWHA this aWidth aHeight add)) * (Prelude.fromIntegral aHeight)))))


