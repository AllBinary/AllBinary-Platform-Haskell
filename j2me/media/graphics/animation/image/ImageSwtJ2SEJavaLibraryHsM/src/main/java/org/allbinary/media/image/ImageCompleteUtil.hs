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
module ImageCompleteUtil where

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

data ImageCompleteUtil = ImageCompleteUtil
    { header_ :: JavaHeader
    }

instance JavaNull ImageCompleteUtil where
    javaNull = javaNullRecord "ImageCompleteUtil"

instance JavaEquals ImageCompleteUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCompleteUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageCompleteUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageCompleteUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ImageCompleteUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "waitForImage" (\() -> waitForImage_impl this)
    pure this

initFields_ :: ImageCompleteUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ImageCompleteUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageCompleteUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ImageCompleteUtil)
getInstance = do
        pure (ImageCompleteUtil.instance_)


-- throws Exception
waitForImage :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> IO (())
waitForImage object_ a1 a2 = jmethod object_ "waitForImage" (\() -> (waitForImage_impl (javaCast object_ :: ImageCompleteUtil))) () a1 a2

waitForImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> String -> IO (())
waitForImage_super object_ a1 a2 = (waitForImage_impl (javaCast object_ :: ImageCompleteUtil)) a1 a2

waitForImage_impl :: ImageCompleteUtil -> Image.Image -> String -> IO (())
waitForImage_impl this image name = do
        pure ()


