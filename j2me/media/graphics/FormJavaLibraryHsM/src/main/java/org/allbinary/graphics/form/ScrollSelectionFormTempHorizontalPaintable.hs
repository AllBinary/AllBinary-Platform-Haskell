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
module ScrollSelectionFormTempHorizontalPaintable (module ScrollSelectionFormTempHorizontalPaintable, module ItemIndexPaintable) where

import ItemIndexPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, scrollSelectionForm)
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
import qualified ScrollSelectionForm -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified ItemIndexPaintable

data ScrollSelectionFormTempHorizontalPaintable = ScrollSelectionFormTempHorizontalPaintable
    { header_ :: JavaHeader
    , base :: ItemIndexPaintable.ItemIndexPaintable
    , scrollSelectionForm :: IORef (ScrollSelectionForm.ScrollSelectionForm)
    }

instance JavaNull ScrollSelectionFormTempHorizontalPaintable where
    javaNull = javaNullRecord "ScrollSelectionFormTempHorizontalPaintable"

instance JavaEquals ScrollSelectionFormTempHorizontalPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScrollSelectionFormTempHorizontalPaintable where
    (==) = jrecordEquals

instance JavaObjectClass ScrollSelectionFormTempHorizontalPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScrollSelectionFormTempHorizontalPaintable
newRecord_ = do
    base <- ItemIndexPaintable.newRecord_
    let header_ = base.header_
    scrollSelectionForm <- newIORef javaNull
    let this = ScrollSelectionFormTempHorizontalPaintable header_ base scrollSelectionForm
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ScrollSelectionFormTempHorizontalPaintable -> IO ()
initFields_ this = do
    jset this.scrollSelectionForm (javaNull)
    pure ()

new_1 :: ScrollSelectionForm.ScrollSelectionForm -> IO ScrollSelectionFormTempHorizontalPaintable
new_1 scrollSelectionForm = do
    this <- newRecord_
    init_1 this scrollSelectionForm
    pure this

init_1 :: ScrollSelectionFormTempHorizontalPaintable -> ScrollSelectionForm.ScrollSelectionForm -> IO ()
init_1 this scrollSelectionForm = do
        ItemIndexPaintable.init_ this.base
        initFields_ this
        jset (this).scrollSelectionForm (scrollSelectionForm)
        pure ()


-- throws Exception
paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint object_ a1 a2 a3 a4 a5 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ScrollSelectionFormTempHorizontalPaintable))) () a1 a2 a3 a4 a5

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint_super object_ a1 a2 a3 a4 a5 = (paint_impl (javaCast object_ :: ScrollSelectionFormTempHorizontalPaintable)) a1 a2 a3 a4 a5

paint_impl :: ScrollSelectionFormTempHorizontalPaintable -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint_impl this graphics index item dx dy = do
        (ScrollSelectionForm.paintItemTempHorizontal ((jget (this).scrollSelectionForm)) graphics index item dx dy)


