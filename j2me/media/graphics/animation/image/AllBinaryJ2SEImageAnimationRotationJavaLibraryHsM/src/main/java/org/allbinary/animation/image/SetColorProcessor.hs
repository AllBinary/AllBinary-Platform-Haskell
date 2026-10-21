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
module SetColorProcessor (module SetColorProcessor, module ModifierBaseProcessor) where

import ModifierBaseProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateColor, updateColor_super, updateColor_impl, instanceC)
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
import qualified ModifierBaseProcessor

data SetColorProcessor = SetColorProcessor
    { header_ :: JavaHeader
    , base :: ModifierBaseProcessor.ModifierBaseProcessor
    }

instance JavaNull SetColorProcessor where
    javaNull = javaNullRecord "SetColorProcessor"

instance JavaEquals SetColorProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SetColorProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SetColorProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO SetColorProcessor
newRecord_ = do
    base <- ModifierBaseProcessor.newRecord_
    let header_ = base.header_
    let this = SetColorProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "updateColor" (\() -> updateColor_impl this)
    pure this

initFields_ :: SetColorProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SetColorProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SetColorProcessor -> IO ()
init_ this = do
    ModifierBaseProcessor.init_ this.base
    initFields_ this


getInstance :: IO (SetColorProcessor)
getInstance = do
        pure (SetColorProcessor.instanceC)


updateColor :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
updateColor object_ a1 a2 a3 a4 a5 = jmethod object_ "updateColor" (\() -> (updateColor_impl (javaCast object_ :: SetColorProcessor))) () a1 a2 a3 a4 a5

updateColor_super :: (JavaObjectClass this_) => this_ -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
updateColor_super object_ a1 a2 a3 a4 a5 = (updateColor_impl (javaCast object_ :: SetColorProcessor)) a1 a2 a3 a4 a5

updateColor_impl :: SetColorProcessor -> ImageModifierUtil.ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
updateColor_impl this imageModifierUtil originalImage imageToShow index basicColor = do
        Control.Monad.void (ImageModifierUtil.setColor imageModifierUtil originalImage imageToShow index basicColor)
        pure ()


