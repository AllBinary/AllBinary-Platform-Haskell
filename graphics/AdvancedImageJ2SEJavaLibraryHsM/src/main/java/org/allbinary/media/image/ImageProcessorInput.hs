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
module ImageProcessorInput where

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
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified File -- java.io.File

data ImageProcessorInput = ImageProcessorInput
    { header_ :: JavaHeader
    , bufferedImageArray :: IORef (JavaArray (BufferedImage.BufferedImage))
    , files :: IORef (JavaArray (File.File))
    }

instance JavaNull ImageProcessorInput where
    javaNull = javaNullRecord "ImageProcessorInput"

instance JavaEquals ImageProcessorInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageProcessorInput where
    (==) = jrecordEquals

instance JavaObjectClass ImageProcessorInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageProcessorInput
newRecord_ = do
    header_ <- newJavaHeader
    bufferedImageArray <- newIORef javaNull
    files <- newIORef javaNull
    let this = ImageProcessorInput header_ bufferedImageArray files
    jregisterLevel header_ this
    jregisterMethod header_ "getBufferedImageArray" (\() -> getBufferedImageArray_impl this)
    jregisterMethod header_ "getFiles" (\() -> getFiles_impl this)
    pure this

initFields_ :: ImageProcessorInput -> IO ()
initFields_ this = do
    jset this.bufferedImageArray (javaNull)
    jset this.files (javaNull)
    pure ()

new_2 :: JavaArray (File.File) -> JavaArray (BufferedImage.BufferedImage) -> IO ImageProcessorInput
new_2 files bufferedImageArray = do
    this <- newRecord_
    init_2 this files bufferedImageArray
    pure this

init_2 :: ImageProcessorInput -> JavaArray (File.File) -> JavaArray (BufferedImage.BufferedImage) -> IO ()
init_2 this files bufferedImageArray = do
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).bufferedImageArray (bufferedImageArray)
        jset (this).files (files)
        pure ()


getBufferedImageArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImageArray object_ = jmethod object_ "getBufferedImageArray" (\() -> (getBufferedImageArray_impl (javaCast object_ :: ImageProcessorInput))) ()

getBufferedImageArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImageArray_super object_ = (getBufferedImageArray_impl (javaCast object_ :: ImageProcessorInput))

getBufferedImageArray_impl :: ImageProcessorInput -> IO (JavaArray (BufferedImage.BufferedImage))
getBufferedImageArray_impl this = do
        pure ((jget (this).bufferedImageArray))


getFiles :: (JavaObjectClass this_) => this_ -> IO (JavaArray (File.File))
getFiles object_ = jmethod object_ "getFiles" (\() -> (getFiles_impl (javaCast object_ :: ImageProcessorInput))) ()

getFiles_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (File.File))
getFiles_super object_ = (getFiles_impl (javaCast object_ :: ImageProcessorInput))

getFiles_impl :: ImageProcessorInput -> IO (JavaArray (File.File))
getFiles_impl this = do
        pure ((jget (this).files))


