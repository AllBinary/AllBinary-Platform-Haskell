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
-- package org.allbinary.game.displayable.canvas
module PreGameScrollSelectionForm (module PreGameScrollSelectionForm, module ScrollCurrentSelectionForm) where

import ScrollCurrentSelectionForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl)
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
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified FormTypeFactory -- org.allbinary.graphics.form.FormTypeFactory
import qualified ItemPaintableFactory -- org.allbinary.graphics.form.ItemPaintableFactory
import qualified ScrollCurrentSelectionForm -- org.allbinary.graphics.form.ScrollCurrentSelectionForm

data PreGameScrollSelectionForm = PreGameScrollSelectionForm
    { header_ :: JavaHeader
    , base :: ScrollCurrentSelectionForm.ScrollCurrentSelectionForm
    }

instance JavaNull PreGameScrollSelectionForm where
    javaNull = javaNullRecord "PreGameScrollSelectionForm"

instance JavaEquals PreGameScrollSelectionForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreGameScrollSelectionForm where
    (==) = jrecordEquals

instance JavaObjectClass PreGameScrollSelectionForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PreGameScrollSelectionForm
newRecord_ = do
    base <- ScrollCurrentSelectionForm.newRecord_
    let header_ = base.header_
    let this = PreGameScrollSelectionForm header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: PreGameScrollSelectionForm -> IO ()
initFields_ this = do
    pure ()

new_5 :: String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO PreGameScrollSelectionForm
new_5 title items formPaintableFactory backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_5 this title items formPaintableFactory backgroundBasicColor foregroundBasicColor
    pure this

init_5 :: PreGameScrollSelectionForm -> String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_5 this title items formPaintableFactory backgroundBasicColor foregroundBasicColor = do
        ScrollCurrentSelectionForm.init_8 this.base (title) (items) (formPaintableFactory) (0) (3) (False) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PreGameScrollSelectionForm))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: PreGameScrollSelectionForm)) a1

init_impl :: PreGameScrollSelectionForm -> Rectangle.Rectangle -> IO (())
init_impl this rectangle = do
        Control.Monad.void (ScrollCurrentSelectionForm.init_super this.base rectangle (jget ((jio (FormTypeFactory.getInstance))).tEMP_HORIZONTAL_FORM))
        pure ()


