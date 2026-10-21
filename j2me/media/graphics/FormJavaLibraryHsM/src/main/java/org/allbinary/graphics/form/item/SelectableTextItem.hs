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
-- package org.allbinary.graphics.form.item
module SelectableTextItem (module SelectableTextItem, module ABTextItem) where

import ABTextItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isFocusable, isFocusable_super, isFocusable_impl, paintXY, paintXY_super, paintXY_impl)
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
import qualified ABStringComponent -- same package or java.lang
import qualified MyFontProcessor -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ABTextItem

data SelectableTextItem = SelectableTextItem
    { header_ :: JavaHeader
    , base :: ABTextItem.ABTextItem
    }

instance JavaNull SelectableTextItem where
    javaNull = javaNullRecord "SelectableTextItem"

instance JavaEquals SelectableTextItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SelectableTextItem where
    (==) = jrecordEquals

instance JavaObjectClass SelectableTextItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SelectableTextItem
newRecord_ = do
    base <- ABTextItem.newRecord_
    let header_ = base.header_
    let this = SelectableTextItem header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isFocusable" (\() -> isFocusable_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: SelectableTextItem -> IO ()
initFields_ this = do
    pure ()

new_5 :: String -> Int -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO SelectableTextItem
new_5 label layout altText backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_5 this label layout altText backgroundBasicColor foregroundBasicColor
    pure this

init_5 :: SelectableTextItem -> String -> Int -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_5 this label layout altText backgroundBasicColor foregroundBasicColor = do
        ABTextItem.init_5 this.base (label) (layout) (altText) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isFocusable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFocusable object_ = jmethod object_ "isFocusable" (\() -> (isFocusable_impl (javaCast object_ :: SelectableTextItem))) ()

isFocusable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFocusable_super object_ = (isFocusable_impl (javaCast object_ :: SelectableTextItem))

isFocusable_impl :: SelectableTextItem -> IO (Bool)
isFocusable_impl this = do
        pure (True)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: SelectableTextItem))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: SelectableTextItem)) a1 a2 a3

paintXY_impl :: SelectableTextItem -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.base.myFontProcessor)) graphics)
        stringComponent <- (ABTextItem.getLabelStringComponent this)
        when (stringComponent /= javaNull) $ do
            Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jio (ABStringComponent.getForegroundBasicColor stringComponent))))))
        Control.Monad.void (Graphics.drawString graphics (jio (ABTextItem.getLabel this)) (x + 2) y 0)
        pure ()


