{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module ImageFactory where

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
import qualified InputStream -- java.io.InputStream
import qualified Image -- javax.microedition.lcdui.Image

data ImageFactory = ImageFactory
    { header_ :: JavaHeader
    }

instance JavaNull ImageFactory where
    javaNull = javaNullRecord "ImageFactory"

instance JavaEquals ImageFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageFactory where
    (==) = jrecordEquals

instance JavaObjectClass ImageFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ImageFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "createImageUrl" (\() -> createImageUrl_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "createImageFromInputStream" (\() -> createImageFromInputStream_impl this)
    jregisterMethod header_ "createImageFromInputStream" (\() -> createImageFromInputStream_impl this)
    pure this

initFields_ :: ImageFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ImageFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ImageFactory)
getInstance = do
        pure (ImageFactory.instance_)


-- throws Exception
createImageUrl :: (JavaObjectClass this_) => this_ -> String -> IO (Image.Image)
createImageUrl object_ a1 = jmethod object_ "createImageUrl" (\() -> (createImageUrl_impl (javaCast object_ :: ImageFactory))) () a1

createImageUrl_super :: (JavaObjectClass this_) => this_ -> String -> IO (Image.Image)
createImageUrl_super object_ a1 = (createImageUrl_impl (javaCast object_ :: ImageFactory)) a1

createImageUrl_impl :: ImageFactory -> String -> IO (Image.Image)
createImageUrl_impl this url = do
        (Image.createImage url)


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
createImage object_ a1 a2 a3 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: ImageFactory))) () a1 a2 a3

createImage_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Image.Image)
createImage_super object_ a1 a2 a3 = (createImage_impl (javaCast object_ :: ImageFactory)) a1 a2 a3

createImage_impl :: ImageFactory -> String -> Int -> Int -> IO (Image.Image)
createImage_impl this caller width height = do
        (Image.createImageWH width height)


-- throws Exception
createImageFromInputStream :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream object_ a1 a2 = jmethod object_ "createImageFromInputStream" (\() -> (createImageFromInputStream_impl (javaCast object_ :: ImageFactory))) () (jtoObject a1) a2

createImageFromInputStream_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_super object_ a1 a2 = (createImageFromInputStream_impl (javaCast object_ :: ImageFactory)) (jtoObject a1) a2

createImageFromInputStream_impl :: ImageFactory -> JavaObject -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_impl this keyObject_ inputStream = do
        let key = jtoObject keyObject_
        image <- (Image.createImageFromInputStream inputStream)
        pure (image)


-- throws Exception
-- Java overload of createImageFromInputStream with a different parameter count: give it a different name
createImageFromInputStream :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream object_ a1 = jmethod object_ "createImageFromInputStream" (\() -> (createImageFromInputStream_impl (javaCast object_ :: ImageFactory))) () a1

createImageFromInputStream_super :: (JavaObjectClass this_) => this_ -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_super object_ a1 = (createImageFromInputStream_impl (javaCast object_ :: ImageFactory)) a1

createImageFromInputStream_impl :: ImageFactory -> InputStream.InputStream -> IO (Image.Image)
createImageFromInputStream_impl this inputStream = do
        (Image.createImageFromInputStream inputStream)


