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
-- package org.allbinary.graphics.form
module MultipleScrollSelectionFormHorizontalPaintable (module MultipleScrollSelectionFormHorizontalPaintable, module ItemIndexPaintable) where

import ItemIndexPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, multipleScrollSelectionForm)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified MultipleScrollSelectionHorizontalForm -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified ItemIndexPaintable

data MultipleScrollSelectionFormHorizontalPaintable = MultipleScrollSelectionFormHorizontalPaintable
    { header_ :: JavaHeader
    , base :: ItemIndexPaintable.ItemIndexPaintable
    , multipleScrollSelectionForm :: IORef (MultipleScrollSelectionHorizontalForm.MultipleScrollSelectionHorizontalForm)
    }

instance JavaNull MultipleScrollSelectionFormHorizontalPaintable where
    javaNull = javaNullRecord "MultipleScrollSelectionFormHorizontalPaintable"

instance JavaEquals MultipleScrollSelectionFormHorizontalPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultipleScrollSelectionFormHorizontalPaintable where
    (==) = jrecordEquals

instance JavaObjectClass MultipleScrollSelectionFormHorizontalPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultipleScrollSelectionFormHorizontalPaintable
newRecord_ = do
    base <- ItemIndexPaintable.newRecord_
    let header_ = base.header_
    multipleScrollSelectionForm <- newIORef javaNull
    let this = MultipleScrollSelectionFormHorizontalPaintable header_ base multipleScrollSelectionForm
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: MultipleScrollSelectionFormHorizontalPaintable -> IO ()
initFields_ this = do
    jset this.multipleScrollSelectionForm (javaNull)
    pure ()

new_1 :: MultipleScrollSelectionHorizontalForm.MultipleScrollSelectionHorizontalForm -> IO MultipleScrollSelectionFormHorizontalPaintable
new_1 multipleScrollSelectionForm = do
    this <- newRecord_
    init_1 this multipleScrollSelectionForm
    pure this

init_1 :: MultipleScrollSelectionFormHorizontalPaintable -> MultipleScrollSelectionHorizontalForm.MultipleScrollSelectionHorizontalForm -> IO ()
init_1 this multipleScrollSelectionForm = do
        ItemIndexPaintable.init_ this.base
        initFields_ this
        jset (this).multipleScrollSelectionForm (multipleScrollSelectionForm)
        pure ()


-- throws Exception
paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint object_ a1 a2 a3 a4 a5 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: MultipleScrollSelectionFormHorizontalPaintable))) () a1 a2 a3 a4 a5

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint_super object_ a1 a2 a3 a4 a5 = (paint_impl (javaCast object_ :: MultipleScrollSelectionFormHorizontalPaintable)) a1 a2 a3 a4 a5

paint_impl :: MultipleScrollSelectionFormHorizontalPaintable -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint_impl this graphics index item dx dy = do
        (MultipleScrollSelectionHorizontalForm.paintHorizontal ((jget (this).multipleScrollSelectionForm)) graphics index item dx dy)


