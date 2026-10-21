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
module AlphaBaseProcessor where

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
import qualified ImageModifierUtil -- org.allbinary.media.image.ImageModifierUtil

data AlphaBaseProcessor = AlphaBaseProcessor
    { header_ :: JavaHeader
    }

instance JavaNull AlphaBaseProcessor where
    javaNull = javaNullRecord "AlphaBaseProcessor"

instance JavaEquals AlphaBaseProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AlphaBaseProcessor where
    (==) = jrecordEquals

instance JavaObjectClass AlphaBaseProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AlphaBaseProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = AlphaBaseProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    pure this

initFields_ :: AlphaBaseProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AlphaBaseProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AlphaBaseProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AlphaBaseProcessor)
getInstance = do
        pure (AlphaBaseProcessor.instance_)


setAlpha :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> IO (())
setAlpha object_ a1 a2 a3 a4 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: AlphaBaseProcessor))) () a1 a2 a3 a4

setAlpha_super :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> IO (())
setAlpha_super object_ a1 a2 a3 a4 = (setAlpha_impl (javaCast object_ :: AlphaBaseProcessor)) a1 a2 a3 a4

setAlpha_impl :: AlphaBaseProcessor -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> IO (())
setAlpha_impl this imageModifierUtil originalImage imageToShow alpha = do
        pure ()


