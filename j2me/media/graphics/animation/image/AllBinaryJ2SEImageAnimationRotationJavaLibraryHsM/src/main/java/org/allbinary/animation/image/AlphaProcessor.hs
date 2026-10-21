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
module AlphaProcessor (module AlphaProcessor, module ModifierBaseProcessor) where

import ModifierBaseProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateAlpha, updateAlpha_super, updateAlpha_impl, instanceC)
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
import qualified ModifierBaseProcessor

data AlphaProcessor = AlphaProcessor
    { header_ :: JavaHeader
    , base :: ModifierBaseProcessor.ModifierBaseProcessor
    }

instance JavaNull AlphaProcessor where
    javaNull = javaNullRecord "AlphaProcessor"

instance JavaEquals AlphaProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AlphaProcessor where
    (==) = jrecordEquals

instance JavaObjectClass AlphaProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO AlphaProcessor
newRecord_ = do
    base <- ModifierBaseProcessor.newRecord_
    let header_ = base.header_
    let this = AlphaProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "updateAlpha" (\() -> updateAlpha_impl this)
    pure this

initFields_ :: AlphaProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AlphaProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AlphaProcessor -> IO ()
init_ this = do
    ModifierBaseProcessor.init_ this.base
    initFields_ this


getInstance :: IO (AlphaProcessor)
getInstance = do
        pure (AlphaProcessor.instanceC)


updateAlpha :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
updateAlpha object_ a1 a2 a3 a4 a5 = jmethod object_ "updateAlpha" (\() -> (updateAlpha_impl (javaCast object_ :: AlphaProcessor))) () a1 a2 a3 a4 a5

updateAlpha_super :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
updateAlpha_super object_ a1 a2 a3 a4 a5 = (updateAlpha_impl (javaCast object_ :: AlphaProcessor)) a1 a2 a3 a4 a5

updateAlpha_impl :: AlphaProcessor -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
updateAlpha_impl this imageModifierUtil originalImage imageToShow index alpha = do
        Control.Monad.void (ImageModifierUtil.setAlpha imageModifierUtil originalImage imageToShow index alpha)
        pure ()


