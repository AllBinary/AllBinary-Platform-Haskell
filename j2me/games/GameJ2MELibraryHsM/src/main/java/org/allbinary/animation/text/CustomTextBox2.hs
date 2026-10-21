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
-- package org.allbinary.animation.text
module CustomTextBox2 (module CustomTextBox2, module CustomTextBox) where

import CustomTextBox hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Font -- javax.microedition.lcdui.Font
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CustomTextBox -- org.allbinary.graphics.form.item.CustomTextBox

data CustomTextBox2 = CustomTextBox2
    { header_ :: JavaHeader
    , base :: CustomTextBox.CustomTextBox
    }

instance JavaNull CustomTextBox2 where
    javaNull = javaNullRecord "CustomTextBox2"

instance JavaEquals CustomTextBox2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomTextBox2 where
    (==) = jrecordEquals

instance JavaObjectClass CustomTextBox2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomTextBox2
newRecord_ = do
    base <- CustomTextBox.newRecord_
    let header_ = base.header_
    let this = CustomTextBox2 header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: CustomTextBox2 -> IO ()
initFields_ this = do
    pure ()

new_8 :: CommandListener.CommandListener -> String -> String -> Int -> Int -> Font.Font -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO CustomTextBox2
new_8 cmdListener label text maxSize constraints font backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_8 this cmdListener label text maxSize constraints font backgroundBasicColor foregroundBasicColor
    pure this

init_8 :: CustomTextBox2 -> CommandListener.CommandListener -> String -> String -> Int -> Int -> Font.Font -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_8 this cmdListener label text maxSize constraints font backgroundBasicColor foregroundBasicColor = do
        CustomTextBox.init_8 this.base (cmdListener) (label) (text) (maxSize) (constraints) (font) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ABTextFieldItem.setFocus ((jio (CustomTextBox.getTextFieldItem this))) True)
        pure ()


