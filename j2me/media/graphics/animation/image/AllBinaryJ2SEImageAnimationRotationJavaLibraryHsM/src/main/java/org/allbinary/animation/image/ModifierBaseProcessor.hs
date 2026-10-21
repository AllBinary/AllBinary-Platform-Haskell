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
-- package org.allbinary.animation.image
module ModifierBaseProcessor where

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
import qualified ImageModifierUtil -- org.allbinary.media.image.ImageModifierUtil

data ModifierBaseProcessor = ModifierBaseProcessor
    { header_ :: JavaHeader
    }

instance JavaNull ModifierBaseProcessor where
    javaNull = javaNullRecord "ModifierBaseProcessor"

instance JavaEquals ModifierBaseProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ModifierBaseProcessor where
    (==) = jrecordEquals

instance JavaObjectClass ModifierBaseProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ModifierBaseProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = ModifierBaseProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "updateColor" (\() -> updateColor_impl this)
    jregisterMethod header_ "updateAlpha" (\() -> updateAlpha_impl this)
    pure this

initFields_ :: ModifierBaseProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ModifierBaseProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ModifierBaseProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ModifierBaseProcessor)
getInstance = do
        pure (ModifierBaseProcessor.instance_)


updateColor :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
updateColor object_ a1 a2 a3 a4 a5 = jmethod object_ "updateColor" (\() -> (updateColor_impl (javaCast object_ :: ModifierBaseProcessor))) () a1 a2 a3 a4 a5

updateColor_super :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
updateColor_super object_ a1 a2 a3 a4 a5 = (updateColor_impl (javaCast object_ :: ModifierBaseProcessor)) a1 a2 a3 a4 a5

updateColor_impl :: ModifierBaseProcessor -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
updateColor_impl this imageModifierUtil originalImage imageToShow index basicColor = do
        pure ()


updateAlpha :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
updateAlpha object_ a1 a2 a3 a4 a5 = jmethod object_ "updateAlpha" (\() -> (updateAlpha_impl (javaCast object_ :: ModifierBaseProcessor))) () a1 a2 a3 a4 a5

updateAlpha_super :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
updateAlpha_super object_ a1 a2 a3 a4 a5 = (updateAlpha_impl (javaCast object_ :: ModifierBaseProcessor)) a1 a2 a3 a4 a5

updateAlpha_impl :: ModifierBaseProcessor -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
updateAlpha_impl this imageModifierUtil originalImage imageToShow index alpha = do
        pure ()


