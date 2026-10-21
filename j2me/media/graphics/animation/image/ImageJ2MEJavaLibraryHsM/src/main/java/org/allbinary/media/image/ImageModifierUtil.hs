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
module ImageModifierUtil where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor

data ImageModifierUtil = ImageModifierUtil
    { header_ :: JavaHeader
    }

instance JavaNull ImageModifierUtil where
    javaNull = javaNullRecord "ImageModifierUtil"

instance JavaEquals ImageModifierUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageModifierUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageModifierUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageModifierUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ImageModifierUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "changeColor" (\() -> changeColor_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "getImageArray" (\() -> getImageArray_impl this)
    jregisterMethod header_ "handleImage" (\() -> handleImage_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    pure this

initFields_ :: ImageModifierUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ImageModifierUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageModifierUtil -> IO ()
init_ this = do
    initFields_ this


getInstanceOrCreate :: IO (ImageModifierUtil)
getInstanceOrCreate = do
        pure (ImageModifierUtil.instance_)


setColor :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor object_ a1 a2 a3 a4 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setColor_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor_super object_ a1 a2 a3 a4 = (setColor_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setColor_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor_impl this unusedOriginalImage image imageIndex basicColor = do
        pure ()


changeColor :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor object_ a1 a2 a3 a4 = jmethod object_ "changeColor" (\() -> (changeColor_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

changeColor_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor_super object_ a1 a2 a3 a4 = (changeColor_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

changeColor_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor_impl this unusedOriginalImage image imageIndex basicColor = do
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha object_ a1 a2 a3 a4 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setAlpha_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha_super object_ a1 a2 a3 a4 = (setAlpha_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setAlpha_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha_impl this originalImage image imageIndex alphaInt = do
        pure ()


getImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray object_ a1 = jmethod object_ "getImageArray" (\() -> (getImageArray_impl (javaCast object_ :: ImageModifierUtil))) () a1

getImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray_super object_ a1 = (getImageArray_impl (javaCast object_ :: ImageModifierUtil)) a1

getImageArray_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray_impl this originalImageArray = do
        pure (originalImageArray)


handleImage :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage object_ a1 a2 a3 = jmethod object_ "handleImage" (\() -> (handleImage_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3

handleImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage_super object_ a1 a2 a3 = (handleImage_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3

handleImage_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage_impl this imageArray index image = do
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: ImageModifierUtil))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: ImageModifierUtil))

reset_impl :: ImageModifierUtil -> IO (())
reset_impl this = do
        pure ()


