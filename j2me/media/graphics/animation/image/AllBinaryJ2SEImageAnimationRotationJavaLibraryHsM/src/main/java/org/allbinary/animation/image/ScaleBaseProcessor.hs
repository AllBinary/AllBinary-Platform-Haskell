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
module ScaleBaseProcessor where

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

data ScaleBaseProcessor = ScaleBaseProcessor
    { header_ :: JavaHeader
    }

instance JavaNull ScaleBaseProcessor where
    javaNull = javaNullRecord "ScaleBaseProcessor"

instance JavaEquals ScaleBaseProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScaleBaseProcessor where
    (==) = jrecordEquals

instance JavaObjectClass ScaleBaseProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScaleBaseProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = ScaleBaseProcessor header_
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: ScaleBaseProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ScaleBaseProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScaleBaseProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ScaleBaseProcessor)
getInstance = do
        pure (ScaleBaseProcessor.instance_)


update :: (JavaObjectClass this_) => this_ -> Image.Image -> JavaArray (Image.Image) -> JavaArray (Image.Image) -> Int -> Float -> Float -> Float -> Float -> IO (())
update object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ScaleBaseProcessor))) () a1 a2 a3 a4 a5 a6 a7 a8

update_super :: (JavaObjectClass this_) => this_ -> Image.Image -> JavaArray (Image.Image) -> JavaArray (Image.Image) -> Int -> Float -> Float -> Float -> Float -> IO (())
update_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (update_impl (javaCast object_ :: ScaleBaseProcessor)) a1 a2 a3 a4 a5 a6 a7 a8

update_impl :: ScaleBaseProcessor -> Image.Image -> JavaArray (Image.Image) -> JavaArray (Image.Image) -> Int -> Float -> Float -> Float -> Float -> IO (())
update_impl this originalImage originalImageArray imageToShowArray index scaleX scaleY maxScaleX maxScaleY = do
        pure ()


