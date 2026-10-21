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
module AlphaProcessor (module AlphaProcessor, module AlphaBaseProcessor) where

import AlphaBaseProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, setAlpha, setAlpha_super, setAlpha_impl, instanceC)
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
import qualified AlphaBaseProcessor

data AlphaProcessor = AlphaProcessor
    { header_ :: JavaHeader
    , base :: AlphaBaseProcessor.AlphaBaseProcessor
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
    base <- AlphaBaseProcessor.newRecord_
    let header_ = base.header_
    let this = AlphaProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
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
    AlphaBaseProcessor.init_ this.base
    initFields_ this


getInstance :: IO (AlphaProcessor)
getInstance = do
        pure (AlphaProcessor.instanceC)


setAlpha :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> IO (())
setAlpha object_ a1 a2 a3 a4 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: AlphaProcessor))) () a1 a2 a3 a4

setAlpha_super :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> IO (())
setAlpha_super object_ a1 a2 a3 a4 = (setAlpha_impl (javaCast object_ :: AlphaProcessor)) a1 a2 a3 a4

setAlpha_impl :: AlphaProcessor -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> IO (())
setAlpha_impl this imageModifierUtil originalImage imageToShow alpha = do
        Control.Monad.void (ImageModifierUtil.setAlpha3 imageModifierUtil imageToShow alpha)
        pure ()


